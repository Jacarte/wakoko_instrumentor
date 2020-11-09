#include <stdio.h>
#include <include/utils/utils.h>


uint32 readUint32LE(char* buffer, int offset){
	uint32 result = 0;

	result = (0xFF & buffer[offset]);
	result |= ((0xFF & buffer[offset + 1]) << 8);
	result |= ((0xFF & buffer[offset + 2]) << 16);
	result |= ((0xFF & buffer[offset + 3]) << 24);

	return result;	
}

uint16 readUint16LE(char* buffer, int offset){
	uint16 result = (0xFF & buffer[offset]);
	result |= ((0xFF & buffer[offset + 1]) << 8);

	return result;	
}

int readint32LE(char* buffer, int offset){
	int result = 0;

	result = (0xFF & buffer[offset]);
	result |= ((0xFF & buffer[offset + 1]) << 8);
	result |= ((0xFF & buffer[offset + 2]) << 16);
	result |= ((0xFF & buffer[offset + 3]) << 24);

	return result;	
}

short readint16LE(char* buffer, int offset){
	short result = (0xFF & buffer[offset]);
	result |= ((0xFF & buffer[offset + 1]) << 8);

	return result;	
}