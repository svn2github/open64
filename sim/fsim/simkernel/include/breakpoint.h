/*
 *  File: breakpoint.h
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
#ifndef BREAKPOINT_H_
#define BREAKPOINT_H_

#include "simdefs.h"
#include "simerror.h"

template <class MMUClass>
class BreakPoint {
public:
	typedef hash_map< ADDR, UBYTE > BreakList;
	typedef hash_map< ADDR, UINT> BreakIndexMap;
	typedef BreakList::iterator BreakListIter;
	typedef BreakIndexMap::iterator BreakIndexMapIter;	
	
private:
	MMUClass& _mmu;
	BreakList _breaklist;
	BreakIndexMap _breakIndexMap;
	UINT _nextBP;	// next break point index
	SymTable* _symtable;
	
public:
	BreakPoint(MMUClass& mmu) : _mmu(mmu) {_nextBP = 0;_symtable = new SymTable;}
	MMUClass& mmu(void) { return _mmu; }
	
	public:
	void setReadBreak(const ADDR);
	void setWriteBreak(const ADDR);
	void setInstrBreak(const ADDR);
    SymTable* symtable(void) {return _symtable;}
	INT disableBreakByIndex(const UINT);
	INT enableBreakByIndex(const UINT);

	INT  clearBreakByIndex(UINT brknum);

	INT clearInstrBreak(const ADDR);
	INT clearReadBreak(const ADDR);
	INT clearWriteBreak(const ADDR);
	
	void clearAllBreak(void);

	void showBreak(FILE* out);
	STRING getSymName(ADDR addr) {
		return (_symtable==NULL?NULL:symtable()->getName(addr));
	}

	UINT getNextBP(void) { return _nextBP++; }
	
private:
	static int compareBPIndex(const void *t1, const void *t2);
};

template <class MMUClass>
void BreakPoint<MMUClass>::setReadBreak(const ADDR addr) {
	BreakListIter iter = _breaklist.find(addr);
	if(iter==_breaklist.end()) {
		if(mmu().setBreak(addr, ET_RB)==TRUE) {
			_breaklist[addr] = ET_RB;	// Set it as read breakpoint
			_breakIndexMap[addr] = getNextBP();
		}
		else {
			throw BreakPointInvalidAddrException("invalid breakpoint type in the address range.", addr);
		}
	}
	else if ((iter->second&ET_RB)==0) {
		if(mmu().setBreak(addr, ET_RB)==TRUE) {
			iter->second |= ET_RB;		// Add read breakpoint
		}
		else {
			throw BreakPointInvalidAddrException("invalid breakpoint type in the address range.", addr);
		}			
	}
	else {
		throw BreakPointInvalidAddrException("read breakpoint existed.", addr);
	}
	
}

template <class MMUClass>
void BreakPoint<MMUClass>::setWriteBreak(const ADDR addr) {
	BreakListIter iter = _breaklist.find(addr);
	if(iter==_breaklist.end()) {
		if(mmu().setBreak(addr, ET_WB)==TRUE) {
			_breaklist[addr] = ET_WB;
			_breakIndexMap[addr] = getNextBP();
		}
		else {
			throw BreakPointInvalidAddrException("invalid breakpoint type in the address range.", addr);
		}		
	}
	else if ((iter->second&ET_WB)==0) {
		if(mmu().setBreak(addr, ET_WB)==TRUE) {
			iter->second |= ET_WB;
		}
		else {
			throw BreakPointInvalidAddrException("invalid breakpoint type in the address range.", addr);
		}				
	}	
	else {
		throw BreakPointInvalidAddrException("write breakpoint existed.", addr);
	}	
}

template <class MMUClass>
void BreakPoint<MMUClass>::setInstrBreak(const ADDR addr) {
	BreakListIter iter = _breaklist.find(addr);
	if(iter==_breaklist.end()) {
		if(mmu().setBreak(addr, ET_INSTR)==TRUE) {
			_breaklist[addr] = ET_INSTR;
			_breakIndexMap[addr] = getNextBP();
		}
		else {
			throw BreakPointInvalidAddrException("invalid breakpoint type in the address range.", addr);
		}					
	}
	else if ((iter->second&ET_INSTR)==0) {
		if(mmu().setBreak(addr, ET_INSTR)==TRUE) {
			iter->second |= ET_INSTR;		
		}
		else {
			throw BreakPointInvalidAddrException("invalid breakpoint type in the address range.", addr);
		}			
	}	
	else {
		throw BreakPointInvalidAddrException("write breakpoint existed.", addr);
	}	
}

template <class MMUClass>
INT BreakPoint<MMUClass>::clearReadBreak(const ADDR addr) {
	BreakListIter bpiter = _breaklist.find(addr);
	if(bpiter!=_breaklist.end()&&((bpiter->second&ET_RB)!=0)) {
		mmu().clearBreak(addr, ET_RB);
		bpiter->second &= (~ET_RB);
		if(bpiter->second==ET_NORMAL) {
			_breaklist.erase(bpiter);
			// Delete it from breakpoint map
			BreakIndexMapIter bpIndexIter = _breakIndexMap.find(addr);
			SimFatal((bpIndexIter != _breakIndexMap.end()), ("Impossible: breakpoint index missing in map\n"));
			_breakIndexMap.erase(bpIndexIter);
		}
		return 0;
	}
	return -1;
}

template <class MMUClass>
INT BreakPoint<MMUClass>::clearWriteBreak(const ADDR addr) {
	BreakListIter bpiter = _breaklist.find(addr);
	if(bpiter!=_breaklist.end()&&((bpiter->second&ET_WB)!=0)) {
		mmu().clearBreak(addr, ET_WB);
		bpiter->second &= (~ET_WB);
		if(bpiter->second==ET_NORMAL) {
			_breaklist.erase(bpiter);
			// Delete it from breakpoint map
			BreakIndexMapIter bpIndexIter = _breakIndexMap.find(addr);
			SimFatal((bpIndexIter != _breakIndexMap.end()), ("Impossible: breakpoint index missing in map\n"));
			_breakIndexMap.erase(bpIndexIter);
		}
		return 0;
	}
	return -1;
}

template <class MMUClass>
INT BreakPoint<MMUClass>::clearInstrBreak(const ADDR addr) {
	BreakListIter bpiter = _breaklist.find(addr);
	if(bpiter!=_breaklist.end()&&((bpiter->second&ET_INSTR)!=0)) {
		mmu().clearBreak(addr, ET_INSTR);
		mmu().clearBreak(addr, ET_INSTR_SKIP);
		bpiter->second &= (~ET_INSTR);
		bpiter->second &= (~ET_INSTR_SKIP);
		if(bpiter->second==ET_NORMAL) {
			_breaklist.erase(bpiter);
			// Delete it from breakpoint map
			BreakIndexMapIter bpIndexIter = _breakIndexMap.find(addr);
			SimFatal((bpIndexIter != _breakIndexMap.end()), ("Impossible: breakpoint index missing in map\n"));
			_breakIndexMap.erase(bpIndexIter);
		}
		return 0;
	}
	return -1;
}

template <class MMUClass>
void BreakPoint<MMUClass>::clearAllBreak(void) {
	BreakListIter bpiter = _breaklist.begin();
	while(bpiter!=_breaklist.end()) {
		mmu().clearBreak(bpiter->first, ET_WB);
		mmu().clearBreak(bpiter->first, ET_RB);
		mmu().clearBreak(bpiter->first, ET_INSTR);
		mmu().clearBreak(bpiter->first, ET_INSTR_SKIP);
		bpiter++;
	}
	_breaklist.clear();
	_breakIndexMap.clear();
}

template <class MMUClass>
INT BreakPoint<MMUClass>::clearBreakByIndex(UINT brknum) {
	BreakIndexMapIter bpIndexIter = _breakIndexMap.begin();
	while(bpIndexIter!=_breakIndexMap.end()) {
		if (bpIndexIter->second == brknum) {
			mmu().clearBreak(bpIndexIter->first, ET_WB);
			mmu().clearBreak(bpIndexIter->first, ET_RB);
			mmu().clearBreak(bpIndexIter->first, ET_INSTR);
			mmu().clearBreak(bpIndexIter->first, ET_INSTR_SKIP);
			_breakIndexMap.erase(bpIndexIter);
			// Delete it from breakpoint list
			BreakListIter bpiter = _breaklist.find(bpIndexIter->first);
			SimFatal((bpiter != _breaklist.end()), ("Impossible: breakpoint missing in list\n"));
			_breaklist.erase(bpiter);
			return 0;
		}
		bpIndexIter++;
	}
	return -1;
}

template <class MMUClass>
INT BreakPoint<MMUClass>::disableBreakByIndex(const UINT index) {
	if (_breakIndexMap.size() == 0)
		return -1;
	BreakIndexMapIter bpIndexIter = _breakIndexMap.begin();
	while(bpIndexIter!=_breakIndexMap.end()) {
		if ((index==(UINT)-1) || (bpIndexIter->second == index)) {
			// Delete it from breakpoint list
			BreakListIter bpiter = _breaklist.find(bpIndexIter->first);
			SimFatal((bpiter != _breaklist.end()), ("Impossible: breakpoint missing in list\n"));
			mmu().clearBreak(bpiter->first, ET_WB);
			mmu().clearBreak(bpiter->first, ET_RB);
			mmu().clearBreak(bpiter->first, ET_INSTR);
			mmu().clearBreak(bpiter->first, ET_INSTR_SKIP);
			bpiter->second |= ET_BREAK_DISABLE;
			if (index != (UINT)-1)
				return 0;
		}
		bpIndexIter++;
	}
	return 0;
}

template <class MMUClass>
INT BreakPoint<MMUClass>::enableBreakByIndex(const UINT index) {
	if (_breakIndexMap.size() == 0)
		return -1;
	BreakIndexMapIter bpIndexIter = _breakIndexMap.begin();
	while(bpIndexIter!=_breakIndexMap.end()) {
		if ((index==(UINT)-1) || (bpIndexIter->second == index)) {
			// Delete it from breakpoint list
			BreakListIter bpiter = _breaklist.find(bpIndexIter->first);
			SimFatal((bpiter != _breaklist.end()), ("Impossible: breakpoint missing in list\n"));
			mmu().clearBreak(bpiter->first, ET_WB);
			mmu().clearBreak(bpiter->first, ET_RB);
			mmu().clearBreak(bpiter->first, ET_INSTR);
			bpiter->second &= (~ET_BREAK_DISABLE);
			if((bpiter->second&ET_RB)>0) {
				mmu().setBreak(bpiter->first, ET_RB);
			}
			if((bpiter->second&ET_WB)>0) {
				mmu().setBreak(bpiter->first, ET_WB);
			}
			if((bpiter->second&ET_INSTR)>0) {
				mmu().setBreak(bpiter->first, ET_INSTR);
			}
			if (index != (UINT)-1)
				return 0;
		}
		bpIndexIter++;
	}
	return 0;
}

template <class MMUClass>
int BreakPoint<MMUClass>::compareBPIndex(const void *t1, const void *t2) {
	BreakIndexMapIter src = *(BreakIndexMapIter *)t1;
	BreakIndexMapIter des = *(BreakIndexMapIter *)t2;
	if (src->second < des->second) return -1;
	else if (src->second > des->second) return 1;
	else return 0;
}

template <class MMUClass>
void BreakPoint<MMUClass>::showBreak(FILE* out) {
	if (_breakIndexMap.size() == 0) {
		fprintf(out, "No breakpoints or watchpoints.\n");
		return;
	}
	BreakIndexMapIter *bpTable = new BreakIndexMapIter[_breakIndexMap.size()];
	UINT i;
	BreakIndexMapIter bpIndexIter = _breakIndexMap.begin();
	for (i=0; i<_breakIndexMap.size(); i++) {
		bpTable[i] = bpIndexIter;
		bpIndexIter ++;
	}

	qsort((void*)bpTable, _breakIndexMap.size(), sizeof(BreakIndexMapIter), &compareBPIndex);
		
	fprintf(out, "indx  address  enabled rb wb instr function_name\n");
	fprintf(out, "------------------------------------------------\n");
	for (i=0; i<_breakIndexMap.size(); i++) {
		BreakListIter bpiter = _breaklist.find(bpTable[i]->first);
		fprintf(out, " %2d: %08x     %s  %c  %c     %c  %s\n", 
				bpTable[i]->second, 
				bpiter->first,
				(bpiter->second&ET_BREAK_DISABLE)>0?"no ":"yes",
				(bpiter->second&ET_RB)>0?'X':'-',
				(bpiter->second&ET_WB)>0?'X':'-',
				(bpiter->second&ET_INSTR)>0?'X':'-',
				getSymName(bpiter->first)
				);
	}
	delete bpTable;
}


#endif /*BREAKPOINT_H_*/

