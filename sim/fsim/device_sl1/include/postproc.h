/*
 *  File: postproc.h
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

#ifndef POSTPROC_H_
#define POSTPROC_H_

//#include "regdefs.h" //To be implemented, need to generate from verilog header later
#include "lcd.h"
#include "regdefs.h"
#include "sl1device.h"
#include "sl1system.h"


#define FRAMEBUF_BASE (0x1000)
#define DEFAULT_WIDTH (128)
#define DEFAULT_HEIGHT (128)

#define MAX_WIDTH (640)
#define MAX_HEIGHT (480)

#define PP_CHECK_LCD_CYC (40)
#define BUF_SLEEP_TIME (100000) //to be implemented, please adjust a better value
#define LCD_BUF_WAIT_TIME (10000) //to be implemented, please adjust a better value

#if _MULTI_THREAD_BUILD
	#define LOCK_PP_CRTL pthread_mutex_lock(&mutex_pp_ctrl);
	#define UNLOCK_PP_CRTL pthread_mutex_unlock(&mutex_pp_ctrl);
#else
	#define LOCK_PP_CRTL
	#define UNLOCK_PP_CRTL
#endif

class PostProc: public SL1Device {
	
	private:
	LCD* _lcd;	

	INT _lcdSize;
	INT _lcdHeight;
	INT _lcdWidth;
	ADDR _frameBufAddr;	
	//UINT* _outputBuf;	
	BOOL _stop;
	UINT _cyc;
	
	public:
	PostProc(SL1System *sys,Memory* mem, ADDR base);
	~PostProc();		
	void clearBuf();
	void configLCD();

	BOOL turnOn(void);
	BOOL turnOff(void);

	BOOL stop();
	void stop(BOOL t) { _stop = t; }
	void end();
	void start();

	void buf2lcd();
	void setLcdWidth(INT width) {
		if(width>MAX_WIDTH)
			width = MAX_WIDTH; 
		_lcdWidth = width; 
	}
	void setLcdHeight(INT height) {
		if(height>MAX_HEIGHT)
			height = MAX_HEIGHT;
		_lcdHeight = height;
	}
	
	INT getLcdSize();	
	LCD* lcd() { return _lcd; }

	void reset();
	virtual void readHook(ADDR addr);
	virtual void writeHook(ADDR addr);
	ADDR getFrameBufAddr(void) {return _frameBufAddr;}
	void removeSchedule(void);
	
	void tick();
	void cleanbuf(UINT val);
	
	void writeBufWord(const ADDR addr, const WORD word) { memory()->writeWord(addr, word); }
	WORD readBufWord(const ADDR addr) { return memory()->readWord(addr).first; }
	UBYTE readBufByte(const ADDR addr) { return memory()->readByte(addr).first;}
	void writeBufByte(const ADDR addr, const BYTE byte) { memory()->writeByte(addr, byte);}

};

#endif /*POSTPROC_H_*/

