/*
 *  File: sl1viterbi.h
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
#ifndef SL1VITERBI_H_
#define SL1VITERBI_H_

#include "sl1defs.h"

#define MAX_SHIFT_SIZE 8
#define VITERBI_FINISHED 1
#define VITERBI_USED 0
#define BANK_GRUOP_NUM 4
class SL1MMU;

class SL1VITERBI{
	
	private:
	SL1MMU& _mmu;
	UINT16 _scalingValue;
		
	private:
	void _readInputData(UINT *dest,ADDR res,UINT len);
	//void _writeOutputData(ADDR dest, UINT* res,UINT len);
	UINT _writeOutputShift(UINT *dest,UINT* res,UINT cons_len_sub_one);
	public:
	SL1VITERBI(SL1MMU& m);
	WORD exec(ADDR rs1,WORD rs2);
	SL1MMU& mmu(void) { return _mmu; }
	void setScalingValue(INT a) {_scalingValue=a;}
	INT getScalingValue(void) { return _scalingValue;}
};

#endif /*SL1VITERBI_H_*/
