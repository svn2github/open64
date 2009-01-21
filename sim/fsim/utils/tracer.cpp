/*
 *  File: tracer.cpp
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
#include "tracer.h"

#define MAX_LINES_PER_READ 	0x4000

#define MAX_LINE_LEN		0x1000

#define LINE_BASIC_LEN  	24
#define REG_WRITE_TAG_LEN 	3		// length of "Rw:"
#define MEM_WRITE_TAG_LEN 	4		// length of "Mwb:"

Tracer::Tracer()
{
	_trace = NULL;
	_check = FALSE;
	
	_linesCnt = 0;
	_curLine = 0;
	_eof = TRUE;
	_lineIdx = 0;
	memset(_errMsg, 0, sizeof(_errMsg));

	_lines = new trace_line[MAX_LINES_PER_READ];
	if (_lines == NULL) {
		strcpy(_errMsg, "Fsim out of memory !\n");
	}
}

Tracer::~Tracer()
{
	delete []_lines;	
}

void Tracer::init(FILE * in, BOOL check)
{
	AppAssert((in != NULL), ("Input trace file is NULL"));
	_trace = in;
	_check = check;
	_eof = FALSE;
	_lineIdx = 0;

	readTrace();
}

void Tracer::next()
{
	_curLine++;
	if (_curLine >= _linesCnt) {
		if (!_eof) {
			readTrace();
			_curLine = 0;
		}		
	}
}

void Tracer::readTrace()
{
	char buf[MAX_LINE_LEN];	
	int buflen = 0;
	char * p;
	
	_linesCnt = 0;
	
	while (_linesCnt < MAX_LINES_PER_READ) {
		if (!fgets(buf, MAX_LINE_LEN, _trace) > 0) {
			_eof = TRUE;				
			break;
		}		
		
		if (!sscanf(buf, "%08x %08x %02x", &_lines[_linesCnt].pc, &_lines[_linesCnt].raw, &_lines[_linesCnt].thid)){
			sprintf(_errMsg, "Trace file format error error at line %d \n\t%s\n", _lineIdx, buf);
			break;
		}
		_lines[_linesCnt].line = _lineIdx;
		
		buflen = strlen(buf);
		
		if (_check && buflen > LINE_BASIC_LEN) {
			p = buf + LINE_BASIC_LEN - REG_WRITE_TAG_LEN;
			if (*p == 'R') {
				
			} else if (*p == 'M'){
				p = buf + LINE_BASIC_LEN - MEM_WRITE_TAG_LEN;
				while (*p != ':')
					p++;
				p++;
			}else {
				sprintf(_errMsg, "Trace file format error at line %d \n\t%s\n", _lineIdx, buf);
				break;
			}
			
		}

		_linesCnt++;
		_lineIdx++;
	}
}
