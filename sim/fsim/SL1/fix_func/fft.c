/*  File name		:
 *  Owner		:  Kaimin Feng
 *  Creation data	:  
 *  Description		:  
*/

/* TODO:
 * 1. double -> bit;macs
 * 2. debug info function;store function
 * 3. Merge into unit tb
 * 4. Pli and merged into sw
 * 5. about ifft.when to convert it to -x
 */
 
#include <stdio.h>
#include <math.h>
#include <string.h>
#include "ffe.h"
#define M  18
#define N  16384

int order_seq[M][N];
double real_X[M][N],img_X[M][N];
double temp[8];

#define DEBUG 1


#if DEBUG
void store_debug_info(int ex_point_pos,int point_pos,int stage_no,int i,int part_points,
		      double *input,double *output,int data_no,int guard_set
					 )
{
	int k,j;
	char stage[7];
	char file_name[15];
	FILE *fp;
	double a2,a3;

	stage[0]='s';
	stage[1]='t';
	stage[2]='a';
	stage[3]='g';
	stage[4]='e';
	stage[6]='\0';
	
	stage[5]=stage_no+'0';

	file_name[0]='b';
	file_name[1]='u';
	file_name[2]='t';
	file_name[3]='t';
	file_name[4]='f';
	file_name[5]='l';
	file_name[6]='y';
	file_name[7]='_';
	file_name[8]='\0';
	
	strcat(file_name,stage);
	fp = fopen (file_name, "a");
	//--------------------------------------------------------
	fprintf(fp,"Stage %1d Buttfly Input:\n",stage_no);
	for(j=0;j<data_no;j=j+2){
		bit_convert (input[j], 16, ex_point_pos,guard_set);
		for (k = 0; k < 4; k++)
		  fprintf (fp, "%c", symbol_hex[k]);
		bit_convert (input[j+1], 16, ex_point_pos,guard_set);
		for (k = 0; k < 4; k++)
		  fprintf (fp, "%c", symbol_hex[k]);
		fprintf (fp, "\t%f\t%f\t", input[j],input[j+1]);
		fprintf(fp,"\n");
	}
	fprintf(fp,"\n");	
	//---------------------------------------------------------------------------
	fprintf(fp,"Stage %1d Buttfly TW Factors:\n",stage_no);
	if(i!=0){
		for(j=i;j<data_no/2*i;j=j+i){
			fprintf (fp, "%d\t", j);
			a2 = c (part_points, j);
			a3 = s (part_points, j);
			a2 = bit_convert (a2, 18, 1,guard_set);
			for (k = 0; k < 5; k++)
			  fprintf (fp, "%c", symbol_hex[k]);
			fprintf (fp, "   ");

			a3 = bit_convert (a3, 18, 1,guard_set);
			for (k = 0; k < 5; k++)
			  fprintf (fp, "%c", symbol_hex[k]);
			fprintf (fp, "   ");
			fprintf (fp, "\t%f\t%f\t", a2, a3 );


			/*			bit_convert (a2 + a3, 18, 1);
			for (k = 0; k < 5; k++)
			  fprintf (fp, "%c", symbol_hex[k]);
			fprintf (fp, "   ");
			bit_convert (a2 - a3, 18, 1);
			for (k = 0; k < 5; k++)
			  fprintf (fp, "%c", symbol_hex[k]);
			  fprintf (fp, "\t%f\t%f\t%f", a2, a2 + a3, a2 - a3); */
			fprintf (fp, "\n");
		}//for j
	} //if i
	else if(i==0){
		for(j=0;j<3;j=j+1){
			fprintf (fp, "%d\t", i);
			a2 = c (part_points, i);
			a3 = s (part_points, i);
			bit_convert (a2, 18, 1,guard_set);
			for (k = 0; k < 5; k++)
			  fprintf (fp, "%c", symbol_hex[k]);
			fprintf (fp, "   ");
			bit_convert (a2 + a3, 18, 1,guard_set);
			for (k = 0; k < 5; k++)
			  fprintf (fp, "%c", symbol_hex[k]);
			fprintf (fp, "   ");
			bit_convert (a2 - a3, 18, 1,guard_set);
			for (k = 0; k < 5; k++)
			  fprintf (fp, "%c", symbol_hex[k]);
			fprintf (fp, "\t%f\t%f\t%f", a2, a2 + a3, a2 - a3);
			fprintf (fp, "\n");
		}//for j
	}
	fprintf(fp,"\n");
	//--------------------------------------------------------
	fprintf(fp,"Stage %1d Buttfly Output:\n",stage_no);
	for(j=0;j<data_no;j=j+2){		
		bit_convert (output[j], 16, point_pos,3);		
		for (k = 0; k < 4; k++)
		  fprintf (fp, "%c", symbol_hex[k]);
					
		bit_convert (output[j+1], 16, point_pos,3);		
		for (k = 0; k < 4; k++)
		  fprintf (fp, "%c", symbol_hex[k]);
		fprintf (fp, "\t%f\t%f\t", output[j],output[j+1]);
		fprintf(fp,"\n");
	}

	fprintf(fp,"\n");
	fprintf(fp,"------------------------\n\n");
	//--------------------------------------------------------
	fclose(fp);
}
#endif
void store_stage_info(int points,int point_pos,double *real_for_point,double *img_for_point,int stage_no,int post_order_en,int guard_set){
	int seq_no;
	int i,j;
	char mem[5];
	char file_name[14];
	FILE *fp,*fp0,*fp1,*fp2,*fp3;
	
	file_name[0]='s';
	file_name[1]='t';
	file_name[2]='a';
	file_name[3]='g';
	file_name[4]='e';
	
	if(stage_no == M-1)
		file_name[5]='B';
	else
		file_name[5]=stage_no+'0';

	file_name[6] ='\0';
	
	strcat(file_name,"_mem0\0");
	fp0 = fopen (file_name, "w");
	for(i=6;i<14;i++)
		file_name[i] = '\0';
	strcat(file_name,"_mem1\0");
	fp1 = fopen (file_name, "w");
	for(i=6;i<14;i++)
		file_name[i] = '\0';
	strcat(file_name,"_mem2\0");
	fp2 = fopen (file_name, "w");
	for(i=6;i<14;i++)
		file_name[i] = '\0';
	strcat(file_name,"_mem3\0");
	fp3 = fopen (file_name, "w");
	for(i=6;i<14;i++)
		file_name[i] = '\0';

	for(i=0;i<points;i++){
	  if( (stage_no == M-1) && (post_order_en == 1) )
	    seq_no = i % 4;
	  else
	    seq_no = seq_cal (i);
	  if(seq_no==0) fp=fp0;
	  else if(seq_no==1) fp = fp1;
	  else if(seq_no==2) fp = fp2;
	  else if(seq_no == 3) fp =fp3;
	  
	  bit_convert (real_for_point[i], 16, point_pos,guard_set);
	  for (j = 0; j < 4; j++)
	    fprintf (fp, "%c", symbol_hex[j]);
	  
	  bit_convert (img_for_point[i], 16, point_pos,guard_set);
	  for (j = 0; j < 4; j++)
	    fprintf (fp, "%c", symbol_hex[j]);
	  
	  fprintf (fp, "\n");
	}

	fclose(fp0);
	fclose(fp1);
	fclose(fp2);
	fclose(fp3);
}

