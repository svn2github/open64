/*
 *  File: sl1mmu.cpp
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
#include "accesslist.h"

const STRING range_idx_name[RANGE_IDX_MAX+1] = {
	"Undefined",
	"SRAM",
	"OnChipRegister",
	"Framebuffer",
	"ROM",
	"ThreadBuffer",
	"Flash",
};


SL1MMU::SL1MMU(Address& addr, ProcessStatus<SL1Instr>& status) : BaseMMU(addr), _status(status) {
	_mmap_cal = 0;
	SimFatal(((MAX_MEM_VIEW-1)==THREAD_ID_BB), ("MMU: Invalid Thread ID define."));
	SimFatal((THREAD_ID_BB<MAX_MEM_VIEW), ("MMU: Invalid BB Thread ID define."));
	SimFatal((THREAD_ID_CORE<MAX_MEM_VIEW), ("MMU: Invalid Core Thread ID define."));
	for(INT i = 0; i<MAX_MEM_VIEW; i++) {
		_threadTextStart[i] = 0;
		_threadDataStart[i] = 0;
		_threadTextEnd[i] = 0xffffffff;
		_threadDataEnd[i] = 0xffffffff;		
		_memory[i] = new Memory(addr);
		_accessList[i] = new AccessList;
		_allocMap[i] = new AllocMMAP;
	}
	for(INT i = 0; i<MAX_CBUF; i++) {
		_cBufRegAddr[i].first = 0;
		_cBufRegAddr[i].second = 0;
	}
	_skipHandle = FALSE;
	_shareMemLow = 0;
	_shareMemHigh = 0x10000000L;
	curthread(0);
}

UINT SL1MMU::readHandler(const ADDR addr, const UBYTE tag){
	if((ET_BREAK&tag)>0) {
		CHECK_MEM_BREAK(addr, tag);
	}
	if((ET_HANDLE&tag)>0) {
		pair<UINT, InterfaceHandler*> ret = accessList()->search(addr);
		if(ret.second!=NULL&&skipHandle()==FALSE) {
			ret.second->readHook(addr);
		}
		return ret.first;
	}
	return RANGE_IDX_MEMORY;
}
	
UINT SL1MMU::writeHandler(const ADDR addr, const UBYTE tag){
	if((ET_BREAK&tag)>0) {
		CHECK_MEM_BREAK(addr, tag);
	}
	if((ET_READONLY&tag)>0) {
		//assert read only region
	}	
	if((ET_HANDLE&tag)>0) {
		pair<UINT, InterfaceHandler*> ret = accessList()->search(addr);
		if(ret.second!=NULL&&skipHandle()==FALSE) {
			ret.second->writeHook(addr);
		}
		return ret.first;		
	}
	return RANGE_IDX_MEMORY;
}

void SL1MMU::registerDevice(InterfaceHandler* object, ADDR start, size_t size)
{
	accessList()->insert(RANGE_IDX_OCR, start, start+size-1, object);
	memory()->setDefaultTag(start, start+size-1, ET_HANDLE);
}

void SL1MMU::registerMemoryRange(UINT type, ADDR start, size_t size, bool readOnly)
{
	accessList()->insert(type, start, start+size-1, NULL);
	if (readOnly) {
		memory()->setDefaultTag(start, start+size-1, ET_READONLY);
	}
}

pair<ADDR, ADDR> SL1MMU::getCbufAddr(INT id) {
	pair<ADDR, ADDR> regAddr = cBufAddrReg(id);
	pair<ADDR, ADDR> ret(0, 0);
	ret.first = getWord(regAddr.first);
	ret.second = getWord(regAddr.second);
	return ret;
}

void SL1MMU::setSRAMBaseWord(const ADDR addr, WORD word) {
	ADDR a = accessList()->getAddr(addr, RANGE_IDX_SRAM);
	MemAddrAssert(((a&WORD_ALIGN_MASK)==0), ("MMU: unaligned word write to 0x%08x.", a));
	BaseMMU::setWord(a, word);
}	

void SL1MMU::setSRAMBaseHword(const ADDR addr, HWORD hword) {
	ADDR a = accessList()->getAddr(addr, RANGE_IDX_SRAM);
	MemAddrAssert(((a&HWORD_ALIGN_MASK)==0), ("MMU: unaligned hword write to 0x%08x.", a));
	BaseMMU::setHword(a, hword);
}	

void SL1MMU::setSRAMBaseByte(const ADDR addr, BYTE byte) {
	ADDR a = accessList()->getAddr(addr, RANGE_IDX_SRAM);
	BaseMMU::setByte(a, byte);
}

void SL1MMU::setSRAMByte(const ADDR a, const BYTE byte) {
	BaseMMU::setByte(a, byte);
	MemAddrAssert((writeHandler(a, ET_HANDLE)==RANGE_IDX_SRAM), ("MMU: invalid SRAM address 0x%08x.", a));
}

void SL1MMU::setSRAMHword(const ADDR a, const HWORD hword) {
	MemAddrAssert(((a&HWORD_ALIGN_MASK)==0), ("MMU: unaligned hword write to 0x%08x.", a));
	BaseMMU::setHword(a, hword);
	MemAddrAssert((writeHandler(a, ET_HANDLE)==RANGE_IDX_SRAM), ("MMU: invalid SRAM address 0x%08x.", a));
}
   
void SL1MMU::setSRAMWord(const ADDR a, const WORD word) {
	MemAddrAssert(((a&WORD_ALIGN_MASK)==0), ("MMU: unaligned word write to 0x%08x.", a));
	BaseMMU::setWord(a, word);
	MemAddrAssert((writeHandler(a, ET_HANDLE)==RANGE_IDX_SRAM), ("MMU: invalid SRAM address 0x%08x.", a));
} 

void SL1MMU::dmaTrafficCount(ADDR dest, ADDR src, INT dest_size, INT src_size)
{
	fprintf(stderr, "DMA traffic counting NOT imp!");
}

void SL1MMU::dmaTrafficDesc(STRING msg, UINT max, UINT mask)
{
	fprintf(stderr, "DMA traffic counting NOT imp!");
}

