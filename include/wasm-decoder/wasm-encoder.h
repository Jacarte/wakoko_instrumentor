
#ifndef WASM_ENCODING
#define WASM_ENCODING
#include <include/wasm-decoder/wasm-decoder.h>

void encode_wasm(WASMModule* module, char* out);

#endif