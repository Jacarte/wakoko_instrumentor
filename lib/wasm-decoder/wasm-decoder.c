#include <include/wasm-decoder/wasm-decoder.h>

#ifdef DEBUG
	#include <stdio.h>	
#endif

void add_section(WASMModule* module, Section* section){
	
	insert_array(&module->sections, section);
	module->count += 1;

	Section first;

	get_element(&module->sections, module->count - 1, &first);

}

void free_generic_arrays(WASMModule* module){
	Section s;
	for(int i = 0; i < module->count; i++){
		get_element(&module->sections, i, &s);
		DEBUG("FREEING SECTION %d\n", s.type);
		switch (s.type)
		{
			case 1: // types
			{
				TypeSection * typeS = (TypeSection *) s.instance;
				free(typeS->types.data);
			}
			break;
		case 2:
			{
				ImportSection * importS = (ImportSection *) s.instance;
				free(importS->imports.data);
			}
			break;
		case 3:
			{
				FunctionSection * funcSection = (FunctionSection *) s.instance;
			}
			break;
		case 4:
			{
				TableSection * tableSection = (TableSection *) s.instance;
				free(tableSection->tables.data);
			}
		break;
		case 5:
			{
				MemorySection * memSection = (MemorySection *) s.instance;
				free(memSection->memories.data);
			}
		break;
		
		case 6:
			{
				GlobalSection * globalSection = (GlobalSection *) s.instance;
				free(globalSection->globals.data);
			}
			break;
		case 7:
			{
				ExportSection * exportSection = (ExportSection *) s.instance;
				free(exportSection->exports.data);
			}
		break;
		case 8:
			{
				StartSection * startSection = (StartSection *) s.instance;
			}
		break;
		case 9:
			{
				ElementSection * elemSection = (ElementSection *) s.instance;
				free(elemSection->elements.data);
			}
			
		break;
		case 10:
			{
				CodeSection * codeSection = (CodeSection *) s.instance;
				free(codeSection->functions.data);
			}
			
		break;
		
		case 11:
			{
				DataSection * dataSection = (DataSection *) s.instance;
				free(dataSection->segments.data);
			}
			
		break;
		
		case 0:
			{
				CustomSection * customSection = (CustomSection *) s.instance;
			}
			
		break;
		
		default:
			ERROR("Undefined section type %d\n", s.type);
			exit(1);
			break;
		}
	}
	free(module->sections.data);

}

char * parse_expression(WASMModule * module, int * size){

	int start = module->position;
	char* init = module->payload + module->position;
	char OPCODE = readInt8(module->payload, &module->position);

	while(OPCODE != OPCODE_END){
		switch (OPCODE)
		{
		case I32_CONST:
			DEBUG("I32_CONST %02x \n", OPCODE);
			decode_var_uint32(module->payload, &module->position); // i32 const
			break;

		case GET_GLOBAL:
			DEBUG("GLOBAL GET %02x \n", OPCODE);
			decode_var_uint32(module->payload, &module->position); // global index
			break;
		
		default:
			ERROR("UNKNOWN \n", OPCODE);
			// TODO to be implemented on demand
			exit(1);
			break;
		}
		OPCODE = readInt8(module->payload, &module->position);
	}
	int count = module->position - start;
	DEBUG(" %d\n", count);
	char* code_chunk = (char*)allocate_and_register(count);
	memcpy(code_chunk, init, count);
	(*size) = count;
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
	
	if(header != 0x6d736100){
		ERROR("Invalid wasm header %04x\n", header);
		exit(1);
		#ifdef DEBUG
		#endif
	}
	
	uint16 version = readUint16LE(bytes, &module->position);
	module->version = version;
	

	while(module->size - module->position > 0){		
		Section* section = parse_section(module);
		add_section(module, section);
	}

	return module;
}

FunctionImport* parse_function_import(WASMModule * module){

	DEBUG("parsing function import\n");

	FunctionImport * f_import = (FunctionImport*) allocate_and_register(sizeof(FunctionImport));
	f_import->index = decode_var_uint32(module->payload, &module->position);

	return f_import;
}


