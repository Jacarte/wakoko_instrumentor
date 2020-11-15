#ifndef WAKOKO_INSTRUMENTER
#define WAKOKO_INSTRUMENTER
#include <include/wasm-decoder/wasm-decoder.h>

#define NEW_CODE_BUFFER_SIZE 1 << 20
#define NEW_ID_BUFFER_SIZE 7

void make_coverage_instrumentation(WASMModule* module);

#endif