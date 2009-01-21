/*
 *  File: regmapitem.h
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
#ifndef REGMAPITEM_H_
#define REGMAPITEM_H_

#include "defs.h"

class RegMapItem {
private:
	STRING _name;
	UINT _size;
	BYTE* _ptr;		// Real value fore one register.
	
public:
	RegMapItem(STRING n, UINT s, BYTE* p) {
		_name = n;
		_size = s;
		_ptr = p;
	}
	pair<DWORD, UINT> getValue(void) {
		pair<DWORD, UINT> ret(0, _size);
		switch (_size) {
			case HWORD_BYTE:
				ret.first = *(HWORD*) _ptr;
				break;
			case WORD_BYTE:
				ret.first = *(WORD*) _ptr;
				break;		
			case DWORD_BYTE:
				ret.first = *(DWORD*) _ptr;
				break;
			default:
				SimFatal((0), ("RegMapItem error: unknown data size (%d).", _size));
		}
		return ret;
	}
	
	BYTE *getPtr(void)   {	return _ptr;	}
	STRING getName(void) {	return _name;	}
	UINT   getSize(void) {	return _size;	}
	
	void setValue(DWORD data) {
		switch (_size) {
			case HWORD_BYTE:
				*(HWORD*) _ptr = (HWORD) data;
				break;
			case WORD_BYTE:
				*(WORD*) _ptr = (WORD) data;
				break;		
			case DWORD_BYTE:
				*(DWORD*) _ptr = data;
				break;
			default:
				SimFatal((0), ("RegMapItem error: unknown data size (%d).", _size));
		}

	}
	
};

struct eq_reg_name {
	bool operator() (const char* s1, const char* s2) const
  	{
    	return strcmp(s1, s2) == 0;
	}
};

typedef __gnu_cxx::hash_map<char* const, RegMapItem*, __gnu_cxx::hash<STRING>, eq_reg_name> RegMap;
typedef RegMap::iterator RegMapIter;

#endif /*REGMAP_H_*/