ElementEntry* parse_element_entry(WASMModule * module){

	DEBUG("parsing element entry\n");
	
	ElementEntry * elem = (ElementEntry*) allocate_and_register(sizeof(ElementEntry));
	elem->index = decode_var_uint32(module->payload, &module->position);
	
	int size;
	elem->init_code_chunk = parse_expression(module, &size);
	elem->code_size = size;
	DEBUG("Parsing element entry size %d\n", elem->code_size);

	elem->fcount = decode_var_uint32(module->payload, &module->position);
	elem->findexes = (int*)allocate_and_register(sizeof(int)*elem->fcount);

	for(int i = 0; i < elem->fcount; i++)
		elem->findexes[i] = decode_var_uint32(module->payload, &module->position);

	return elem;
}


DataSegment* parse_data_segment(WASMModule * module){

	DEBUG("parsing data segment\n");
	
	DataSegment * elem = (DataSegment*) allocate_and_register(sizeof(DataSegment));
	elem->index = decode_var_uint32(module->payload, &module->position);
	
	elem->init_chunk_code = parse_expression(module, &elem->code_size);

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


	DEBUG("parsing function body %d %d\n", elem->local_count, elem->size);
	
	for(int i = 0; i < elem->local_count; i++){

	    LocalDef * local = (LocalDef*) allocate_and_register(sizeof(LocalDef));
		local->n = decode_var_uint32(module->payload, &module->position);
		local->valtype = readInt8(module->payload, &module->position);
		
		insert_array(&elem->locals, local);


	}

	//parse_expression(module);
	int count = module->position - pos;
	elem->code_chunk = (char*)allocate_and_register(elem->size - count);
	elem->code_size = elem->size - count;
	memcpy(elem->code_chunk, module->payload + module->position, elem->size - count);
	
	module->position = module->position + (elem->size - count);


	DEBUG("Function body count %d size %d\n", count, elem->size);
	
	return elem;
}


TableImport* parse_table_import(WASMModule * module){

	TableImport * t_import = (TableImport*) allocate_and_register(sizeof(TableImport));
	t_import->elem_type = readInt8(module->payload, &module->position);
	t_import->limit = decode_var_uint32(module->payload, &module->position);
	t_import->limit_initial = decode_var_uint32(module->payload, &module->position);

	if(t_import->limit)
		t_import->limit_maximum = decode_var_uint32(module->payload, &module->position);

	return t_import;
}

MemoryImport* parse_memory_import(WASMModule * module){

	MemoryImport * m_import = (MemoryImport*) allocate_and_register(sizeof(MemoryImport));
	m_import->limit = decode_var_uint32(module->payload, &module->position);
	m_import->limit_initial = decode_var_uint32(module->payload, &module->position);

	if(m_import->limit)
		m_import->limit_maximum = decode_var_uint32(module->payload, &module->position);

	return m_import;
}




GlobalImport* parse_global_import(WASMModule * module){

	GlobalImport * g_import = (GlobalImport*) allocate_and_register(sizeof(GlobalImport));
	g_import->content_type = readInt8(module->payload, &module->position);
	g_import->is_mutable = readInt8(module->payload, &module->position);

	return g_import;
}

Global* parse_global(WASMModule * module){

	Global * g_import = (Global*) allocate_and_register(sizeof(Global));
	g_import->content_type = readInt8(module->payload, &module->position);
	g_import->is_mutable = readInt8(module->payload, &module->position);
	g_import->init = parse_expression(module, &g_import->code_size);

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

	return export_entry;
}

void parse_types_section(Section * section, WASMModule * module, int size){
	TypeSection * typeS = (TypeSection*)allocate_and_register(sizeof(TypeSection));
	typeS->size = size;

	int count = decode_var_uint32(module->payload, &module->position);
	
	typeS->count = count;

	init_array(&typeS->types, count + 1, sizeof(FuncTypeSection));


	for(int i =0; i < count; i++){
		FuncTypeSection* functpe = (FuncTypeSection*)allocate_and_register(sizeof(FuncTypeSection));
		
		int form = readInt8(module->payload, &module->position);
		DEBUG("Type form %02x\n", form);
		functpe->form = form;
		
		int param_count = decode_var_uint32(module->payload, &module->position);
		functpe->param_count = param_count;

		init_array(&functpe->param_types, param_count, sizeof(char));

		DEBUG("Type %d ", i);
		for(int j = 0; j < param_count; j++){
			char tpe = readInt8(module->payload, &module->position);

			if(tpe != 0x7f && tpe != 0x7e && tpe != 0x7d && tpe != 0x7c){
				ERROR("Invalid numberic type %02x\n", tpe);
				exit(1);
			}
			DEBUG(" %02x ", tpe);
			insert_array(&functpe->param_types, &tpe);
		}
		
		DEBUG(" count %d\n", param_count);

		int return_count = decode_var_uint32(module->payload, &module->position);
		functpe->ret_count = return_count;
		init_array(&functpe->return_types, return_count, sizeof(char));

		for(int j=0; j < return_count; j++){
			char tpe = readInt8(module->payload, &module->position);
			insert_array(&functpe->return_types, &tpe);
		}

		DEBUG("Type r count %d\n", return_count);

		insert_array(&typeS->types, functpe);
	}

	section->instance = typeS;

}

