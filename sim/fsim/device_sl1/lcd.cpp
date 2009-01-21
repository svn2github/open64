/*
 *  File: lcd.cpp
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
 

#include <stdio.h>
#include <stdio.h>
#include <math.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <X11/Xatom.h>
#include <X11/keysym.h>
#include "lcd.h"
#include "address.h"



#if _MULTI_THREAD_BUILD
pthread_mutex_t mutex_fb = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t mutex_lcd_ctrl = PTHREAD_MUTEX_INITIALIZER;
#endif

LCD* fb_gui;

#if _SIMULATE_LCD
void *paint_thread(void *pParams) {
	INT width = fb_gui->width();
	INT height = fb_gui->height();
	UINT pixel = 0;
	Display* dpy = fb_gui->display();
	Window	win = fb_gui->win();
	GC gc = fb_gui->gc();
	UINT flag = 0;
  	while(fb_gui->stop()==FALSE)
  	{ 
  		if(fb_gui->isReady()==true) {
	  		for (INT y=0; y<height; y++) {
	  			for (INT x=0; x<width; x++) {
		    		pixel = X11_COLOUR(fb_gui->output(y,x));
		    		XSetForeground(dpy, gc, pixel);
		    		XDrawPoint(dpy, win, gc, x, y);
		    	}
			}
			fb_gui->setReady(false);
  		}
   		usleep(PAINT_SLEEP_TIME); 
  	}	
  	pthread_exit(NULL);
}
/*
void *paint_thread_vnc(void *pParams) {
	INT width = fb_gui->width();
	INT height = fb_gui->height();
	UINT pixel = 0;
	Display* dpy = fb_gui->display();
	Window	win = fb_gui->win();
	GC gc = fb_gui->gc();
	UINT flag = 0;

  	while(fb_gui->stop()==FALSE)
  	{ 
  		if(fb_gui->isReadReady()==TRUE) {
			for (INT y=0; y<height; y++) {
		    	for (INT x=0; x<width; x++) {
		    		pixel = X11_COLOUR_VNC(fb_gui->output(y,x));
		    		XSetForeground(dpy, gc, pixel);
		    		XDrawPoint(dpy, win, gc, y, x);
		    	}
			}
			fb_gui->setWriteReady();
  		}
   		usleep(PAINT_SLEEP_TIME); 
  	}	
  	pthread_exit(NULL);
}
*/
#endif

LCD::LCD(Memory* mem, ADDR start){
	fb_gui = this;
	_width = 0;
	_height = 0;		
	_readyState = false;
	_defaultVal = 0;
	_threadStart = FALSE;
	_output = NULL;
	_mem = mem;
}

LCD::~LCD() {
	end();
}

void LCD::init(INT h, INT w) {
	//end();
	_width = w;
	_height = h;
	if(_output!=NULL)
		delete _output;	
	_output = new UINT[w*h];
	_readyState = false;
}

void LCD::start() {  
	stop(FALSE);	
#if _SIMULATE_LCD

	char name[80];
	sprintf(name,"SL GUI emulator ver 1.0 (%d * %d * %d bpp)", _width, _height, BITS_PER_PIXEL);
	_display = XOpenDisplay(NULL);

	if (_display == NULL) {
		fprintf(stderr, "Failed to open display\n");
	}

	_screen = DefaultScreen(_display);
	_depth = DefaultDepth(_display, _screen);
	_colormap = DefaultColormap(_display, _screen);

	_rootwin = RootWindow(_display, _screen);
	_win = XCreateSimpleWindow(_display, _rootwin, 10, 10, _width, _height, 2,
	BlackPixel(_display, _screen), BlackPixel(_display, _screen));

	XSetWindowColormap(_display, _win, _colormap);

	_gc = XCreateGC(_display, _win, 0, &_values);
	
	_sizehints.flags = PSize | PMinSize | PMaxSize;
	_sizehints.min_width = _width;
	_sizehints.max_width = _width;
	_sizehints.min_height = _height;
	_sizehints.max_height = _height;
	XSetStandardProperties(_display, _win, name, NULL, None, 0, 0, &_sizehints);

	XSelectInput(_display, _win, ButtonPressMask | KeyPressMask);
	XMapWindow(_display, _win);
	XSync(_display, 0);	
	
	
	if(pthread_create(&_thread_lcd, NULL,  paint_thread, (void*) NULL)!=0) {
		printf("cannot create lcd thread");
		exit(0);
	}
	_threadStart = TRUE;
#endif
}

void LCD::end() {
	stop(TRUE);	
	usleep(5000);
#if _SIMULATE_LCD
	if(_threadStart==TRUE) {
		INT retval;
		while(pthread_join(_thread_lcd, (void**) &retval))
			break;
		XCloseDisplay(_display);
		_threadStart = FALSE;
	}
#endif	
}

void LCD::output(UINT value,INT i,INT j)
{   
	LOCK_LCD
	_output[i*_width+j] = value;
	UNLOCK_LCD
}

UINT LCD::output(INT i,INT j)
{   
	UINT res;
	LOCK_LCD
	res = _output[i*_width+j];
	UNLOCK_LCD
	return res;
}

BOOL LCD::isReady(void) {
	LOCK_LCD
	BOOL b = _readyState;
	UNLOCK_LCD
	return b;
}

void LCD::setReady(bool b) {
	LOCK_LCD
	_readyState = b;
	UNLOCK_LCD
}

BOOL LCD::stop() { 
	BOOL b;
	LOCK_LCD
	b = _stop;
	UNLOCK_LCD
	return b;
	
}

void LCD::stop(BOOL t) { 
	LOCK_LCD
	_stop = t;
	UNLOCK_LCD
}

