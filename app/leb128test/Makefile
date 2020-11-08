
OBJS = utils.o leb128.o
LINK := $(addprefix  $(L)/,$(OBJS))


all: program
	gcc $(INC) -Wall -o leb128test.out $(LINK) leb128test.o
	./leb128test.out
	mv *.o $(BUILD)
	mv *.out $(BIN)

program: leb128test.c
	gcc -c $(INC) leb128test.c

