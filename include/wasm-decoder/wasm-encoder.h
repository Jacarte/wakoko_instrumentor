
#ifndef WASM_ENCODING
#define WASM_ENCODING
#include <include/wasm-decoder/wasm-decoder.h>

int encode_wasm(WASMModule* module, char* out);

#endif