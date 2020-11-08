lib_utils := lib/utils
libraries := $(lib_utils)
leb128test := app/leb128test

include_dirs := "-I$(PWD) -I$(PWD)"
build_dir := $(PWD)/build
bin_dir := $(PWD)/bin
object_dir := $(PWD)/build
#$(libraries):
#$(leb128test) $(libraries):
#        $(MAKE) $(INC) --directory=$@

#$(leb128test): $(libraries)

FLAGS="-DDEBUG"

.PHONY: all $(libraries)

all:
	for d in $(libraries) ; \
	do                               \
		INC=$(include_dirs) \
		BUILD=$(build_dir) \
		BIN=$(bin_dir) \
		L=$(object_dir) \
		FLAGS=$(FLAGS) \
		$(MAKE) --directory=$$d;       \
	done

check: all
	for d in  $(leb128test) ; \
	do                               \
		INC=$(include_dirs) \
		BUILD=$(build_dir) \
		BIN=$(bin_dir) \
		L=$(object_dir) \
		FLAGS=$(FLAGS) \
		$(MAKE) --directory=$$d;       \
	done
	


clean:
	find . -name "*.o" -exec rm {} \;