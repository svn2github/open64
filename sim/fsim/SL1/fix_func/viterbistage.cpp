#include <stdio.h>
#include <time.h>
#include <math.h>
#include <string.h>
#include <assert.h>

#ifdef VITERBI_DEBUG
#undefine VITERBI_DEBUG
#endif

void butterfly_PLI(unsigned pm, unsigned bm, int scale, int minormax, int maxorminMetric0_in, int maxorminMetric1_in, 
					   int *maxorminMetric0_out, int *maxorminMetric1_out, int *statehistory1, int *statehistory2,
		   unsigned *new_pm);
int saturate(int input);
int abs_sat(int x);

#ifdef VITERBI_DEBUG
	FILE *fp_log_file;
#endif
//viterbi(parameter,pm,data_out);
unsigned short viterbi_PLI( unsigned short scaling_value, int cons_len_sub_one, int reset, int minormax, int diff_flag,
		  unsigned *unsigned_metric_upper, unsigned *unsigned_accum_err_metric,
		  unsigned *unsigned_new_accum_err_metric, unsigned *shifter_out, unsigned short *diff)

{
	
	int state_number, half_state_number, quarter_state_number;
	unsigned pm[128];
	unsigned new_pm[128];
	unsigned bm[128];
	unsigned data_temp;
	unsigned shifter[8];

	int middle_value[256];
	int total_value, average_PLI ;	

	int maxorminMetric0, maxorminMetric1, new_maxorminMetric0, new_maxorminMetric1;
	int state_history1, state_history2;

	unsigned new_pm1, new_pm2;

	int i,r;
	int scalingvalue;
	int minmax;
	
	#ifdef VITERBI_DEBUG


      	fp_log_file = fopen("result.dat","w");
	#endif
	state_number = 1 << cons_len_sub_one;
    half_state_number = state_number >> 1; 
	quarter_state_number = half_state_number >> 1; 

///////////////////////////////////////////////////////////////////////////////////////
//input data

	for (i = 0; i < half_state_number; i++)
	{
		pm[i] = unsigned_accum_err_metric[i];
		bm[i] = unsigned_metric_upper[i];
	}

///////////////////////////////////////////////////////////////////////////////////////


	if (reset==0)
		scalingvalue = (int) (short) scaling_value;
	else
		scalingvalue=0;


	minmax = minormax;



	if (minormax==0)
	{
		maxorminMetric0=-32767;
		maxorminMetric1=-32767;
	}
	else
	{
		maxorminMetric0=32767;
		maxorminMetric1=32767;
	}
	//
	for (i = 0; i < 8; i++)
	{
		shifter[i]=0x00000000;
	}


	for (i = 0; i < quarter_state_number; i++)
		{
			butterfly_PLI(pm[i],bm[i], scalingvalue,minmax, maxorminMetric0, maxorminMetric1,
				      &new_maxorminMetric0, &new_maxorminMetric1,&state_history1,&state_history2, &new_pm1);
		
			if (i<16)
			{
				shifter[0] = shifter[0] + ((unsigned) (state_history1) << (2*i));
				shifter[0] = shifter[0] + ((unsigned) (state_history2) << (2*i+1));
			}
			else if (i<32)
			{
				shifter[1] = shifter[1] + ((unsigned) (state_history1) << (2*(i-16)));
				shifter[1] = shifter[1] + ((unsigned) (state_history2) << (2*(i-16)+1));
			}
			else if (i<48)
			{
				shifter[2] = shifter[2] + ((unsigned) (state_history1) << (2*(i-32)));
				shifter[2] = shifter[2] + ((unsigned) (state_history2) << (2*(i-32)+1));
			}
			else //(i<64)

			{
				shifter[3] = shifter[3] + ((unsigned) (state_history1) << (2*(i-48)));
				shifter[3] = shifter[3] + ((unsigned) (state_history2) << (2*(i-48)+1));
			}
			#ifdef VITERBI_DEBUG
			fprintf(fp_log_file,"shiftr[0]=%x,shifter[1] = %x,shifter[2] = %x, shifter[3] = %x\n" , shifter[0],shifter[1],shifter[2],shifter[3]);
			#endif
			maxorminMetric0=new_maxorminMetric0;
			maxorminMetric1=new_maxorminMetric1;

			butterfly_PLI(pm[i+quarter_state_number],bm[i+quarter_state_number], scalingvalue,minmax,
				maxorminMetric0, maxorminMetric1,	&new_maxorminMetric0, &new_maxorminMetric1,
				      &state_history1,&state_history2, &new_pm2);
		
		
			if (i<16)
			{
				shifter[4] = shifter[4] + ((unsigned) (state_history1) << (2*i));
				shifter[4] = shifter[4] + ((unsigned) (state_history2) << (2*i+1));
			}
			else if (i<32)
			{
				shifter[5] = shifter[5] + ((unsigned) (state_history1) << (2*(i-16)));
				shifter[5] = shifter[5] + ((unsigned) (state_history2) << (2*(i-16)+1));
			}
			else if (i<48)
			{
				shifter[6] = shifter[6] + ((unsigned) (state_history1) << (2*(i-32)));
				shifter[6] = shifter[6] + ((unsigned) (state_history2) << (2*(i-32)+1));
			}
			else //(i<64)
			{
				shifter[7] = shifter[7] + ((unsigned) (state_history1) << (2*(i-48)));
				shifter[7] = shifter[7] + ((unsigned) (state_history2) << (2*(i-48)+1));
			}
			#ifdef VITERBI_DEBUG
			fprintf(fp_log_file,"shiftr[4]=%x,shifter[5] = %x,shifter[6] = %x, shifter[7] = %x\n" , shifter[4],shifter[5],shifter[6],shifter[7]);
			#endif
			new_pm[2*i] = (new_pm2 << 16) + (new_pm1 & 0x0000FFFF);
			new_pm[2*i+1] = (new_pm1 >> 16) + (new_pm2 & 0xFFFF0000);
		
			maxorminMetric0=new_maxorminMetric0;
			maxorminMetric1=new_maxorminMetric1;
		
		}

	
	*diff = (unsigned short) (short) abs_sat(new_maxorminMetric1 - new_maxorminMetric0);
	#ifdef VITERBI_DEBUG
	fprintf(fp_log_file,"max1 = %x, max0 = %x, diff = %x\n",new_maxorminMetric1,new_maxorminMetric0,*diff);
	#endif
		
////////////////////////////////////////////////////////////////////////////////////////////////
//output data
	
	for (i = 0; i < half_state_number; i++)
	{
		unsigned_new_accum_err_metric[i] = new_pm[i];
	}

	for (i = 0; i < 8; i++)
	{
		shifter_out[i] = shifter[i];
	}
/////////////////////////////////////////////////////////////////////////////////////////////
//test scaling output

	for (r = 0; r < half_state_number; r++)
	{
		 middle_value[r] = (int) (short) (unsigned short)(new_pm[r] & 0x0000FFFF);
		 middle_value[r+half_state_number] = (int) (short) (unsigned short)((new_pm[r] & 0xFFFF0000)>>16);
	} 

	total_value=0;

	for (r = 0; r < state_number; r++)
	{
		total_value = total_value + middle_value[r];
	}
 

	average_PLI = total_value >> cons_len_sub_one;
	
	//*scaling_output = (unsigned short) (short) average_PLI;
        return (unsigned short)average_PLI;

////////////////////////////////////////////////////////////////////////////////////////////////
	#ifdef VITERBI_DEBUG
	fclose(fp_log_file);
	#endif
}





