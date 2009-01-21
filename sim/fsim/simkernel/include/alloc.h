/*
 *  File: alloc.h
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
#ifndef ALLOC_H_
#define ALLOC_H_


class AllocMMAP {
	
private:
	struct freelist{
		ADDR start; //free space start
	    INT page_num; //free space page number 
	    INT flag;
	    ADDR end;   //free space end;
	    INT next;
	    INT prev;
	}_alloc[MAX_ALLOC_NUM];
	ADDR _allocStart;
	ADDR _allocLimit;
	UINT _searchPos;

public:
	AllocMMAP(void)
	{
		int i;
		_alloc[0].flag = LIST_USED;
		_alloc[0].start = 0;
		_alloc[0].page_num=_allocLimit;
    	_alloc[0].next = MAX_ALLOC_NUM;
		_alloc[0].prev=MAX_ALLOC_NUM;
		_searchPos=0;
		for(i=1;i<MAX_ALLOC_NUM;i++){
			_alloc[i].flag=LIST_NOT_INIT;
			_alloc[i].next=MAX_ALLOC_NUM;
			_alloc[i].prev=MAX_ALLOC_NUM;
		}
	}
	
	
	ADDR allocStart(void) { return _allocStart; }
	void allocStart(ADDR start) {_allocStart = start;}
	ADDR allocLimit(void) { return _allocLimit;}
	
	struct freelist *alloc(INT i){return &_alloc[i];}
	
	void searchPos(INT i){_searchPos=i;}
	INT searchPos(void){return _searchPos;}
	
	void setAllocRange(ADDR allocStart, UINT allocLimit) {
		_allocStart=allocStart;
		_allocLimit=allocLimit;
		if ((UINT)(_allocLimit/ADD_PAGE_SIZE) > MAX_ALLOC_PAGE) {
			_alloc[0].page_num = MAX_ALLOC_PAGE;
			if (_allocLimit != (UINT)-1) {
				fprintf(stderr, "Free memory too large and wasted. Max allowed size:0x%x08x bytes\n",
					MAX_ALLOC_PAGE * ADD_PAGE_SIZE);
			}
		} else {
			_alloc[0].page_num = _allocLimit/ADD_PAGE_SIZE;
		}
		_alloc[0].end = _allocStart+_alloc[0].page_num*ADD_PAGE_SIZE;
	}
	
	
};
#endif /*ALLOC_H_*/

