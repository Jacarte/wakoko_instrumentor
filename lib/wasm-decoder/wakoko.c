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


void print_indent(int size){
	for(int i = 0; i < size; i++)
		printf("\t");
}

void bypass_sencoding(int size, char* current_code, int* current_index, char* instrumented_code, int* instrumented_index){
	char byte = current_code[(*current_index)++];
	instrumented_code[(*instrumented_index)++] = byte;
	int mask = (-1 << (size - 1)) & 0x7f;
	printf("byte %02x %d %d\n", byte & 0x7f, size, mask);

	if(size >= 7 || (byte & mask) == 0 || (byte & mask) == mask ){
		if( byte & 0x80 != 0 ){
			bypass_sencoding(size - 7, current_code, current_index, instrumented_code, instrumented_index);
		}
	}
}


void bypass_fencoding(int size, char* current_code, int* current_index, char* instrumented_code, int* instrumented_index){
	
	size = size/8;
	while(size > 0){
		char byte = current_code[(*current_index)++];
		instrumented_code[(*instrumented_index)++] = byte;
		size--;
	}
}

void bypass_blocktype(char* instrumented_out, char* current_code, int *instrumented_index, int* current_index){
	char block_type = current_code[*(current_index)];

	if(block_type == 0x40 // empty
	|| block_type == 0x7f 
	|| block_type == 0x7d 
	|| block_type == 0x7c 
	|| block_type == 0x7e){
		printf("Regular block type one byte 0x%02x\n", block_type);
		instrumented_out[(*instrumented_index)++] = block_type;
		(*current_index)++;
	}else{
		printf("Custom block type %02x\n", block_type);
		bypass_sencoding(32, current_code, current_index, instrumented_out, instrumented_index);
		//printf("%d\n", *current_index);
	}

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


int bypass_var_uint(char* original_buffer, int* original_offset, char* instrumented_buffer, int* instrumented_offset){

	unsigned shift = 0;
	int result = 0;
	while(1){
		char byte = original_buffer[(*original_offset)++];
		instrumented_buffer[(*instrumented_offset)++] = byte;

		result |= (byte & 0x7f) << shift;

		if((byte & 0x80) == 0)
			break;

		shift += 7;
	}

	return result;
}

void make_coverage_instrumentation(WASMModule* module){
	// traverse code section injecting global callbacks
	
	FunctionBody body;

	int cumul = 0;

	char CODE_BUFFER[NEW_CODE_BUFFER_SIZE];
	int globals = 0;
	int pad = 50;

	for(int i = 0; i < module->codeSection->count; i++){
		get_element(&module->codeSection->functions, i, &body);
		printf("Instrumenting for coverage %d \n", i);
		int position = 0;

		// FUNCTION START
		// CODE_BUFFER[position++] = GET_GLOBAL;
		// encode_var_uint_leb128(globals + pad, 0, CODE_BUFFER + position, &position);
		// CODE_BUFFER[position++] = I32_CONST;
		// encode_var_uint_leb128(1, 0, CODE_BUFFER + position, &position);
		// CODE_BUFFER[position++] = I32_ADD;
		// CODE_BUFFER[position++] = SET_GLOBAL;
		// encode_var_uint_leb128(pad + globals++, 0, CODE_BUFFER + position, &position);

		// dump function Body

		int indent = 0;
		int open = 0;
		for(int j = 0; j < body.code_size;){
			char OPCODE = body.code_chunk[j++] & 0xff;
			CODE_BUFFER[position++] = OPCODE;

			switch (OPCODE)
			{
				// variable access
				case GET_LOCAL:
					printf("GET LOCAL\n");
					bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position);
				break;
				case GET_GLOBAL:
					printf("GET GLOBAL\n");
					bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position);
				break;
				case SET_GLOBAL:
				{
					int index = bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position);
					printf("SET GLOBAL %d\n", index);
				}
				break;
				case SET_LOCAL:		
					{			
						int index = bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position);
						printf("SET LOCAL %d\n", index);
					}
				break;
				case TEE_LOCAL:
					printf("LOCAL TEE\n");
					bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position);
				break;

				// Constants
				case I32_CONST:
					printf("I32 CONST\n");
					bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position);
				break;
				case I64_CONST:
					printf("I64 CONST\n");
					bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position);
				break;
				case F32_CONST:
					printf("F32 CONST\n");
					bypass_fencoding(32, body.code_chunk, &j, CODE_BUFFER, &position);
				break;
				case F64_CONST:
					printf("F64 CONST\n");
					bypass_fencoding(64, body.code_chunk, &j, CODE_BUFFER, &position);
				break;
				// Operations
				case I32_EQUAL_Z :
				case I32_EQUAL :
				case I32_NO_EQUAL :
				case I32_LESS_THAN_SIGNED :
				case I32_LESS_THAN :
				case I32_GREATER_THAN_SIGNED :
				case I32_GREATER_THAN :
				case I32_LESS_EQUAL_THAN_SIGNED :
				case I32_LESS_EQUAL_THAN :
				case I32_GREATAER_EQUAL_THAN_SIGNED :
				case I32_GREATER_EQUAL_THAN :
				// i64
				case I64_EQUAL_Z :
				case I64_EQUAL :
				case I64_NO_EQUAL :
				case I64_LESS_THAN_SIGNED :
				case I64_LESS_THAN :
				case I64_GREATER_THAN_SIGNED :
				case I64_GREATER_THAN :
				case I64_LESS_EQUAL_THAN_SIGNED :
				case I64_LESS_EQUAL_THAN :
				case I64_GREATER_EQUAL_THAN_SIGNED :
				case I64_GREATER_EQUAL_THAN :
				//f32
				case F32_EQUAL_Z :
				case F32_NO_EQUAL :
				case F32_LESS_THAN :
				case F32_GREATER_THAN :
				case F32_LESS_EQUAL_THAN :
				case F32_GREATER_EQUAL_THAN :
				//f64
				case F64_EQUAL_Z :
				case F64_NO_EQUAL :
				case F64_LESS_THAN :
				case F64_GREATER_THAN :
				case F64_LESS_EQUAL_THAN :
				case F64_GREATER_EQUAL_THAN :
				case I32_CLZ:
				case I32_CTZ:
				case I32_POP_CNT:
				case I32_ADD:
				case I32_SUB:
				case I32_MUL:
				case I32_DIV_SIGNED:
				case I32_DIV:
				case I32_REM_SIGNED:
				case I32_REM:
				case I32_AND:
				case I32_OR:
				case I32_XOR:
				case I32_SHL:
				case I32_SHR_SIGNED:
				case I32_SHR:
				case I32_ROTL:
				case I32_ROTR:
				case I64_CLZ:
				case I64_CTZ:
				case I64_POP_CNT:
				case I64_ADD:
				case I64_SUB:
				case I64_MUL:
				case I64_DIV_SIGNED:
				case I64_DIV:
				case I64_REM_SIGNED:
				case I64_REM:
				case I64_AND:
				case I64_OR:
				case I64_XOR:
				case I64_SHL:
				case I64_SHR_SIGNED:
				case I64_SHR:
				case I64_ROTL:
				case I64_ROTR:
				case F32_ABS:
				case F32_NEG:
				case F32_CEIL:
				case F32_FLOOR:
				case F32_TRUNC:
				case F32_NEAREST:
				case F32_SQRT:
				case F32_ADD:
				case F32_SUB:
				case F32_MUL:
				case F32_DIV:
				case F32_MIN:
				case F32_MAX:
				case F32_COPY_SIGN:
				case F64_ABS:
				case F64_NEG:
				case F64_CEIL:
				case F64_FLOOR:
				case F64_TRUNC:
				case F64_NEAREST:
				case F64_SQRT:
				case F64_ADD:
				case F64_SUB:
				case F64_MUL:
				case F64_DIV:
				case F64_MIN:
				case F64_MAX:
				case F64_COPY_SIGN:
				case WRAP_I32_I64:
				case TRUNC_CONV_I32_F32_SIGNED:
				case TRUNC_CONV_I32_F32:
				case TRUNC_CONV_I32_F64_SIGNED:
				case TRUNC_CONV_I32_F64:
				case EXTEND_I32_I64_SIGNED:
				case EXTEND_I32_I64:
				case TRUNC_CONV_I64_F32_SIGNED:
				case TRUNC_CONV_I64_F32:
				case TRUNC_CONV_I64_F64_SIGNED:
				case TRUNC_CONV_I64_F64:
				case CONVERT_F32_F64_SIGNED:
				case CONVERT_F32_F64:
				case CONVERT_F32_I64_SIGNED:
				case CONVERT_F32_I64:
				case DEMOTE_F32_I64:
				case CONVERT_F64_I32_SIGNED:
				case CONVERT_F64_I32:
				case CONVERT_F64_I64_SIGNED:
				case CONVERT_F64_I64:
				case CONVERT_F64_F32:
				case REINTERPRET_I32_F32:
				case REINTERPRET_I64_F64:
				case REINTERPRET_F32_I32:
				case REINTERPRET_F64_I64:
					printf("0x%02x\n", OPCODE & 0xff);
					break;
				// MEMORY
				case I32_STORE8:
				case I32_STORE16:
				case I32_STORE:
				case F32_STORE:
				case F64_STORE:
				case I64_STORE16:
				case I64_STORE32:
				case I64_STORE8:
				case I64_STORE:
					printf("MEMORY STORE\n");
					bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position); // address
					bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position); // offset
				break;
				case F32_MEMORY_LOAD:
				case F64_MEMORY_LOAD:
				case I32_MEMORY_LOAD:
				case I32_S16_MEMORY_LOAD:
				case I32_S8_MEMORY_LOAD:
				case I32_U16_MEMORY_LOAD:
				case I32_U8_MEMORY_LOAD:
				case I64_MEMORY_LOAD:
				case I64_S16_MEMORY_LOAD:
				case I64_S32_MEMORY_LOAD:
				case I64_S8_MEMORY_LOAD:
				case I64_U16_MEMORY_LOAD:
				case I64_U32_MEMORY_LOAD:
				case I64_U8_MEMORY_LOAD:
					printf("MEMORY LOAD\n");
					bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position); // address
					bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position); // offset
				break;
				case UNREACHABLE:
					printf("UNRECHEABLE\n");
					break;
				case NOP:
					printf("NOP\n");
					break;
				case IF:
					printf("Entering IF \n");
					break;
					
				case ELSE:
					{
						printf("Entering IF else\n");
						bypass_blocktype(CODE_BUFFER, body.code_chunk, &position, &j);
					}
					break;

				case BR:
					{
						printf("BR \n");
						bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position); // LBLIDX
					}
					break;

				case BR_IF:
					{
						printf("BR IF\n", position);
						bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position); // LBLIDX
					}
					break;
				case LOOP:
					{
						printf("Entering loop %d\n", position);
						bypass_blocktype(CODE_BUFFER, body.code_chunk, &position, &j);
					}
					break;
				case BLOCK:
					{
						printf("Entering block %d\n", position);
						bypass_blocktype(CODE_BUFFER, body.code_chunk, &position, &j);
					}
					break;
				case RETURN:
					{
						printf("RETURN\n");
					}
					break;
				case DROP:
					{
						printf("DROP\n");
					}
					break;
				case SELECT:
					{
						printf("SELECT\n");
					}
					break;
				case BR_TABLE:
					{
						printf("BR_TABLE\n\t");
						int size = bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position); // LBLIDX

						for(int i = 0; i < size; i++){
							printf("%d ",  bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position));
						}
						printf("\n");
						bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position); // LBLIDX

					}
					break;
				case CALL:
				case CALL_INDIRECT:
					{
						printf("CALL 0x%02x\n", OPCODE);						
						bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position); // fidxIDX
						if(OPCODE == CALL_INDIRECT){
							CODE_BUFFER[position++] = 0x00;
							j++;
						}
					}
					break;
				case OPCODE_END:
					{
						open--;
						//print_indent(indent--);
						printf("End %d\n", position);

						if(j == body.code_size)
							printf("Finish end %d\n", j);
						//CODE_BUFFER[position++] = GET_GLOBAL;
						//encode_var_uint_leb128(globals + pad, 0, CODE_BUFFER + position, &position);
						//CODE_BUFFER[position++] = I32_CONST;
						//encode_var_uint_leb128(1, 0, CODE_BUFFER + position, &position);
						//CODE_BUFFER[position++] = I32_ADD;
						//CODE_BUFFER[position++] = SET_GLOBAL;
						//encode_var_uint_leb128(pad + globals++, 0, CODE_BUFFER + position, &position);
					}
					break;
				
				default:
					CODE_BUFFER[position++] = OPCODE;
					printf("UNKNOWN %02x\n", OPCODE & 0xff);
					exit(1);
					break;
			}

			//if(open)
		}
		if(open > 0)
		{
			printf("ERROR?! %d\n", open);
			//exit(1);
		}
		//if(i == 1)
		//	exit(1);
		//for(int ;k =0; k < position; k++){
		///	printf("%02x ", CODE_BUFFER[k] & 0xff);
		//}
		//printf("\n");


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