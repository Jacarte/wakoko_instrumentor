
OBJS = utils.o leb128.o wasm-decoder.o wasm-encoder.o wakoko.o
LINK := $(addprefix  $(L)/,$(OBJS))


all: program check_wakoko
	mv *.o $(BUILD)
	mv *.out $(BIN)

check_all: program
	$(CC) $(CCFLAGS)  $(LINK) decoder.o -o decoder.out

	#./decoder.out $(RESOURCES)/wasms/Chinese_zodiac.orig.wasm 
	#cp $(RESOURCES)/wasms/Chinese_zodiac.orig.wasm  orig.wasm
	#wasm2wat orig.wasm -o t2.wat -v > logs.orig.txt
	#wasm2wat test.wasm -o t.wat -v > logs.txt
	bash validate_all.sh $(RESOURCES)/wasms

check_wakoko: program_instrument
	$(CC) $(CCFLAGS)  $(LINK) decoder.o -o decoder.out

	#./decoder.out $(RESOURCES)/wasms/Bacon_cipher.orig.wasm 
	#cp $(RESOURCES)/wasms/Chinese_zodiac.orig.wasm  orig.wasm
	#wasm2wat orig.wasm -o t2.wat -v > logs.orig.txt
	#wasm2wat test.wasm -o t.wat -v > logs.txt
	bash validate_wakoko.sh $(RESOURCES)/wasms


program: decoder.c
	$(CC) -c $(FLAGS) -DDEBUG $(INC) decoder.c



program_instrument: decoder.c
	$(CC) -c $(FLAGS)  $(INC) decoder.c