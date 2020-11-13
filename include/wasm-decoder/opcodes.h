
#ifndef OPCODES
#define OPCODES

#define OPCODE_END 0x0B

// Constants
#define I32_CONST 0x41
#define I64_CONST 0x42
#define F32_CONST 0x43
#define F64_CONST 0x44

// Control flow operators
#define UNREACHABLE 0x00
#define NOP 0x01
#define BLOCK 0x02
#define LOOP 0x03
#define IF 0x04
#define ELSE 0x05
#define END 0x0b
#define BR 0x0c
#define BR_IF 0x0d
#define BR_TABLE 0x0e
#define RETURN 0x0f

// Call operators
#define CALL 0x10
#define CALL_INDIRECT 0x11


// Variable access
#define GET_LOCAL 0x20
#define SET_LOCAL 0x21
#define TEE_LOCAL 0x22
#define GET_GLOBAL 0x23
#define SET_GLOBAL 0x24



// Memory access
#define I32_MEMORY_LOAD 0x28
#define I64_MEMORY_LOAD 0x29
#define F32_MEMORY_LOAD 0x2a
#define F64_MEMORY_LOAD 0x2b
#define I32_S8_MEMORY_LOAD 0x2c
#define I32_U8_MEMORY_LOAD 0x2d
#define I32_S16_MEMORY_LOAD 0x2e
#define I32_U16_MEMORY_LOAD 0x2f
#define I64_S8_MEMORY_LOAD 0x30
#define I64_U8_MEMORY_LOAD 0x31
#define I64_S16_MEMORY_LOAD 0x32
#define I64_U16_MEMORY_LOAD 0x33
#define I64_S32_MEMORY_LOAD 0x34
#define I64_U32_MEMORY_LOAD 0x35
#define I32_STORE 0x36
#define I64_STORE 0x37
#define F32_STORE 0x38
#define F64_STORE 0x39
#define I32_STORE8 0x3a
#define I32_STORE16 0x3b
#define I64_STORE8 0x3c
#define I64_STORE16 0x3d
#define I64_STORE32 0x3e
#define CURRENT_MEMORY 0x3f
#define GROW_MEMORY 0x40


// Comparison operations
// I32
#define I32_EQUAL_Z 0x45
#define I32_EQUAL 0x46
#define I32_NO_EQUAL 0x47
#define I32_LESS_THAN_SIGNED 0x48
#define I32_LESS_THAN 0x49
#define I32_GREATER_THAN_SIGNED 0x4a
#define I32_GREATER_THAN 0x4b
#define I32_LESS_EQUAL_THAN_SIGNED 0x4c
#define I32_LESS_EQUAL_THAN 0x4d
#define I32_GREATAER_EQUAL_THAN_SIGNED 0x4e
#define I32_GREATER_EQUAL_THAN 0x4f
// i64
#define I64_EQUAL_Z 0x50
#define I64_EQUAL 0x51
#define I64_NO_EQUAL 0x52
#define I64_LESS_THAN_SIGNED 0x53
#define I64_LESS_THAN 0x54
#define I64_GREATER_THAN_SIGNED 0x55
#define I64_GREATER_THAN 0x56
#define I64_LESS_EQUAL_THAN_SIGNED 0x57
#define I64_LESS_EQUAL_THAN 0x58
#define I64_GREATER_EQUAL_THAN_SIGNED 0x59
#define I64_GREATER_EQUAL_THAN 0x5a
//f32
#define F32_EQUAL_Z 0x5b
#define F32_NO_EQUAL 0x5c
#define F32_LESS_THAN 0x5d
#define F32_GREATER_THAN 0x5e
#define F32_LESS_EQUAL_THAN 0x5f
#define F32_GREATER_EQUAL_THAN 0x60
//f64
#define F64_EQUAL_Z 0x61
#define F64_NO_EQUAL 0x62
#define F64_LESS_THAN 0x63
#define F64_GREATER_THAN 0x64
#define F64_LESS_EQUAL_THAN 0x65
#define F64_GREATER_EQUAL_THAN 0x66

