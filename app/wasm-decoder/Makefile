
OBJS = utils.o leb128.o wasm-decoder.o wasm-encoder.o
LINK := $(addprefix  $(L)/,$(OBJS))


all: program
	$(CC) $(CCFLAGS)  $(LINK) decoder.o -o decoder.out
	./decoder.out $(RESOURCES)/wasms/addition_chains.wasm
	mv *.o $(BUILD)
	mv *.out $(BIN)

program: decoder.c
	$(CC) -c $(FLAGS) $(INC) decoder.c

