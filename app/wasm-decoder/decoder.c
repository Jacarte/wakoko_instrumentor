
#include <stdio.h>
#include <include/wasm-decoder/wasm-decoder.h>

int main(int argc, char * argv[]){
	if(argc > 1){
		FILE* in_file = fopen(argv[1], "rb");
		if (in_file == NULL) 
		{   
			printf("Error! Could not open file\n"); 
			exit(-1); // must include stdlib.h 
		} 
        fseek(in_file, 0L, SEEK_END);
		size_t sz = ftell(in_file);
		rewind(in_file);
		printf("WASM Size %d\n", sz);
		
		char bytes[sz];
		fread(bytes, sz, 1, in_file);
		fclose(in_file);

		parse_wasm(bytes, sz);	

		free_all();
		
		//free(bytes);

		/*FILE *in_file  = fopen("name_of_file", "r"); // read only 
          FILE *out_file = fopen("name_of_file", "w"); // write only 
           
          // test for files not existing. 
          if (in_file == NULL || out_file == NULL) 
            {   
              printf("Error! Could not open file\n"); 
              exit(-1); // must include stdlib.h 
            } 
           
          // write to file vs write to screen 
          fprintf(file, "this is a test %d\n", integer); // write to file 
 
          fprintf(stdout, "this is a test %d\n", integer); // write to screen  
          printf(         "this is a test %d\n", integer); // write to screen  
 
          // read from file/keyboard. remember the ampersands!  
          fscanf(file, "%d %d", &int_var_1, &int_var_2);  
 
          fscanf(stdin, "%d %d", &int_var_1, &int_var_2);  
          scanf(        "%d %d", &int_var_1, &int_var_2); */
	}
	return 0;
}