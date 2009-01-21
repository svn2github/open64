/*
 *  File: sl1fetch.h
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
#ifndef SL1FETCH_H_
#define SL1FETCH_H_

#include "fetch.h"
#include "sl1decoder.h"

class SL1MMU;
//class SL1Decoder;
class SL1Instr;

class SL1Fetch : public Fetch<SL1MMU, SL1Decoder, SL1Instr> {
	public:
	SL1Fetch(SL1MMU& mmu, Address& addr, ProcessStatus<SL1Instr>& status) 
		: Fetch<SL1MMU, SL1Decoder, SL1Instr>(mmu, addr, status) {
		}
};

#endif /*SL1FETCH_H_*/