void parse_function_section(Section * section, WASMModule * module, int size){
	FunctionSection * function_section = (FunctionSection*)allocate_and_register(sizeof(FunctionSection));
	function_section->size = size;

	int count = decode_var_uint32(module->payload, &module->position);
	function_section->count = count;

	function_section->types = (int*)allocate_and_register(sizeof(int)*count);

	for(int i =0; i < count; i++)
	{
		function_section->types[i] = 0;

		function_section->types[i] = decode_var_uint32(module->payload, &module->position);
	}
	section->instance = function_section;

}

void parse_start_section(Section * section, WASMModule * module, int size){
	StartSection * table_section = (StartSection *) allocate_and_register(sizeof(StartSection));
	table_section->size = size;

	int index = decode_var_uint32(module->payload, &module->position);
	
	section->instance = table_section;
}
void parse_table_section(Section * section, WASMModule * module, int size){
	TableSection * table_section = (TableSection *) allocate_and_register(sizeof(TableSection));
	table_section->size = size;

	int count = decode_var_uint32(module->payload, &module->position);
	table_section->count = count;

	init_array(&table_section->tables, count, sizeof(TableImport));

	for(int i =0; i < count; i++){
		TableImport* entry = (TableImport*) parse_table_import(module);
		insert_array(&table_section->tables, entry);
	}

	section->instance = table_section;
}


void parse_memory_section(Section * section, WASMModule * module, int size){
	MemorySection * memory_section = (MemorySection *) allocate_and_register(sizeof(MemorySection));
	memory_section->size = size;

	int count = decode_var_uint32(module->payload, &module->position);
	memory_section->count = count;

	init_array(&memory_section->memories, count, sizeof(MemoryImport));

	for(int i =0; i < count; i++){
		MemoryImport * entry = (MemoryImport*) parse_memory_import(module);
		insert_array(&memory_section->memories, entry);
	}

	section->instance = memory_section;

}


void parse_global_section(Section * section, WASMModule * module, int size){
	GlobalSection * global_section = (GlobalSection *) allocate_and_register(sizeof(GlobalSection));
	global_section->size = size;

	int count = decode_var_uint32(module->payload, &module->position);
	global_section->count = count;

	init_array(&global_section->globals, count, sizeof(GlobalImport));

	for(int i =0; i < count; i++){
		GlobalImport * global = (GlobalImport *) parse_global(module);
		insert_array(&global_section->globals, global);
	}

	section->instance = global_section;
	module->globalSection = global_section;
	module->has_global_section = 1;
}


void parse_export_section(Section * section, WASMModule * module, int size){
	ExportSection * export_section = (ExportSection *) allocate_and_register(sizeof(ExportSection));
	export_section->size = size;

	int count = decode_var_uint32(module->payload, &module->position);
	export_section->count = count;

	init_array(&export_section->exports, count, sizeof(ExportEntry));

	for(int i =0; i < count; i++){
		ExportEntry * entry = (ExportEntry *) parse_export_entry(module);
		insert_array(&export_section->exports, entry);
	}

	section->instance = export_section;
	module->exportSection = export_section;
	module->has_export_section = 1;
}


void parse_elem_section(Section * section, WASMModule * module, int size){
	ElementSection * export_section = (ElementSection *) allocate_and_register(sizeof(ElementSection));
	export_section->size = size;

	int count = decode_var_uint32(module->payload, &module->position);
	export_section->count = count;

	init_array(&export_section->elements, count, sizeof(ElementEntry));

	for(int i =0; i < count; i++){
		ElementEntry * elementEntry = (ElementEntry *) parse_element_entry(module);
		insert_array(&export_section->elements, elementEntry);
	}

	section->instance = export_section;
}


