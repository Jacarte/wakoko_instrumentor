
OBJS = utils.o leb128.o
LINK := $(addprefix  $(L)/,$(OBJS))

all: wasm-decoder

wasm-decoder: wasm-decoder.c
	$(CC) $(CCFLAGS) $(FLAGS) $(INC) $(LINK) wasm-decoder.c -c -Wall
	mv *.o $(BUILD)