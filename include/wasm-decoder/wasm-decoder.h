#include <stdio.h>
#include <include/utils/utils.h>
#include <include/utils/leb128.h>

typedef struct ModuleSections {

	unsigned int section_offset;
	unsigned int type;
	unsigned int size;
	char* name;

} ModuleSection;

typedef struct WASMModules{

	char* payload;
	int position;
	int count;
	ModuleSection * sections[0];

} WASMModule;


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


#define READ_AND_CONSUME_BUFFER_PIECE(buffer, offset, size, dst) memcpy(dst, buffer + offset, size); BYTE_OFFSET += size;

void parse_section(ModuleSection * section, WASMModule* bytes);

void parse_wasm(char* bytes, int size);