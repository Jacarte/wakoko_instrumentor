#include <include/wasm-decoder/wasm-decoder.h>

#ifdef DEBUG
	#include <stdio.h>	
#endif

void add_section(WASMModule* module, Section* section){
	#ifdef DEBUG
	printf("Adding section %d\n", section->size);
	#endif
	module->count += 1;

	#ifdef DEBUG
	//printf("New sections size %d\n", module->count);
	#endif
	Section* sections = (Section*)allocate_and_register(sizeof(Section)*module->count);
	
	if(module->count > 1)
		memcpy(sections, module->sections[0], sizeof(Section)*(module->count - 2));

	module->sections[module->count - 1] = section;

	//if(module->count > 1)
	//	free(module->sections[0]);
	module->sections[0] = sections;
}

// Linearly parse WASM binary to construct tree structure
void parse_wasm(char* bytes, int size){
	// set offset to 0
	int module_position = 0;

	WASMModule module;
	module.position = module_position;
	module.payload = bytes;
	module.count = 0;
	
	uint32 header = readUint32LE(bytes, &module.position);
	
	#ifdef DEBUG
	printf("position %d\n", module.position);
	#endif
	if(header != 0x6d736100){
		#ifdef DEBUG
		printf("Invalid wasm header %04x\n", header);
		#endif
		exit(1); // not a valid WASM module
	}
	
	uint16 version = readUint16LE(bytes, &module.position);
	//module.position += 4;
		
	#ifdef DEBUG
	printf("position %d\n", module.position);
	#endif 
	#ifdef DEBUG
	printf("WASM version %d\n", version);
	#endif

	while(module.position <= size){
		// Create a module section
		
		Section* section = parse_section(&module);
		#ifdef DEBUG
		//printf("After parsing section position %d\n", module.position);
		#endif
		add_section(&module, section);
	}
}

void parse_types_section(Section * section, WASMModule * module){
	TypeSection * typeS = (TypeSection*)allocate_and_register(sizeof(TypeSection));
	
	#ifdef DEBUG
	printf("position in section %d\n", module->position);
	#endif
	int count = decode_var_uint32(module->payload, &module->position);
	
	typeS->count = count;
	typeS->sections[0] = (FuncTypeSection*)allocate_and_register(count*sizeof(FuncTypeSection));


	for(int i =0; i < count; i++){
		typeS->sections[i] = (FuncTypeSection*)allocate_and_register(sizeof(FuncTypeSection));
		
		int form = decode_var_int32(module->payload, &module->position, 7);
		typeS->sections[i]->form = form;
		
		int param_count = decode_var_uint32(module->payload, &module->position);
		typeS->sections[i]->param_count = param_count;

		typeS->sections[i]->param_types = (char*)allocate_and_register(sizeof(param_count));
		for(int j = 0; j < param_count; j++){
			char tpe = readInt8(module->payload, &module->position);
			typeS->sections[i]->param_types[j] = tpe;
		}

		int return_count = readInt8(module->payload, &module->position);

		typeS->sections[i]->return_types = (char*)allocate_and_register(sizeof(return_count));
		for(int j=0; j < return_count; j++){
			char tpe = readInt8(module->payload, &module->position);
			typeS->sections[i]->return_types[j] = tpe;
		}
	}

	section->instance = typeS;

	#ifdef DEBUG
	printf("Types section count %d\n", count);
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
			/* code */
			parse_types_section(section, module);
			break;
		/*
		case 2: // Import section
			break;

		case 3: // Function section
			break;

		case 4: // Table section
			break;
		case 5: // Memory section
			break;
		case 6: // Global section
			break;
		case 7: // Export section
			break;
		case 8: // Start section
			break;
		case 9: // Element section
			break;
		case 10: // Code section
			break;
		case 11: // Data section
			break;
		case 0: // Custom
			module->position += section->size;
			break;*/
	default:
		module->position += section->size;
		break;
	}

	return section;
	//BYTE_OFFSET += section->size;
}
