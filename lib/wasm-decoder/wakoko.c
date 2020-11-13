#include <include/wasm-decoder/wasm-decoder.h>
#include <include/wasm-decoder/wakoko.h>


int recalculate_code_section_size(CodeSection* section){
	
	int total = 0;

	FunctionBody s;
	for(int i = 0; i < section->count; i++){
		get_element(&section->functions, i, &s);
		total += s.code_size;

		LocalDef ld;
		for(int j = 0; j < s.local_count; j++){
			get_element(&s.locals, j, &ld);
			total += get_encoding_size(ld.valtype, 0);; // ld -> valtype
			total += get_encoding_size(ld.n, 0);
		}

		total += get_encoding_size(s.local_count, 0);
		total += get_encoding_size(s.size, 0);
	}

	int size = get_encoding_size(/*section type*/section->count, 0);

	return total + size;
}


int recalculate_global_section_size(GlobalSection* section){
	
	int total = 0;

	GlobalImport s;
	for(int i = 0; i < section->count; i++){
		get_element(&section->globals, i, &s);
		total += s.code_size;
		total += get_encoding_size(s.content_type, 0);
		total += get_encoding_size(s.is_mutable, 0);
	}

	int size = get_encoding_size(/*section type*/section->count, 0);

	return total + size;
}


int recalculate_exports_section_size(ExportSection* section){
	
	int total = 0;

	ExportEntry s;
	for(int i = 0; i < section->count; i++){
		get_element(&section->exports, i, &s);
		total += s.field_len;
		total += get_encoding_size(s.field_len, 0);
		total += get_encoding_size(s.index, 0);
		total += get_encoding_size(s.index, 0);
	}

	int size = get_encoding_size(/*section type*/section->count, 0);

	return total + size;
}



char* create_id(int id, int * size){
	char *idStr = (char*)allocate_and_register(NEW_ID_BUFFER_SIZE);
	int index = 1;
	idStr[NEW_ID_BUFFER_SIZE - 1] ='c';

	while(id){
		int remainder = id%10;

		idStr[NEW_ID_BUFFER_SIZE - index++] = '0' + remainder;
		id = id/10;
	}
	*(size) = index;

	//printf("%lld %lld\n",idStr, idStr + (NEW_ID_BUFFER_SIZE - index));
	idStr[NEW_ID_BUFFER_SIZE - index] ='c';
	return idStr + (NEW_ID_BUFFER_SIZE - index);
}

void make_coverage_instrumentation(WASMModule* module){
	printf("Instrumenting for coverage \n");
	// traverse code section injecting global callbacks
	
	FunctionBody body;

	int cumul = 0;

	char CODE_BUFFER[NEW_CODE_BUFFER_SIZE];
	int globals = 0;
	int pad = 50;

	for(int i = 0; i < module->codeSection->count; i++){
		get_element(&module->codeSection->functions, i, &body);
		int position = 0;

		CODE_BUFFER[position++] = GET_GLOBAL;
		encode_var_uint_leb128(globals + pad, 0, CODE_BUFFER + position, &position);
		CODE_BUFFER[position++] = I32_CONST;
		encode_var_uint_leb128(1, 0, CODE_BUFFER + position, &position);
		CODE_BUFFER[position++] = I32_ADD;
		CODE_BUFFER[position++] = SET_GLOBAL;
		encode_var_uint_leb128(pad + globals++, 0, CODE_BUFFER + position, &position);

		for(int j = 0; j < body.code_size;j++){
			CODE_BUFFER[position++] = body.code_chunk[j];
		}

    	body.code_chunk = (char*)allocate_and_register(position);
		memcpy(body.code_chunk, CODE_BUFFER, position);

		//printf("body suze %d %d %02x\n", body.size, body.size + position - body.code_size, CODE_BUFFER[position - 1]);

		body.size = body.size + (position - body.code_size);
		body.code_size = position;

		//printf("%d %d %02x\n", position, body.code_size, body.code_chunk[body.code_size- 1]);
		set_element(&module->codeSection->functions, i, &body);
		memset(CODE_BUFFER, 0, NEW_CODE_BUFFER_SIZE);
	}
	module->codeSection->size = recalculate_code_section_size(module->codeSection);
	printf("Probes inserted\n");

	GlobalSection * section = module->globalSection;
	int count = 0;

	char PADD_GLOBAL_INIT[] = {I32_CONST,
			0,
			OPCODE_END};

	for(int i = module->globalSection->count; i < pad + module->globalSection->count; i++){
		GlobalImport * g = (GlobalImport*)allocate_and_register(sizeof(GlobalImport));
		g->content_type = 0x7f;
		g->is_mutable = 0x1;


		g->code_size = 3;
		g->init = PADD_GLOBAL_INIT;
		count++;
		insert_array(&section->globals, g);
	}


	char CV_GLOBAL_INIT[] = {I32_CONST,
			0,
			OPCODE_END};
	for(int i = 0; i < globals; i++){
		GlobalImport * g = (GlobalImport*)allocate_and_register(sizeof(GlobalImport));
		g->content_type = 0x7f;
		g->is_mutable = 0x1;


		g->code_size = 3;
		g->init = CV_GLOBAL_INIT;
		count++;
		insert_array(&section->globals, g);
	}


	section->count += count;

	section->size = recalculate_global_section_size(section);

	printf("Extra globals added\n");


	ExportSection * exportSection = module->exportSection;
	

	for(int i = 0; i < globals; i++){
		ExportEntry * cvEntry = (ExportEntry*)allocate_and_register(sizeof(ExportEntry));
		
		cvEntry->index = i + pad;
		cvEntry->kind = 0x03;
		cvEntry->field_str= create_id(i + pad, &cvEntry->field_len);


		insert_array(&exportSection->exports, cvEntry);
	}

	exportSection->count += globals;
	exportSection->size = recalculate_exports_section_size(exportSection);
	printf("Instrumentation done\n");
	// increase size of function body
	
	// increase size of the section

	// add globals


	// export globals
}