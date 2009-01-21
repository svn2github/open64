/*
 *  File: lcd.h
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
 
#ifndef LCD_H_
#define LCD_H_

//#include "regdefs.h" //To be implemented, need to generate from verilog header later
#include "simdefs.h"
#include "address.h"
#include "ifhandler.h"
#include <X11/Xlib.h>
#include <X11/Xutil.h>

#define _POU_CONTROL 1

#ifndef _SIMULATE_LCD
	#define _SIMULATE_LCD 0
#endif

#define BITS_PER_PIXEL 32
#define POU_READ_TOGGLE	0x1

#define LCD_BUF_STATE_MASK (0x3)
#define LCD_BUF_INDEX_MASK (0x1)
#define LCD_INITIAL_STATE (0) // 00
#define LCD_1ST_FRAME_DONE (2) // 10
#define LCD_2ND_FRAME_DONE (3) // 11

#define EVENT_SLEEP_TIME 100000
#define PAINT_SLEEP_TIME 100000

//#define EVENT_SLEEP_TIME 40
//#define PAINT_SLEEP_TIME 40

#if _POU_CONTROL
#define CHECK_POU_READ(flag)  ((flag&POU_READ_TOGGLE)>0)
#define SET_POU_READ(flag) fb_gui->setWord(FB_POU_READ_CTRL_OFFSET, (flag&(~POU_READ_TOGGLE)));
#else
#define CHECK_POU_READ(flag) 1
#define SET_POU_READ(flag)
#endif

#define GETRVAlUE(colour)  ((colour&0xff0000)>>16)
#define GETGVALUE(colour)  ((colour&0x00ff00)>>8)
#define GETBVALUE(colour)  (colour&0xff)

//input:24bit colour
//output:16bit(565) coulour
#define X11_COLOUR(colour) (((GETRVAlUE(colour)>>3)<<11) | ((GETGVALUE(colour)>>2)<<5)| (GETBVALUE(colour)>>3))
#define X11_COLOUR_VNC(colour) (UINT)(((colour&0xf800)>>8) | ((colour&0x07e0)<<5) | ((colour&0x1f)<<19))

#define FB_COLOUR(colour) ((UINT) (((colour&0xff)<<24)|((colour&0xff00)<<8)|((colour&0xff0000)>>8)|0))
#define PP_OSD_BUF_INDEX_MASK (0x1)

#ifndef _MULTI_THREAD_BUILD
#define _MULTI_THREAD_BUILD 1
#endif

#if _MULTI_THREAD_BUILD
	#define LOCK_LCD pthread_mutex_lock(&mutex_lcd_ctrl);	
	#define UNLOCK_LCD pthread_mutex_unlock(&mutex_lcd_ctrl);
#else
	#define LOCK_LCD
	#define UNLOCK_LCD 
#endif

class LCD{
	private:
		Display 	*_display;
		Colormap    _colormap;
		GC 		    _gc;
		Window		_win;
		Window		_rootwin;
		INT 		_depth;
		INT			_screen;
		BOOL		_stop;
		INT			_width;
		BOOL		_threadStart;
		INT			_height;
		pthread_t	_thread_lcd;
		XSizeHints 	_sizehints;
		XGCValues 	_values;
		UINT* _output;
		
		UINT _defaultVal;
		BOOL _readyState;
		Memory* _mem;
		

	public:
		LCD(Memory* mem, ADDR start);
		~LCD();
		
		void init(INT, INT);
		Display* display() { return _display; }
		Colormap colormap() { return _colormap; }
		GC gc() { return _gc; }
		Window win() { return _win; }
		Window	rootwin() { return _rootwin; }
		INT depth() { return _depth; }
		INT	screen() { return _screen; }
		BOOL stop(); //{ return _stop; }
		void stop(BOOL t); //{ _stop = t; }
		INT width() { return _width; }
		INT height() { return _height; }
		Memory* memory(void) {return _mem;}
				
		BOOL isReady(void);
		void setReady(bool b);
		
		void writeBufWord(const ADDR addr, const WORD word) { memory()->writeWord(addr, word); }
		WORD readBufWord(const ADDR addr) { return memory()->readWord(addr).first; }
		void output(UINT value,INT i,INT j); //{_output[i*_width+j] = value;}	
		UINT output(INT i,INT j); //{ return _output[i*_width+j];}	
		
		void start();	
		void end();

		//framebuffer related
		UINT defaultVal(void) { return _defaultVal; }			
};


#endif /*LCD_H_*/