int fft_ex(int points,int ifft,int post_order_en,double *real_in,double *img_in,int guard_set, int iq_sel){
//void fft(int points){
	int points_rem,points_quo,points_err;
	int i,j,k;
	int radix_2,radix_4;
	int part_no,part_points;
	int point_pos,ex_point_pos;
	double real_for_point[N];
	double img_for_point[N];
	double temp_in[8];
	char stage_char[7];
	char file_name[15];
	double *tmp;
	FILE *fp;
	
	if ( iq_sel ) {
		tmp = img_in;
		img_in = real_in;
		real_in = tmp;
	}
	
	if(ifft){
		for(i=0;i<points;i++)
			img_in[i]=-img_in[i];
	}
	
	/***********check points************/
	points_err = 0;
	points_rem = points%2;
	points_quo = points/2;
	while(1){
		if(points_rem != 0)
		{
			printf("error.please check points number");
			points_err = 1;
			break;
		}
		if(points_quo == 1)
		{
			break;
		}
		points_rem = points_quo%2;
		points_quo = points_quo/2;
	}
	if(points_err == 1)
		return 0;
	
	/*********cal stage_num**********/
	radix_2 = 0;
	radix_4 = 0;
	for(i=1;i<32;i++){
		if((points >> i) & 0x00000001 == 1){
			if(i%2==1)
				radix_2 = 1;
			radix_4 = (int)i/2;
			break;
		} //if
	}//for
	printf("points = %d,r2=%d,r4=%d,guard_bits = %d\n",points,radix_2,radix_4,guard_set);
	/*********cal order_seq*********/
	part_no = 1;
	part_points = points;
	for(i=0;i<points;i++)
		order_seq[radix_2+radix_4][i]=i;

	for(k=radix_2+radix_4-1;k>=0;k--){	//k -- stage No.
		if(radix_2 == 1 && k==(radix_2+radix_4-1)){
			for(j=0;j<part_no;j++){  //j -- part No.
				for(i=0;i<part_points/2;i++){ // points No of each part
					order_seq[k][j*part_points + i] = order_seq[k+1][2*i + j*part_points];
					order_seq[k][j*part_points + i + part_points/2] = order_seq[k+1][2*i + 1 + j*part_points];
				}//for i
			}//for j
			part_no = part_no * 2;
			part_points = part_points / part_no;
		}//if
		else{
			for(j=0;j<part_no;j++){  //j -- part No.
				for(i=0;i<part_points/4;i++){ // points No of each part
							order_seq[k][j*part_points + i] = order_seq[k+1][4*i+j*part_points];
							order_seq[k][j*part_points + i + part_points/4] = order_seq[k+1][4*i + 2 + j*part_points];
							order_seq[k][j*part_points + i + part_points/2] = order_seq[k+1][4*i + 1 + j*part_points];
							order_seq[k][j*part_points + i + part_points * 3 / 4] = order_seq[k+1][4*i + 3 + j*part_points];
				}//for i
			}//for j
			part_no = part_no * 4;
			part_points = points / part_no;
		}//else
	}//for k
	//for(i=0;i<points;i++)
	//	printf("order[%d]=%d\n",i,order_seq[0][i]);
	/**********cal X value***********/
#if DEBUG
	for(i=0;i<radix_2+radix_4;i++){
	stage_char[0]='s';
	stage_char[1]='t';
	stage_char[2]='a';
	stage_char[3]='g';
	stage_char[4]='e';
	stage_char[6]='\0';
	stage_char[5]=i+'0';

	file_name[0]='b';
	file_name[1]='u';
	file_name[2]='t';
	file_name[3]='t';
	file_name[4]='f';
	file_name[5]='l';
	file_name[6]='y';
	file_name[7]='_';
	file_name[8]='\0';
	
	strcat(file_name,stage_char);
	fp = fopen (file_name, "w");
	fclose(fp);
	for(j=8;j<15;j++)
		file_name[j] = '\0';
	}
#endif


	if(radix_2 == 1)
		if ( guard_set == 1 )
			point_pos = 0;
		else if ( guard_set == 2 )
			point_pos = 1;
		else	
			point_pos = 2;						
	else
		if ( guard_set == 1 ) 
			point_pos = 1;
		else if ( guard_set == 2 ) 
			point_pos = 2;
		else			
			point_pos = 3;		
										
	ex_point_pos = 0;
		
	for(i=0;i<points;i++){
		real_X[radix_2+radix_4][i] = real_in[i];
		img_X[radix_2+radix_4][i] = img_in[i];
	}
	
	part_no = 1;
	part_points = points;
	for(k=radix_2+radix_4-1;k>=0;k--){	//k -- stage No.
		if(radix_2 == 1 && k==(radix_2+radix_4-1)){
			for(j=0;j<part_no;j++){  //j -- part No.
				for(i=0;i<part_points/2;i++){ // points No of each part
					buttfly_r2(
							real_X[k+1][i + j*part_points],
							img_X[k+1][i + j*part_points],
							real_X[k+1][i + j*part_points+part_points/2],
							img_X[k+1][i + j*part_points+part_points/2],
							part_points,
							i,
							point_pos,
							temp,
							ex_point_pos,
							guard_set
						  );
							real_X[k][i + j*part_points]=temp[0];
							img_X[k][i + j*part_points]=temp[1];
							real_X[k][i + j*part_points+part_points/2]=temp[2];
							img_X[k][i + j*part_points+part_points/2]=temp[3];
							
							#if DEBUG
							//store result
							temp_in[0]=real_X[k+1][i + j*part_points];
							temp_in[1]=img_X[k+1][i + j*part_points];
							temp_in[2]=real_X[k+1][i + j*part_points+part_points/2];
							temp_in[3]=img_X[k+1][i + j*part_points+part_points/2];
							
							store_debug_info(ex_point_pos,point_pos,k,i,part_points,temp_in,temp,4,guard_set);
							#endif
				}//for i
			}//for j
			part_no = part_no * 2;
			part_points = part_points / part_no;
		}//if
		else{
			for(j=0;j<part_no;j++){  //j -- part No.
				for(i=0;i<part_points/4;i++){ // points No of each part
					buttfly_r4(
							real_X[k+1][i + j*part_points],
							img_X[k+1][i + j*part_points],
							real_X[k+1][i + j*part_points+part_points/2],
							img_X[k+1][i + j*part_points+part_points/2],
							real_X[k+1][i + j*part_points+part_points/4],
							img_X[k+1][i + j*part_points+part_points/4],
							real_X[k+1][i + j*part_points+part_points*3/4],
							img_X[k+1][i + j*part_points+part_points*3/4],
							part_points,
							i,
							point_pos,
							temp,
							ex_point_pos,
							guard_set
						  );
						
							real_X[k][i + j*part_points]=temp[0];
							img_X[k][i + j*part_points]=temp[1];
							real_X[k][i + j*part_points+part_points/4]=temp[2];
							img_X[k][i + j*part_points+part_points/4]=temp[3];
							real_X[k][i + j*part_points+part_points/2]=temp[4];
							img_X[k][i + j*part_points+part_points/2]=temp[5];
							real_X[k][i + j*part_points+part_points*3/4]=temp[6];
							img_X[k][i + j*part_points+part_points*3/4]=temp[7];
							
							#if DEBUG
							//store result
							temp_in[0]=real_X[k+1][i + j*part_points];
							temp_in[1]=img_X[k+1][i + j*part_points];
							temp_in[2]=real_X[k+1][i + j*part_points+part_points/2];
							temp_in[3]=img_X[k+1][i + j*part_points+part_points/2];
							temp_in[4]=real_X[k+1][i + j*part_points+part_points/4];
							temp_in[5]=img_X[k+1][i + j*part_points+part_points/4];
							temp_in[6]=real_X[k+1][i + j*part_points+part_points*3/4];
							temp_in[7]=img_X[k+1][i + j*part_points+part_points*3/4];
							
							store_debug_info(ex_point_pos,point_pos,k,i,part_points,temp_in,temp,8,guard_set);
							#endif
				}//for i
			}//for j
			part_no = part_no * 4;
			part_points = points / part_no;
		}//else

		if(k==0 && ifft == 1){
			for(i=0;i<points;i++){
				img_X[k][i] = -img_X[k][i];
			}
		}
		//bit convert
	
		for(i=0;i<points;i++){
			real_X[k][i] = bit_convert(real_X[k][i], 16, point_pos,guard_set);
			img_X[k][i] = bit_convert(img_X[k][i], 16, point_pos,guard_set);			
		}
	
		
		for(i=0;i<points;i++){
			real_for_point[i] = real_X[k][i];
			img_for_point[i] = img_X[k][i];
		}
		#if DEBUG
		//store result
		store_stage_info(points,point_pos,real_for_point,img_for_point,k,post_order_en,guard_set);
		#endif
		
		//printf("----Stage_no %d, Ex_point_pos = %d, point_pos = %d----\n",k,ex_point_pos, point_pos);	
		//cal new point pos
		if(k!=0){
			//printf("B At stage %3d,shift is %3d\n",k,point_pos);
			ex_point_pos = point_pos;
			point_pos = point_pos + cal_shift(real_for_point,img_for_point,points,point_pos,guard_set);
					
			//printf("A At stage %3d,shift is %3d\n",k,point_pos);
		}
	}//for k

		
	
	/**********bit_reverse********/
	for(i=0;i<points;i++){
		real_X[M-1][(order_seq[0][i])]=real_X[0][i];
		img_X[M-1][(order_seq[0][i])]=img_X[0][i];
	}
	
	//store result
	for(i=0;i<points;i++){
		if ( iq_sel ){
			img_for_point[i] = real_X[M-1][i];
			real_for_point[i] = img_X[M-1][i];		
			img_in[i] = real_X[M-1][i];
			real_in[i]  = img_X[M-1][i];
		}
		else {
			real_for_point[i] = real_X[M-1][i];
			img_for_point[i] = img_X[M-1][i];		
			real_in[i] = real_X[M-1][i];
			img_in[i]  = img_X[M-1][i];
		}
	}
	store_stage_info(points,point_pos,real_for_point,img_for_point,M-1,post_order_en,guard_set);
	/*
	for(i=0;i<points;i++)
		printf("%f\t%f\t%f\t%f\n",real_in[i],img_in[i],real_X[M-1][i],img_X[M-1][i]);
	*/
	
	/*
	FILE *fp_out;
	fp_out = fopen("out.dat","r");
	double out_r[N],out_i[N];
	double tmp;
	double max;
	double norm_r[N],norm_i[N];
	double sig;
	double noise;
	double snr;
	max = 0;
	sig = 0;
	noise = 0;
	for ( i = 0; i < points; i++ ){
		fscanf(fp_out,"%lf\n",out_r+i);
		fscanf(fp_out,"%lf\n",out_i+i);
		tmp = real_in[i];
		if ( tmp < 0 ) tmp = -tmp;
		if ( max < tmp ) max = tmp;
		tmp = img_in[i];
		if ( tmp < 0 ) tmp = -tmp;
		if ( max < tmp ) max = tmp;
		sig += out_r[i] * out_r[i];
		sig += out_i[i] * out_i[i];
	}
	printf("max=%f\n",max);
	for ( i = 0; i < points; i++ ) {
		norm_r[i] = real_in[i] / max;
		norm_i[i] = img_in[i] / max;
		tmp = out_r[i] - norm_r[i];
		noise += tmp * tmp;
		tmp = out_i[i] - norm_i[i];
		noise += tmp * tmp;		
	}
	snr = 10 * log10(sig/noise);
	printf("----- SNR = %f\n----------",snr);
	fclose(fp_out);
	*/
	printf("\nBIT_REVERSE done.\n\n");

	return(point_pos);
	
} //fft
/*
int main(void) {
	int points;
	int ifft;
	int i;

	int shift;

	double real_in[N];
	double img_in[N];

	points=64;
	ifft=0;

	for(i=0;i<points;i++){
		if(rand()%2==0)
		real_in[i]=rand()%1000/1000.0;
		else
		real_in[i]=rand()%1000/1000.0*(-1.0);
		if(rand()%2==0)
		img_in[i]=rand()%1000/1000.0;
		else
		img_in[i]=rand()%1000/1000.0*(-1.0);
	}
	shift=fft_ex(points,ifft,real_in,img_in);
	
}
*/


