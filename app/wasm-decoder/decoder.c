
#include <stdio.h>
#include <include/wasm-decoder/wasm-decoder.h>
#include <include/wasm-decoder/wasm-encoder.h>

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
		
		char bytes[sz];
		fread(bytes, sz, 1, in_file);
		fclose(in_file);

		WASMModule* module = parse_wasm(bytes, sz);	
		printf("CORRECT DECODING %d\n", module->size);

		char*  out = (char*)allocate_and_register(module->size);

		int toWrite = encode_wasm(module, out);
		printf("CORRECT ENCODING\n");

		FILE* outFile = fopen("test.wasm", "w");

		if(outFile == NULL){
			printf("Error! Could not open file\n"); 
			exit(-1); // must include stdlib.h 
		}

		fwrite(out, toWrite, 1, outFile);
		fclose(outFile);
/*
		printf("Checking  traversal\n");

		Section s;

		printf("WASM Size %d sections %d %d\n", sz, module->sections.count, module->sections.membersize);
		for(int i = 0; i < module->count; i++){
			

			get_element(&module->sections, i, &s);

			printf("type %d\n", s.type);
			switch (s.type)
			{
			case 1: // types
			{
				TypeSection * typeS = (TypeSection *) s.instance;

				printf("types count %d\n", typeS->count);
				for(int i = 0; i < typeS->count; i++){
					FuncTypeSection tpe;
					get_element(&typeS->types,i, &tpe); 
					printf("i: %d %d %d %d\n params: ",i,tpe.param_count, tpe.ret_count, tpe.form );

					for(int  j =0; j < tpe.param_count; j++){
						printf("\t%02x ", tpe.param_types[0]);
					}
					printf("\n return");

					for(int  j =0; j < tpe.ret_count; j++){
						printf("\t%02x ", tpe.return_types[0]);
					}
					printf("\n");
				}
			}
				break;
			case 2:
				{
					ImportSection * importS = (ImportSection *) s.instance;

					printf("import count %d\n", importS->count);
					for(int i = 0; i < importS->count; i++){
						ImportType tpe;
						get_element(&importS->imports,i, &tpe); 
						printf("%s %s \n",tpe.module_name, tpe.field_name );

					}
				}
				break;
			case 3:
				{
					FunctionSection * funcSection = (FunctionSection *) s.instance;

					printf("Func count %d\n", funcSection->count);
					for(int i = 0; i < funcSection->count; i++){
						printf("\t%d \n", funcSection->types[i]);

					}
				}
				break;
			case 4:
				{
					TableSection * tableSection = (TableSection *) s.instance;

					printf("Table count %d\n", tableSection->count);
					for(int i = 0; i < tableSection->count; i++){
						TableImport tpe;
						get_element(&tableSection->tables,i, &tpe); 
						printf("\t%d %d %d \n",tpe.limit_initial, tpe.limit_maximum, tpe.elem_type );
					}
				}
			break;
			case 5:
				{
					MemorySection * memSection = (MemorySection *) s.instance;

					printf("memory count %d\n", memSection->count);
					for(int i = 0; i < memSection->count; i++){
						MemoryImport tpe;
						get_element(&memSection->memories,i, &tpe); 
						printf("\t%d %d %d \n",tpe.limit_initial, tpe.limit_maximum, tpe.limit );
					}
				}
			break;
			
			case 6:
				{
					GlobalSection * memSection = (GlobalSection *) s.instance;

					printf("global count %d\n", memSection->count);
					for(int i = 0; i < memSection->count; i++){
						GlobalImport tpe;
						get_element(&memSection->globals,i, &tpe); 
						printf("\t%d %d\n",tpe.content_type, tpe.is_mutable );
					}
				}
				break;
			case 7:
				{
					ExportSection * memSection = (ExportSection *) s.instance;

					printf("export count %d\n", memSection->count);
					for(int i = 0; i < memSection->count; i++){
						ExportEntry tpe;
						get_element(&memSection->exports,i, &tpe); 
						printf("\t%s %d %02x\n",tpe.field_str, tpe.index, tpe.kind );
					}
				}
			break;
			case 10:
				{
					CodeSection * memSection = (CodeSection *) s.instance;

					printf("Code count %d\n", memSection->count);
					for(int i = 0; i < memSection->count; i++){
						FunctionBody tpe;
						get_element(&memSection->functions,i, &tpe); 
						printf("\t%d %d\n",tpe.local_count, tpe.size );
					}
				}
				
			break;
			case 11:
				{
					DataSection * memSection = (DataSection *) s.instance;

					printf("Data count %d\n", memSection->count);
					for(int i = 0; i < memSection->count; i++){
						DataSegment tpe;
						get_element(&memSection->segments,i, &tpe); 
						printf("\t%d %d\n",tpe.index, tpe.size );
					}
				}
				
			break;
			default:
				break;
			}

		}*/

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