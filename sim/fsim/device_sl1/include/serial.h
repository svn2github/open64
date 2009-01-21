/*
 *  File: serial.h
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

#ifndef SERIAL_H_
#define SERIAL_H_

/* include pseudo terminal headers */
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include <termios.h>
#include <sys/ioctl.h>

#include <list>

#include "sl1device.h"
#include "sl1system.h"

class Serial : public SL1Device
{
	/* Friend class for cmodel */
	friend class SL1SocCmodel;

	/* Constant variables */
	enum {
		FCR_FIFO_SIZE = 0x10,
		/* read slowdown factor */
		UART_FGETC_SLOWDOWN = 100,
		/* # of chars to count when performing timeout int. */
		UART_CHAR_TIMEOUT = 4,
	};
	/*
	 * Addresses of visible registers
	 */
	enum UART_REGS {
		UART_RXBUF 	= 0, /* R: Rx buffer, DLAB=0 */
		UART_TXBUF 	= 0, /* W: Tx buffer, DLAB=0 */
		UART_DLL  	= 0, /* R/W: Divisor Latch Low, DLAB=1 */
		UART_DLH  	= 4, /* R/W: Divisor Latch High, DLAB=1 */
		UART_IER  	= 4, /* R/W: Interrupt Enable Register */
		UART_IIR  	= 8, /* R: Interrupt ID Register */
		UART_FCR  	= 8, /* W: FIFO Control Register */
		UART_LCR  	= 12, /* R/W: Line Control Register */
		UART_MCR  	= 16, /* W: Modem Control Register */
		UART_LSR  	= 20, /* R: Line Status Register */
		UART_MSR  	= 24, /* R: Modem Status Register */
	};

	enum {
		UART_IIR_NO_INT 	= 0x01,	/* No interrupts pending */
		UART_IIR_ID		= 0x06,	/* Mask for the interrupt ID */
		UART_IIR_MSI		= 0x00,	/* Modem status interrupt */
		UART_IIR_THRI		= 0x02,	/* Transmitter holding register empty */
		UART_IIR_RDI		= 0x04,	/* Receiver data interrupt */
		UART_IIR_RLSI		= 0x06,	/* Receiver line status interrupt */
		UART_IIR_CTI  		= 0x0c,	/* Character timeout */
	};
	
	//unsigned char _RBR;		/* Receive Buffer Register */
	union ReceiveBuffer{
	struct{
		dev_u8 RBR;         /* Data byte received */
		dev_u8 RPE    : 1;  /* Parity error associated with receiving character */
		dev_u8 RFE    : 1;  /* Framing error associated with receiving character */
		dev_u8 RBI    : 1;  /* Break error associated with receiving character */
	}bit;
	dev_u16 value;
	}_RBR;

