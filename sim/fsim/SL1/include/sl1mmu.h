/*
 *  File: sl1mmu.h
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
#ifndef SL1MMU_H_
#define SL1MMU_H_

#include "bmmu.h"
#include "sl1defs.h"
#include "sl1instr.h"
#include "sl1address.h"
#include "status.h"
#include "alloc.h"

#ifndef _SHARED_MEMORY
#define _SHARED_MEMORY 1
#endif

#if _SHARED_MEMORY
#define GET_MEMORY(thid) _memory[0];
#define GET_ACCESS(thid) _accessList[0];
#define GET_ALLOC(thid) _allocMap[0]; 
#define SET_CMMU_THREAD(thid) BaseMMU::memory(_memory[0]);
#define CHECK_SHAREMEM_BYTE(addr,tag) \
	{ \
		if(addr<_shareMemLow || addr>_shareMemHigh) \
		{\
			UBYTE threadTag = tag & THREAD_ACCESS_MASK; \
			if(threadTag==THREAD_ID_NONE) \
			{ \
				UBYTE curthreadTag = (_curthread==THREAD_ID_CORE)?ET_CORE:ET_BB;\
				memory()->setByteEntryTag(addr,curthreadTag); \
			} \
			else \
			{ \
				UBYTE threadId = (threadTag==ET_CORE)?THREAD_ID_CORE:THREAD_ID_BB; \
				MemAddrAssert((_curthread==threadId),("MMU:dual thread access the same addr(0x%x) which is out of share mem region",addr)); \
			} \
			tag = tag & NO_THREAD_MASK;\
		}\
	}
#define CHECK_SHAREMEM_HWORD(addr,tag) \
	{ \
		if(addr<_shareMemLow || addr>_shareMemHigh) \
		{\
			UBYTE threadTag = tag & THREAD_ACCESS_MASK; \
			if(threadTag==THREAD_ID_NONE) \
			{ \
				UBYTE curthreadTag = (_curthread==THREAD_ID_CORE)?ET_CORE:ET_BB;\
				memory()->setHWordEntryTag(addr,curthreadTag); \
			} \
			else \
			{ \
				UBYTE threadId = (threadTag==ET_CORE)?THREAD_ID_CORE:THREAD_ID_BB; \
				MemAddrAssert((threadTag!=THREAD_ACCESS_MASK),("MMU:dual thread access the same addr(0x%x) which is out of share mem region",addr)); \
				MemAddrAssert((_curthread==threadId),("MMU:dual thread access the same addr(0x%x) which is out of share mem region",addr)); \
			}\
			tag = tag & NO_THREAD_MASK;\
		} \
	}
#define CHECK_SHAREMEM_WORD(addr,tag) \
	{ \
		if(addr<_shareMemLow || addr>_shareMemHigh) \
		{\
			UBYTE threadTag = tag & THREAD_ACCESS_MASK; \
			if(threadTag==THREAD_ID_NONE) \
			{ \
				UBYTE curthreadTag = (_curthread==THREAD_ID_CORE)?ET_CORE:ET_BB;\
				memory()->setWordEntryTag(addr,curthreadTag); \
			} \
			else \
			{ \
				UBYTE threadId = (threadTag==ET_CORE)?THREAD_ID_CORE:THREAD_ID_BB; \
				MemAddrAssert((threadTag!=THREAD_ACCESS_MASK),("MMU:dual thread access the same addr(0x%x) which is out of share mem region",addr)); \
				MemAddrAssert((_curthread==threadId),("MMU:dual thread access the same addr(0x%x) which is out of share mem region",addr)); \
			} \
			tag = tag & NO_THREAD_MASK;\
		}\
	}
#else
#define GET_MEMORY(thid) _memory[thid];
#define GET_ACCESS(thid) _accessList[thid];
#define GET_ALLOC(thid) _allocMap[thid]; 
#define SET_CMMU_THREAD(thid) BaseMMU::memory(_memory[thid]);
#define CHECK_SHAREMEM_BYTE(addr,tag) 0
#define CHECK_SHAREMEM_HWORD(addr,tag) 0
#define CHECK_SHAREMEM_WORD(addr,tag) 0
#endif

#ifndef _IGNORE_ADDR_ASSERT
#define _IGNORE_ADDR_ASSERT 0
#endif

#if _IGNORE_ADDR_ASSERT
#define MemAddrAssert(cond, arg)
#define WordAlignedAddr(addr) (addr&(~WORD_ALIGN_MASK))
#define HWordAlignedAddr(addr) (addr&(~HWORD_ALIGN_MASK))
#else
#define WordAlignedAddr(addr) (addr)
#define HWordAlignedAddr(addr) (addr)
#define MemAddrAssert(cond, arg) AppFatal(cond, arg)
#endif 

#ifndef _GET_ADDR_MODE
#define _GET_ADDR_MODE 0
#endif

#if _GET_ADDR_MODE
#define GET_ADDR_MODE(addr) (addr&WORD_ALIGN_MASK)
#else
#define GET_ADDR_MODE(addr) ((addr&(~WORD_ALIGN_MASK))&(WORD_ALIGN_MASK))
#endif



class SL1Exec;
class AccessList;

class SL1MMU : public BaseMMU {
	private:
	ProcessStatus<SL1Instr> &_status;
	ADDR _threadTextStart[MAX_MEM_VIEW];
	ADDR _threadTextEnd[MAX_MEM_VIEW];
	ADDR _threadDataStart[MAX_MEM_VIEW];
	ADDR _threadDataEnd[MAX_MEM_VIEW];
	pair<ADDR, ADDR> _cBufRegAddr[MAX_CBUF]; //cbuf on chip reg start/end addr
	Memory* _memory[MAX_MEM_VIEW];
	AccessList* _accessList[MAX_MEM_VIEW];
	AllocMMAP* _allocMap[MAX_MEM_VIEW];
	BOOL _skipHandle;

	protected:
	ProcessStatus<SL1Instr>& status(void) { return _status; }
				
	public:
	// for DMA transfer counting
	void clearDmaCounter(void) {
		
	}	
	void dmaTrafficCount(ADDR dest, ADDR src, INT dest_size, INT src_size);	
	void dmaTrafficDesc(STRING msg, UINT max, UINT mask);
	
	SL1MMU(Address& addr, ProcessStatus<SL1Instr>& status);
	Memory* memory(void) { return GET_MEMORY(_curthread); }
	AllocMMAP* allocMap(void) { return _allocMap[_curthread];}
	AccessList* accessList(void) { return GET_ACCESS(_curthread); }
	BOOL skipHandle(void) { return _skipHandle; }
	void skipHandle(BOOL b) { _skipHandle = b; }

	UINT curthread(void) { return _curthread; }
	
	void curthread(UINT ct) { 
		SimFatal((ct<MAX_MEM_VIEW), ("MMU: Invalid thread id %d.", ct));
		_curthread = ct; 
		BaseMMU::setTextRange(_threadTextStart[ct], _threadTextEnd[ct]);
		BaseMMU::setDataRange(_threadDataStart[ct], _threadDataEnd[ct]);
		SET_CMMU_THREAD(ct)
	}	
	void setTextRange(ADDR start, ADDR end) {
		_threadTextStart[curthread()] = start;
		_threadTextEnd[curthread()] = end;
		BaseMMU::setTextRange(start, end);
	}	
	void setDataRange(ADDR start, ADDR end) {
		_threadDataStart[curthread()] = start;
		_threadDataEnd[curthread()] = end;
		BaseMMU::setDataRange(start, end);
	}		
	
	pair<ADDR, ADDR> cBufAddrReg(INT id) { return _cBufRegAddr[id]; }
	void cBufAddrReg(ADDR start, ADDR end, INT id) { 
		_cBufRegAddr[id].first = start; 
		_cBufRegAddr[id].second = end; 
	}

	//used by kernal and execution
	void writeByte(const ADDR addr, const BYTE);	
	void writeHword(const ADDR addr, const HWORD);
	void writeWord(const ADDR addr, const WORD);
	BYTE readByte(const ADDR addr);
	HWORD readHword(const ADDR addr);
	WORD readWord(const ADDR addr);		

	HWORD readSRAMHword(const ADDR addr, INT busIndex);
	void writeSRAMHword(const ADDR addr, INT busIndex, HWORD data);
	WORD readSRAMWord(const ADDR addr, INT busIndex);
	WORD readSRAMWordByDmac(const ADDR addr, INT busIndex);
	WORD readSRAMWordByCbus(ADDR addr);
	void writeSRAMWord(const ADDR addr, INT busIndex, WORD data);
	void writeSRAMWordByCbus(const ADDR addr, const WORD);	
	
	//setSRAMBase assume start address is SRAM base address
	//without any checking and trigger event, kernel internal use only
	void setSRAMBaseWord(const ADDR addr, WORD data);
	void setSRAMBaseHword(const ADDR addr, HWORD data);
	void setSRAMBaseByte(const ADDR addr, BYTE data);	

	//get/set pair, without any checking and trigger event, kernel internal use only
	void setSRAMByte(const ADDR, const BYTE); 
	void setSRAMHword(const ADDR, const HWORD);   
	void setSRAMWord(const ADDR, const WORD);  
	
	WORD getContent(const UINT index);
	void setContent(const UINT index, WORD data);	
	pair<ADDR, ADDR> getCbufAddr(INT id);	
	
	UINT readHandler(const ADDR addr, const UBYTE tag);	
	UINT writeHandler(const ADDR addr, const UBYTE tag);

	void registerDevice(InterfaceHandler* object, ADDR start, size_t size);
	void registerMemoryRange(UINT type, ADDR start, size_t size, bool readOnly);	
};


	
//used by execution and kernel
INLINE void SL1MMU::writeByte(const ADDR addr, const BYTE byte) {
	UBYTE tag = BaseMMU::writeByte(addr, byte);
	CHECK_SHAREMEM_BYTE(addr,tag);
	if(tag!=ET_NORMAL) {
		writeHandler(addr, tag);
	}
}

INLINE void SL1MMU::writeHword(const ADDR addr, const HWORD hword) {
	MemAddrAssert(((addr&HWORD_ALIGN_MASK)==0), ("MMU: unaligned hword write to 0x%08x.", addr));
	UBYTE tag = BaseMMU::writeHword(HWordAlignedAddr(addr), hword);
	CHECK_SHAREMEM_HWORD(addr,tag);
	if(tag!=ET_NORMAL) {
		writeHandler(HWordAlignedAddr(addr), tag);
	}
}

INLINE void SL1MMU::writeWord(const ADDR addr, const WORD word) {
	MemAddrAssert(((addr&WORD_ALIGN_MASK)==0), ("MMU: unaligned word write to 0x%08x.", addr));
	UBYTE tag = BaseMMU::writeWord(	WordAlignedAddr(addr), word);
	CHECK_SHAREMEM_WORD(addr,tag);
	if(tag!=ET_NORMAL) {
		writeHandler(WordAlignedAddr(addr), tag);
	}
}

INLINE BYTE SL1MMU::readByte(const ADDR addr) {
	pair<BYTE, UBYTE> data = BaseMMU::readByte(addr);
	CHECK_SHAREMEM_BYTE(addr,data.second);
	if(data.second!=ET_NORMAL) {
		readHandler(addr, data.second);
		data = BaseMMU::readByte(addr);
	}	
	return data.first;
}

INLINE HWORD SL1MMU::readHword(const ADDR addr) {
	MemAddrAssert(((addr&HWORD_ALIGN_MASK)==0), ("MMU: unaligned hword read at 0x%08x.", addr));
	pair<HWORD, UBYTE> data = BaseMMU::readHword(HWordAlignedAddr(addr));
	CHECK_SHAREMEM_HWORD(addr,data.second);
	if(data.second!=ET_NORMAL) {
		readHandler(HWordAlignedAddr(addr), data.second);
		data = BaseMMU::readHword(HWordAlignedAddr(addr));
	}	
	return data.first;		
}

INLINE WORD SL1MMU::readWord(const ADDR addr) {
	MemAddrAssert(((addr&WORD_ALIGN_MASK)==0), ("MMU: unaligned word read at 0x%08x.", addr));
	pair<WORD, UBYTE> data = BaseMMU::readWord(WordAlignedAddr(addr));
	CHECK_SHAREMEM_WORD(addr,data.second);
	if(data.second!=ET_NORMAL) {
		readHandler(WordAlignedAddr(addr), data.second);
		data = BaseMMU::readWord(WordAlignedAddr(addr));
	}	
	return data.first;
}


//SL1 C3
INLINE HWORD SL1MMU::readSRAMHword(const ADDR addr, INT busIndex) {
	MemAddrAssert(((addr&HWORD_ALIGN_MASK)==0), ("MMU: unaligned hword read at 0x%08x.", addr));		
	pair<HWORD, UBYTE> data = BaseMMU::readHword(HWordAlignedAddr(addr));
	CHECK_SHAREMEM_HWORD(addr,data.second);
	MemAddrAssert((readHandler(HWordAlignedAddr(addr), (data.second|ET_HANDLE))==RANGE_IDX_SRAM), ("MMU: invalid SRAM address 0x%08x.", addr));		
	return data.first;
}

INLINE void SL1MMU::writeSRAMHword(const ADDR addr, INT busIndex, HWORD hword) {
	MemAddrAssert(((addr&HWORD_ALIGN_MASK)==0), ("MMU: unaligned hword write to 0x%08x.", addr));
	UBYTE tag = BaseMMU::writeHword(HWordAlignedAddr(addr), hword);
	CHECK_SHAREMEM_HWORD(addr,tag);
	MemAddrAssert((writeHandler(HWordAlignedAddr(addr), (tag|ET_HANDLE))==RANGE_IDX_SRAM)
					, ("MMU: invalid SRAM address 0x%08x.", addr));		
}

INLINE WORD SL1MMU::readSRAMWord(const ADDR addr, INT busIndex) {
	MemAddrAssert(((addr&WORD_ALIGN_MASK)==0), ("MMU: unaligned word read at 0x%08x.", addr));
	pair<WORD, UBYTE> data = BaseMMU::readWord(WordAlignedAddr(addr));
	CHECK_SHAREMEM_WORD(addr,data.second);
	MemAddrAssert((readHandler(WordAlignedAddr(addr), (data.second|ET_HANDLE))==RANGE_IDX_SRAM)
					, ("MMU: invalid SRAM address 0x%08x.", addr));	
	return data.first;
}

INLINE WORD SL1MMU::readSRAMWordByDmac(const ADDR addr, INT busIndex) { //for dmac instr
	ADDR addrin = addr&(~WORD_ALIGN_MASK);
	pair<WORD, UBYTE> data = BaseMMU::readWord(WordAlignedAddr(addrin));
	CHECK_SHAREMEM_WORD(addr,data.second);
	MemAddrAssert((readHandler(WordAlignedAddr(addrin), (data.second|ET_HANDLE))==RANGE_IDX_SRAM)
					, ("MMU: invalid SRAM address 0x%08x.", addr));	
	INT temp;
	INT temp_high,temp_low;
	switch(GET_ADDR_MODE(addr)) {
		case AR_HIGH_PART:
		{
			temp_high = data.first;
			temp_high = (temp_high & 0xffff0000);
			temp = temp_high | ((temp_high>>16)&0xffff);
			break;
		}
		case AR_LOW_PART:
		{
			temp_low = data.first;
			temp = (temp_low & 0xffff) | (temp_low<<16);
			break;
		}
		case AR_REVERSE:
		{
			temp_low = data.first;
			temp_high = temp_low >> 16;
			temp = (temp_high & 0xffff) | (temp_low<<16);
			break;
		}
		default:
			temp = data.first;
	}
	return temp;
}

INLINE void SL1MMU::writeSRAMWord(const ADDR addr, INT busIndex, WORD word) {
	MemAddrAssert(((addr&HWORD_ALIGN_MASK)==0), ("MMU: unaligned hword write to 0x%08x.", addr));	
//	AppFatal((isSRAM(addr)==TRUE), ("MMU: invalid SRAM address 0x%08x.", addr));
	UBYTE tag = BaseMMU::writeWord(WordAlignedAddr(addr), word);
	CHECK_SHAREMEM_WORD(addr,tag);
	MemAddrAssert((writeHandler(WordAlignedAddr(addr), (tag|ET_HANDLE))==RANGE_IDX_SRAM)
					, ("MMU: invalid SRAM address 0x%08x.", addr));
}	
//SL1 c3.fftst c3.fftld
INLINE WORD SL1MMU::readSRAMWordByCbus(const ADDR addr) {
	MemAddrAssert(((addr&WORD_ALIGN_MASK)==0), ("MMU: unaligned word read at 0x%08x.", addr));
	pair<WORD, UBYTE> data = BaseMMU::readWord(WordAlignedAddr(addr));
	CHECK_SHAREMEM_WORD(addr,data.second);
	MemAddrAssert((readHandler(WordAlignedAddr(addr), (data.second|ET_HANDLE))==RANGE_IDX_SRAM)
					, ("MMU: invalid SRAM address 0x%08x.", addr));
	if(data.second!=ET_NORMAL) {
		readHandler(WordAlignedAddr(addr), data.second);
		data = BaseMMU::readWord(WordAlignedAddr(addr));
	}	
	return data.first;
}

INLINE void SL1MMU::writeSRAMWordByCbus(const ADDR addr, const WORD word) {
	MemAddrAssert(((addr&WORD_ALIGN_MASK)==0), ("MMU: unaligned word write to 0x%08x.", addr));
	UBYTE tag = BaseMMU::writeWord(	WordAlignedAddr(addr), word);
	CHECK_SHAREMEM_HWORD(addr,tag);
	MemAddrAssert((writeHandler(WordAlignedAddr(addr), (tag|ET_HANDLE))==RANGE_IDX_SRAM)
					, ("MMU: invalid SRAM address 0x%08x.", addr));
	if(tag!=ET_NORMAL) {
		writeHandler(WordAlignedAddr(addr), tag);
	}
}

#endif /*SL1MMU_H_*/
