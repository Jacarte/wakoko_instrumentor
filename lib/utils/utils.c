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
	allocations[allocation_index++] = (void*)calloc(1, sz);
	return allocations[allocation_index - 1];
}


void free_all(){
	for(int i =0; i < allocation_index; i++)
		free(allocations[i]);
}


void init_array(Array *a, int initialSize) {
  a->array = allocate_and_register(initialSize * sizeof(void*));
  a->count = 0;
  a->size = initialSize;
}

void insert_array(Array *a, void * element) {
  // a->used is the number of used entries, because a->array[a->used++] updates a->used only *after* the array has been accessed.
  // Therefore a->used can go up to a->size 
  if (a->count == a->size) {
    a->size *= 2;
    a->array = (void *)realloc(a->array, a->size * sizeof(void*));
  }

  a->array[a->count++] = *element;
}

void free_array(Array *a) {
  a->array = NULL;
  a->count = a->size = 0;
}