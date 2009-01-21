/*
 *  File: sl1fft.cpp
 * 
 *  Copyright (c) 2006 Beijing SimpLight Nanoelectornics, Ltd.
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without modification, 
 *  are permitted provided that the following conditions are met:
 *
 *  1.Redistributions of source code must retain the above copyright notice, 
 *    this list of conditions and the following disclaimer. 
 *  2.Redistributions in binary form must reproduce the above copyright notice, 
 *    this list of conditions and the following disclaimer in the documentation 
 *    and/or other materials provided with the distribution. 
 *
 *  THIS SOFTWARE IS PROVIDED BY THE FREEBSD PROJECT ``AS IS'' AND ANY EXPRESS 
 *  OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES 
 *  OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. 
 *  IN NO EVENT SHALL THE FREEBSD PROJECT OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
 *  INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, 
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, 
 *  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY 
 *  OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE 
 *  OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED 
 *  OF THE POSSIBILITY OF SUCH DAMAGE.
 */
#include "sl1mmu.h"
#include "sl1fft.h"

extern int seq_cal(int i);
extern float data_convert (int data_in, int bit_width);
extern double bit_convert (double data, int bit_width, int point_pos,int bit_convert);
extern int fft (int points, int ifft, double* real_in, double* img_in,int guard_bit,int iq_sel);
extern char symbol_hex[];

SL1FFE::SL1FFE(SL1MMU& m) : _mmu(m) {
}

WORD SL1FFE::exec(WORD rs1, WORD rs2) {
	INT32 point;
	WORD ret = 0;
	
	union {
		WORD data;
		struct {
			unsigned offset : 9;
			unsigned dontcare : 4;
			unsigned bank : 3;
			unsigned base : 16;
		} deData;			
	} rs1Data;	
	
	union {
		WORD data;
		struct {
			unsigned ffe_op : 3;
			unsigned mode: 3;
			unsigned pre_en: 1;
			unsigned post_en: 1;
			unsigned poll_en: 1;
			unsigned guard_bit: 2;
			unsigned iq_sel: 1;
			unsigned na2:4;
			unsigned b0 : 3;
			unsigned b1 : 3;
			unsigned b2 : 3;
			unsigned b3 : 3;
			unsigned na1: 4;
			
		} deData;			
	} rs2Data;	
	
	rs1Data.data = rs1;
	rs2Data.data = rs2;
	
	/*** To do: decode the ffe opcode ***/
	switch(rs2Data.deData.mode){
		case 0: point = 8192;break;
		case 1: point = 4096;break;
		case 2: point = 2048;break;
		case 3: point = 1024;break;
		case 4: point = 512;break;
		case 5: point = 256;break;
		case 6: point = 128;break;
		default:
		AppFatal((0), ("wrong mode in ffe\n"))
	}	
	
	 double* real_in = new double[point];
	 double* img_in = new double[point];
	 	 
	 _readFFTData(
		//rs1Data.deData.point,
		point,
		real_in,
		img_in,
		rs1Data.data,
		rs2Data.deData.b0,
		rs2Data.deData.b1,
		rs2Data.deData.b2,
		rs2Data.deData.b3,
		rs2Data.deData.pre_en
	);
	
	ret = fft(point,rs2Data.deData.ffe_op,img_in,real_in,rs2Data.deData.guard_bit,rs2Data.deData.iq_sel);
	if(rs2Data.deData.iq_sel)
		_writeFFTData(
			point,
			ret,
			img_in,
			real_in,
			rs1Data.data,
			rs2Data.deData.b0,
			rs2Data.deData.b1,
			rs2Data.deData.b2,
			rs2Data.deData.b3,
			rs2Data.deData.post_en,
			rs2Data.deData.guard_bit
		);	
	else
		_writeFFTData(
			point,
			ret,
			real_in,
			img_in,
			rs1Data.data,
			rs2Data.deData.b0,
			rs2Data.deData.b1,
			rs2Data.deData.b2,
			rs2Data.deData.b3,
			rs2Data.deData.post_en,
			rs2Data.deData.guard_bit
		);
		delete real_in;
		delete img_in;
    	return FFT_FINISHED | (ret<<8); //scaled_bits and finished flag	
}

