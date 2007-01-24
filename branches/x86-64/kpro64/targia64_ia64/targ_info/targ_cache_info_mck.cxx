#include "targ_cache_info.h" 

INT CACHE_L1I = 0;
INT CACHE_L1D = 1;
INT CACHE_L2 = 2;
INT CACHE_L3 = 3;
INT CACHE_MAX = 4;

const CACHE_INFO cache_info[4] = {
    { 64, 64, 4096, 4, 2, 1},/* L1I */
    { 64, 64, 4096, 4, 4, 1},/* L1D */
    { 256, 128, 32768, 8, 4, 5},/* L2 */
    { 2048, 128, 262144, 12, 1, 12},/* L3 */
};
