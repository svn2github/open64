/*
 *  File: sl1fft.h
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
#ifndef SL1FFT_H_
#define SL1FFT_H_

#include "sl1defs.h"

class SL1MMU;

#define FFE_ADDR_BASE_MASK (0xffff0000)
#define FFE_ADDR_BANK_START (2)
#define FFE_ADDR_BANK_MASK (0x7)
#define FFE_ADDR_BANK_LOW_MASK (0x3)
#define FFE_HIGH_32_BANK_START (15)
#define FFE_ADDR_OFFSET_START (2)
#define FFE_ADDR_OFFSET_MASK (0x1ffc)
#define FFE_BANK_NUM 4
#define FFE_BANK_START_MASK (0x7ff0)
#define FFT_FINISHED 1
#define FFT_USED 0
#define SRAM_BANK_LINE_SIZE (0x10)
#define BASE_ADDR_BANK_MASK (0xf)




class SL1FFE {
	private:
	SL1MMU& _mmu;
	
	void _readFFTData(INT point, double* real_in, double* img_in
			, ADDR fft_base, INT bank0, INT bank1, INT bank2, INT bank3,INT pre_flag);
	void _writeFFTData(INT point, INT bit_shift, double* real_in, double* img_in
			, ADDR fft_base, INT bank0, INT bank1, INT bank2, INT bank3,INT post_flag,INT guard_bit);		
	
	public:
	SL1FFE(SL1MMU& m);
	SL1MMU& mmu(void) { return _mmu; }

	WORD exec(WORD rs1, WORD rs2);
	ADDR addrCovert(ADDR base, INT bank, INT offset);
};

#endif /*SL1FFT_H_*/
