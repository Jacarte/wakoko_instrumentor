#include <include/wasm-decoder/wasm-decoder.h>

#ifdef DEBUG
	#include <stdio.h>	
#endif

void parse_wasm(char* bytes, int size){
	// set offset to 0
	BYTE_OFFSET = 0;
	uint32 header = readUint32LE(bytes, &BYTE_OFFSET);
	
	if(header != 0x6d736100){
		#ifdef DEBUG
		printf("Invalid wasm header %04x\n", header);
		#endif
		exit(1); // not a valid WASM module
	}
	
	uint16 version = readUint16LE(bytes, &BYTE_OFFSET);
		
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

	section->payload = payload;

	switch (section->type)
	{
		case 1: // Types section
			/* code */
			break;
		
		case 2: // Import section
			/* code */
			break;

		case 3: // Function section
			/* code */
			break;

		case 4: // Table section
			/* code */
			break;
		case 5: // Memory section
			/* code */
			break;
		case 6: // Global section
			/* code */
			break;
		case 7: // Export section
			/* code */
			break;
		case 8: // Start section
			/* code */
			break;
		case 9: // Element section
			/* code */
			break;
		case 10: // Code section
			/* code */
			break;
		case 11: // Data section
			/* code */
			break;
		case 0: // Custom
			/* code */
			break;
	default:
		break;
	}

	READ_AND_CONSUME_BUFFER_PIECE(bytes, BYTE_OFFSET, section->size, payload)

	free(payload);
}
