/*
 *  File: dev_net_rtl8019.h
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
#ifndef _DEV_NET_RTL8019_H_
#define _DEV_NET_RTL8019_H_

#include "net.h"
#include "sl1device.h"
#include "sl1system.h"

#define NE_CR              0x0  // R/W,for different page, CR is the same

//page0 registers  
#define NE_PSTART          0x01 //receive buffer start page	
#define NE_PSTOP           0x02	//receive buffer end page
#define NE_BNRY            0x03	//
#define NE_TPSR            0x04	
#define NE_TBCR0           0x05	
#define NE_TBCR1           0x06	
#define NE_ISR             0x07	
#define NE_RSAR0           0x08	
#define NE_RSAR1           0x09	
#define NE_RBCR0           0x0a
#define NE_RBCR1           0x0b	
#define NE_RCR             0x0c	
#define NE_TCR             0x0d	
#define NE_DCR             0x0e	
#define NE_IMR             0x0f	

//page1 registers
#define NE_PAR0            0x01 //mac highest address
#define NE_PAR1            0x02	
#define NE_PAR2            0x03	
#define NE_PAR3            0x04	
#define NE_PAR4            0x05
#define NE_PAR5            0x06 //mac lowest address
#define NE_CURR            0x07 //receive buffer write pointer
#define NE_MAR0            0x08	//group board register
#define NE_MAR1            0x09
#define NE_MAR2            0x0a	
#define NE_MAR3            0x0b
#define NE_MAR4            0x0c	
#define NE_MAR5            0x0d	
#define NE_MAR6            0x0e	
#define NE_MAR7            0x0f	

//page2 registers
//#define NE_PSTART          0x01            //
//#define NE_PSTOP           0x02            //
//#define NE_TPSR            0x04            //
//#define NE_RCR             0x0c            //
//#define NE_TCR             0x0d            //
//#define NE_DCR             0x0e            //
//#define NE_IMR             0x0f            //


//control register command
#define	CMD_STOP	0x01	
#define	CMD_RUN	    0x02	
#define	CMD_XMIT	0x04	
#define	CMD_READ	0x08	
#define	CMD_WRITE	0x10	
#define	CMD_SEND	0x18	
#define	CMD_NODMA	0x20
#define	CMD_PAGE0	0x00	
#define	CMD_PAGE1	0x40
#define	CMD_PAGE2	0x80

//value write to TPSR register 
#define	XMIT_START	 0x4000	
//value write to PSTART register
#define	RECV_START	 0x4600	
//value write to PSTOP register
#define	RECV_STOP	 0x6000	//shift right by 8bit

//value of interrupt status register  
#define	ISR_PRX	    0x01	//
#define	ISR_PTX		0x02	//
#define	ISR_RXE	    0x04	//
#define	ISR_TXE	    0x08	//
#define	ISR_OVW	    0x10	//
#define	ISR_CNT	    0x20	//
#define	ISR_RDC	    0x40	//Remote DMA
#define	ISR_RST		0x80	//

//data controller register,initial 0x48
#define DCR_WTS 	0x01
#define DCR_BOS 	0x02
#define DCR_LAS 	0x04
#define DCR_LS		0x08
#define DCR_ARM 	0x10
#define DCR_FIFO2	0x00
#define DCR_FIFO4	0x20
#define DCR_FIFO8	0x40
#define DCR_FIFO12	0x60

//TCR send configurate register,initial 0x02
#define TCR_CRC 	0x01
#define TCR_LOOP_NONE	0x00
#define TCR_LOOP_INT	0x02
#define TCR_LOOP_EXT	0x06
#define TCR_ATD 	0x08
#define TCR_OFST	0x10

//RCR receive configurate register,initial 0x04
#define RCR_SEP 	0x01
#define RCR_AR		0x02
#define RCR_AB		0x04
#define RCR_AM		0x08
#define RCR_PRO 	0x10
#define RCR_MON 	0x20

/* Bits in received packet status byte and EN0_RSR*/
#define RSR_RXOK      0x01	/* Received a good packet */
#define RSR_CRC       0x02	/* CRC error */
#define RSR_FAE       0x04	/* frame alignment error */
#define RSR_FO        0x08	/* FIFO overrun */
#define RSR_MPA       0x10	/* missed pkt */
#define RSR_PHY       0x20	/* physical/multicast address */
#define RSR_DIS       0x40	/* receiver disable. set in monitor mode */
#define RSR_DEF       0x80	/* deferring */

