
OBJS = utils.o leb128.o wasm-decoder.o wasm-encoder.o wakoko.o
LINK := $(addprefix  $(L)/,$(OBJS))


all: program
	$(CC) $(CCFLAGS)  $(LINK) decoder.o -o decoder.out

	./decoder.out $(RESOURCES)/wasms/Chinese_zodiac.orig.wasm 
	cp $(RESOURCES)/wasms/Chinese_zodiac.orig.wasm  orig.wasm
	wasm2wat orig.wasm -o t2.wat -v > logs.orig.txt
	wasm2wat test.wasm -o t.wat -v > logs.txt
	#bash validate_all.sh $(RESOURCES)/wasms

	mv *.o $(BUILD)
	mv *.out $(BIN)

program: decoder.c
	$(CC) -c $(FLAGS) $(INC) decoder.c

