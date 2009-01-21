/*
 *  File: serial.cpp
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
#include "serial.h"
#include "dma.h"

Serial::Serial(SL1System *sys,ADDR base) :  SL1Device(sys, base), _clockDivider(16)
{
	#ifndef __CYGWIN__
	_masterfd = getpt();
	#else
	_masterfd = -1;
	#endif
	if (_masterfd < 0)
		printf("Cannot open pseudo terminal\n"); // FIXME: use wrapper class instead of calling printf directly
	else {
		printf("Master fd = %d, Opened pseudo terminal %s\n", _masterfd, ptsname(_masterfd));
		unsetEcho(_masterfd);
		int flag = fcntl(_masterfd, F_GETFL);
		fcntl(_masterfd, F_SETFL, flag|O_NONBLOCK);
	}
	if (grantpt(_masterfd) < 0 || unlockpt(_masterfd) < 0)
		printf("Pseudo terminal error\n");

	// FIXME: please check the mode
	switch (baddr()) {
/*
	case SimConfig::UART1_BASE_ADDR:
		system()->dma()->registerDMAChannel(this, DMAController::CH_TX_UART1, DMAController::DEST_FIXED);
		system()->dma()->registerDMAChannel(this, DMAController::CH_RX_UART1, DMAController::SRC_FIXED);
		break;
*/
	case SimConfig::UART2_BASE_ADDR:
		system()->dma()->registerDMAChannel(this, DMAController::CH_TX_UART2, DMAController::DEST_FIXED);
		system()->dma()->registerDMAChannel(this, DMAController::CH_RX_UART2, DMAController::SRC_FIXED);
		break;
	case SimConfig::UART3_BASE_ADDR:
		system()->dma()->registerDMAChannel(this, DMAController::CH_TX_UART3, DMAController::DEST_FIXED);
		system()->dma()->registerDMAChannel(this, DMAController::CH_RX_UART3, DMAController::SRC_FIXED);
		break;
	}
}

Serial::~Serial()
{
	close(_masterfd);
}

inline void Serial::syncReg(UART_REGS reg, dev_u32 val) {
	system()->mmu().setWord(baddr()+reg, val);
}

inline void Serial::sendChar(dev_u8 val) 
{
	int flag = fcntl(_masterfd, F_GETFL);
	fcntl(_masterfd, F_SETFL, flag & (~O_NONBLOCK));
	write(_masterfd, &val, 1);
	fcntl(_masterfd, F_SETFL, flag);
}

inline int Serial::triggerFIFO(int x)
{
	return ((x) == 0 ? 1 :(x) == 1 ? 4 :(x) == 2 ? 8 :(x) == 3 ? 14 : 0);
}

inline void Serial::adjustCharClocks()
{
	float bauds_per_char = 1.;
	if (_LCR.bit.PEN)
		bauds_per_char = bauds_per_char + 1.;
	if (_LCR.bit.STB)
		bauds_per_char = bauds_per_char + 2.;
	else {
		if (_LCR.bit.WLSB != 0)
			bauds_per_char = bauds_per_char + 1.;
		else
			bauds_per_char = bauds_per_char + 1.5;
	}
	bauds_per_char = bauds_per_char + (5. + _LCR.bit.WLSB);
	_charClocks = (unsigned int)(_DL.value * bauds_per_char);
}

inline dev_u8 Serial::readRBR()
{
	dev_u8 val = 0;
	if (!_rxFIFO.empty()) {
		val = _rxFIFO.front();
		_rxFIFO.pop_front();
	}
	if (!_rxFIFO.empty())
		_LSR.bit.DR = 1;
	else
		_LSR.bit.DR = 0;

	_timeout_count = 0;
	return val;
}

inline void Serial::writeTHR(dev_u8 val)
{
	if (_txFIFO.size() < FCR_FIFO_SIZE) {
		_txFIFO.push_back(val);
	} else {
		_txFIFO.pop_back();
		_txFIFO.push_back(val);
	}
	_LSR.bit.THRE = 0;
	_LSR.bit.TEMT = 0;
	if (_IIR.value == UART_IIR_THRI)
		_thre_int = 0;
}

inline void Serial::writeDLL(dev_u8 val)
{
	_DL.bit.DLL = val;
	adjustCharClocks();
}

inline void Serial::writeDLH(dev_u8 val)
{
	_DL.bit.DLH = val;
	adjustCharClocks();
}

inline void Serial::writeIER(dev_u8 val)
{
	_IER.value = val & 0xf;
	syncReg(UART_IER, _IER.value);
}

inline void Serial::writeLCR(dev_u8 val)
{
	_LCR.value = val;
	adjustCharClocks();
}

inline void Serial::writeFCR(dev_u8 val)
{
	_FCR.value = val;
	if (_FCR.bit.TFIFOR) {
		_txFIFO.clear();
		_LSR.bit.THRE = 1;
	}
	if (_FCR.bit.RFIFOR) {
		_rxFIFO.clear();
		_thre_int = 1;
		_LSR.bit.DR = 0;
	}
}

