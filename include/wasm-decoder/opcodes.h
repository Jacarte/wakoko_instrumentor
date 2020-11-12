

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
#define SET_GLOBALs 0x24



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