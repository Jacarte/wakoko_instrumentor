#include <stdio.h>
#include <include/utils/utils.h>
#include <include/utils/leb128.h>


typedef struct FuncTypeSections{
	int form;
	unsigned int param_count;
	char* param_types;
	
	unsigned int ret_count;
	char* return_types;
} FuncTypeSection;

typedef struct TypeSections {
	int count;
	FuncTypeSection* sections[0];
} TypeSection;

typedef struct {

	unsigned int section_offset;
	unsigned int type;
	unsigned int size;
	
	void* instance;
} Section;

typedef struct WASMModules{

	char* payload;
	int position;
	int count;
	Section * sections[0];

} WASMModule;

#define READ_AND_CONSUME_BUFFER_PIECE(buffer, offset, size, dst) memcpy(dst, buffer + offset, size); BYTE_OFFSET += size;

Section* parse_section(WASMModule* module);

void parse_wasm(char* bytes, int size);