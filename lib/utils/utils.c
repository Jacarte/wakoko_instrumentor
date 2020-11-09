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


static void* allocations [MAX_ALLOCATIONS];
static int allocation_index = 0;

void* allocate_and_register(size_t sz){
	if(allocation_index == MAX_ALLOCATIONS)
	{
		printf("Maximum number of allocations are reached!.");
		exit(1);
	}
	allocations[allocation_index++] = (void*)malloc(sz);
	return allocations[allocation_index - 1];
}


void free_all(){
	for(int i =0; i < allocation_index; i++)
		free(allocations[i]);
}