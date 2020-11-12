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


typedef struct  {
	char content_type;
	char is_mutable;
	char* init_code_chunk;
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
	Array types;
} TypeSection;

typedef struct {
	int count;
	Array imports;
} ImportSection;

typedef struct {
	unsigned int count;
	int* types;
} FunctionSection;

typedef struct {
	unsigned int count;
	Array tables;	
} TableSection;


typedef struct {
	unsigned int count;
	Array memories;	
} MemorySection;

typedef struct {
	unsigned int count;
	Array globals;	// GlobalImport *
} GlobalSection;

typedef struct {
	unsigned int field_len;
	char* field_str;
	char kind;
	unsigned int index;
} ExportEntry;

typedef struct {
	unsigned int count;
	Array exports;	
} ExportSection;

typedef struct {
  unsigned int index;
} StartSection;


typedef struct {
  unsigned int index;
  unsigned int fcount;
  unsigned int * findexes[0];
  char* init_code_chunk;
} ElementEntry;


typedef struct {
  unsigned int count;
  Array  elements;	
} ElementSection;


typedef struct {
	unsigned int n;
	char valtype;
}  LocalDef;

typedef struct {
	unsigned int size;
	unsigned int local_count;
	Array locals;
	char* code_chunk;
} FunctionBody;

typedef struct {
  unsigned int count;
  Array functions;	
} CodeSection;


typedef struct {
  unsigned int index;
  unsigned int size;
  char* init_chunk_code;
  char* data;
} DataSegment;

typedef struct {
  unsigned int count;
  Array segments;	
} DataSection;

typedef struct {
  unsigned int name_len;
  char* name;	
  char* data;
} CustomSection;


typedef struct {

	unsigned int section_offset;
	unsigned int type;
	unsigned int size;
	void* instance; // ImportSectionPtr, TypeSectionPtr
} Section;


typedef struct{

	char* payload;
	int position;
	int count;
	int size;
	Array sections;

} WASMModule;

#define READ_AND_CONSUME_BUFFER_PIECE(buffer, offset, size, dst) memcpy(dst, buffer + offset, size); BYTE_OFFSET += size;

Section* parse_section(WASMModule* module);

WASMModule* parse_wasm(char* bytes, unsigned int size);