	union DivisorLatch {
		struct {
			dev_u8 DLL;	/* Divisor Latch LSB */
			dev_u8 DLH;	/* Divisor Latch MSB */
		} bit;
		dev_u16 value;
	} _DL;
	union LineControlReg {		/* Line Control Register */
		struct {
			dev_u8 WLSB	: 2;	/* Word length select bit */
			dev_u8 STB	: 1;	/* Number of stop bits */
			dev_u8 PEN	: 1;	/* Parity enable */
			dev_u8 EPS	: 1;	/* Even parity select */
			dev_u8 pad0	: 1;
			dev_u8 BREAK	: 1;    /* Break Control Bit */
			dev_u8 DLAB	: 1; 	/* Divisor latch access bit */
		} bit;
		dev_u8 value;
	} _LCR;
	union InterruptEnableReg {	/* Interrupt Enable Register */
		struct {
			dev_u8 RDI	: 1;	/* Enable receiver data interrupt */
			dev_u8 THRI	: 1;	/* Enable Transmitter holding register int */
			dev_u8 RLSI	: 1;	/* Enable receiver line status interrupt */
			dev_u8 MSI	: 1;	/* Enable Modem status interrupt */
			dev_u8 pad0	: 3;    /* Reserved and read as zero */
			dev_u8 PTIME	: 1;    /* Programmable THRE Interrupt Mode Enable */
		} bit;
		dev_u8 value;
	} _IER;
	union InterruptIdentificationReg {	/* Interrupt Identification Register */
		struct {
			dev_u8 NO_INT	: 1; 	/* No interrupts pending */
			dev_u8 ID	: 3; 	/* Interrupt ID */
			dev_u8 pad0	: 4;
		} bit;
		dev_u8 value;
	} _IIR;
	union ModemStatusReg {		/* Modem Status Register */
		struct {
			dev_u8 DCTS	: 1;	/* Delta CTS */
			dev_u8 DDSR	: 1;	/* Delta DSR */
			dev_u8 TERI	: 1;	/* Trailing edge ring indicator */
			dev_u8 DDCD	: 1;	/* Delta DCD */
			dev_u8 CTS	: 1;	/* Clear to Send */
			dev_u8 DSR	: 1;	/* Data Set Ready */
			dev_u8 RI	: 1;	/* Ring Indicator */
			dev_u8 DCD	: 1;	/* Data Carrier Detect */
		} bit;
		dev_u8 value;
	} _MSR;
	union ModemControlReg {	/* Modem Control Register */
	struct {
		dev_u8 DTR	: 1;	/* Data Terminal Ready */
		dev_u8 RTS	: 1;	/* Request to Send  */
		dev_u8 pad0	: 3;
		dev_u8 AFCE	: 1;	/* Auto Flow Control Enable */
		dev_u8 SIRE	: 1;	/* SIR Mode Enable, can only be accessed in UART1 */
		dev_u8 pad1	: 1;
	} bit;
	dev_u8 value;
	} _MCR;
	union LineStatusReg {		/* Line Status Register */
		struct {
			dev_u8 DR	: 1;	/* Receiver data ready */
			dev_u8 OE	: 1;	/* Overrun error indicator */
			dev_u8 PE	: 1;	/* Parity error indicator */
			dev_u8 FE	: 1;	/* Frame error indicator */
			dev_u8 BI	: 1;	/* Break interrupt indicator */
			dev_u8 THRE	: 1;	/* Transmit-hold-register empty */
			dev_u8 TEMT	: 1;	/* Transmitter empty */
			dev_u8 res0	: 1;
		} bit;
		dev_u8 value;
	} _LSR;
	
	union FifoControlReg{
	    struct {
	    	dev_u8 pad0	: 1;
	    	dev_u8 RFIFOR 	: 1;  /* RXFIFO Reset */
	    	dev_u8 TFIFOR 	: 1;  /* TXFIFO Reset */
	    	dev_u8 pad1	: 1;
	    	dev_u8 TET	: 2;  /* TXFIFO Empty Trigger */
	    	dev_u8 RCT	: 2;  /* RXFIFO Trigger */
	    }bit;
	    dev_u8 value;
	}_FCR;

	int _masterfd;

	/* Uart clock divider */
	int _clockDivider;


	/* internel registers */
	unsigned int _txser;		/* Character just sending */
	unsigned int _rxser;		/* Character just receiving */
	unsigned int _txser_full;	/* send status */
	unsigned int _rxser_full;	/* receive status  */
	unsigned int _loopback;
	unsigned int _thre_int;
	unsigned int _timeout_count;
	unsigned int _txser_clks;
	unsigned int _rxser_clks;
	int _slowdown;			/* read slowdown */
	unsigned int _charClocks;

	list<dev_u8> _rxFIFO;
	list<dev_u8> _txFIFO;

	void sendChar(dev_u8 val);
	int triggerFIFO(int x);

	/* Number of clock cycles (one clock cycle is one call to the clock())
	 * before a single character is transmitted or received.
	 */
	void adjustCharClocks();

	/* Forward the value of register to memory */
	void syncReg(UART_REGS reg, dev_u32 val);
	dev_u8 readRBR();
	void writeTHR(dev_u8 val);
	void writeDLL(dev_u8 val);
	void writeDLH(dev_u8 val);
	void writeIER(dev_u8 val);
	void writeFCR(dev_u8 val);
	void writeLCR(dev_u8 val);

	/* turn off echo (for slave pty) */
	void unsetEcho(int fd);

public:
	Serial(SL1System *sys,ADDR base);
	~Serial();

	void setClockDivider(int n);
	virtual void reset();
	virtual void readHook(ADDR addr);
	virtual void writeHook(ADDR addr);
	virtual void tick();
};



#endif /* SERIAL_H_ */