void butterfly_PLI(unsigned pm, unsigned bm, int scale, int minormax, 
						   int maxorminMetric0_in, int maxorminMetric1_in, 
					   int *maxorminMetric0_out, int *maxorminMetric1_out, 
					   int *statehistory1, int *statehistory2,
					   unsigned *new_pm)
{
	int temp1, temp2, temp3, temp4;

	int state1, metric1, state2, metric2;
	int int_state1, int_metric1, int_state2, int_metric2;
	unsigned  un_newstate1, un_newstate2;

	int newstate1, newstate2;

	
	
	int_state1 =(int) (short) (unsigned short) (pm & 0x0000FFFF);
	int_state2 =(int) (short) (unsigned short) ((pm >> 16)& 0x0000FFFF);
	int_metric1 =(int) (short) (unsigned short) (bm & 0x0000FFFF);
	int_metric2 =(int) (short) (unsigned short) ((bm >> 16)& 0x0000FFFF);

	state1 = saturate( int_state1-scale);
	state2 = saturate( int_state2-scale);
	metric1 = int_metric1;
	metric2 = int_metric2;


	temp1=saturate(state1+metric1);
	temp2=saturate(state2+metric2);
	temp3=saturate(state1-metric1);
	temp4=saturate(state2-metric2);

/////////////////////////////////////////////////////////////////////////////////////////////

//ACS operation
/////////////////////////////////////////////////////////////////////////////////////////////
	if (minormax==0)// 0 represents max
	{
		if (temp1>=temp2)
		{
			newstate1=temp1;
			*statehistory1=0;
		}
		else
		{
			newstate1=temp2;
			*statehistory1=1;
		}

		if (temp3>=temp4)
		{
			newstate2=temp3;
			*statehistory2=0;
		}
		else
		{
			newstate2=temp4;
			*statehistory2=1;
		}
		//equalizer mode
		*maxorminMetric0_out = (temp1 > maxorminMetric0_in) ? temp1 : maxorminMetric0_in;
		*maxorminMetric1_out = (temp2 > maxorminMetric1_in) ? temp2 : maxorminMetric1_in;
		*maxorminMetric0_out = (temp3 > *maxorminMetric0_out) ? temp3 : *maxorminMetric0_out;
		*maxorminMetric1_out = (temp4 > *maxorminMetric1_out) ? temp4 : *maxorminMetric1_out;		
	}

/////////////////////////////////////////////////////////////////////////////////////////////
	else// (1 represents min)
	{
		if (temp1>=temp2)
		{
			newstate1=temp2;
			*statehistory1=1;
		}
		else
		{
			newstate1=temp1;
			*statehistory1=0;			
		}

		if (temp3>=temp4)
		{
			newstate2=temp4;
			*statehistory2=1;	
		}
		else
		{
			newstate2=temp3;
			*statehistory2=0;
		}
		//equalizer mode
		*maxorminMetric0_out = (temp1 < maxorminMetric0_in) ? temp1 : maxorminMetric0_in;
		*maxorminMetric1_out = (temp2 < maxorminMetric1_in) ? temp2 : maxorminMetric1_in;
		*maxorminMetric0_out = (temp3 < *maxorminMetric0_out) ? temp3 : *maxorminMetric0_out;
		*maxorminMetric1_out = (temp4 < *maxorminMetric1_out) ? temp4 : *maxorminMetric1_out;
	}
/////////////////////////////////////////////////////////////////////////////////////////////
	un_newstate1 =(unsigned) (unsigned short) (short) (newstate1);
	un_newstate2 =(unsigned) (unsigned short) (short) (newstate2);

	un_newstate2 = un_newstate2 << 16 ;
	*new_pm = un_newstate2 + un_newstate1;
	#ifdef VITERBI_DEBUG
	fprintf(fp_log_file,"----temp1 = %x, temp2 = %x, temp3 = %x, temp4 = %x ,shift0= %1d,shift1 = %1d------\n",temp1,temp2,temp3,temp4,*statehistory1,*statehistory2);
	#endif

}



int saturate(int input)
{
        int x;
	

	if (input<-32768) x=-32768;
	else if (input>32767)  x=32767;
	else x=input;

	return(x);
}


int abs_sat(int x)
{
  int y;
  if ( x > 32767 )
    y = 32767;
  else if ( x < -32767 )
    y = 32767;
  else
    //y = abs(x);
    y = (x>=0)?x:-x;
  return (y);
}

