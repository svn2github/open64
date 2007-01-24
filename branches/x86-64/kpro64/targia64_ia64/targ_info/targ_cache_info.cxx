#include "targ_cache_info.h" 

INT CACHE_L1I = 0;
INT CACHE_L1D = 1;
INT CACHE_L2 = 2;
INT CACHE_L3 = 3;
INT CACHE_MAX = 4;

const CACHE_INFO cache_info[4] = {
    { 128, 32, 4096, 4, 1, 2},/* L1I */
    { 128, 32, 4096, 4, 2, 2},/* L1D */
    { 64, 256, 16384, 6, 2, 6},/* L2 */
    { 8192, 64, 524288, 8, 1, 21},/* L3 */
};
