#ifndef WAKOKO_INSTRUMENTER
#define WAKOKO_INSTRUMENTER
#include <include/wasm-decoder/wasm-decoder.h>

#define NEW_CODE_BUFFER_SIZE 2*(1 << 21)
#define NEW_ID_BUFFER_SIZE 7

void make_coverage_instrumentation(WASMModule* module, int *global_pad, int* global_count);

#endif