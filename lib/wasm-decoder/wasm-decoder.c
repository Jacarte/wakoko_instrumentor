#include <include/wasm-decoder/wasm-decoder.h>

#ifdef DEBUG
	#include <stdio.h>	
#endif

void add_section(WASMModule* module, Section* section){
	
	insert_array(&module->sections, section);
	module->count += 1;

	Section first;

	get_element(&module->sections, module->count - 1, &first);

	printf("%d\n", first.type);
}


char * parse_expression(WASMModule * module){

	int count = 0;
	while((readInt8(module->payload, &module->position)) != OPCODE_END) count++;

	char* code_chunk = (char*)allocate_and_register(count);
	memcpy(code_chunk, module->payload - count, count);

	return code_chunk;
}
// Linearly parse WASM binary to construct tree structure
WASMModule* parse_wasm(char* bytes, unsigned int sz){
	// set offset to 0
	int module_position = 0;

	WASMModule * module = (WASMModule*)allocate_and_register(sizeof(WASMModule));
	module->position = module_position;
	module->payload = bytes;
	module->count = 0;
	module->size = sz;

	init_array(&module->sections, 20, sizeof(Section));
	
	uint32 header = readUint32LE(bytes, &module->position);
	
	#ifdef DEBUG
	printf("position %d %d\n", sz, module->position);
	#endif
	if(header != 0x6d736100){
		#ifdef DEBUG
		printf("Invalid wasm header %04x\n", header);
		#endif
	}
	
	uint16 version = readUint16LE(bytes, &module->position);
	//module.position += 4;
		
	#ifdef DEBUG
	printf("position %d\n", module->position);
	#endif 
	#ifdef DEBUG
	printf("WASM version %d\n", version);
	#endif

	while(module->size - module->position > 0){
		// Create a module section
		
		Section* section = parse_section(module);
		add_section(module, section);
		#ifdef DEBUG
		printf("%d size %d position \n", module->size, module->position);
		//printf("After parsing section position %d\n", module.position);
		#endif
	}

	return module;
}

FunctionImport* parse_function_import(WASMModule * module){

	#ifdef DEBUG
	printf("parsing function import\n");
	#endif

	FunctionImport * f_import = (FunctionImport*) allocate_and_register(sizeof(FunctionImport));
	f_import->index = decode_var_uint32(module->payload, &module->position);

	return f_import;
}


ElementEntry* parse_element_entry(WASMModule * module){

	#ifdef DEBUG
	printf("parsing element entry\n");
	#endif

	ElementEntry * elem = (ElementEntry*) allocate_and_register(sizeof(ElementEntry));
	elem->index = decode_var_uint32(module->payload, &module->position);
	
	elem->init_code_chunk = parse_expression(module);

	elem->fcount = decode_var_uint32(module->payload, &module->position);

	for(int i = 0; i < elem->fcount; i++)
		elem->findexes[i] = decode_var_uint32(module->payload, &module->position);

	return elem;
}


DataSegment* parse_data_segment(WASMModule * module){

	#ifdef DEBUG
	printf("parsing data segment\n");
	#endif

	DataSegment * elem = (DataSegment*) allocate_and_register(sizeof(DataSegment));
	elem->index = decode_var_uint32(module->payload, &module->position);
	
	elem->init_chunk_code = parse_expression(module);

	elem->size = decode_var_uint32(module->payload, &module->position);

	char* data = (char*)allocate_and_register(elem->size);

	memcpy(data, module->payload + module->position, elem->size);
	module->position += elem->size;
	elem->data = data;

	return elem;
}



FunctionBody* parse_function_body(WASMModule * module){


	FunctionBody * elem = (FunctionBody*) allocate_and_register(sizeof(FunctionBody));
	elem->size = decode_var_uint32(module->payload, &module->position);
	int pos = module->position;
	elem->local_count = decode_var_uint32(module->payload, &module->position);

	init_array(&elem->locals, elem->local_count, sizeof(LocalDef));


	#ifdef DEBUG
	printf("parsing function body %d %d\n", elem->local_count, elem->size);
	#endif

	for(int i = 0; i < elem->local_count; i++){

	    LocalDef * local = (LocalDef*) allocate_and_register(sizeof(LocalDef));
		local->n = decode_var_uint32(module->payload, &module->position);
		local->valtype = readInt8(module->payload, &module->position);
		
		insert_array(&elem->locals, local);


	}

	//parse_expression(module);
	int count = module->position - pos;
	elem->code_chunk = (char*)allocate_and_register(elem->size - count);
	memcpy(elem->code_chunk, module->payload, elem->size - count);
	
	module->position = module->position + (elem->size - count);


	#ifdef DEBUG
	printf("Size %d %d\n", count, elem->size);
	#endif

	return elem;
}


