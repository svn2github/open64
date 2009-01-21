/*
 *  File: net.cpp
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
#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <net/if.h>
#include <sys/ioctl.h>
#include "net.h"

#ifndef __CYGWIN__
#include <linux/if_tun.h>
#define _TAP_
#endif
#define DEFAULT_TUNTAP_IF_NAME "tap"
static int nic_num = 0;
static int name_index = 0;

/* initialize the net module set.
 * If you want to add a new ethernet nic simulation, just add a "net_*_init" function to it.
 * Tap0 ip address set as 192.168.1.254
 */
Net_device::Net_device()
{
	int i;
	_hostip[0]=192;
	_hostip[1]=168;
	_hostip[2]=1;
	_hostip[3]=254;	
//	for(i=0; i<4; i++)
//		_hostip[i] = 0;
	for(i=0; i<6; i++)
		_macaddr[i] = 0;
}

Net_device::~Net_device()
{}

int Net_device::tuntap_open()
{
	int tapif_fd;
	struct ifreq ifr;
	char buf[128];
	char if_name[10];

	printf("tapif_init begin\n");

#ifdef _TAP_
	tapif_fd = open ("/dev/net/tun", 2);
	if (tapif_fd < 0) {
		perror ("tapif_init:open");
		printf ("-----------------------------------------------------------\n");
		printf ("NOTICE: you should be root at first !!!\n");
		printf ("NOTICE: you should inmod linux kernel net driver tun.o!!!\n");
		printf ("NOTICE: if you don't make device node, you should do commands:\n");
		printf ("NOTICE:    mkdir /dev/net; mknod /dev/net/tun c 10 200\n");
		printf ("NOTICE: now the net simulation function can not support!!!\n");
		printf ("-----------------------------------------------------------\n");
		return 1;
	}
#endif
	snprintf (if_name, sizeof (if_name), "%s%d", DEFAULT_TUNTAP_IF_NAME, name_index);
	printf("device name: %s\n", if_name);
#ifdef _TAP_
	memset (&ifr, 0, sizeof (ifr));
	ifr.ifr_flags = IFF_TAP | IFF_NO_PI;
	strncpy (ifr.ifr_name, if_name, IFNAMSIZ);

	if (ioctl (tapif_fd, TUNSETIFF, (void *) &ifr) < 0) {
		printf ("tapif_init: icotl TUNSETIFF error");
		return 1;
	}
#endif

	snprintf (buf, sizeof (buf), "/sbin/ifconfig %s inet %d.%d.%d.%d 255.255.255.0 up > /dev/null 2>&1",if_name, _hostip[0], _hostip[1], _hostip[2], _hostip[3]);

	printf("tapif_init: system(\"%s\");\n", buf);

	system (buf);
	_net_fd = tapif_fd;

	name_index++;

	printf("tapif_init end\n");

	memcpy (buf, "/usr/sbin/brctl addif br0 tap0 > /dev/null 2>&1",sizeof("/usr/sbin/brctl addif br0 tap0 > /dev/null 2>&1"));

	printf("tapif_init: system(\"%s\");\n", buf);

	system (buf);

	return 0;
}

int Net_device::tuntap_close()
{
	close(_net_fd);
	return 0;
}

int Net_device::tuntap_read (void *buf, size_t count)
{
    int rd =  read(_net_fd, buf, count);
	if (rd > 0) printf("tuntap read begin: %d %d!\n",count, rd);
	return rd;
}

int Net_device::tuntap_write(void *buf, size_t count)
{
    int wt = -1;
	wt =  write(_net_fd, buf, count);
	if (wt > 0) printf("tuntap write begin: %d %d !\n",count, wt);
	return wt;
}

int Net_device::tuntap_wait_packet(struct timeval *tv)
{
	fd_set frds;
	int ret;
	// printf("tuntap wait packet begin!\n");
	FD_ZERO(&frds);
	FD_SET(_net_fd, &frds);
	if((ret = select(_net_fd + 1, &frds, NULL, NULL, tv)) <= 0) return -1;
	if(!FD_ISSET(_net_fd, &frds)) return -1;
	
	return 0;
}

/* help functions. */
inline int Net_device::is_broadcast (char *mac)
{
	static unsigned char bcast_addr[6] =
		{ 0xff, 0xff, 0xff, 0xff, 0xff, 0xff };
	return (!memcmp (mac, bcast_addr, 6));
}

inline int Net_device::is_nulladdr (char *mac)
{
	static unsigned char null_addr[6] = { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 };
	return (!memcmp (mac, null_addr, 6));
}

inline int Net_device::is_multicast (char *mac)
{
	return (mac[0] & 0x01);
}

void Net_device::print_packet (dev_u8 * buf, int len)
{
	int i = 0, j = 0, k = 0;
	fprintf (stderr, "\n");
	while (i < len) {
		if (buf[i] < 16)
			fprintf (stderr, "0%x", buf[i]);
		else
			fprintf (stderr, "%2x", buf[i]);
		k++;
		if (k >= 2) {
			fprintf (stderr, " ");
			k = 0;
		}
		i++;
		j++;
		if (j >= 16) {
			fprintf (stderr, "\n");
			j = 0;
		}
	}
	fprintf (stderr, "\n\n");
}

