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

	int previous = section->size;
	ExportEntry s;
	for(int i = 0; i < section->count; i++){
		get_element(&section->exports, i, &s);

		total += s.field_len;
		total += get_encoding_size(s.field_len, 0);
		total += get_encoding_size(s.index, 0);
		total += 1; // kind
	}

	int size = get_encoding_size(/*section type*/section->count, 0);

	#ifdef WAKOKO_PRINT
		printf("NEW EXPORT SECTION SIZE %d %d\n", section->size, total +  size);
	#endif
	return total + size;
}


void print_indent(int size){
	#ifdef WAKOKO_PRINT
	for(int i = 0; i < size; i++)
			printf("\t");
	#endif
}

void bypass_sencoding(int size, char* current_code, int* current_index, char* instrumented_code, int* instrumented_index){
	char byte = current_code[(*current_index)++];
	instrumented_code[(*instrumented_index)++] = byte;
	int mask = (-1 << (size - 1)) & 0x7f;
	#ifdef WAKOKO_PRINT
		printf("byte %02x %d %d\n", byte & 0x7f, size, mask);
	#endif

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
	#ifdef WAKOKO_PRINT
			printf("Regular block type one byte 0x%02x\n", block_type);
	#endif
		instrumented_out[(*instrumented_index)++] = block_type;
		(*current_index)++;
	}else{
	#ifdef WAKOKO_PRINT
			printf("Custom block type %02x\n", block_type);
	#endif
		bypass_sencoding(32, current_code, current_index, instrumented_out, instrumented_index);
		
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

void instrument(char* instrumented_out, int* instrumentation_index, int pad, int* globals){
	
	#ifdef WAKOKO_PRINT
		printf("INSTRUMENTING...\n");
	#endif
	instrumented_out[(*instrumentation_index)++] = GET_GLOBAL;
	encode_var_uint_leb128((*globals) + pad, 0, instrumented_out + *instrumentation_index, instrumentation_index);
	instrumented_out[(*instrumentation_index)++] = I32_CONST;
	encode_var_uint_leb128(1, 0, instrumented_out + *instrumentation_index, instrumentation_index);
	instrumented_out[(*instrumentation_index)++] = I32_ADD;
	instrumented_out[(*instrumentation_index)++] = SET_GLOBAL;
	encode_var_uint_leb128(pad + (*globals)++, 0, instrumented_out + *instrumentation_index, instrumentation_index);

}

void make_coverage_instrumentation(WASMModule* module){
	// traverse code section injecting global callbacks
	
	FunctionBody body;

	int cumul = 0;

	char CODE_BUFFER[NEW_CODE_BUFFER_SIZE];
	int globals = 0;
	int pad = 50;	


	if(module->codeSection == NULL){
		// NOTHING to instrument
		return;
	}
	printf("INSTRUMENTING %d \n", module->codeSection->count);
	for(int i = 0; i < module->codeSection->count; i++){
		get_element(&module->codeSection->functions, i, &body);
		int position = 0;

		// FUNCTION START
		// dump function Body
		instrument(CODE_BUFFER, &position, pad, &globals);

		int inject = 0;
		for(int j = 0; j < body.code_size;){
			char OPCODE = body.code_chunk[j++] & 0xff;

			// INJECT CODE HERE
			if(inject){
	#ifdef WAKOKO_PRINT
					printf("INJECTING...%02x\n", OPCODE);
	#endif
				instrument(CODE_BUFFER, &position, pad, &globals);
				inject = 0;
			}
			CODE_BUFFER[position++] = OPCODE;

			switch (OPCODE)
			{
				// variable access
				case GET_LOCAL:
				{
	#ifdef WAKOKO_PRINT
						printf("GET LOCAL\n");
	#endif
					bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position);
				}
				break;
				case GET_GLOBAL:
				{
	#ifdef WAKOKO_PRINT
						printf("GET GLOBAL\n");
	#endif
					bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position);
				}
				break;
				case SET_GLOBAL:
				{
					int index = bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position);
	#ifdef WAKOKO_PRINT
						printf("SET GLOBAL %d\n", index);
	#endif
				}
				break;
				case SET_LOCAL:		
					{			
						int index = bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position);
	#ifdef WAKOKO_PRINT
							printf("SET LOCAL %d\n", index);
	#endif
					}
				break;
				case TEE_LOCAL:
				{
	#ifdef WAKOKO_PRINT
						printf("LOCAL TEE\n");
	#endif
					bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position);
				}
				break;

				// Constants
				case I32_CONST:
				{
	#ifdef WAKOKO_PRINT
						printf("I32 CONST\n");
	#endif
					bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position);
				}
				break;
				case I64_CONST:
				{
	#ifdef WAKOKO_PRINT
						printf("I64 CONST\n");
	#endif
					bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position);
				}
				break;
				case F32_CONST:
				{
	#ifdef WAKOKO_PRINT
						printf("F32 CONST\n");
	#endif
					bypass_fencoding(32, body.code_chunk, &j, CODE_BUFFER, &position);
				}
				break;
				case F64_CONST:
				{
	#ifdef WAKOKO_PRINT
						printf("F64 CONST\n");
	#endif
					bypass_fencoding(64, body.code_chunk, &j, CODE_BUFFER, &position);
				}
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
				{
	#ifdef WAKOKO_PRINT
						printf("0x%02x\n", OPCODE & 0xff);
	#endif
				}
					break;
				// MEMORY
				case  CURRENT_MEMORY:
				{
	#ifdef WAKOKO_PRINT
						printf("CURRENT MEMORY", OPCODE & 0xff);
	#endif
				}
				break;
				case  GROW_MEMORY:
				{
	#ifdef WAKOKO_PRINT
						printf("GROW MEMORY", OPCODE & 0xff);
	#endif
				}
				break;
				case I32_STORE8:
				case I32_STORE16:
				case I32_STORE:
				case F32_STORE:
				case F64_STORE:
				case I64_STORE16:
				case I64_STORE32:
				case I64_STORE8:
				case I64_STORE:
				{
	#ifdef WAKOKO_PRINT
						printf("MEMORY STORE\n");
	#endif
					bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position); // address
					bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position); // offset
				}
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
				{
	#ifdef WAKOKO_PRINT
						printf("MEMORY LOAD\n");
	#endif
					bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position); // address
					bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position); // offset
				}
				break;
				case UNREACHABLE:
				{
	#ifdef WAKOKO_PRINT
						printf("UNRECHEABLE\n");
	#endif
				}
					break;
				case NOP:
				{
	#ifdef WAKOKO_PRINT
						printf("NOP\n");
	#endif
				}
					break;
				case IF:
				{
	#ifdef WAKOKO_PRINT
						printf("Entering IF \n");
	#endif							
					bypass_blocktype(CODE_BUFFER, body.code_chunk, &position, &j);
					inject = 1;
				}
				break;
					
				case ELSE:
					{
	#ifdef WAKOKO_PRINT
						printf("Entering IF else\n");
	#endif
						inject = 1;
					}
					break;

				case BR:
					{
	#ifdef WAKOKO_PRINT
							printf("BR \n");
	#endif
						bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position); // LBLIDX
					}
					break;

				case BR_IF:
					{
	#ifdef WAKOKO_PRINT
							printf("BR IF\n", position);
	#endif
						bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position); // LBLIDX
						inject = 1;
					}
					break;
				case LOOP:
					{
	#ifdef WAKOKO_PRINT
							printf("Entering loop %d\n", position);
	#endif
						bypass_blocktype(CODE_BUFFER, body.code_chunk, &position, &j);
						inject = 1;
					}
					break;
				case BLOCK:
					{
	#ifdef WAKOKO_PRINT
							printf("Entering block %d\n", position);
	#endif
						bypass_blocktype(CODE_BUFFER, body.code_chunk, &position, &j);
						inject = 1;
					}
					break;
				case RETURN:
					{
	#ifdef WAKOKO_PRINT
							printf("RETURN\n");
	#endif
					}
					break;
				case DROP:
					{
	#ifdef WAKOKO_PRINT
							printf("DROP\n");
	#endif
					}
					break;
				case SELECT:
					{
	#ifdef WAKOKO_PRINT
							printf("SELECT\n");
	#endif
					}
					break;
				case BR_TABLE:
					{
	#ifdef WAKOKO_PRINT
							printf("BR_TABLE\n\t");
	#endif
						int size = bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position); // LBLIDX

						for(int i = 0; i < size; i++){
							int val =bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position);
	#ifdef WAKOKO_PRINT
								printf("%d ",  val);
	#endif
						}
	#ifdef WAKOKO_PRINT
							printf("\n");
	#endif
						bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position); // LBLIDX

					}
					break;
				case CALL:
				case CALL_INDIRECT:
					{
	#ifdef WAKOKO_PRINT
							printf("CALL 0x%02x\n", OPCODE);
	#endif						
						bypass_var_uint(body.code_chunk, &j, CODE_BUFFER, &position); // fidxIDX
						if(OPCODE == CALL_INDIRECT){
							CODE_BUFFER[position++] = 0x00;
							j++;
						}
					}
					break;
				case OPCODE_END:
					{
	#ifdef WAKOKO_PRINT
							printf("End %d\n", position);
	#endif

						if(j != body.code_size)
							inject = 1; 
					}
					break;
				
				default:
					CODE_BUFFER[position++] = OPCODE;
					printf("UNKNOWN OPCODE %02x\n", OPCODE & 0xff);
					exit(1);
					break;
			}

		}

    	body.code_chunk = (char*)allocate_and_register(position);
		memcpy(body.code_chunk, CODE_BUFFER, position);


		body.size = body.size + (position - body.code_size);
		body.code_size = position;

		set_element(&module->codeSection->functions, i, &body);
		//memset(CODE_BUFFER, 0, NEW_CODE_BUFFER_SIZE);
	}
	module->codeSection->size = recalculate_code_section_size(module->codeSection);
	#ifdef WAKOKO_PRINT
		printf("Probes inserted %d\n", globals);
	#endif

	#ifdef WAKOKO_PRINT
		printf("CODE BUFFER SIZE %d\n", NEW_CODE_BUFFER_SIZE);
	#endif
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

	#ifdef WAKOKO_PRINT
		printf("Extra globals added\n");
	#endif


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
	printf("Instrumentation done, %d  probes inserted\n", globals);
}