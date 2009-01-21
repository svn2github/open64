/*
 *  File: utils.cpp
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
#include "utils.h"

#define TOKEN_MAX_LENGTH 64

#ifdef __cplusplus
extern "C" {
#endif

UINT depositBits(UINT dest, UINT src, INT pos, INT width) {
	UINT mask = width>0?1:0;
	for(INT i = 1; i<width; i++) {
		mask = (mask<<1)+1;
	}
	pos = pos - width + 1;
	src = ((src & mask)<<pos);
	mask = (mask << pos);
	dest = dest & (~mask);
	dest = dest | src;
	return dest;
	
}

pair<BOOL, UINT> extractExtMetaData(STRING data) {
	pair<BOOL, UINT> ret (FALSE, 0);
	if(strlen(data)>0) {
		char* tok = strtok(data, " ");
		while(tok!=NULL) {
			if(strstr(tok, "stack=")!=NULL) {
				tok = strchr(tok, '=');
				if(tok!=NULL) {
					UINT value;
					tok++;
					if(sscanf(tok, "%x", &value)==1) {
						ret.first = TRUE;
						ret.second = value;
						return ret;
					}
				}
			}
			tok = strtok(NULL, " ");
		} 
	}
	return ret;	
}
	
#ifdef __cplusplus
}
#endif
