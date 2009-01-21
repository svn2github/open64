/*
 *  File: postproc.cpp
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
 
#include "postproc.h"

#if _MULTI_THREAD_BUILD
pthread_mutex_t mutex_pp_ctrl = PTHREAD_MUTEX_INITIALIZER;
#endif

PostProc::PostProc(SL1System *sys,Memory* mem, ADDR base) :  SL1Device(sys, base){
	_lcd = new LCD(memory(), _start);
	_stop = TRUE;
	_frameBufAddr = FRAMEBUF_BASE;
	_lcdHeight = DEFAULT_HEIGHT;
	_lcdWidth = DEFAULT_WIDTH;
	cleanbuf(_lcd->defaultVal());
}

PostProc::~PostProc() {
	delete _lcd;
	_stop = TRUE;
	usleep(5000); //wait all thread stop	
}

void PostProc::cleanbuf(UINT val)
{
	INT i,j;
	ADDR addr = FRAMEBUF_BASE;
	for(i=0;i<MAX_HEIGHT;i++)
		for(j=0;j<MAX_WIDTH;j++)
		{
			writeBufWord(addr,val);
			addr += WORD_BYTE;
		}
			
}


void PostProc::reset() {
	
	UINT result = 0;
	_stop = TRUE;
	usleep(5000); //wait all thread stop	
	configLCD();
	
	_cyc = 0;
	_stop = FALSE;
	buf2lcd();
	
	lcd()->start();
	system()->addSchedule(this, PP_CHECK_LCD_CYC);
}

void PostProc::configLCD() {
	//lcd()->end();
	lcd()->init(_lcdHeight, _lcdWidth);
}

BOOL PostProc::turnOn() {
	if(stop()==TRUE) {
		start();
		return TRUE;
	}
	return FALSE;
}

BOOL PostProc::turnOff() {
	if(stop()==FALSE){
		end();
		return TRUE;
	}
	return FALSE;
}

void PostProc::start() {
	reset();
}

void PostProc::end() {
	stop(TRUE);
	removeSchedule();
	lcd()->end();
}


BOOL PostProc::stop() {
	LOCK_PP_CRTL
	BOOL b = _stop;
	UNLOCK_PP_CRTL
	return b;		
}

void PostProc::tick() {
	system()->addSchedule(this, PP_CHECK_LCD_CYC);
	buf2lcd();
}

void PostProc::readHook(ADDR addr) {
	
}

void PostProc::writeHook(ADDR addr) {

}

void PostProc::removeSchedule(void) {
	system()->removeSchedule(this);
}

void PostProc::buf2lcd() {
	if(lcd()->isReady()==false) {
		ADDR addr = getFrameBufAddr();
		INT i, j;

		LOCK_PP_CRTL
		for(i = 0; i < _lcdHeight; i++)
        {
			for(j = 0; j < _lcdWidth; j++)
            {
				lcd()->output(readBufWord(addr),i,j);
				addr += WORD_BYTE;
			}
		}

		lcd()->setReady(true);
		UNLOCK_PP_CRTL

	}
		
}



