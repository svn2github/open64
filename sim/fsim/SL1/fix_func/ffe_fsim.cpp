#include <stdio.h>
#include <time.h>
#include <math.h>
#include <string.h>
#include <assert.h>
#include "data_convert.c"

#include "cal_shift.c"
#include "seq_cal.c"
#include "bit_convert.c"
#include "cos_sin.c"
#include "cmplex_mul.c"
#include "buttfly_r4.c"
#include "buttfly_r2.c"
#include "fft.c"
#include "cmd_store.c"
/*
#include "itof.c"
//#include "ftoi.c"
#include "rsqr.c"
#include "maf.c"
#include "options.c"
//#include "cd.c"
//#include "cd_data_gen.c"
*/
int
fft (int points, int ifft, double* real_in, double* img_in,int guard_bit,int iq_sel)
{
	return fft_ex(points,ifft,0, real_in, img_in,guard_bit,iq_sel); 
	// Add the parameter of post_order_en value 1'b0 to 
	// let "make build" pass. It should be modified after
	// real post_order_en generated
}

/*
void cd(float* r)
{	
	cholesky_deco(r);
}

void cd_gen(int guard_bit)
{
	int seed;

//	seed=tf_getp(1);

	cd_data_gen(seed,guard_bit);
	
}
*/
