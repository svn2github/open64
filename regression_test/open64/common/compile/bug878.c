//OBJ
//TAG: kernel
static int clear_page_array[0x120 / 4];

void clear_page(void *page) __attribute__((alias("clear_page_array")));
