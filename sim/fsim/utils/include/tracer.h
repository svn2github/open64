/*
 *  File: tracer.h
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
#ifndef _TRACER_H_
#define _TRACER_H_

#include <map>

#include "breg.h"
#include "bmmu.h"

#define MAX_ERROR_MSG_LEN 1024

class Tracer {
public:
	Tracer();
	~Tracer();
	
	void init(FILE * in, BOOL check);
	void next();
	
	BOOL end() {		
		return (_curLine >= _linesCnt) && _eof;
	};
	BOOL error() {
		return _errMsg[0] != 0;
	}
	
  	ADDR pc(){
		AppAssert((_curLine < _linesCnt), ("Line index out of range\n"));
		return _lines[_curLine].pc;
	}
	UINT line() {
		AppAssert((_curLine < _linesCnt), ("Line index out of range\n"));
		return _lines[_curLine].line;
	}
	WORD raw() {
		AppAssert((_curLine < _linesCnt), ("Line index out of range\n"));
		return _lines[_curLine].raw;
	}
	UINT thid() {
		AppAssert((_curLine < _linesCnt), ("Line index out of range\n"));
		return _lines[_curLine].thid;
	}

	const char * errMsg() {
		return _errMsg;
	}

private:
	void readTrace();
private:
	struct trace_line{
		UINT line;
		ADDR pc;
		WORD raw;
		UINT thid;
	};
	
	FILE * _trace;
	BOOL _check;

	trace_line * _lines;
	UINT _linesCnt;
	UINT _curLine;
	UINT _lineIdx;
	BOOL _eof;
	char _errMsg[MAX_ERROR_MSG_LEN];
	
};


#endif /*_TRACER_H_*/

