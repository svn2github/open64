/*
 *  File: memory.h
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
#ifndef MEMCTRL_H_
#define MEMCTRL_H_

#include "defs.h"
#include "address.h"
#include "page.h"

#ifndef _MEM_WRITE_LOG
#define _MEM_WRITE_LOG 0
#endif

#if _MEM_WRITE_LOG
extern FILE* _mem_log_file_fp;
#define _MEM_LOG_OPENFILE _mem_log_file_fp=fopen64("memory_write_log_file.log", "w");
#define _MEM_LOG_CLOSEFILE fclose(_mem_log_file_fp);
#define _MEM_LOG_LOGGING(addr, index, data, tag, size) fprintf(_mem_log_file_fp, "0x%08x (0x%x) < 0x%0*x (%x)\n", addr, index, size, data, tag);
#else
#define _MEM_LOG_OPENFILE
#define _MEM_LOG_CLOSEFILE
#define _MEM_LOG_LOGGING(addr, index, data, tag, size)
#endif

class Memory {
public:
	Memory(Address& addr);
	~Memory(void);
	void init(void); //initialize data 
	void clear(void); //delete all page and tag

	UBYTE getByteEntryTag(const ADDR addr);
	UBYTE getHWordEntryTag(const ADDR addr);
	UBYTE getWordEntryTag(const ADDR addr);

	void setByteEntryTag(const ADDR addr, UBYTE tag);
	void setHWordEntryTag(const ADDR addr, UBYTE tag);
	void setWordEntryTag(const ADDR addr, UBYTE tag);
	
	//get/set: skip checking	
	//read/write: with checking		
	UBYTE writeByte(const ADDR, const BYTE);
	UBYTE writeHword(const ADDR, const HWORD);
	UBYTE writeWord(const ADDR, const WORD);
	void setByte(const ADDR, const BYTE); 
	void setHword(const ADDR, const HWORD);
	void setWord(const ADDR, const WORD);	
	pair<WORD, UBYTE> readInstr(const ADDR);
	pair<BYTE, UBYTE> readByte(const ADDR);
	pair<HWORD, UBYTE> readHword(const ADDR);
	pair<WORD, UBYTE> readWord(const ADDR);
	BYTE getByte(const ADDR);
	HWORD getHword(const ADDR);
	WORD getWord(const ADDR);	
	INT getStrlen(const ADDR);	
	void readBlock(const ADDR , BYTE*, INT);	
	void writeBlock(const ADDR, const BYTE*, INT);
	void initBlock(const ADDR, BYTE, INT);
	void setBreak(const ADDR addr, UINT tag);
	void clearBreak(const ADDR, UINT tag);
	INT  pageSize(void) { return _pageSize; }
	UBYTE* getPageTagPtr(ADDR pageStartAddr) ;
	void setDefaultTag(ADDR start, ADDR end, UBYTE tag);
	void setSharePage(ADDR addr, Page* page);

private:
	typedef hash_map<UINT, Page*> PageMap;
	typedef hash_map<UINT, Page*>::iterator PageMapIter;
	struct CachePage {
		UINT pageNum;
		Page* page;
	};
	
private:
	Address &_addr;			
	/* Wrap class for real address processing, for example, physical address --> page offset and page number */
	
	struct CachePage _cache; /* Current page: Not real cache like HW, but cache for faster decoding in simulator. */
	PageMap _pageMap;	/* Page list. */
	INT _pageSize;
	BYTE _defaultValue;	

private:
	Page* _getPage(const ADDR);
};

INLINE Page* Memory::_getPage(const ADDR addr) {
	UINT pageNum = _addr.getPageNum(addr);
	if (_cache.pageNum != pageNum) {
		PageMapIter it = _pageMap.find(pageNum);
		if (it != _pageMap.end()){
			_cache.pageNum = pageNum;
			_cache.page = it->second;
		}
		else
		{
			try {
				Page* page = new Page(_pageSize, _defaultValue);
				_pageMap[pageNum] = page;
				_cache.pageNum = pageNum;
				_cache.page = page;
			}catch (std::bad_alloc& e) {
				fprintf(stderr, "%s\n", e.what());
			}
		}
	}
	return _cache.page;
}

INLINE pair<WORD, UBYTE> Memory::readInstr(const ADDR pc) {
	pair<WORD, UBYTE> raw;
	if((pc&HWORD_INSTR_MASK)>0) {
		pair<HWORD, UBYTE> data = readHword(pc);
		raw.first = (((WORD) data.first) << HWORD_BIT);
		raw.second = data.second;
	}
	else {
		raw = readWord(pc);  // Even for half-word instruction, we read WROD for we do NOT know at this stage.
	}
	
	return raw;
}

