/*
 *  File: dev_net_rtl8019.cpp
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
#include "dev_net_rtl8019.h"
#include "net.h"

#define PAGE1_OFFSET 0x100

inline void NetRtl8019::sync_CRReg(dev_u8 offset, dev_u8 val) {
    system()->mmu().setByte(baddr()+offset, val);
}

NetRtl8019::NetRtl8019(SL1System *sys,Net_device* net_device, ADDR base)
: _net_device(net_device),  SL1Device(sys, base)
{	
	_net_device->tuntap_open();
	_PROM[0] = (dev_u8) _net_device->_macaddr[0];	//MACADDR0;
	_PROM[1] = (dev_u8) _net_device->_macaddr[0];	//MACADDR0;
	_PROM[2] = (dev_u8) _net_device->_macaddr[1];	//MACADDR1;
	_PROM[3] = (dev_u8) _net_device->_macaddr[1];	//MACADDR1;
	_PROM[4] = (dev_u8) _net_device->_macaddr[2];	//MACADDR2;
	_PROM[5] = (dev_u8) _net_device->_macaddr[2];	//MACADDR2;
	_PROM[6] = (dev_u8) _net_device->_macaddr[3];	//MACADDR3;
	_PROM[7] = (dev_u8) _net_device->_macaddr[3];	//MACADDR3;
	_PROM[8] = (dev_u8) _net_device->_macaddr[4];	//MACADDR4;
	_PROM[9] = (dev_u8) _net_device->_macaddr[4];	//MACADDR4;
	_PROM[10] = (dev_u8) _net_device->_macaddr[5];	//MACADDR5;
	_PROM[11] = (dev_u8) _net_device->_macaddr[5];	//MACADDR5;
	_PAR0 = _PROM[0];
	_PAR1 = _PROM[2];
	_PAR2 = _PROM[4];
	_PAR3 = _PROM[6];
	_PAR4 = _PROM[8];
	_PAR5 = _PROM[10];

	//init Registers
	_CR = 0x21;		//nic Stopped
	_PSTART = 0;
	_PSTOP = 0;
	_BNRY = 0;
	_TPSR = 0;
	_TBCR0 = 0;
	_TBCR1 = 0;
	_ISR = 0;
	_RSAR0 = 0;
	_RSAR1 = 0;
	_RBCR0 = 0;
	_RBCR1 = 0;
	_RCR = 0;
	_TCR = 0;
	_DCR = 0x84;		//set long addr bit
	_IMR = 0;
	_CURR = 0;

	/* raise reset interrupt */
	_ISR = _ISR | ISR_RST;
	
	/* init nic RAM */

	if (_sram != NULL) {
		memset (_sram, 0, PAGE_NUM * NET_PAGE_SIZE);
	}
	else {
		_sram = (dev_u8 *) malloc (PAGE_NUM * NET_PAGE_SIZE);
	}

	
	_remote_read_offset = 0;
	_remote_write_offset = 0;
	_remote_read_count = 0;
	_remote_write_count = 0;
	_need_update = 0;
	
	system()->addSchedule(this, 1000);
}

//write control register
void NetRtl8019::write_cr (dev_u8 data)
{
	dev_u8 startpage;
	dev_u16 packet_len;
	dev_u16 rtl8019_len;


	// Validate remote-DMA (RD2,RD1,RD0 not allowed to be 000) 
	if (((data & 0x38) == 0x00)) {	//wrong command
		return;
	}
	// XMIT command
	if (data & CMD_XMIT) {
		startpage = (_TPSR - START_PAGE);	//tpsr - 0x40
		packet_len = (((dev_u16) _TBCR1 << 8) | (_TBCR0));
		packet_len &= 0xffff;

		_TSR = 0;
		if (!rtl8019_output
		    ((_sram + startpage * NET_PAGE_SIZE), packet_len)) {
			_TSR |= TSR_PTX;
		}
		else {
			_TSR |= TSR_COL;
		}

		/**** send a interrupt to CPU here! ****/
		_ISR |= ISR_PTX;
		_need_update = 1;
		//net_rtl8019_set_update_intr(dev);
	}

	//remote dma read 
	if ((data & CMD_READ) && (data & CMD_RUN)) {
		rtl8019_len = (((dev_u16) _RBCR1 << 8) | _RBCR0);
		_remote_read_offset =
			(dev_u16) (_RSAR1 << 8 | _RSAR0) -
			(dev_u16) (START_PAGE * NET_PAGE_SIZE);
		_remote_read_offset &= 0xffff;
		_remote_read_count = rtl8019_len;
	}

	//remote dma write 
	if ((data & CMD_WRITE) && (data & CMD_RUN)
	    && ((data & CMD_NODMA) == 0)) {

		_remote_write_offset =
			(_RSAR1 << 8 | _RSAR0) - START_PAGE * NET_PAGE_SIZE;
		_remote_write_count = (((dev_u16) _RBCR1 << 8) | _RBCR0);
		_remote_write_count &= 0xffff;
	}

	_CR = data;

}