TableImport* parse_table_import(WASMModule * module){

	#ifdef DEBUG
	printf("parsing table import\n");
	#endif
	TableImport * t_import = (TableImport*) allocate_and_register(sizeof(TableImport));
	t_import->elem_type = readInt8(module->payload, &module->position);
	t_import->limit = decode_var_uint32(module->payload, &module->position);
	t_import->limit_initial = decode_var_uint32(module->payload, &module->position);

	if(t_import->limit)
		t_import->limit_maximum = decode_var_uint32(module->payload, &module->position);

	#ifdef DEBUG
	printf("Import %02x %d %d %d\n", t_import->elem_type, t_import->limit, t_import->limit_initial,  t_import->limit_maximum);
	#endif
	return t_import;
}

MemoryImport* parse_memory_import(WASMModule * module){

	#ifdef DEBUG
	printf("parsing memory import\n");
	#endif
	MemoryImport * m_import = (MemoryImport*) allocate_and_register(sizeof(MemoryImport));
	m_import->limit = decode_var_uint32(module->payload, &module->position);
	m_import->limit_initial = decode_var_uint32(module->payload, &module->position);

	if(m_import->limit)
		m_import->limit_maximum = decode_var_uint32(module->payload, &module->position);

	#ifdef DEBUG
	printf("Memory %d %d %d\n", m_import->limit, m_import->limit_initial,  m_import->limit_maximum);
	#endif
	return m_import;
}




GlobalImport* parse_global_import(WASMModule * module){

	#ifdef DEBUG
	printf("parsing global import\n");
	#endif
	GlobalImport * g_import = (GlobalImport*) allocate_and_register(sizeof(GlobalImport));
	g_import->content_type = readInt8(module->payload, &module->position);
	g_import->is_mutable = readInt8(module->payload, &module->position);
	

	#ifdef DEBUG
	printf("Global %02x %d\n", g_import->content_type & 0xff, g_import->is_mutable);
	#endif

	return g_import;
}

Global* parse_global(WASMModule * module){

	#ifdef DEBUG
	printf("parsing global import\n");
	#endif
	Global * g_import = (Global*) allocate_and_register(sizeof(Global));
	g_import->content_type = readInt8(module->payload, &module->position);
	g_import->is_mutable = readInt8(module->payload, &module->position);
	
	g_import->init = parse_expression(module);

	#ifdef DEBUG
	printf("Global %02x %d\n", g_import->content_type & 0xff, g_import->is_mutable);
	#endif

	return g_import;
}


ExportEntry* parse_export_entry(WASMModule * module){

	ExportEntry * export_entry = (ExportEntry*) allocate_and_register(sizeof(ExportEntry));
	export_entry->field_len = decode_var_uint32(module->payload, &module->position);
	char* field_name = (char*)allocate_and_register(export_entry->field_len + 1);
	memcpy(field_name, module->payload + module->position, export_entry->field_len + 1);
	module->position += export_entry->field_len;
	field_name[export_entry->field_len] = 0;

	export_entry->field_str = field_name;
	export_entry->kind = readInt8(module->payload, &module->position);
	export_entry->index = decode_var_uint32(module->payload, &module->position);

	#ifdef DEBUG
	printf("Export entry %s\n", export_entry->field_str);
	#endif

	return export_entry;
}

void parse_types_section(Section * section, WASMModule * module){
	TypeSection * typeS = (TypeSection*)allocate_and_register(sizeof(TypeSection));
	
	#ifdef DEBUG
	printf("position in section %d\n", module->position);
	#endif
	int count = decode_var_uint32(module->payload, &module->position);
	
	typeS->count = count;

	init_array(&typeS->types, count, sizeof(FuncTypeSection));


	for(int i =0; i < count; i++){
		FuncTypeSection* functpe = (FuncTypeSection*)allocate_and_register(sizeof(FuncTypeSection));
		
		int form = decode_var_int32(module->payload, &module->position, 7);
		functpe->form = form;
		
		int param_count = decode_var_uint32(module->payload, &module->position);
		functpe->param_count = param_count;

		functpe->param_types = (char*)allocate_and_register(sizeof(param_count));
		for(int j = 0; j < param_count; j++){
			char tpe = readInt8(module->payload, &module->position);
			functpe->param_types[j] = tpe;
		}

		int return_count = readInt8(module->payload, &module->position);
		functpe->ret_count = return_count;
		functpe->return_types = (char*)allocate_and_register(sizeof(return_count));
		for(int j=0; j < return_count; j++){
			char tpe = readInt8(module->payload, &module->position);
			functpe->return_types[j] = tpe;
		}

		insert_array(&typeS->types, functpe);
	}

	section->instance = typeS;

	#ifdef DEBUG
	printf("Types section count %d\n", count);
	#endif
}

