#include <include/wasm-decoder/wasm-decoder.h>

void encode_section_header(Section * section, char* out, int* position){

	encode_var_uint_leb128(section->type, 0, out + *position, position);
	encode_var_uint_leb128(section->size, 0, out + *position, position);
}

void encode_types_section(TypeSection* typesSection, char* out, WASMModule* module, int* position){


	// Section payload
	encode_var_uint_leb128(/*section type*/typesSection->count, 0, out + *position, position);

	FuncTypeSection s;
	for(int i = 0; i < typesSection->count; i++){
		get_element(&typesSection->types, i, &s);

		// write form
		encode_var_uint_leb128(s.form, 0, out + *position, position);
		// param_count
		encode_var_uint_leb128(s.param_count, 0, out + *position, position);

		// write param types
		for(int j = 0; j < s.param_count; j++)
			(out + *position)[j] = s.param_types[j];

		(*position)+=s.param_count;

		// return_count
		encode_var_uint_leb128(s.ret_count, 0, out + *position, position);

		// write return types
		for(int j = 0; j < s.ret_count; j++)
			(out + *position)[j] = s.return_types[j];
		(*position)+=s.ret_count;
	}

}


void encode_table_section(TableSection* typesSection, char* out, WASMModule* module, int* position){


	// Section payload
	encode_var_uint_leb128(/*section type*/typesSection->count, 0, out + *position, position);

	TableImport s;
	for(int i = 0; i < typesSection->count; i++){
		get_element(&typesSection->tables, i, &s);

		(out + *position)[0] = s.elem_type;
		(*position)+=1;

		encode_var_uint_leb128(s.limit, 0, out + *position, position);
		encode_var_uint_leb128(s.limit_initial, 0, out + *position, position);

		if(s.limit)
			encode_var_uint_leb128(s.limit_maximum, 0, out + *position, position);

	}

}

void encode_custom_section(CustomSection* custom_section, char* out, WASMModule* module, int* position){


	// Section payload
	encode_var_uint_leb128(/*section type*/custom_section->name_len, 0, out + *position, position);
	memcpy(out + *position, custom_section->name, custom_section->name_len);
	(*position)+=custom_section->name_len;

	memcpy(out + *position, custom_section->data, custom_section->data_size);
	(*position)+= custom_section->data_size;
}


void encode_memory_section(MemorySection* section, char* out, WASMModule* module, int* position){


	// Section payload
	encode_var_uint_leb128(/*section type*/section->count, 0, out + *position, position);

	MemoryImport s;
	for(int i = 0; i < section->count; i++){
		get_element(&section->memories, i, &s);

		encode_var_uint_leb128(s.limit, 0, out + *position, position);
		encode_var_uint_leb128(s.limit_initial, 0, out + *position, position);

		if(s.limit)
			encode_var_uint_leb128(s.limit_maximum, 0, out + *position, position);

	}

}


void encode_global_section(GlobalSection* section, char* out, WASMModule* module, int* position){


	// Section payload
	encode_var_uint_leb128(/*section type*/section->count, 0, out + *position, position);

	Global s;
	for(int i = 0; i < section->count; i++){
		get_element(&section->globals, i, &s);

		(out + *position)[0] = s.content_type;
		(*position)+=1;

		(out + *position)[0] = s.is_mutable;
		(*position)+=1;
		
		memcpy(out + *position, s.init, s.code_size);
		//printf("%02x \n", s.init[0]);
		(*position) += s.code_size;
	}

}


void encode_export_section(ExportSection* section, char* out, WASMModule* module, int* position){


	// Section payload
	encode_var_uint_leb128(/*section type*/section->count, 0, out + *position, position);

	ExportEntry s;
	for(int i = 0; i < section->count; i++){
		get_element(&section->exports, i, &s);

		// write module name
		encode_var_uint_leb128(s.field_len, 0, out + *position, position);
		memcpy(out + *position, s.field_str, s.field_len);
		(*position) += s.field_len;

		
		(out + *position)[0] = s.kind;
		(*position)+=1;
		encode_var_uint_leb128(s.index, 0, out + *position, position);
	}

}


