
#define ANSI_COLOR_RED     "\x1b[31m"
#define ANSI_COLOR_GREEN   "\x1b[32m"
#define ANSI_COLOR_YELLOW  "\x1b[33m"
#define ANSI_COLOR_BLUE    "\x1b[34m"
#define ANSI_COLOR_MAGENTA "\x1b[35m"
#define ANSI_COLOR_CYAN    "\x1b[36m"
#define ANSI_COLOR_RESET   "\x1b[0m"

#define MAX_ALLOCATIONS 10000

typedef unsigned long  uint32;
typedef unsigned int  uint16;

uint32 readUint32LE(char* buffer, int * offset);
uint16 readUint16LE(char* buffer, int * offset);
char readInt8(char* buffer, int* offset);

void* allocate_and_register(size_t sz);

void free_all();

typedef struct {
  void * data;
  int count;
  int membersize;
  int size;
} Array;

void init_array(Array *a, int initialSize, int membersize);

void insert_array(Array *a, void * element);

void get_element(Array *a, unsigned int position, void * element);

void free_array(Array *a);