void parse_function_section(Section * section, WASMModule * module){
	FunctionSection * function_section = (FunctionSection*)allocate_and_register(sizeof(FunctionSection));
	
	int count = decode_var_uint32(module->payload, &module->position);
	function_section->count = count;

	function_section->types = (int*)allocate_and_register(sizeof(int)*count);

	for(int i =0; i < count; i++)
	{
		function_section->types[i] = 0;

		function_section->types[i] = decode_var_uint32(module->payload, &module->position);
	}
	section->instance = function_section;
	#ifdef DEBUG
	printf("Function section count %d\n", count);
	#endif

}

void parse_start_section(Section * section, WASMModule * module){
	StartSection * table_section = (StartSection *) allocate_and_register(sizeof(StartSection));
	
	int index = decode_var_uint32(module->payload, &module->position);
	
	section->instance = table_section;
}
void parse_table_section(Section * section, WASMModule * module){
	TableSection * table_section = (TableSection *) allocate_and_register(sizeof(TableSection));
	
	int count = decode_var_uint32(module->payload, &module->position);
	table_section->count = count;

	init_array(&table_section->tables, count, sizeof(TableImport));

	for(int i =0; i < count; i++){
		TableImport* entry = (TableImport*) parse_table_import(module);
		insert_array(&table_section->tables, entry);
	}

	section->instance = table_section;
	#ifdef DEBUG
	printf("Table section count %d\n", count);
	#endif

}


void parse_memory_section(Section * section, WASMModule * module){
	MemorySection * memory_section = (MemorySection *) allocate_and_register(sizeof(MemorySection));
	
	int count = decode_var_uint32(module->payload, &module->position);
	memory_section->count = count;

	init_array(&memory_section->memories, count, sizeof(MemoryImport));

	for(int i =0; i < count; i++){
		MemoryImport * entry = (MemoryImport*) parse_memory_import(module);
		insert_array(&memory_section->memories, entry);
	}

	section->instance = memory_section;
	#ifdef DEBUG
	printf("memory section count %d\n", count);
	#endif

}


void parse_global_section(Section * section, WASMModule * module){
	GlobalSection * global_section = (GlobalSection *) allocate_and_register(sizeof(GlobalSection));
	
	int count = decode_var_uint32(module->payload, &module->position);
	global_section->count = count;

	init_array(&global_section->globals, count, sizeof(GlobalImport));

	for(int i =0; i < count; i++){
		GlobalImport * global = (GlobalImport *) parse_global(module);
		insert_array(&global_section->globals, global);
	}

	section->instance = global_section;
	#ifdef DEBUG
	printf("global section count %d\n", count);
	#endif

}


void parse_export_section(Section * section, WASMModule * module){
	ExportSection * export_section = (ExportSection *) allocate_and_register(sizeof(ExportSection));
	
	int count = decode_var_uint32(module->payload, &module->position);
	export_section->count = count;

	init_array(&export_section->exports, count, sizeof(ExportEntry));

	for(int i =0; i < count; i++){
		ExportEntry * entry = (ExportEntry *) parse_export_entry(module);
		insert_array(&export_section->exports, entry);
	}

	section->instance = export_section;
	#ifdef DEBUG
	printf("export section count %d\n", count);
	#endif

}


void parse_elem_section(Section * section, WASMModule * module){
	ElementSection * export_section = (ElementSection *) allocate_and_register(sizeof(ElementSection));
	
	int count = decode_var_uint32(module->payload, &module->position);
	export_section->count = count;

	init_array(&export_section->elements, count, sizeof(ElementEntry));

	for(int i =0; i < count; i++){
		ElementEntry * elementEntry = (ElementEntry *) parse_element_entry(module);
		insert_array(&export_section->elements, elementEntry);
	}

	section->instance = export_section;
	#ifdef DEBUG
	printf("export section count %d\n", count);
	#endif

}


void parse_code_section(Section * section, WASMModule * module){
	CodeSection * code_section = (CodeSection *) allocate_and_register(sizeof(CodeSection));
	
	int count = decode_var_uint32(module->payload, &module->position);
	code_section->count = count;

	init_array(&code_section->functions, count, sizeof(FunctionBody));

	for(int i =0; i < count; i++){
		FunctionBody * body = (FunctionBody *) parse_function_body(module);
		insert_array(&code_section->functions, body);
	}

	section->instance = code_section;
	#ifdef DEBUG
	printf("export section count %d\n", count);
	#endif

}