ADDR SL1FFE::addrCovert(ADDR base, INT bank, INT offset) {
	ADDR addr = (base & FFE_ADDR_BASE_MASK);
	bank = (bank & FFE_ADDR_BANK_MASK);
	INT base_bank = (base & BASE_ADDR_BANK_MASK)>>FFE_ADDR_OFFSET_START;
	INT bank_line = ((bank&FFE_ADDR_BANK_LOW_MASK)<base_bank)?SRAM_BANK_LINE_SIZE:0;
	ADDR base_start = (base & FFE_BANK_START_MASK)+bank_line;
	if(bank<4)
		bank = bank<<FFE_ADDR_BANK_START;
	else
		bank = (1<<FFE_HIGH_32_BANK_START) | ((bank & FFE_ADDR_BANK_LOW_MASK)<<FFE_ADDR_BANK_START);
	offset = ((offset & FFE_ADDR_OFFSET_MASK)<<FFE_ADDR_OFFSET_START)+base_start;
	
	return (addr | bank | offset);
}

void SL1FFE::_readFFTData(INT point_no, double* real_in, double* img_in
			, ADDR fft_base, INT bank0, INT bank1, INT bank2, INT bank3,INT pre_flag) {
	ADDR addr;
	INT i;
	INT pos;
	INT result;
	INT bank;

	INT pos0 = 0;
	INT pos1 = 0;
	INT pos2 = 0;
	INT pos3 = 0;
	for(i=0; i<point_no ;i++)
	{	
		if(pre_flag==0){
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
		//real part 16 bit
		}
		else
		{
			switch(i%FFE_BANK_NUM){
				case 0:
					bank=bank0; pos0 = pos0 + 1; break;
				case 1:
				    bank=bank1; pos1 = pos1 + 1; break;
				case 2:
					bank=bank2; pos2 = pos2 + 1; break;
				case 3:
				    bank=bank3; pos3 = pos3 + 1; break;
			}
		}
	    if(bank==bank0)
			pos=(pos0-1)*4;
		else if(bank==bank1)
			pos=(pos1-1)*4;
		else if(bank==bank2)
			pos=(pos2-1)*4;
		else if(bank==bank3)
			pos=(pos3-1)*4;
		
		/*************************************/
		addr = addrCovert(fft_base,bank , pos);
		result = mmu().getHword(addr) & HWORD_DATA_MASK;
		/*************************************/
		
		real_in[i] = (double) data_convert (result, 16);
       
		/*************************************/
		result = mmu().getHword(addr+2) & HWORD_DATA_MASK;
		/*************************************/
		img_in[i] = (double) data_convert (result, 16);			
	}
}

void SL1FFE::_writeFFTData(INT point_no, INT bit_shift, double* real_in, double* img_in
		, ADDR fft_base, INT bank0, INT bank1, INT bank2, INT bank3, INT post_flag,INT guard_bit) {
	ADDR addr;
	INT i,j;
	INT pos;
	INT result,result_temp,result_high,result_low;
	INT bank;

	INT pos0 = 0;
	INT pos1 = 0;
	INT pos2 = 0;
	INT pos3 = 0;
	
	
	for(i=0; i<point_no ;i++)
	{	
		if(post_flag==0)
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
		}
       	else
       	{
       		switch(i%FFE_BANK_NUM){
				case 0:
					bank=bank0; pos0 = pos0 + 1; break;
				case 1:
				    bank=bank1; pos1 = pos1 + 1; break;
				case 2:
					bank=bank2; pos2 = pos2 + 1; break;
				case 3:
				    bank=bank3; pos3 = pos3 + 1; break;
			}
       	}
               
		//real part 16 bit
	      bit_convert (real_in[i],16,bit_shift,guard_bit);
	      result_low=0;
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
		      result_low = result_low + (result_temp<<(4*(3-j)));
	      }
	   if(bank==bank0)
			pos=(pos0-1)*4;
		else if(bank==bank1)
			pos=(pos1-1)*4;
		else if(bank==bank2)
			pos=(pos2-1)*4;
		else if(bank==bank3)
			pos=(pos3-1)*4;
		
		/*************************************/
		addr = addrCovert(fft_base,bank,pos);
		mmu().setWord(addr, result);
		
		/*************************************/
		//image part 16 bit
	      bit_convert (img_in[i],16,bit_shift,guard_bit);
	      result_high=0;
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
		      result_high = result_high + (result_temp<<(4*(3-j)));
	      }
		/*************************************/
		result = (result_high<<16) | (result_low & 0xffff);
		mmu().setWord(addr, result);	
		/*************************************/
	}
}