INLINE void Memory::setByte(const ADDR addr, const BYTE byte) {
	LOCK_MEM
	UINT32 offset = _addr.getPageOffset(addr);
	Page* page = _getPage(addr);
	page->setByteData(offset, byte);
	UNLOCK_MEM
}

INLINE void Memory::setHword(const ADDR addr, const HWORD hword) {
	LOCK_MEM
	UINT32 offset = _addr.getPageOffset(addr);
	Page* page = _getPage(addr);
	page->setHwordData(offset, hword);
	UNLOCK_MEM	
}

INLINE void Memory::setWord(const ADDR addr, const WORD word) {
	LOCK_MEM
	UINT32 offset = _addr.getPageOffset(addr);
	Page* page = _getPage(addr);
	page->setWordData(offset, word);
	UNLOCK_MEM		
}

INLINE UBYTE Memory::writeByte(const ADDR addr, const BYTE byte) {
	LOCK_MEM
	UINT32 offset = _addr.getPageOffset(addr);
	Page* page = _getPage(addr);
	UBYTE tag = page->getByteEntryTag(offset);
	if(tag!=ET_READONLY) {
		page->setByteData(offset, byte);
	}
	_MEM_LOG_LOGGING(addr, offset, byte, tag, 2)
	UNLOCK_MEM
	return tag;
}

INLINE UBYTE Memory::writeHword(const ADDR addr, const HWORD hword) {
	LOCK_MEM
	UINT32 offset = _addr.getPageOffset(addr);
	Page* page = _getPage(addr);
	UBYTE tag = page->getHWordEntryTag(offset);
	if(tag!=ET_READONLY) {
		page->setHwordData(offset, hword);
	}	
	_MEM_LOG_LOGGING(addr, offset, hword, tag, 4)		
	UNLOCK_MEM	
	return tag;
}

INLINE UBYTE Memory::writeWord(const ADDR addr, const WORD word) {
	LOCK_MEM
	UINT32 offset = _addr.getPageOffset(addr);
	Page* page = _getPage(addr);
	UBYTE tag = page->getWordEntryTag(offset);
	if(tag!=ET_READONLY) {
		page->setWordData(offset, word);
	}	
	_MEM_LOG_LOGGING(addr, offset, word, tag, 8)	
	UNLOCK_MEM		
	return tag;
}

INLINE BYTE Memory::getByte(const ADDR addr) {
	LOCK_MEM
	UINT32 offset = _addr.getPageOffset(addr);
	Page* page = _getPage(addr);
	BYTE ret = page->getByteData(offset);
	UNLOCK_MEM	
	return ret;	
}

INLINE HWORD Memory::getHword(const ADDR addr) {
	LOCK_MEM
	UINT32 offset = _addr.getPageOffset(addr);
	Page* page = _getPage(addr);
	HWORD ret = page->getHwordData(offset);
	UNLOCK_MEM	
	return ret;	
}

INLINE WORD Memory::getWord(const ADDR addr) {
	LOCK_MEM
	UINT32 offset = _addr.getPageOffset(addr);
	Page* page = _getPage(addr);
	WORD ret = page->getWordData(offset);
	UNLOCK_MEM	
	return ret;	
}

INLINE pair<BYTE, UBYTE> Memory::readByte(const ADDR addr) {
	pair<BYTE, UBYTE> ret;
	LOCK_MEM
	UINT32 offset = _addr.getPageOffset(addr);
	Page* page = _getPage(addr);
	ret.second = page->getByteEntryTag(offset);
	ret.first = page->getByteData(offset);
	UNLOCK_MEM	
	return ret;	
}

INLINE pair<HWORD, UBYTE> Memory::readHword(const ADDR addr) {
	pair<HWORD, UBYTE> ret;
	LOCK_MEM
	UINT32 offset = _addr.getPageOffset(addr);
	Page* page = _getPage(addr);
	ret.second = page->getHWordEntryTag(offset);
	ret.first = page->getHwordData(offset);
	UNLOCK_MEM	
	return ret;	
}

INLINE pair<WORD, UBYTE> Memory::readWord(const ADDR addr) {
	pair<WORD, UBYTE> ret;
	LOCK_MEM
	UINT32 offset = _addr.getPageOffset(addr);
	Page* page = _getPage(addr);
	ret.second = page->getWordEntryTag(offset);
	ret.first = page->getWordData(offset);
	UNLOCK_MEM	
	return ret;	
}	
#endif /*MEMCTRL_H_*/