void parse_data_section(Section * section, WASMModule * module){
	DataSection * data_section = (DataSection *) allocate_and_register(sizeof(DataSection));
	
	int count = decode_var_uint32(module->payload, &module->position);
	data_section->count = count;

	init_array(&data_section->segments, count, sizeof(DataSegment));

	for(int i =0; i < count; i++){
		DataSegment* segment = (DataSegment *) parse_data_segment(module);
		insert_array(&data_section->segments, segment);
	}

	section->instance = data_section;
	#ifdef DEBUG
	printf("data section count %d\n", count);
	#endif

}

void parse_custom_section(Section * section, WASMModule * module){
	CustomSection * custom_section = (CustomSection *) allocate_and_register(sizeof(CustomSection));
	
	int startposition = module->position;
	int name_len = decode_var_uint32(module->payload, &module->position);
	custom_section->name_len = name_len;

	char* name = (char*)allocate_and_register(name_len);
	memcpy(name, module->payload + module->position, name_len);
	module->position += name_len;

	custom_section->name = name;

	int pending = section->size - (module->position - startposition);
	
	char* data = (char*)allocate_and_register(pending);
	//memcpy(pending, module->payload + module->position, pending);

	#ifdef DEBUG
	printf("custom section %d %d %s\n",section->size, pending, name);
	#endif
	module->position += pending;


	custom_section->data = data;

	section->instance = custom_section;
}

void parse_import_section(Section * section, WASMModule * module){

	ImportSection * importSection = (ImportSection*)allocate_and_register(sizeof(ImportSection));

	int count = decode_var_uint32(module->payload, &module->position);
	importSection->count = count;
	
	init_array(&importSection->imports, count, sizeof(ImportType));

	//

	for(int i = 0; i < count; i++){
		ImportType * import = (ImportType*)allocate_and_register(sizeof(ImportType));
		int module_name_len = decode_var_uint32(module->payload, &module->position);
		char* module_name = (char*)allocate_and_register(module_name_len + 1);
		memcpy(module_name, module->payload + module->position, module_name_len + 1);
		module->position += module_name_len;


		int field_name_len = decode_var_uint32(module->payload, &module->position);
		char* field_name = (char*)allocate_and_register(module_name_len + 1);
		memcpy(field_name, module->payload + module->position, field_name_len + 1);
		module->position += field_name_len;

		int kind = readInt8(module->payload, &module->position);

		import->kind = kind;
		import->module_name_len = module_name_len;
		import->module_name = module_name;
		import->field_name_len = field_name_len;
		import->field_name = field_name;
		

		switch (kind)
		{
			case 0: // Function
			{
				import->import_kind = parse_function_import(module);
			}
				break;
			case 1: // Table
				{
					import->import_kind = parse_table_import(module);
				}
				break;
			case 2: // Memory
				{
					
					import->import_kind = parse_memory_import(module);
				}
				break;
			case 3: // Global
				{
					import->import_kind = parse_global_import(module);

				}
				break;
			
			default:
				break;
		}

		insert_array(&importSection->imports, import);
	}

	//importSection->imports[0] = imports;

	section->instance = importSection;
	#ifdef DEBUG
	printf("Import section count %d\n", count);
	#endif
}

Section* parse_section(WASMModule* module){

	Section* section =  (Section*) allocate_and_register(sizeof(Section));

	uint32 section_type = decode_var_uint32(module->payload, &module->position);
	
	uint32 section_size = decode_var_uint32(module->payload, &module->position);
	
	section -> size = section_size;
	section -> type = section_type;
	section -> section_offset = module -> position;
	#ifdef DEBUG
	printf("Section type %d\n", section->type);
	#endif
	switch (section->type)
	{
		case 1: // Types section
			parse_types_section(section, module);
			break;
		case 2: // Import section
			parse_import_section(section, module);
			break;
		case 3: // Function section
			parse_function_section(section, module);
			break;
		case 4: // Table section
			parse_table_section(section, module);
			break;
		case 5: // Memory section
			parse_memory_section(section, module);
			break;
		case 6: // Global section
			parse_global_section(section, module);
			break;
		case 7: // Export section
			parse_export_section(section, module);
			break;
		case 8: // Start section
			parse_start_section(section, module);
			break;
		case 9: // Element section
			parse_elem_section(section, module);
			break;
		case 10: // Code section
			parse_code_section(section, module);
			break;
		case 11: // Data section
			parse_data_section(section, module);
			break;
		case 0: // Custom
			parse_custom_section(section, module);
			break;
	default:
		break;
	}

	return section;
	//BYTE_OFFSET += section->size;
}
