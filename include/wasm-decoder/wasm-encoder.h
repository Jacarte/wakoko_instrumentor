
#ifndef WASM_ENCODING
#define WASM_ENCODING
#include <include/wasm-decoder/wasm-decoder.h>
#define MAX_OUT_SIZE (1 << 20) * 20

int encode_wasm(WASMModule* module, char* out);

#endif