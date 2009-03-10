#include <malloc.h>
#include <stdlib.h>

void __pathscale_malloc_alg(int mode)
{
    if (getenv("OPEN64_NO_MALLOC_ALG") != NULL)
	return;
	
    if (mode < 1)
        mode = 1;
    else if (mode > 4) {
        mode = 4;
    }
    switch (mode) {
    case 1:
        mallopt(M_MMAP_MAX, 0x2);
        mallopt(M_TRIM_THRESHOLD, 0x10000000);
        break;
    case 2:
        mallopt(M_MMAP_MAX, 0x2);
        mallopt(M_TRIM_THRESHOLD, 0x40000000);
        break;
    case 3:
        mallopt(M_MMAP_MAX, 0x0);
        mallopt(M_TRIM_THRESHOLD, 0xffffffff);
        break;
    case 4:
        mallopt(M_MMAP_MAX, 0x2);
        mallopt(M_TRIM_THRESHOLD, 0x10000000);
        break;
    }
}
