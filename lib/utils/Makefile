


all: utils wasm

utils: leb128.c utils.c
	gcc $(FLAGS) $(INC) $(L) utils.c leb128.c -c -Wall
	mv *.o $(BUILD)


wasm: leb128.c utils.c
	emcc -d -s -s WASM=1 -s SIDE_MODULE=1 -shared -s EXPORT_ALL=1 $(INC) utils.c leb128.c -o leb128.wasm 
	wasm2wat leb128.wasm --generate-names -o leb128.wat
	mv *.wasm $(BUILD)
	mv *.wat $(BUILD)