void encode_start_section(StartSection* section, char* out, WASMModule* module, int* position){
	// Section payload
	encode_var_uint_leb128(/*section type*/section->index, 0, out + *position, position);
}



void encode_code_section(CodeSection* section, char* out, WASMModule* module, int* position){


	// Section payload
	encode_var_uint_leb128(/*section type*/section->count, 0, out + *position, position);

	FunctionBody s;
	for(int i = 0; i < section->count; i++){
		get_element(&section->functions, i, &s);

		// write module name
		encode_var_uint_leb128(s.size, 0, out + *position, position);
		encode_var_uint_leb128(s.local_count, 0, out + *position, position);

		LocalDef local;
		for(int j = 0; j < s.local_count; j++){
			get_element(&s.locals, j, &local);
			encode_var_uint_leb128(local.n, 0, out + *position, position);
			(out + *position)[0] = local.valtype;
			(*position)+=1;
		}

		memcpy(out + *position, s.code_chunk, s.code_size);
		(*position)+=s.code_size;
	}

}


void encode_element_section(ElementSection* section, char* out, WASMModule* module, int* position){

	printf("Element section\n");

	// Section payload
	encode_var_uint_leb128(/*section type*/section->count, 0, out + *position, position);

	printf("Element section size %d\n", section->count);
	ElementEntry s;
	for(int i = 0; i < section->count; i++){
		get_element(&section->elements, i, &s);

		encode_var_uint_leb128(s.index, 0, out + *position, position);

		memcpy(out + *position, s.init_code_chunk, s.code_size);
		(*position)+=s.code_size;

		encode_var_uint_leb128(s.fcount, 0, out + *position, position);
		//printf("\tElement entry %d\n", s.fcount);
		for(int j = 0; j < s.fcount; j++){
			int fidx = s.findexes[j];
			encode_var_uint_leb128(fidx,0, out + *position, position);
		}
	}

}


void encode_data_section(DataSection* section, char* out, WASMModule* module, int* position){


	// Section payload
	encode_var_uint_leb128(/*section type*/section->count, 0, out + *position, position);

	DataSegment s;
	for(int i = 0; i < section->count; i++){
		get_element(&section->segments, i, &s);

		// write module name
		encode_var_uint_leb128(s.index, 0, out + *position, position);

		memcpy(out + *position, s.init_chunk_code, s.code_size);
		(*position)+=s.code_size;

		encode_var_uint_leb128(s.size, 0, out + *position, position);

		memcpy(out + *position, s.data, s.size);
		(*position)+=s.size;
	}

}


void encode_function_section(FunctionSection* section, char* out, WASMModule* module, int* position){

	// Section payload
	encode_var_uint_leb128(/*section type*/section->count, 0, out + *position, position);

	for(int i = 0; i < section->count; i++){
		// write form
		encode_var_uint_leb128(section->types[i], 0, out + *position, position);
	}

}

