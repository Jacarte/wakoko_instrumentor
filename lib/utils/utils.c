#include <stdio.h>
#include <include/utils/utils.h>


uint32 readUint32LE(char* buffer, int* offset){
	uint32 result = 0;

	result = (0xFF & buffer[*offset]);
	result |= ((0xFF & buffer[*offset + 1]) << 8);
	result |= ((0xFF & buffer[*offset + 2]) << 16);
	result |= ((0xFF & buffer[*offset + 3]) << 24);

	*offset = *offset + 4;
	return result;	
}

uint16 readUint16LE(char* buffer, int* offset){
	uint16 result = (0xFF & buffer[*offset]);
	result |= ((0xFF & buffer[*offset + 1]) << 8);

	*offset = *offset + 4;
	return result;	
}


char readInt8(char* buffer, int* offset){
	char result = (0xff & buffer[*offset]);
	*offset = *offset + 1;
	return result;	
}