void parse_code_section(Section * section, WASMModule * module, int size){
	CodeSection * code_section = (CodeSection *) allocate_and_register(sizeof(CodeSection));
	code_section->size=size;
	int count = decode_var_uint32(module->payload, &module->position);
	code_section->count = count;

	init_array(&code_section->functions, count, sizeof(FunctionBody));

	for(int i =0; i < count; i++){
		FunctionBody * body = (FunctionBody *) parse_function_body(module);
		insert_array(&code_section->functions, body);
	}

	section->instance = code_section;
	module->codeSection = code_section;
	module->has_code_section = 1;
}


void parse_data_section(Section * section, WASMModule * module, int size){
	DataSection * data_section = (DataSection *) allocate_and_register(sizeof(DataSection));
	data_section->size = size;
	DEBUG("data section sizeß %d\n", size);
	int start_position = module->position;

	int count = decode_var_uint32(module->payload, &module->position);
	data_section->count = count;

	DEBUG("data section count %d\n", count);
	init_array(&data_section->segments, count, sizeof(DataSegment));

	for(int i =0; i < count; i++){
		DataSegment* segment = (DataSegment *) parse_data_segment(module);
		insert_array(&data_section->segments, segment);
	}

	DEBUG("data section position %d %d\n", start_position, module->position);
	section->instance = data_section;

}

void parse_custom_section(Section * section, WASMModule * module, int size){
	CustomSection * custom_section = (CustomSection *) allocate_and_register(sizeof(CustomSection));
	custom_section->size = size;
	DEBUG("Custom section size %d\n",custom_section->size);
	int startposition = module->position;
	int name_len = decode_var_uint32(module->payload, &module->position);
	DEBUG("Name size %d\n",name_len);
	custom_section->name_len = name_len;

	char* name = (char*)allocate_and_register(name_len);
	memcpy(name, module->payload + module->position, name_len);
	module->position += name_len;

	DEBUG("custom section %d %s\n",custom_section->size, name);
	custom_section->name = name;

	int pending = custom_section->size - (module->position - startposition);
	custom_section->data_size = pending;
	char* data = (char*)allocate_and_register(pending);
	memcpy(data, module->payload + module->position, pending);
	custom_section->data_size = pending;
	module->position += pending;


	custom_section->data = data;

	section->instance = custom_section;
}

void parse_import_section(Section * section, WASMModule * module, int size){

	ImportSection * importSection = (ImportSection*)allocate_and_register(sizeof(ImportSection));
	importSection->size = size;
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
		char* field_name = (char*)allocate_and_register(field_name_len + 1);
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
	//printf("Import section count %d\n", count);
	#endif
}

Section* parse_section(WASMModule* module){

	Section* section =  (Section*) allocate_and_register(sizeof(Section));

	uint32 section_type = decode_var_uint32(module->payload, &module->position);
	
	uint32 section_size = decode_var_uint32(module->payload, &module->position);
	
	//section -> size = section_size;
	section -> type = section_type;
	section -> section_offset = module -> position;
	
	DEBUG("Section type %d\n", section->type);

	if(section->type > 11 || section->type < 0){
		ERROR("Invalid section id %d\n", section->type);	
		exit(1);
	}
	switch (section->type)
	{
		case 1: // Types section
			parse_types_section(section, module, section_size);
			break;
		case 2: // Import section
			parse_import_section(section, module, section_size);
			break;
		case 3: // Function section
			parse_function_section(section, module, section_size);
			break;
		case 4: // Table section
			parse_table_section(section, module, section_size);
			break;
		case 5: // Memory section
			parse_memory_section(section, module, section_size);
			break;
		case 6: // Global section
			parse_global_section(section, module, section_size);
			break;
		case 7: // Export section
			parse_export_section(section, module, section_size);
			break;
		case 8: // Start section
			parse_start_section(section, module, section_size);
			break;
		case 9: // Element section
			parse_elem_section(section, module, section_size);
			break;
		case 10: // Code section
			parse_code_section(section, module, section_size);
			break;
		case 11: // Data section
			parse_data_section(section, module, section_size);
			break;
		case 0: // Custom
		//exit(1);
			parse_custom_section(section, module, section_size);
			break;
	default:
		ERROR("Undefined section type %d\n", section_type);
		exit(1);
		break;
	}

	return section;
	//BYTE_OFFSET += section->size;
}
