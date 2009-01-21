/*
 *  File: sl1viterbi.cpp
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
#include "sl1viterbi.h"

extern unsigned short int viterbi_PLI( unsigned short int scaling_value, int cons_len_sub_one, int scaling_en, int minormax, int diff_flag,
				 unsigned int *unsigned_metric_upper, unsigned int *unsigned_accum_err_metric,
				 unsigned int *unsigned_new_accum_err_metric, unsigned int *shifter_out, unsigned short int *diff);

SL1VITERBI::SL1VITERBI(SL1MMU& m) : _mmu(m) {
	_scalingValue = 0;
}


void SL1VITERBI::_readInputData(UINT *dest,ADDR res,UINT len)
{
	INT i;
	for(i=0;i<len;i++)
		dest[i] = mmu().getWord(res+i*WORD_BYTE*BANK_GRUOP_NUM);
}

UINT SL1VITERBI::_writeOutputShift(UINT* dest,UINT* res,UINT cons_len_sub_one)
{
	INT i,size;
	switch(cons_len_sub_one) {
		case 4:
			dest[0]=res[0]+(res[4]<<8);
			size = 1;
			break;
		case 5:
			dest[0]=res[0]+(res[4]<<16);
    		size = 1;
    		break;
		case 6:
			dest[0] = res[0];
    		dest[1] = res[4];
    		size = 2;
    		break;
		case 7:
			dest[0] = res[0];
        	dest[1] = res[1];
        	dest[2] = res[4];
        	dest[3] = res[5];
        	size = 4;
        	break;
		case 8:
			for (i=0;i<8;i++)
        	{
        		dest[i] = res[i];          
        	}
        	size = 8;
        	break;
		default:
			AppFatal((0), ("invalid cons_len_sub_one(%d),instr c3.viterbi failed\n", cons_len_sub_one));AppFatal((cons_len_sub_one==8), ("invalid cons_len_sub_one(%d),instr c3.viterbi failed\n", cons_len_sub_one));
	}
    return size;		
}

WORD SL1VITERBI::exec(ADDR rs1, WORD rs2) {
	
	union{
		WORD rs;
		struct{
			unsigned diff: 1;
			unsigned minmax: 1;
			unsigned scaling_en: 1;
			unsigned const_len_1: 4;
			unsigned non_use:25;
		}bits;
	}rsgpr;
		 
	rsgpr.rs = rs2;
	INT diff_flag = rsgpr.bits.diff;
	INT minormax = rsgpr.bits.minmax;
	INT scale_flag = rsgpr.bits.scaling_en;
	UINT cons_len_sub_one = rsgpr.bits.const_len_1;
	ADDR input_data = mmu().getWord(rs1);
	ADDR buf0 = mmu().getWord(rs1+WORD_BYTE);
	ADDR buf1 = mmu().getWord(rs1+WORD_BYTE*2);
	ADDR shift_outaddr = mmu().getWord(rs1+WORD_BYTE*3);
	ADDR diff_output = mmu().getWord(rs1+WORD_BYTE*4);
	
	UINT len = 1<<cons_len_sub_one;
	UINT input_len = len>>1;
	UINT *metric_upper,*accum_err_metric,*new_accum_err_metric;
	UINT shifter_out[MAX_SHIFT_SIZE];
	UINT16 diff;
	UINT shift_size;
	UINT last_shifter_out[8];
	INT i;
	metric_upper = new UINT[input_len];
	accum_err_metric = new UINT[input_len];
	new_accum_err_metric = new UINT[input_len];
	
	
	
	_readInputData(metric_upper,input_data,input_len);
	_readInputData(accum_err_metric,buf0,input_len);
	_scalingValue = viterbi_PLI(_scalingValue,cons_len_sub_one,scale_flag,
									minormax,diff_flag, metric_upper,accum_err_metric,
				 					new_accum_err_metric, shifter_out,&diff);
    shift_size = _writeOutputShift(&last_shifter_out[0],shifter_out,cons_len_sub_one);	

	
	for(i=0;i<input_len;i++)
		mmu().setWord(buf1+i*WORD_BYTE*BANK_GRUOP_NUM,new_accum_err_metric[i]);
	for(i=0;i<shift_size;i++)
		mmu().setWord(shift_outaddr+i*WORD_BYTE,last_shifter_out[i]);
	
		
	if(diff_flag)
	{
		mmu().setHword(diff_output,diff);		
	}

	delete metric_upper;
	delete accum_err_metric;
	delete new_accum_err_metric;
	
    return VITERBI_FINISHED;
}

