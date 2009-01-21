/*
 *  File: simerror.h
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
#ifndef SIMERROR_H_
#define SIMERROR_H_

#include "defs.h"
#include "simdefs.h"

class SimException {
	public:
	
	protected:
	char _prefix[MAX_EXCEPTION_PREFIX];
	BOOL _isFatal;
	char _target[MAX_MESSAGE_LENGTH];
	
	protected:
	void prefix(STRING p) { strcpy(_prefix, p); }
	
	public:
	SimException(STRING msg, STRING dataType, UINT data) {
		prefix("Exception");
		sprintf(_target, "%s (%s=%x)", msg, dataType, data);
		_isFatal = FALSE;
	}
	SimException(STRING msg, STRING dataType, INT data) {
		prefix("Exception");
		sprintf(_target, "%s (%s=%d)", msg, dataType, data);
		_isFatal = FALSE;
	}	
	SimException(STRING msg, STRING dataType, STRING data) {
		prefix("Exception");
		sprintf(_target, "%s (%s=%s)", msg, dataType, data);
		_isFatal = FALSE;
	}
	BOOL isFatal(void) { return _isFatal; }
	void toString(FILE* out) { fprintf(out, "%s: %s\n", _prefix, _target); }
};

class BreakPointInvalidAddrException : public SimException {
	public:
	BreakPointInvalidAddrException(STRING msg, ADDR addr) : SimException(msg, "address", (UINT) addr) { 
		prefix("BreakPoint");
	}
};

class BreakPointInvalidIndexException : public SimException {
	public:
	BreakPointInvalidIndexException(STRING msg, INT index) : SimException(msg, "index", (INT) index) { 
		prefix("BreakPoint");
	}
};

class ProfilerException : public SimException {
	public:
	ProfilerException(STRING msg, STRING reason) : SimException(msg, "reason", reason) { 
		prefix("Profiler");
	}
};

#endif /*SIMERROR_H_*/
