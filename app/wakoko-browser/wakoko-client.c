
#include <stdio.h>
#include <stdlib.h>
#include <include/utils/utils.h>
#include <include/wasm-decoder/wasm-decoder.h>
#include <include/wasm-decoder/wakoko.h>
#include <include/wasm-decoder/wasm-encoder.h>
#include <emscripten.h>

char* EMSCRIPTEN_KEEPALIVE instrument_wasm(char* byte_char, int size, int * instrumented_size, int* global_pad, int*global_count){
	

	char bytes[size];
	memcpy(bytes, byte_char, size);
	WASMModule* module = parse_wasm(bytes, size);	
	printf("CORRECT DECODING %d\n", module->size);


	#ifndef DEBUG
	printf("INSTRUMENTING %d FUNCTIONS\n", module->codeSection->count);
	make_coverage_instrumentation(module, global_pad, global_count);
	#endif

	char*  out = (char*)allocate_and_register(MAX_OUT_SIZE);

	int toWrite = encode_wasm(module, out);
	printf("CORRECT ENCODING %d\n", toWrite);

	char* dst = malloc(toWrite);
	(*instrumented_size) = toWrite;
	memcpy(dst, out, toWrite);

	return dst;
}