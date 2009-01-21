/*
 *  File: sl1traceback.cpp
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
#include "sl1traceback.h"

extern void traceback_PLI(int iter_counter, int current_state, int constraint_sub_one,
                                   unsigned int *shifter_memory, unsigned int *decoder_memory);

SL1TRACEBACK::SL1TRACEBACK(SL1MMU& m) : _mmu(m){
}

void SL1TRACEBACK::_readInputData(UINT *dest,ADDR res,UINT mem_per_state,UINT iter_count)
{
	INT i,iter;
	for(i=0;i<mem_per_state;i++)
		dest[mem_per_state*iter_count-1-i] = mmu().getWord(res+(mem_per_state-1-i)*WORD_BYTE);
	iter = iter_count-1;
	for(i=0;i<mem_per_state*iter;i++)
		dest[mem_per_state*iter-1-i] = mmu().getWord(res-WORD_BYTE*(i+1));
}

void SL1TRACEBACK::_writeOutputData(ADDR dest, UINT* res,UINT len)
{
	INT i;
	for(i=0;i<len;i++)
		mmu().setWord(dest-i*WORD_BYTE,res[len-1-i]);
	
}

WORD SL1TRACEBACK::exec(ADDR rs1, WORD rs2) {
	union{
		WORD rs;
		struct{
			unsigned non_use: 4;
			unsigned k_1: 4;
			unsigned current_state: 8;
			unsigned iter_counter: 16;
		}bits;
	}rsgpr;
	
	rsgpr.rs = rs2;
	UINT iter_counter = rsgpr.bits.iter_counter;
	UINT current_state = rsgpr.bits.current_state;
	UINT constraint_sub_one = rsgpr.bits.k_1;
	
	ADDR input_shifter_ptr = mmu().getWord(rs1);
	ADDR output_ptr = mmu().getWord(rs1+WORD_BYTE);
	UINT decoder_memory_number = (iter_counter/MEM_BANK_WIDTH) + ((iter_counter%MEM_BANK_WIDTH) != 0);
	UINT state_number = 1<<constraint_sub_one;
	UINT memory_per_stage = (constraint_sub_one == 4) ? 1 :  (state_number/MEM_BANK_WIDTH);
	
	UINT *shifter_memory,*decoder_memory;
	shifter_memory = new UINT[iter_counter*memory_per_stage];
	decoder_memory = new UINT[decoder_memory_number];
	
	_readInputData(shifter_memory,input_shifter_ptr,memory_per_stage,iter_counter);
	traceback_PLI(iter_counter, current_state, constraint_sub_one, shifter_memory, decoder_memory);
	_writeOutputData(output_ptr, decoder_memory,decoder_memory_number);
	
	delete shifter_memory;
	delete decoder_memory;
	
	return TRACEBACK_FINISHED;
}
