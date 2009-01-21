/*
 *  File: net.h
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
#ifndef __NET_H_
#define __NET_H_

#include <sys/time.h>
#include "sl1device.h"
#define NET_MOD_LINUX   0
#define NET_MOD_TUNTAP  1
#define NET_MOD_VNET    2
class Net_device
{
private:
	int _net_fd;
	unsigned char _hostip[4];
	int _ethmod;

	/* private data */
	void *_priv;
public:	
	unsigned char _macaddr[6];
	Net_device();
	~Net_device();
	int tuntap_open ();
	int tuntap_close ();
	int tuntap_read (void *buf, size_t count);
	int tuntap_write (void *buf, size_t count);
	int tuntap_wait_packet (struct timeval *tv);
	inline int is_broadcast (char *mac);
	inline int is_nulladdr (char *mac);
	inline int is_multicast (char *mac);
	void print_packet (dev_u8 * buf, int len);
};

struct net_option
{
	unsigned char macaddr[6];
	unsigned char hostip[4];
	int ethmod;
};


#endif	/*__NET_H_*/

