void CMD_STORE(int point_no,int bit_shift,double *real_in,double *img_in,unsigned int fft_base,int bank0,int bank1,int bank2,int bank3,int guard_set){
	
	int i,j;
	int pos;
	int result,result_temp;
	int bank;
	int pos0,pos1,pos2,pos3;

	pos0 = 0;
	pos1 = 0;
	pos2 = 0;
	pos3 = 0;

#define OLD_VERSION 0
	
#if OLD_VERSION
	for(i=0; i<point_no ;i++)
	{	
		//calculate bank addr
		if(seq_cal(i) == 0)
		{
			if(i<256){
				bank=bank0;
				pos0 = pos0 + 1;
			}
			else{
				bank=bank2;
				pos2 = pos2 + 1;
			}
		}
		else if(seq_cal(i) == 1)
		{
			if(i<256){
				bank=bank1;
				pos1 = pos1 + 1;
			}
			else{
				bank=bank3;
				pos3=pos3 + 1;
			}
		}
		else if(seq_cal(i) == 2)
		{	
			if(i<256){
				bank=bank2;
				pos2 = pos2 + 1;
			}
			else{
				bank=bank0;
				pos0 = pos0 + 1;
			}
		}
		else if(seq_cal(i) == 3)
		{	
			if(i<256){
				bank=bank3;
				pos3 = pos3 + 1;
			}
			else{
			bank=bank1;
			pos1 = pos1 + 1;
			}
		}
#else
	for(i=0; i<point_no ;i++)
	{	
		//calculate bank addr
		if(seq_cal(i) == 0)
		{
				bank=bank0;
				pos0 = pos0 + 1;
		}
		else if(seq_cal(i) == 1)
		{
				bank=bank1;
				pos1 = pos1 + 1;
		}
		else if(seq_cal(i) == 2)
		{	
				bank=bank2;
				pos2 = pos2 + 1;
		}
		else if(seq_cal(i) == 3)
		{
				bank=bank3;
				pos3 = pos3 + 1;
		}
#endif

		//real part 16 bit
	      bit_convert (real_in[i],16,bit_shift,guard_set);
	      result=0;
	      for (j = 0; j < 4; j++)
	      {	
		      result_temp = 0;
		      switch (symbol_hex[j]){
			      case '0':result_temp = 0;break;
			      case '1':result_temp = 1;break;
			      case '2':result_temp = 2;break;
			      case '3':result_temp = 3;break;
			      case '4':result_temp = 4;break;
			      case '5':result_temp = 5;break;
			      case '6':result_temp = 6;break;
			      case '7':result_temp = 7;break;
			      case '8':result_temp = 8;break;
			      case '9':result_temp = 9;break;
			      case 'a':result_temp = 10;break;
			      case 'b':result_temp = 11;break;
			      case 'c':result_temp = 12;break;
			      case 'd':result_temp = 13;break;
			      case 'e':result_temp = 14;break;
			      case 'f':result_temp = 15;break;
			      default:result_temp=0; break;
		      }
		      result = result + (result_temp<<(4*(3-j)));
	      }
	      	if(bank==bank0)
			pos=(pos0-1)*4;
		else if(bank==bank1)
			pos=(pos1-1)*4;
		else if(bank==bank2)
			pos=(pos2-1)*4;
		else if(bank==bank3)
			pos=(pos3-1)*4;
		
		/*************************************\
		WRITE_MEM(bank,fft_base,pos,result);
		\*************************************/

		//image part 16 bit
	      bit_convert (img_in[i],16,bit_shift,guard_set);
	      result=0;
	      for (j = 0; j < 4; j++)
	      {	
		      result_temp = 0;
		      switch (symbol_hex[j]){
			      case '0':result_temp = 0;break;
			      case '1':result_temp = 1;break;
			      case '2':result_temp = 2;break;
			      case '3':result_temp = 3;break;
			      case '4':result_temp = 4;break;
			      case '5':result_temp = 5;break;
			      case '6':result_temp = 6;break;
			      case '7':result_temp = 7;break;
			      case '8':result_temp = 8;break;
			      case '9':result_temp = 9;break;
			      case 'a':result_temp = 10;break;
			      case 'b':result_temp = 11;break;
			      case 'c':result_temp = 12;break;
			      case 'd':result_temp = 13;break;
			      case 'e':result_temp = 14;break;
			      case 'f':result_temp = 15;break;
			      default:result_temp=0; break;
		      }
		      result = result + (result_temp<<(4*(3-j)));
	      }
	      	if(bank==bank0)
			pos=(pos0-1)*4+2;
		else if(bank==bank1)
			pos=(pos1-1)*4+2;
		else if(bank==bank2)
			pos=(pos2-1)*4+2;
		else if(bank==bank3)
			pos=(pos3-1)*4+2;
			
		/*************************************\
		WRITE_MEM(bank,fft_base,pos,result);
		\*************************************/
	}
	
	
}
