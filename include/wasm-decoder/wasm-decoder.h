

#include <stdio.h>
#include <include/utils/utils.h>
#include <include/utils/leb128.h>

static int BYTE_OFFSET = 0;

typedef struct ModuleSections {
	unsigned int section_offset;
	unsigned int type;
	unsigned int size;
	char* name;
	char* payload;

} ModuleSection;

#define READ_AND_CONSUME_BUFFER_PIECE(buffer, offset, size, dst) memcpy(dst, buffer + offset, size); BYTE_OFFSET += size;

void parse_section(ModuleSection * section, char* bytes);

void parse_wasm(char* bytes, int size);