#include <include/wasm-decoder/wasm-decoder.h>
#include <include/wasm-decoder/wakoko.h>

void make_coverage_instrumentation(WASMModule* module){
	printf("Instrumenting for coverage \n");
	// traverse code section injecting global callbacks
	
	FunctionBody body;

	int cumul = 0;

	char CODE_BUFFER[NEW_CODE_BUFFER_SIZE];
	int globals = 1;

	for(int i = 0; i < module->codeSection->count; i++){
		get_element(&module->codeSection->functions, i, &body);
		int position = 0;

		CODE_BUFFER[position++] = GET_GLOBAL;
		encode_var_uint_leb128(globals, 0, CODE_BUFFER + position, &position);
		CODE_BUFFER[position++] = SET_GLOBAL;
		encode_var_uint_leb128(globals, 0, CODE_BUFFER + position, &position);
		

		for(int j = 0; j < body.code_size;j++){
			CODE_BUFFER[position++] = body.code_chunk[j];
		}


    	body.code_chunk = (char*)allocate_and_register(position);
		memcpy(body.code_chunk, CODE_BUFFER, position);

		printf("body suze %d %d %02x\n", body.size, body.size + position - body.code_size, CODE_BUFFER[position - 1]);

		body.size = body.size + (position - body.code_size);
		body.code_size = position;

		printf("%d %d %02x\n", position, body.code_size, body.code_chunk[body.code_size- 1]);
		set_element(&module->codeSection->functions, i, &body);
		memset(CODE_BUFFER, 0, NEW_CODE_BUFFER_SIZE);

	}

	printf("Instrumentation done");
	// increase size of function body
	
	// increase size of the section

	// add globals


	// export globals
}