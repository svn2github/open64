#include <stdio.h>
#include <time.h>
#include <math.h>
#include <string.h>
#include <malloc.h>



void traceback_PLI(int iter_counter, int current_state, int constraint_sub_one,
				   unsigned int *shifter_memory, unsigned int *decoder_memory) 
{     
	int number_of_states;
	int t, s;                          /* loop variables */ 

	int previous_state, currentstate, nowbit;
	static int decoder_output_matrix[65536];
	int multiple, residue;
	int shifter_per_stage;
	static unsigned int decoder_memory_temp[2048];
	int decoder_memory_num;
	int temp;
	FILE *fp_log_file;
	
	fp_log_file = fopen("result.dat","w");
	//compute output length
	if ((iter_counter %32)==0)
		decoder_memory_num = (int) (iter_counter/32);
	else
		decoder_memory_num = ((int) (iter_counter/32)) + 1;

	//initialization
	for (t = 0; t < 2048; t++) 
	{
		decoder_memory_temp[t] = 0x00000000;
	}
	
	/* ************************************************************************** */    

	number_of_states = 1 << constraint_sub_one;    

	previous_state=0;
	currentstate=current_state;

	//shifter_memory
	if (constraint_sub_one <= 5)
		shifter_per_stage = 1;
	else if (constraint_sub_one == 6)
		shifter_per_stage = 2;
	else if (constraint_sub_one == 7)
		shifter_per_stage = 4;
	else 
		shifter_per_stage = 8;
	

	for (t = 0; t < iter_counter; t++) 
	{

		temp=currentstate & 0x1; 
		decoder_output_matrix[iter_counter-t-1] = temp;
		previous_state=currentstate>>1;

		multiple = (int) (currentstate / 32);
		residue = (currentstate % 32);
		nowbit = (shifter_memory[(iter_counter-t-1)*shifter_per_stage+multiple] >> (residue)) & 0x00000001;
	
		if (nowbit==1)
			previous_state=previous_state+(1<<(constraint_sub_one-1));
		else
			previous_state=previous_state+0;
		fprintf(fp_log_file,"t=%d,nowbit=%1d,c_st=%x,p_st=%x,d= %x\n",t,nowbit,currentstate,previous_state,shifter_memory[(iter_counter-t-1)*shifter_per_stage+multiple]);
		currentstate=previous_state;
	}

	s = -1;
	for (t = 0; t < iter_counter; t++) 
	{
		if ((t % 32)==0)
			s++;
		decoder_memory_temp[s] += ((unsigned int) decoder_output_matrix[t]) << (t % 32);
	}

	for (t = 0; t < decoder_memory_num; t++) 
	{
		decoder_memory[t] = decoder_memory_temp[t];
	}
	fclose(fp_log_file);
}