void encode_import_section(ImportSection* typesSection, char* out, WASMModule* module, int* position){


	// Section payload
	encode_var_uint_leb128(/*section type*/typesSection->count, 0, out + *position, position);


	ImportType s;
	for(int i = 0; i < typesSection->count; i++){
		get_element(&typesSection->imports, i, &s);

		// write module name
		encode_var_uint_leb128(s.module_name_len, 0, out + *position, position);
		memcpy(out + *position, s.module_name, s.module_name_len);
		(*position) += s.module_name_len;


		/// write field name
		encode_var_uint_leb128(s.field_name_len, 0, out + *position, position);
		memcpy(out + *position, s.field_name, s.field_name_len + 1);
		(*position) += s.field_name_len;

		(out + *position)[0] = s.kind;
		(*position)++;
		
		switch (s.kind)
		{
			case 0: // Function
				{
					FunctionImport* fImport = (FunctionImport*)s.import_kind;
					encode_var_uint_leb128(fImport->index,0, out + *position , position);
				}
				break;
			case 1: // Table
				{
					TableImport* tImport = (TableImport*)s.import_kind;

					(out + *position)[0] = tImport->elem_type;
					(*position)++;
					encode_var_uint_leb128(tImport->limit,0, out + *position , position);
					encode_var_uint_leb128(tImport->limit_initial,0, out + *position , position);

					if(tImport->limit)
						encode_var_uint_leb128(tImport->limit_maximum,0, out + *position , position);

				}
				break;
			case 2: // Memory
				{
					MemoryImport* mImport = (MemoryImport*)s.import_kind;

					encode_var_uint_leb128(mImport->limit,0, out + *position , position);
					encode_var_uint_leb128(mImport->limit_initial,0, out + *position , position);

					if(mImport->limit)
						encode_var_uint_leb128(mImport->limit_maximum,0, out + *position , position);

				}
				break;
			case 3: // Global
				{

					GlobalImport* gImport = (GlobalImport*)s.import_kind;

					(out + *position)[0] = gImport->content_type;
					(*position)++;

					(out + *position)[0] = gImport->is_mutable;
					(*position)++;

					// check if this global has initial code
				}
				break;
			
			default:
				break;
		}

		// param_count
		//encode_var_uint_leb128(s.param_count, 0, out + *position, position);

/*
		// write param types
		for(int j = 0; j < s.param_count; j++)
			(out + *position)[j] = s.param_types[j];

		(*position)+=s.param_count;

		// return_count
		encode_var_uint_leb128(s.ret_count, 0, out + *position, position);

		// write return types
		for(int j = 0; j < s.ret_count; j++)
			(out + *position)[j] = s.return_types[j];
		(*position)+=s.ret_count;*/

	}

}

int encode_wasm(WASMModule* module, char* out){

	int position = 0;

	// WRITE MAGIC
	writeUint32LE(out,0x6d736100, &position);

	// WRITE VERSION  1
	writeUint32LE( out + position, module->version,  &position);

	Section s;
	for(int i = 0; i < module->count; i++){
		
		get_element(&module->sections, i, &s);
		encode_section_header(&s, out, &position);
		//printf("Encoding %d\n", s.type);
		switch (s.type)
		{
		case 1: // types
			{
				TypeSection * typeS = (TypeSection *) s.instance;
				encode_types_section(typeS, out, module, &position);
			}
			break;
		case 2:
			{
				ImportSection * importS = (ImportSection *) s.instance;
				encode_import_section(importS, out, module, &position);
			}
			break;
		case 3:
			{
				FunctionSection * funcSection = (FunctionSection *) s.instance;
				encode_function_section(funcSection, out, module, &position);
			}
			break;
		case 4:
			{
				TableSection * tableSection = (TableSection *) s.instance;
				encode_table_section(tableSection, out, module, &position);
			}
		break;
		case 5:
			{
				MemorySection * memSection = (MemorySection *) s.instance;
				encode_memory_section(memSection, out, module, &position);
			}
		break;
		
		case 6:
			{
				GlobalSection * globalSection = (GlobalSection *) s.instance;
				encode_global_section(globalSection, out, module, &position);
			}
			break;
		case 7:
			{
				ExportSection * exportSection = (ExportSection *) s.instance;
				encode_export_section(exportSection, out, module, &position);

			}
		break;
		case 8:
			{
				StartSection * startSection = (StartSection *) s.instance;
				encode_start_section(startSection, out, module, &position);
			}
		break;
		case 9:
			{
				ElementSection * elemSection = (ElementSection *) s.instance;
				encode_element_section(elemSection, out, module, &position);

			}
			
		break;
		case 10:
			{
				CodeSection * codeSection = (CodeSection *) s.instance;
				encode_code_section(codeSection, out, module, &position);

			}
			
		break;
		
		case 11:
			{
				DataSection * dataSection = (DataSection *) s.instance;
				encode_data_section(dataSection, out, module, &position);
			}
			
		break;
		
		case 0:
			{
				CustomSection * customSection = (CustomSection *) s.instance;
				encode_custom_section(customSection, out, module, &position);
			}
			
		break;
		
		default:
			printf("UNKNNOWN bad parsing\n");
			break;
		}

	}

	return position;
}