void NetRtl8019::remote_write_byte (dev_u8 data)
{
	if (_CR & CMD_WRITE) {	//in remote write mode

		if (_remote_write_offset >= PAGE_NUM * NET_PAGE_SIZE) {
			_ISR |= ISR_OVW;
	/*
			if ((ISR_OVW & _io.IMR)) {
				net_rtl8019_set_update_intr (dev);
			}
	*/
			return;
		}

		_sram[_remote_write_offset] = data;
		_remote_write_offset++;
		_remote_write_count--;


		if (_remote_write_count == 0) {
			_CR &= (~CMD_WRITE);	//clear dma command in CR
			_CR |= CMD_NODMA;

			_ISR |= ISR_RDC;	// remote write finished int
		}
		return;
	}
}

dev_u8 NetRtl8019::remote_read_byte()
{
	dev_u8 data;

	if (_CR & CMD_READ) {
		data = _sram[_remote_read_offset];
		_remote_read_offset++;
		if (--_remote_read_count == 0) {
			_CR &= (~CMD_READ);
			_CR |= CMD_NODMA;
			_ISR |= ISR_RDC;

		}
		return data;
	}

	return 0;
}


NetRtl8019::~NetRtl8019()
{
}

void NetRtl8019::reset ()
{
	_PROM[0] = (dev_u8) _net_device->_macaddr[0];   //MACADDR0;
    _PROM[1] = (dev_u8) _net_device->_macaddr[0];   //MACADDR0;
    _PROM[2] = (dev_u8) _net_device->_macaddr[1];   //MACADDR1;
    _PROM[3] = (dev_u8) _net_device->_macaddr[1];   //MACADDR1;
    _PROM[4] = (dev_u8) _net_device->_macaddr[2];   //MACADDR2;
    _PROM[5] = (dev_u8) _net_device->_macaddr[2];   //MACADDR2;
    _PROM[6] = (dev_u8) _net_device->_macaddr[3];   //MACADDR3;
    _PROM[7] = (dev_u8) _net_device->_macaddr[3];   //MACADDR3;
    _PROM[8] = (dev_u8) _net_device->_macaddr[4];   //MACADDR4;
    _PROM[9] = (dev_u8) _net_device->_macaddr[4];   //MACADDR4;
    _PROM[10] = (dev_u8) _net_device->_macaddr[5];  //MACADDR5;
    _PROM[11] = (dev_u8) _net_device->_macaddr[5];  //MACADDR5;
    _PAR0 = _PROM[0];
    _PAR1 = _PROM[2];
    _PAR2 = _PROM[4];
    _PAR3 = _PROM[6];
    _PAR4 = _PROM[8];
    _PAR5 = _PROM[10];

    //init Registers
    _CR = 0x21;     //nic Stopped
    _PSTART = 0;
    _PSTOP = 0;
    _BNRY = 0;
    _TPSR = 0;
    _TBCR0 = 0;
    _TBCR1 = 0;
    _ISR = 0;
    _RSAR0 = 0;
    _RSAR1 = 0;
    _RBCR0 = 0;
    _RBCR1 = 0;
    _RCR = 0;
    _TCR = 0;
    _DCR = 0x84;        //set long addr bit
    _IMR = 0;
    _CURR = 0;

    /* raise reset interrupt */
    _ISR = _ISR | ISR_RST;
    /* init nic RAM */
   if (_sram != NULL) {
        memset (_sram, 0, PAGE_NUM * NET_PAGE_SIZE);
    }
    else {
        _sram = (dev_u8 *) malloc (PAGE_NUM * NET_PAGE_SIZE);
    }

    _remote_read_offset = 0;
    _remote_write_offset = 0;
    _remote_read_count = 0;
    _remote_write_count = 0;
    _need_update = 0;
}

void NetRtl8019::net_rtl8019_update ()
{
	struct timeval tv;
	tv.tv_sec = 0;
	tv.tv_usec = 0;

#if 0
	if (!(io->ISR & ISR_OVW))
#endif
	if(_net_device->tuntap_wait_packet (&tv) == 0) rtl8019_input();

}