// NUMERIC
#define I32_CLZ 0x67
#define I32_CTZ 0x68
#define I32_POP_CNT 0x69
#define I32_ADD 0x6a
#define I32_SUB 0x6b
#define I32_MUL 0x6c
#define I32_DIV_SIGNED 0x6d
#define I32_DIV 0x6e
#define I32_REM_SIGNED 0x6f
#define I32_REM 0x70
#define I32_AND 0x71
#define I32_OR 0x72
#define I32_XOR 0x73
#define I32_SHL 0x74
#define I32_SHR 0x75
#define I32_SHR_SIGNED 0x75
#define I32_SHR 0x76
#define I32_ROTL 0x77
#define I32_ROTR 0x78
// i64
#define I64_CLZ 0x79
#define I64_CTZ 0x7a
#define I64_POP_CNT 0x7b
#define I64_ADD 0x7c
#define I64_SUB 0x7d
#define I64_MUL 0x7e
#define I64_DIV_SIGNED 0x7f
#define I64_DIV 0x80
#define I64_REM_SIGNED 0x81
#define I64_REM 0x82
#define I64_AND 0x83
#define I64_OR 0x84
#define I64_XOR 0x85
#define I64_SHL 0x86
#define I64_SHR_SIGNED 0x87
#define I64_SHR 0x88
#define I64_ROTL 0x89
#define I64_ROTR 0x8a
// f32
#define F32_ABS 0x8b
#define F32_NEG 0x8c
#define F32_CEIL 0x8d
#define F32_FLOOR 0x8e
#define F32_TRUNC 0x8f
#define F32_NEAREST 0x90
#define F32_SQRT 0x91
#define F32_ADD 0x92
#define F32_SUB 0x93
#define F32_MUL 0x94
#define F32_DIV 0x95
#define F32_MIN 0x96
#define F32_MAX 0x97
#define F32_COPY_SIGN 0x98
// f64
#define F64_ABS 0x99
#define F64_NEG 0x9a
#define F64_CEIL 0x9b
#define F64_FLOOR 0x9c
#define F64_TRUNC 0x9d
#define F64_NEAREST 0x9e
#define F64_SQRT 0x9f
#define F64_ADD 0xa0
#define F64_SUB 0xa1
#define F64_MUL 0xa2
#define F64_DIV 0xa3
#define F64_MIN 0xa4
#define F64_MAX 0xa5
#define F64_COPY_SIGN 0xa6

//Conversions
#define WRAP_I32_I64 0xa7
#define TRUNC_CONV_I32_F32_SIGNED 0xa8
#define TRUNC_CONV_I32_F32 0xa9
#define TRUNC_CONV_I32_F64_SIGNED 0xaa
#define TRUNC_CONV_I32_F64 0xab

#define EXTEND_I32_I64_SIGNED 0xac
#define EXTEND_I32_I64 0xad

#define TRUNC_CONV_I64_F32_SIGNED 0xae
#define TRUNC_CONV_I64_F32 0xaf


#define TRUNC_CONV_I64_F64_SIGNED 0xb0
#define TRUNC_CONV_I64_F64 0xb1

#define CONVERT_F32_F64_SIGNED 0xb2
#define CONVERT_F32_F64 0xb3
#define CONVERT_F32_I64_SIGNED 0xb4
#define CONVERT_F32_I64 0xb5

#define DEMOTE_F32_I64 0xb6
#define CONVERT_F64_I32_SIGNED 0xb7
#define CONVERT_F64_I32 0xb8
#define CONVERT_F64_I64_SIGNED 0xb9
#define CONVERT_F64_I64 0xba
#define CONVERT_F64_F32 0xbb

// REINTRERPRETATION
#define REINTERPRET_I32_F32 0xbc
#define REINTERPRET_I64_F64 0xbd
#define REINTERPRET_F32_I32 0xbe
#define REINTERPRET_F64_I64 0xbf

#endif