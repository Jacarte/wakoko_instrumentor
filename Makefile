lib_utils := lib/utils lib/wasm-decoder
libraries := $(lib_utils)
leb128test := app/leb128test
decoder := app/wasm-decoder

include_dirs := "-I$(PWD) -I$(PWD)"
build_dir := $(PWD)/build
bin_dir := $(PWD)/bin
object_dir := $(PWD)/build
test_resources_dir := $(PWD)/test-resources
#$(libraries):
#$(leb128test) $(libraries):
#        $(MAKE) $(INC) --directory=$@

#$(leb128test): $(libraries)

FLAGS=""
CCFLAGS="-Wall"

.PHONY: all

all:
	for d in $(libraries) ; \
	do                               \
		INC=$(include_dirs) \
		BUILD=$(build_dir) \
		BIN=$(bin_dir) \
		L=$(object_dir) \
		FLAGS=$(FLAGS) \
		RESOURCES=$(test_resources_dir) \
		$(MAKE) --directory=$$d;       \
	done

check: all
	for d in $(leb128test) $(decoder) ; \
	do                               \
		INC=$(include_dirs) \
		BUILD=$(build_dir) \
		BIN=$(bin_dir) \
		L=$(object_dir) \
		FLAGS=$(FLAGS) \
		RESOURCES=$(test_resources_dir) \
		$(MAKE) --directory=$$d;       \
	done
	


clean:
	find . -name "*.o" -exec rm {} \;