void NetRtl8019::rtl8019_input ()
{
	int packet_len, rtl8019_len;
	dev_u8 buf[1600];
	dev_u8 frame_header[4];
	dev_u8 *bufptr;
	dev_u8 *sramptr;
	dev_u16 i, j, len;
	dev_u32 free_pages, occupy_pages, next_page;

	if ((_CR & CMD_STOP) || (_TCR & TCR_LOOP_EXT)) {
		return;
	}

	if (_CURR < _BNRY) {
		free_pages = _BNRY - _CURR;
	}
	else {
		free_pages = (_PSTOP - _PSTART) - (_CURR - _BNRY);
	}

	packet_len = _net_device->tuntap_read (buf, sizeof (buf));
	if (packet_len < 0)
		return;
	/* if packet_len < 60, pad zero to 60 bytes length. */
	if (packet_len < 60) {
		memset (buf + packet_len, 0, 60 - packet_len);
		packet_len = 60;
	}

	rtl8019_len = packet_len + 4;

	occupy_pages = (rtl8019_len + 255) / NET_PAGE_SIZE;

	/* check if we have available space to receive packet */
	if (occupy_pages > free_pages) {
		_ISR |= ISR_OVW;
		return;
	}

	next_page = _CURR + occupy_pages;
	if (next_page >= _PSTOP) {
		next_page -= _PSTOP - _PSTART;
	}

	//add 8019 frame header
	frame_header[0] = RSR_RXOK;
	frame_header[1] = next_page;
	frame_header[2] = (rtl8019_len & 0xFF);	//low 8 bit
	frame_header[3] = (rtl8019_len >> 8);	//high 8 bit

	/* check if we are in in promiscuous mode */

       /**
       * The tuntap does sometimes match the multicast address and
        * we _want_ to get broadcasts. Ignore this all and play
        * promisc.
        */
#if 0
	if (!(io->RCR & RCR_PRO)) {
		/* not in promiscuous mode */
		if (!is_broadcast (buf)) {
			if (!(io->RCR & RCR_AB)) {
				/* reject broadcast destination address */
				return;
			}
		}
		else if (is_multicast (buf)) {
			if (!(io->RCR & RCR_AM)) {
				/* reject multicast destination address */
				return;
			}
		}
		else if ((io->PAR0 != buf[0]) || (io->PAR1 != buf[1])
			 || (io->PAR2 != buf[2]) || (io->PAR3 != buf[3])
			 || (io->PAR4 != buf[4]) || (io->PAR5 != buf[5])) {
			return;
		}
	}
#endif
	sramptr = &_sram[(_CURR - START_PAGE) * NET_PAGE_SIZE];

	if (next_page > _CURR || ((_CURR + occupy_pages) == _PSTOP)) {
		memcpy (sramptr, frame_header, 4);
		memcpy (sramptr + 4, buf, packet_len);
//		printf("sram write: sramptr = %x %x\n", sramptr, sramptr + 4);
	}
	else {
		int copy_bytes = (_PSTOP - _CURR) * NET_PAGE_SIZE;
		memcpy (sramptr, frame_header, 4);
		memcpy (sramptr + 4, buf, copy_bytes - 4);

		sramptr = &_sram[(_PSTART - START_PAGE) * NET_PAGE_SIZE];
		memcpy (sramptr, (void *) (buf + copy_bytes - 4),
			(packet_len - copy_bytes + 4));
	}

	_CURR = next_page;
	_RSR |= RSR_RXOK;

	/*** send CPU a rx interrupt here! *****/
	_ISR |= ISR_PRX;	//got packet int
	if ((ISR_PRX & _IMR)) {
		_need_update = 1;
	}
}

dev_u8 NetRtl8019::rtl8019_output (dev_u8 * buf, dev_u16 packet_len)
{
	int len;

	if (_CR & CMD_STOP) {	//nic in stop mode 
		return 0;
	}

#if 0
	fprintf(stderr, "\n----(%s)(packet_len:%d)----", __FUNCTION__, packet_len);
	print_packet (buf, packet_len);
#endif
	if ((len = _net_device->tuntap_write (buf, packet_len)) == -1) {
		fprintf (stderr, "write to tapif error in skyeye-ne2k.c\n");
		return (unsigned char)-1;
	}
	return 0;
}