void Serial::reset()
{
	/* Internal Registers */
	_txser = 0;
	_rxser = 0;
	_loopback = 0;
	_txser_full = 0;
	_rxser_full = 0;
	_txser_clks = 0;
	_rxser_clks = 0;

	_timeout_count = 0;
	_thre_int = 1;
	_slowdown = UART_FGETC_SLOWDOWN;

	/* UART Registers */
	_LSR.value = 0;
	_IER.value = 0;
	_MSR.value = 0;
	_MCR.value = 0;
//	_LSR.bit.TEMT = 1;
//	_LSR.bit.THRE = 1;
	_LCR.value = 0;
	_LCR.bit.WLSB = 3;
	_IIR.value = UART_IIR_NO_INT;

	/* Forward all values to mmu */
	syncReg(UART_LSR, _LSR.value);
	syncReg(UART_LCR, _LCR.value);
	syncReg(UART_IIR, _IIR.value);
	syncReg(UART_IER, _IER.value);
	syncReg(UART_MSR, _MSR.value);
	syncReg(UART_MCR, _MCR.value);
	system()->addSchedule(this, _clockDivider);
}

void Serial::unsetEcho(int fd)
{
	struct termios  stermios;

	if (tcgetattr(fd, &stermios) < 0)
		printf("tcgetattr error"); // FIXME: use commond display function

	stermios.c_lflag &= ~(ECHO | ECHOE | ECHOK | ECHONL);
	stermios.c_oflag &= ~(ONLCR);

	/* also turn off NL to CR/NL mapping on output */
	if (tcsetattr(fd, TCSANOW, &stermios) < 0)
		printf("tcsetattr error");
}

void Serial::readHook(ADDR addr)
{
	ADDR offset = addr - baddr();
	if (_LCR.bit.DLAB == 1) {
		switch (offset) {
		case UART_DLL:
			syncReg(UART_DLL, _DL.bit.DLL);
			return;
		case UART_DLH:
			syncReg(UART_DLH, _DL.bit.DLH);
			return;
		}
	}
	switch (offset) {
	case UART_RXBUF:
		BYTE val;
                val = readRBR();
		syncReg(UART_RXBUF, val);
		break;
	case UART_LCR:
		_LCR.bit.pad0 = 0;
		syncReg(UART_LCR, _LCR.value);
		break;
	case UART_IIR:
		syncReg(UART_IIR, _IIR.value);
		/* reset THR pending bit */
		if (_IIR.value == UART_IIR_THRI)
			_thre_int = 0;
		break;
	case UART_LSR:
		if (_txFIFO.empty())
			_LSR.bit.TEMT = 1;
		else
			_LSR.bit.TEMT = 0;
		if (_txFIFO.size() < FCR_FIFO_SIZE)
			_LSR.bit.THRE = 1;
		else
			_LSR.bit.THRE = 0;
		syncReg(UART_LSR, _LSR.value);
		_LSR.bit.OE = 0;
		_LSR.bit.PE = 0;
		_LSR.bit.FE = 0;
		_LSR.bit.BI = 0;
		break;
	case UART_MSR:
		syncReg(UART_MSR, _MSR.value);
		_MSR.value = 0;
		break;
	}
}

void Serial::writeHook(ADDR addr)
{
	dev_u8 val = system()->mmu().getByte(addr);
	ADDR offset =  addr - baddr();
	if (_LCR.bit.DLAB == 1) {
		switch (offset) {
		case UART_DLL:
			writeDLL(val);
			return;
		case UART_DLH:
			writeDLH(val);
			return;
		}
	}
	switch(offset) {
	case UART_TXBUF:
		//printf("** %02x\n", val);fflush(0);
		writeTHR(val);
		break;
	case UART_FCR:
		writeFCR(val);
		break;
	case UART_IER:
		writeIER(val);
		break;
	case UART_LCR:
		writeLCR(val);
		break;
	case UART_LSR:
		// retain LSR if user program overwrite it
		syncReg(UART_LSR, _LSR.value);
		break;
	case UART_MSR:
		// retain MSR if user program overwrite it
		syncReg(UART_MSR, _MSR.value);
		break;
	case UART_MCR:
		_MCR.value = val;
		_MCR.bit.pad0 = 0;
		_MCR.bit.pad1 = 0;
		syncReg(UART_MCR, _MCR.value);
		break;
	}

}

