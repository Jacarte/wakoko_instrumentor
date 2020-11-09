#include <include/wasm-decoder/wasm-decoder.h>

#ifdef DEBUG
	#include <stdio.h>	
#endif

void parse_wasm(char* bytes, int size){
	// set offset to 0
	BYTE_OFFSET = 0;
	uint32 header = READ_AND_CONSUME_Uint32(bytes, BYTE_OFFSET)
	
	if(header != 0x6d736100){
		#ifdef DEBUG
		printf("Invalid wasm header %04x\n", header);
		#endif
		exit(1); // not a valid WASM module
	}
	
	uint16 version = READ_AND_CONSUME_Uint16(bytes, BYTE_OFFSET)
		
	#ifdef DEBUG
	printf("WASM version %d\n", version);
	#endif

	while(BYTE_OFFSET != size){
		// Create a module section
		ModuleSection section;

		uint32 section_type = decode_var_uint32(bytes, &BYTE_OFFSET);
		uint32 section_size = decode_var_uint32(bytes, &BYTE_OFFSET);


		section.size = section_size;
		section.type = section_type;
		
		parse_section(&section, bytes);
	}
}

void parse_section(ModuleSection * section, char* bytes){

	#ifdef DEBUG
	printf("SECTION type %d\n", section->type);
	#endif

	char* payload = (char*)malloc(section->size);

	READ_AND_CONSUME_BUFFER_PIECE(bytes, BYTE_OFFSET, section->size, payload)

	free(payload);
}