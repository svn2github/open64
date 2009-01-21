/*
 *  File: fetch.h
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
#ifndef FETCH_H_
#define FETCH_H_

#include "defs.h"
#include "instrpage.h"
#include "address.h"
#include "status.h"

#ifndef _ASSERT_INVALID_INSTR
#define _ASSERT_INVALID_INSTR 1
#endif

#if _ASSERT_INVALID_INSTR
#define ASSERT_INVALID_INSTR (TRUE)
#else
#define ASSERT_INVALID_INSTR (FALSE)
#endif

template <class MMUClass, class DECODERClass, class INSTRClass>
class Fetch {
public:

	struct CachePage {
		UINT pageNum;
		InstrPage<INSTRClass>* page;
	};
	
	typedef hash_map< UINT, void* > PageMap;
	typedef PageMap::iterator PageMapIter;
	
protected:
	MMUClass& _mmu;
	Address &_addr;
	ProcessStatus<INSTRClass>& _status;

	/* Here it is insruction page, NOt normal page. */
	struct CachePage _cache;
	INT _pageSize;
	BYTE _defaultValue;		
	PageMap _pageMap;
	BOOL _checkFetchDirty;

private:
	void _preDecodePage(const ADDR pc, InstrPage<INSTRClass>* page);
	InstrPage<INSTRClass>* _getPage(const ADDR pc);
			
protected:
	struct InstrPage<INSTRClass>* cachepage(void) { return _cache.page; }
	INT cachenum(void) { return _cache.pageNum; }
	void cache(UINT num, struct InstrPage<INSTRClass>* page) { 
		_cache.pageNum = num; 
		_cache.page = page; 
	}
	BYTE defaultValue(void) {return _defaultValue; }
	PageMap pageMap(void) {return _pageMap; }
	void pageMap(UINT pageNum, InstrPage<INSTRClass>* page) { _pageMap[pageNum] = page; }
	
	
public:
	Fetch(MMUClass& mmu, Address& _addr, ProcessStatus<INSTRClass>& status);
	void defaultValue(BYTE b) { _defaultValue = b; }
	INSTRClass* getInstr(const ADDR pc);
	INT getSingleInstr(INSTRClass* instr, ADDR pc, WORD raw) {	
		DECODERClass decoder(ASSERT_INVALID_INSTR);
		return decoder.decode(instr, pc, raw);
	}
	INT pageSize(void) { return _pageSize; }
	MMUClass& mmu(void) { return _mmu; }
	Address& addr(void) { return _addr; }
	ProcessStatus<INSTRClass>& status(void) { return _status; }
	void init();
	BOOL checkFetchDirty(void) { return _checkFetchDirty; }
	void checkFetchDirty(BOOL t) { _checkFetchDirty = t; }
};

template <class MMUClass, class DECODERClass, class INSTRClass>
Fetch< MMUClass, DECODERClass, INSTRClass>::Fetch(MMUClass& mmu, Address& addr, ProcessStatus<INSTRClass>& status) 
		: _mmu(mmu), _addr(addr), _status(status) {
	_pageSize = mmu.memory()->pageSize();  // for example, 1l1mmu class: memory() is memory classs instance. It include page class.
	cache(ILLEGAL_PAGE_NUM, NULL);
	checkFetchDirty(TRUE);
}

template <class MMUClass, class DECODERClass, class INSTRClass>
void Fetch< MMUClass, DECODERClass, INSTRClass>::init() {
	PageMapIter iter = _pageMap.begin();
	PageMapIter end_iter = _pageMap.end();
	while(iter!=end_iter) {
		delete ((InstrPage<INSTRClass>*)iter->second);
		iter++;
	}
	_pageMap.clear();
	_cache.pageNum = ILLEGAL_PAGE_NUM;
	_cache.page = NULL;
	_pageSize = PAGE_SIZE;	
}

/*
	Decode one page.
*/
template <class MMUClass, class DECODERClass, class INSTRClass>
void Fetch< MMUClass, DECODERClass, INSTRClass>::_preDecodePage(const ADDR page_start, InstrPage<INSTRClass>* page) {
	DECODERClass decoder(ASSERT_INVALID_INSTR);
	ADDR cur_addr = mmu().checkTextStart(page_start);
	ADDR end_addr = mmu().checkTextEnd(page_start+pageSize());
	
	SimFatal((_pageSize!=0), ("page size is zero\n"));
	while(cur_addr<end_addr) {
		UINT offset = _addr.getInstrOffset(cur_addr);
		INSTRClass* instr = page->getInstr(offset);
		WORD raw = _mmu.readInstr(cur_addr);		// Read through memory class: rawbits and tag information.

		/* Decoding rawbits into internal mode for one insturction and saved into instr */
		UINT instrSize = decoder.decode(instr, cur_addr, raw);
//		AppFatal((instrSize==INSTR16||instrSize==INSTR32), ("The instruction size %d is incorrect. Please check!!!", instrSize));
		cur_addr += instrSize;
	}
}

template <class MMUClass, class DECODERClass, class INSTRClass>
InstrPage<INSTRClass>* Fetch< MMUClass, DECODERClass, INSTRClass>::_getPage(const ADDR pc) {
	UINT pageNum = addr().getPageNum(pc);
	//	printf("Entering InstrPage::_getPage:0x%08x@page:%x\n", pc, pageNum);
	if((UINT)cachenum()!=pageNum) {
		PageMapIter it = _pageMap.find(pageNum);
		if (it != _pageMap.end()){
			cache(pageNum, (InstrPage<INSTRClass>*)it->second);
		}
		else
		{
			try {
			        //printf("new page for address %#08x pagsize:%d\n", pc, pageSize());
				ADDR page_start = _addr.getPageAddr(pc);
				InstrPage<INSTRClass>* page = new InstrPage<INSTRClass>(INSTR_PAGE_SIZE, _mmu.getPageTagPtr(page_start));				
				_preDecodePage(page_start, page);
				// page->dump(page_start);
				pageMap(pageNum, page);	// map to page_map list
				cache(pageNum, page);
			}catch (std::bad_alloc& e) {
				fprintf(stderr, "%s\n", e.what());
			}
		}
	}
	return cachepage();
}

template <class MMUClass, class DECODERClass, class INSTRClass>
INSTRClass* Fetch< MMUClass, DECODERClass, INSTRClass>::getInstr(const ADDR pc) {
	InstrPage<INSTRClass>* page = _getPage(pc);
	//SimFatal(((pc & HALFWORD_ALIGN_MASK) == 0), ("Address Error 0x%x, unaligned PC.", pc));
//	AppFatal((mmu().checkTextRange(pc)==ET_NORMAL), ("Instr Fetch: access non-text area (0x%08x-0x%08x) @0x%08x.", mmu().textStart(), mmu().textEnd(), pc));
	UINT offset = _addr.getInstrOffset(pc);
	pair<INSTRClass*, UBYTE> instr = page->getInstrEntry(offset);
	if(checkFetchDirty()==TRUE) {
		WORD raw = mmu().readInstr(pc);
		if(raw!=(instr.first)->rawbits()) {
			DECODERClass decoder(ASSERT_INVALID_INSTR);
			UINT instrSize = decoder.decode(instr.first, pc, raw);
			AppFatal((instrSize==INSTR16||instrSize==INSTR32), ("The instruction size %d is incorrect. Please check!!!", instrSize));
		}
	}
	
	/*
		Now check break point for current instruction, just set status for processStatus. Do not change tag for mem.
	*/
	CHECK_INSTR_BREAK(pc, instr.second)
	return instr.first;
}


#endif /*SL1FETCH_H_*/