void Serial::tick()
{
	system()->addSchedule(this, _clockDivider);
	/* Transmit */
	if (!_txser_full) {
		if (!_txFIFO.empty()) {
			_txser = _txFIFO.front();
			_txFIFO.pop_front();
			_txser_full = 1;
			_LSR.bit.TEMT = 0;
			if (_txFIFO.empty()) {
				_thre_int = 1;
				_LSR.bit.THRE = 1;
			}
		} else {
			_LSR.bit.TEMT = 1;
		}
	} else if (_charClocks <= _txser_clks++) {
		sendChar(_txser);
		_txser_full = 0;
		_txser_clks = 0;
	} else {
		/* We are still sending char here*/
		/* Check if we set the break bit */
		if (_LCR.bit.BREAK) {
			/* mark as character was sent */
			_txser_full = 0;
			_txser_clks = 0;
		}
	}

	/* receive */
	if (_rxser_full) {
		if (_charClocks <= _rxser_clks++) {
        		_rxser_clks = 0;
			if ((_rxFIFO.size() + 1) > FCR_FIFO_SIZE) {
				_LSR.bit.OE = 1;
			} else {
				_rxser_full = 0;
				_rxFIFO.push_back(_rxser);
			}
			_LSR.bit.DR = 1;
			_timeout_count = 0;
		}
	}
	/* Check if there is something waiting, and put it into rxser */
	if (_rxser_full == 0) {
		if (_slowdown) 
			_slowdown--;
		else {
			unsigned char c;
			ssize_t ret = read(_masterfd, &c, 1);
			if (ret > 0)  {
				_rxser = c;
				_rxser_full = 1;
			} else if (ret == 0)
				_slowdown = UART_FGETC_SLOWDOWN;
		}
	}

	if (_LSR.bit.DR)
		_timeout_count++;

	/* Update LSR error bits from the ones from rx FIFO */
	if (!_rxFIFO.empty()) {
		// TODO:
	}

	/* DMA event */
	//(_txFIFO.size() < FCR_FIFO_SIZE-3), when dma transfer related to SRAM
        //dma burst size >= 4, so we must reserve 4 bytes in _txFIFO to avoid
        //_txFIFO overflow.
	if (!_IER.bit.THRI && (_thre_int == 1) && (_txFIFO.size() < FCR_FIFO_SIZE-3)) {
		switch (baddr()) {
/*
		case SimConfig::UART1_BASE_ADDR:
			system()->dma()->moveData(DMAController::CH_TX_UART1);
			break;
*/
		case SimConfig::UART2_BASE_ADDR:
			system()->dma()->moveData(DMAController::CH_TX_UART2);
			break;
		case SimConfig::UART3_BASE_ADDR:
			system()->dma()->moveData(DMAController::CH_TX_UART3);
			break;
		}
	} 

	if (!_IER.bit.RDI && (_rxFIFO.size() >= triggerFIFO(_FCR.bit.RCT)) &&
	  _LSR.bit.DR) {
		switch (baddr()) {
/*
		case SimConfig::UART1_BASE_ADDR:
			system()->dma()->moveData(DMAController::CH_RX_UART1);
			break;
*/
		case SimConfig::UART2_BASE_ADDR:
			system()->dma()->moveData(DMAController::CH_RX_UART2);
			break;
		case SimConfig::UART3_BASE_ADDR:
			system()->dma()->moveData(DMAController::CH_RX_UART3);
			break;
		}	
	}

	/* Interrupt detection in proper priority order. */
	_IIR.value = UART_IIR_NO_INT;
	if (_IER.bit.RLSI && (_LSR.bit.OE | _LSR.bit.PE | _LSR.bit.FE | _LSR.bit.BI)) {
		/* Receiver LS */
		_IIR.value = UART_IIR_RLSI;
	} else if (_IER.bit.RDI && (_rxFIFO.size() >= triggerFIFO(_FCR.bit.RCT)) &&
	  _LSR.bit.DR) {
		/* RD available */
		_IIR.value = UART_IIR_RDI;
	} else if (_IER.bit.RDI && (_timeout_count >= UART_CHAR_TIMEOUT*_charClocks) &&
	  ((_rxFIFO.size() != FCR_FIFO_SIZE) || !_rxFIFO.empty())) {
		/* timeout */
		_IIR.value = UART_IIR_CTI;
	} else if (_IER.bit.THRI && (_thre_int == 1)) {
		/* Transm. empty */
		_IIR.value = UART_IIR_THRI;
	} else if (_IER.bit.MSI && 
	  (_MSR.bit.DCTS || _MSR.bit.DDSR || _MSR.bit.TERI || _MSR.bit.DDCD)) {
		/* Modem status */
		_IIR.value = UART_IIR_MSI;
	}
	/* Forward the value of IIR to memory */
	syncReg(UART_IIR, _IIR.value);

	if (_IIR.value != UART_IIR_NO_INT) {
		switch (baddr()) {
/*
		case SimConfig::UART1_BASE_ADDR:
			system()->trap(System::TRAP_INT_UART1);
			break;
*/
		case SimConfig::UART2_BASE_ADDR:
			system()->trap(SL1System::TRAP_INT_UART2);
			break;
		case SimConfig::UART3_BASE_ADDR:
			system()->trap(SL1System::TRAP_INT_UART3);
			break;
		}
	}

}

void Serial::setClockDivider(int n)
{
	_clockDivider = n;
}
