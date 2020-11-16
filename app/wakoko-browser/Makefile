
OBJS = utils.o leb128.o wasm-decoder.o wasm-encoder.o wakoko.o
LINK := $(addprefix  $(L)/,$(OBJS))


generate_emcc: wakoko-client.c
	mkdir -p emcc
	emcc $(FLAGS)  $(INC) $(SRC_DIR)/lib/wasm-decoder/wakoko.c \
	$(SRC_DIR)/lib/utils/utils.c \
	$(SRC_DIR)/lib/utils/leb128.c \
	$(SRC_DIR)/lib/wasm-decoder/wasm-decoder.c \
	$(SRC_DIR)/lib/wasm-decoder/wasm-encoder.c \
	 wakoko-client.c -o emcc/decoder.html  -s EXIT_RUNTIME=1 -s EXTRA_EXPORTED_RUNTIME_METHODS="['writeArrayToMemory', 'ccall']" -s ALLOW_MEMORY_GROWTH=1 -s TOTAL_MEMORY=600MB
	wasm2wat emcc/decoder.wasm  --generate-names  -o emcc/decoder.wat
	wc -c emcc/decoder.wasm