void NetRtl8019::writeHook(ADDR addr)
{
	dev_u8 data = system()->mmu().getByte(addr);

	int offset = (dev_u8) (addr - baddr());
	int ret = ADDR_HIT;
	
	offset >>= _op_16;

	if (offset == 0x10) {	//remote write
		/* FIXME: don't use DCR here. */
		//if (io->DCR & 0x2) {
		remote_write_byte ((dev_u8) data);
		//}
		return;
	}
	if (offset == 0x1f) {	//reset
		reset ();
		return;
	}
	if (offset == 0x00) { // 2007-03-14 by Anthony Lee : here we should set the CR directly.
		write_cr (data);
		return;
	}
	if ((_CR >> 6) == 0) {	//write page0
		switch (offset) {
#if 0
		case 0x00:	//CR
			write_cr (dev, data);
			break;
#endif

		case 0x01:	//PSTART
			_PSTART = data;
			break;

		case 0x02:	//PSTOP
			_PSTOP = data;
			break;

		case 0x03:	//BNRY
			_BNRY = data;
			break;

		case 0x04:	//TPSR
			_TPSR = data;
			break;

		case 0x05:	//TBCR0
			_TBCR0 = data;
			break;

		case 0x06:	//TBCR1
			_TBCR1 = data;
			break;

		case 0x07:	//ISR  (write means clear)
			_ISR = (_ISR & (~data));
			/*
			   if (io->IMR & io->ISR) {
			   }
			 */
			//UNSET_NET_INT ();
			break;

		case 0x08:	//RSAR0
			_RSAR0 = data;
			break;

		case 0x09:	//RSAR1
			_RSAR1 = data;
			break;

		case 0x0a:	//RBCR0
			_RBCR0 = data;
			break;

		case 0x0b:	//RBCR1
			_RBCR1 = data;
			break;

		case 0x0c:	//RCR
			_RCR = data;
			break;

		case 0x0d:	//TCR
			_TCR = data;
			break;

		case 0x0e:	//DCR
			_DCR = data;
			break;

		case 0x0f:	//IMR
			_IMR = data;
			/*
			   if (io->IMR & io->ISR) {
			   net_rtl8019_set_update_intr(dev);
			   }
			 */
			break;
		}
		return;
	}			//end if page0


	if ((_CR >> 6) == 1) {	//write page1
		switch (offset) {
#if 0
		case 0x00:	//CR
			write_cr (dev, data);
			break;
#endif

		case 0x01:	//PAR0 - PAR5 ,MAC addr
			_PAR0 = data;
			break;

		case 0x02:
			_PAR1 = data;
			break;

		case 0x03:
			_PAR2 = data;
			break;

		case 0x04:
			_PAR3 = data;
			break;

		case 0x05:
			_PAR4 = data;
			break;

		case 0x06:
			_PAR5 = data;
			break;

		case 0x07:	//CURR
			_CURR = data;
			break;
		}
		return;
	}			//end if page1
	return;
}

void NetRtl8019::readHook(ADDR addr)
{
	dev_u8 data;

	int offset = (dev_u8) (addr - baddr());
	int ret = ADDR_HIT;

	offset >>= _op_16;
	data = 0;
	if (offset == 0x10) {	//remote read
		/* FIXME: don't use DCR here. */
		data = remote_read_byte ();
		sync_CRReg(offset, data);
		return;
	}

	if (offset == 0x1f) {	//reset
		reset ();
		return;
	}

	if ((_CR >> 6) == 0) {	//read page0
		switch (offset) {
		case 0x00:	//CR
			data = _CR;
			break;

		case 0x03:	//BNRY
			data = _BNRY;
			break;
		case 0x04:	// ISR
			data = _TSR;
			break;
		case 0x07:	// ISR
			data = _ISR;
			break;
		case 0x0c:	// ISR
			data = _RSR;
			break;
		case 0x0d:	// ISR
			_CNTR0 = 0;
			data = _CNTR0;
			break;
		}
	}			//end  if page0

	if ((_CR >> 6) == 1) {	//read page1
		switch (offset) {
		case 0x00:	//CR
			data = _CR;
			break;

		case 0x01:	//PAR0 - PAR5 ,MAC addr
			data = _PAR0;
			break;

		case 0x02:
			data = _PAR1;
			break;

		case 0x03:
			data = _PAR2;
			break;

		case 0x04:
			data = _PAR3;
			break;

		case 0x05:
			data = _PAR4;
			break;
		case 0x06:
			data = _PAR5;
			break;
		case 0x07:	//CURR
			data = _CURR;
			break;
		}
	}			//end if PAGE1

	if ((_CR >> 6) == 2) {	//read page2
		switch (offset) {
		case 0x00:	//CR
			data = _CR;
			break;

		case 0x01:	//PSTART
			data = _PSTART;
			break;

		case 0x02:	//PSTOP
			data = _PSTOP;
			break;

		case 0x04:	//TPSR
			data = _TPSR;
			break;

		case 0x0C:	//RCR
			data = _RCR;
			break;

		case 0x0D:	//TCR
			data = _TCR;
			break;

		case 0x0E:	//DCR
			data = _DCR;
			break;

		case 0x0F:	//IMR
			data = _IMR;
			break;
		}
	}			//end if page2
	
	sync_CRReg(offset, data);
}

void NetRtl8019::tick()
{
	static unsigned cnt = 0;
	net_rtl8019_update();
	system()->addSchedule(this, 100);
}

