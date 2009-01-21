/*
 *  File: bmmu.h
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
#ifndef BMMU_H_
#define BMMU_H_

#include <list>

#include "defs.h"
#include "address.h"
#include "memory.h"
#include "status.h"

class InterfaceHandler;

class BaseMMU {
protected:
	Address& _address;
	Memory* _memory;
		
	ADDR _dataStart;
	ADDR _dataEnd;	
	ADDR _textStart;
	ADDR _textEnd;
	UINT _curthread;
	ADDR _shareMemLow;
	ADDR _shareMemHigh;
	
	INT _mmap_cal;
					
public:
	BaseMMU(Address& addr);
	~BaseMMU() {};
	void init(void);
	Memory* memory(void) { return _memory; }
	void memory(Memory* memory) { _memory = memory; }
	
	

	ADDR textStart(void) { return _textStart; }
	ADDR textEnd(void) { return _textEnd; }	
	ADDR dataStart(void) { return _dataStart; }
	ADDR dataEnd(void) { return _dataEnd; }
	void dataEnd(ADDR end) { _dataEnd = end; }
	
	
	UINT mmap_cal(void) {return _mmap_cal;}
	void add_mmap_cal(void){_mmap_cal++;}

	
	void showTextRange(void) {
		fprintf(stdout, "Text Start = %x, Text End = %x\n", _textStart, _textEnd);
	}
	virtual void setTextRange(ADDR start, ADDR end) {
		_textStart = start;
		_textEnd = end;
	}
	virtual void setDataRange(ADDR start, ADDR end) {
		_dataStart = start;
		_dataEnd = end;
	}
	
	
	UINT checkTextRange(ADDR pc) {
		if(pc>=_textStart&&pc<_textEnd) return ET_NORMAL;
		else return ET_ERR;
	}

	UINT checkDataRange(ADDR addr) {
		if(addr>=_dataStart&&addr<_dataEnd) return ET_NORMAL;
		else return ET_ERR;
	}

	ADDR checkTextStart(ADDR pc) {
		return (pc>=_textStart?pc:_textStart);
	}

	ADDR checkTextEnd(ADDR pc) {
		return (pc<_textEnd?pc:_textEnd);
	}

	void readBlock(const ADDR, BYTE*, INT) ;
	void writeBlock(const ADDR, const BYTE*, INT);
	void initBlock(const ADDR, BYTE, INT);	
	void initFile(FILE*, const ADDR);	
	void dumpFile(FILE*, const ADDR, INT);
	
	INT getStrlen(const ADDR addr);
	STRING getString(const ADDR addr);
	void setString(const ADDR addr, const STRING str);
	
	UBYTE* getPageTagPtr(ADDR pageStartAddr) ;

	void shareMemHigh(ADDR a) {_shareMemHigh = a;}
	void shareMemLow(ADDR a) {_shareMemLow = a;}
	
	ADDR shareMemHigh(void) { return _shareMemHigh; }
	ADDR shareMemLow(void) { return _shareMemLow; }
	
	//override function
	//used by kernal aand execution
	UBYTE writeByte(const ADDR, const BYTE);
	UBYTE writeHword(const ADDR, const HWORD);
	UBYTE writeWord(const ADDR, const WORD);
	pair<BYTE, UBYTE> readByte(const ADDR);
	pair<HWORD, UBYTE> readHword(const ADDR);
	pair<WORD, UBYTE> readWord(const ADDR);
	
	WORD readInstr(const ADDR);
		
	BOOL setBreak(const ADDR addr, UINT tag);
	BOOL clearBreak(const ADDR addr, UINT tag);	
	BOOL clearMem(void);
	BOOL initMem(void);

	
	virtual UINT readHandler(const ADDR addr, const UBYTE tag) = 0;	
	virtual UINT writeHandler(const ADDR addr, const UBYTE tag) = 0;
	
	virtual UINT curthread(void) { return _curthread; }
	virtual void curthread(UINT ct) { _curthread = ct; }

	virtual pair<ADDR, ADDR> cBufAddrReg(INT id) = 0;
	virtual void cBufAddrReg(ADDR start, ADDR end, INT id) = 0;

	//setSRAMBase assume start address is SRAM base address
	//without any checking and trigger event, kernel internal use only
	virtual void setSRAMBaseWord(const ADDR addr, WORD data) = 0;	
	virtual void setSRAMBaseHword(const ADDR addr, HWORD data) = 0;	
	virtual void setSRAMBaseByte(const ADDR addr, BYTE data) = 0;	
	
	//get/set pair, without any checking and trigger event, kernel internal use only
	virtual void setByte(const ADDR, const BYTE); 
	virtual BYTE getByte(const ADDR);
	virtual void setHword(const ADDR, const HWORD); 
	virtual HWORD getHword(const ADDR); 
	virtual void setWord(const ADDR, const WORD); 
	virtual WORD getWord(const ADDR); 
	virtual void setSRAMByte(const ADDR, const BYTE) = 0; 
	virtual void setSRAMHword(const ADDR, const HWORD) = 0;  
	virtual void setSRAMWord(const ADDR, const WORD) = 0;  	
	
	virtual void registerDevice(InterfaceHandler* object, ADDR start, size_t size) = 0;
	virtual void registerMemoryRange(UINT type, ADDR start, size_t size, bool readOnly) = 0;
};

INLINE UBYTE* BaseMMU::getPageTagPtr(ADDR pageStartAddr) {
	// get the tag of memory (text area)
	return memory()->getPageTagPtr(pageStartAddr); 
}

INLINE UBYTE BaseMMU::writeByte(const ADDR addr, const BYTE byte) {
	return memory()->writeByte(addr, byte);
}

INLINE UBYTE BaseMMU::writeHword(const ADDR addr, const HWORD hword) {
	return memory()->writeHword(addr, hword);
}

INLINE UBYTE BaseMMU::writeWord(const ADDR addr, const WORD word) {
	return memory()->writeWord(addr, word);
}

INLINE pair<BYTE, UBYTE> BaseMMU::readByte(const ADDR addr) {
	return memory()->readByte(addr);
}

INLINE pair<HWORD, UBYTE> BaseMMU::readHword(const ADDR addr) {
	return memory()->readHword(addr);
}

INLINE pair<WORD, UBYTE> BaseMMU::readWord(const ADDR addr) {
	return memory()->readWord(addr);
}

	
INLINE WORD BaseMMU::readInstr(const ADDR pc) {
//	AppFatal((checkTextRange(pc)==ET_NORMAL), ("Instr Fetch: access non-text area @0x%08x.", pc));
	pair<WORD, UBYTE> raw = memory()->readInstr(pc);
	return raw.first;
}

INLINE void BaseMMU::setByte(const ADDR addr, BYTE byte) {
	memory()->setByte(addr, byte);
}

	
INLINE void BaseMMU::setHword(const ADDR addr, HWORD hword) {
	memory()->setHword(addr, hword);
}

	
INLINE void BaseMMU::setWord(const ADDR addr, WORD word) {
	memory()->setWord(addr, word);
}

	
INLINE BYTE BaseMMU::getByte(const ADDR addr) {
	return memory()->getByte(addr);
}

	
INLINE HWORD BaseMMU::getHword(const ADDR addr) {
	return memory()->getHword(addr);
}

	
INLINE WORD BaseMMU::getWord(const ADDR addr) {
	return memory()->getWord(addr);
}

#endif /*BMMU_H_*/
