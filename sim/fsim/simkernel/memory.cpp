/*
 *  File: memory.cpp
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
#include "memory.h"

#ifndef _MEM_DEFAULT_VALUE
#define _MEM_DEFAULT_VALUE 0
#endif

#if _MEM_WRITE_LOG
FILE* _mem_log_file_fp;
#endif

#if _MULTI_THREAD_BUILD
pthread_mutex_t mutex_memory = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t mutex_status = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t mutex_interrupt = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t mutex_ocr = PTHREAD_MUTEX_INITIALIZER;
#endif

Memory::Memory(Address& addr) : _addr(addr) {
	_cache.pageNum = ILLEGAL_PAGE_NUM;
	_cache.page = NULL;
	_pageSize = PAGE_SIZE;
	_defaultValue = _MEM_DEFAULT_VALUE;
	_MEM_LOG_OPENFILE
}

Memory::~Memory(void) {
	_MEM_LOG_CLOSEFILE
}

void Memory::init() {
	PageMapIter iter = _pageMap.begin();
	PageMapIter end_iter = _pageMap.end();
	while(iter!=end_iter) {
		iter->second->initData();
		iter++;
	}
//	_pageMap.clear();
	_cache.pageNum = ILLEGAL_PAGE_NUM;
	_cache.page = NULL;
	_pageSize = PAGE_SIZE;	
}

void Memory::setBreak(const ADDR addr, UINT tag) {
	LOCK_MEM
	Page* page = _getPage(addr);
	UINT32 offset = _addr.getPageOffset(addr);	
	page->setByteEntryTag(offset, tag);
	UNLOCK_MEM
}


void Memory::clearBreak(const ADDR addr, UINT tag) {
	LOCK_MEM
	Page* page = _getPage(addr);
	UINT32 offset = _addr.getPageOffset(addr);	
	page->clearEntryTag(offset, tag);	
	UNLOCK_MEM
}

INT Memory::getStrlen(const ADDR addr) {
	LOCK_MEM
	INT len = 0;
	ADDR a = addr;
	while(readByte(a).first!='\0') {
		len++;
		a++;
	}
	UNLOCK_MEM
	return (len+1);
}

void Memory::readBlock(const ADDR start_addr, BYTE* block, INT size) {
	LOCK_MEM
	ADDR addr = start_addr;
	ADDR end_addr = start_addr + size;
	while(addr<end_addr) {
		Page* page = _getPage(addr);
		UINT32 offset = _addr.getPageOffset(addr);
		INT pageSize = page->size();
		for(INT i = offset; i<pageSize&&addr<end_addr; i++) {
			*block = page->getByteData(i);
			block++;
			addr++;
		}
	}
	UNLOCK_MEM		
}

void Memory::writeBlock(const ADDR start_addr, const BYTE* block, INT size) {
	LOCK_MEM
	ADDR addr = start_addr;
	ADDR end_addr = start_addr + size;
	while(addr<end_addr) {
		Page* page = _getPage(addr);
		UINT32 offset = _addr.getPageOffset(addr);
		INT pageSize = page->size();
		for(INT i = offset; i<pageSize&&addr<end_addr; i++) {
			page->setByteData(i, *block);
			block++;
			addr++;
		}
	}
	UNLOCK_MEM		
}

void Memory::initBlock(const ADDR start_addr, BYTE value, INT size) {
	LOCK_MEM
	ADDR addr = start_addr;
	ADDR end_addr = start_addr + size;
	while(addr<end_addr) {
		Page* page = _getPage(addr);
		UINT32 offset = _addr.getPageOffset(addr);
		INT pageSize = page->size();
		for(INT i = offset; i<pageSize&&addr<end_addr; i++) {
			page->setByteData(i, value);
			addr++;
		}
	}
	UNLOCK_MEM		
}

UBYTE* Memory::getPageTagPtr(ADDR pageStartAddr) {
	UINT pageNum = _addr.getPageNum(pageStartAddr);
	if (_cache.pageNum != pageNum) {
		PageMap::iterator it = _pageMap.find(pageNum);
		if (it != _pageMap.end()){
			_cache.pageNum = pageNum;
			_cache.page = it->second;
		}
		else {
			AppFatal((0), ("Memory error: invalid instruction page (null page)."));
		}
	}
	return (_cache.page)->getPageTagPtr();	
}

void Memory::setDefaultTag(ADDR start, ADDR end, UBYTE tag) {
	LOCK_MEM
	ADDR addr = start;
	while(addr<end) {
		Page* page = _getPage(addr);
		UINT32 offset = _addr.getPageOffset(addr);
		INT pageSize = page->size();
		for(INT i = offset; i<pageSize&&addr<end; i++) {
			page->setByteEntryTag(i, tag);
			addr++;
		}
	}
	UNLOCK_MEM	
}

void Memory::clear() {
	PageMapIter iter = _pageMap.begin();
	PageMapIter end_iter = _pageMap.end();
	while(iter!=end_iter) {
		delete iter->second;
		iter++;
	}
	_pageMap.clear();
	_cache.pageNum = ILLEGAL_PAGE_NUM;
	_cache.page = NULL;
	_pageSize = PAGE_SIZE;		
}


INLINE UBYTE Memory::getByteEntryTag(const ADDR addr) {
	LOCK_MEM
	UINT32 offset = _addr.getPageOffset(addr);
	Page* page = _getPage(addr);
	UBYTE ret = page->getByteEntryTag(offset);
	UNLOCK_MEM	
	return ret;	
}

UBYTE Memory::getHWordEntryTag(const ADDR addr) {
	LOCK_MEM
	UINT32 offset = _addr.getPageOffset(addr);
	Page* page = _getPage(addr);
	UBYTE ret = page->getHWordEntryTag(offset);
	UNLOCK_MEM	
	return ret;	
}

UBYTE Memory::getWordEntryTag(const ADDR addr) {
	LOCK_MEM
	UINT32 offset = _addr.getPageOffset(addr);
	Page* page = _getPage(addr);
	UBYTE ret = page->getWordEntryTag(offset);
	UNLOCK_MEM	
	return ret;	
}

void Memory::setByteEntryTag(const ADDR addr, UBYTE tag) {
	LOCK_MEM
	UINT32 offset = _addr.getPageOffset(addr);
	Page* page = _getPage(addr);
	page->setByteEntryTag(offset, tag);
	UNLOCK_MEM	
}

void Memory::setHWordEntryTag(const ADDR addr, UBYTE tag) {
	LOCK_MEM
	UINT32 offset = _addr.getPageOffset(addr);
	Page* page = _getPage(addr);
	page->setHWordEntryTag(offset, tag);
	UNLOCK_MEM	
}

void Memory::setWordEntryTag(const ADDR addr, UBYTE tag) {
	LOCK_MEM
	UINT32 offset = _addr.getPageOffset(addr);
	Page* page = _getPage(addr);
	page->setWordEntryTag(offset, tag);
	UNLOCK_MEM	
}

