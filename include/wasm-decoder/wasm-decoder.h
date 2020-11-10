#include <stdio.h>
#include <include/utils/utils.h>
#include <include/utils/leb128.h>
#include <include/wasm-decoder/opcodes.h>
#include <string.h> 

typedef struct {
	int form;
	unsigned int param_count;
	char* param_types;
	
	unsigned int ret_count;
	char* return_types;
} FuncTypeSection;


typedef struct {
	unsigned int index;
} FunctionImport;

typedef struct {
	int elem_type;
	int limit;
	unsigned int limit_initial;
	int limit_maximum;
} TableImport;


typedef struct {
	int limit;
	unsigned int limit_initial;
	int limit_maximum;
} MemoryImport;


typedef struct {
	char content_type;
	char is_mutable;
} GlobalImport;

typedef struct {
	char content_type;
	char is_mutable;
	char* init;
} Global;


typedef struct {
	int module_name_len;
	char*  module_name;

	int field_name_len;
	char* field_name;

	int kind;
	void * import_kind; // 

} ImportType;

typedef struct {
	int count;
	FuncTypeSection* sections[0];
} TypeSection;

typedef struct {
	int count;
	ImportType* imports[0];
} ImportSection;

typedef struct {
	unsigned int count;
	int* types;
} FunctionSection;

typedef struct {
	unsigned int count;
	TableImport * tables[0];	
} TableSection;


typedef struct {
	unsigned int count;
	MemoryImport * memories[0];	
} MemorySection;

typedef struct {
	unsigned int count;
	GlobalImport * globals[0];	
} GlobalSection;

typedef struct{
	unsigned int field_len;
	char* field_str;
	char kind;
	unsigned int index;
} ExportEntry;

typedef struct {
	unsigned int count;
	ExportEntry * exports[0];	
} ExportSection;


typedef struct {

	unsigned int section_offset;
	unsigned int type;
	unsigned int size;

	void* instance; // ImportSectionPtr, TypeSectionPtr
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