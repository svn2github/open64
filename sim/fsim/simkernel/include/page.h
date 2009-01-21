/*
 *  File: page.h
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
#ifndef PAGE_H_
#define PAGE_H_

#include "defs.h"
#include "simdefs.h"

class Page {
private:
	BYTE* _data;
	UBYTE* _tag;
	INT _size;
	BYTE _defaultValue;
	
private:
			
public:
	Page(INT size, BYTE defaultValue) {
		_data = new BYTE[size];
		_tag = new UBYTE[size];
		_size = size;
		_defaultValue = defaultValue;
		initAll();
	}
	
	INT size(void) { return _size; }
	
	UBYTE* getPageTagPtr(void) { return &_tag[0]; }
	
	void initData() {
		for(INT i = 0; i<_size; i++) {
			_data[i] = _defaultValue;
		}		
	}	
	void initAll() {
		for(INT i = 0; i<_size; i++) {
			_data[i] = _defaultValue;
			_tag[i] = ET_NORMAL;
		}		
	}
	void initTag() {
		for(INT i = 0; i<_size; i++) {
			_tag[i] = ET_NORMAL;
		}		
	}	
	void setByteData(INT index, BYTE data) {
		_data[index] = data;
	}

	BYTE getByteData(INT index) {
		return _data[index];
	}
	void setHwordData(INT index, HWORD data) {
		*(UINT16*)&_data[index] = data;
	}

	HWORD getHwordData(INT index) {
		return (*(UINT16*)&_data[index]);
	}
	void setWordData(INT index, WORD data) {
		*(UINT32*)&_data[index] = data;
	}

	WORD getWordData(INT index) {
		return (*(UINT32*)&_data[index]);		
	}	
	void clearEntryTag(INT index, UBYTE tag) {
		_tag[index] &= (~tag);
	}

	void setByteEntryTag(INT index, UBYTE tag) {
		_tag[index] |= tag;
	}
	void setHWordEntryTag(INT index, UBYTE tag) {
		_tag[index]  |= tag;
		_tag[index+1] |= tag;;
	}
	void setWordEntryTag(INT index, UBYTE tag) {
		_tag[index] |= tag;
		_tag[index+1] |= tag;
		_tag[index+2] |= tag;
		_tag[index+3] |= tag;
	}
	
	BYTE getByteEntryTag(INT index) {
		return _tag[index];
	}
	BYTE getHWordEntryTag(INT index) {
		return (_tag[index]|_tag[index+1]);
	}
	BYTE getWordEntryTag(INT index) {
		return (_tag[index]|_tag[index+1]|_tag[index+2]|_tag[index+3]);
	}
};

#endif /*PAGE_H_*/
