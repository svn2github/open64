/*
 *  File: address.h
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
#ifndef MEMDEFS_H_
#define MEMDEFS_H_

#include "defs.h"

//address range flag
#define RANGE_FLAG_NORMAL 0x0
#define RANGE_FLAG_HANDLE 0x1
#define RANGE_FLAG_READONLY 0x2

#define PAGE_LOG_SIZE		11	// 2K
#define PAGE_SIZE			(1 << PAGE_LOG_SIZE)	
#define PAGE_OFFSET_MASK 	(PAGE_SIZE - 1)
#define PAGE_ADDR_MASK 		(~PAGE_OFFSET_MASK)
#define INSTR_PAGE_SIZE	   (PAGE_SIZE/MIN_BYTES_PER_INSTR)
#define INSTR_OFFSET_MASK   (INSTR_PAGE_SIZE-1)
#define MAX_PAGE			(1 << ((TARG_WORD_SIZE * 8) - PAGE_LOG_SIZE))
#define ILLEGAL_PAGE_NUM	(MAX_PAGE+1)

class Address {
	private:
	
	public:
	UINT getPageNum(const ADDR addr) {
		return (addr >> PAGE_LOG_SIZE);
	}
	UINT getPageOffset(const ADDR addr){
		return (addr & (ADDR) PAGE_OFFSET_MASK);
	}
	UINT getInstrOffset(const ADDR addr){
		return ((addr>>MIN_BITS_ADDR_SHIFT) & (ADDR) INSTR_OFFSET_MASK);
	}	
	ADDR getPageAddr(const ADDR addr) {
		return (addr & PAGE_ADDR_MASK);
	}
	UINT getPageSize(ADDR addr) {
		return (UINT) PAGE_SIZE;
	}		
};

#endif /*MEMDEFS_H_*/