/* Transmitted packet status, EN0_TSR. */
#define TSR_PTX 0x01		/* Packet transmitted without error */
#define TSR_ND  0x02		/* The transmit wasn't deferred. */
#define TSR_COL 0x04		/* The transmit collided at least once. */
#define TSR_ABT 0x08		/* The transmit collided 16 times, and was deferred. */
#define TSR_CRS 0x10		/* The carrier sense was lost. */
#define TSR_FU  0x20		/* A "FIFO underrun" occurred during transmit. */
#define TSR_CDH 0x40		/* The collision detect "heartbeat" signal was lost. */
#define TSR_OWC 0x80		/* There was an out-of-window collision. */

/* walimis */
#define START_PAGE	0x40
#define END_PAGE	0x80
#define NET_PAGE_SIZE	0x100
#define PAGE_NUM	(END_PAGE - START_PAGE)	/* 16Kbytes */

#define INT_RTL8019 0
//also define in simconfig.h
#define RTL8019_BASE 0x16000300
//#define RTL8019_ADDR_SPACE 0x100
#define ADDR_HIT  1

class NetRtl8019 :public SL1Device
{
	private:
	// Page 0
	//  Command Register - 00h read/write
	dev_u8 _CR;
	//01h write ; page start register	
	//01h write ; page start register
	dev_u8 _PSTART;
	//02h write ; page stop register
	dev_u8 _PSTOP;
	//03h read/write ; boundary pointer
	dev_u8 _BNRY;
	//04h write ; transmit page start register
	dev_u8 _TSR;
	dev_u8 _TPSR;
	//05,06h write ; transmit byte-count register
	dev_u8 _TBCR0;
	dev_u8 _TBCR1;
	// Interrupt Status Register - 07h read/write
	dev_u8 _ISR;
	//08,09h write ; remote start address register
	dev_u8 _RSAR0;
	dev_u8 _RSAR1;
	//0a,0bh write ; remote byte-count register
	dev_u8 _RBCR0;
	dev_u8 _RBCR1;
	// Receive Configuration Register - 0ch write
	dev_u8 _RSR;
	dev_u8 _RCR;
	// Transmit Configuration Register - 0dh write
	dev_u8 _CNTR0;
	dev_u8 _TCR;
	// Data Configuration Register - 0eh write
	dev_u8 _CNTR1;
	dev_u8 _DCR;
	// Interrupt Mask Register - 0fh write
	dev_u8 _CNTR2;
	dev_u8 _IMR;

	// Page 1
	//
	// Command Register 00h (repeated)
	//01-06h read/write ; MAC address
	dev_u8 _PAR0;
	dev_u8 _PAR1;
	dev_u8 _PAR2;
	dev_u8 _PAR3;
	dev_u8 _PAR4;
	dev_u8 _PAR5;
	// 07h read/write ; current page register
	dev_u8 _CURR;
	// 08-0fh read/write ; multicast hash array
	//Bit8u  MAR[8];    

	dev_u8 _PROM[12];       //12 bytes in PROM for MAC addr
	dev_u8 *_sram;
	dev_u32 _remote_read_offset;
	dev_u32 _remote_write_offset;
	dev_u32 _remote_read_count;
	dev_u32 _remote_write_count;
	int _need_update;
	int _index;
	int _op_16;

	Net_device * _net_device;
	void sync_CRReg(dev_u8 offset, dev_u8 val);
	void write_cr(dev_u8 data);
	void remote_write_byte(dev_u8 data);
	dev_u8 remote_read_byte();
	void rtl8019_input ();
	void net_rtl8019_update();
	
	public:
	NetRtl8019(SL1System *sys,Net_device *net_device, ADDR base);
	~NetRtl8019();
	dev_u8 rtl8019_output (dev_u8 * buf, dev_u16 packet_len);
	virtual void reset ();
	virtual void readHook(ADDR addr);
	virtual void writeHook(ADDR addr);
	virtual void tick();
};

#endif //_DEV_NET_RTL8019_H_

