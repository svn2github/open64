/*
 *  File: system.cpp
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
#include "sl1system.h"
#include "serial.h"
#include "dev_net_rtl8019.h"
#include "net.h"
#include "timer.h"
#include "pic.h"
#include "keypad.h"
#include "dma.h"
#include "sysctrl.h"

using namespace std;

DeviceScheduler::DeviceScheduler() : _cycle(0),_timecycle(0)
{
}

inline unsigned long long DeviceScheduler::cycles()
{
        return _cycle;
}

inline unsigned long long DeviceScheduler::timecycles()
{
        return _timecycle;
}

inline void DeviceScheduler::add(SL1Device* dev, unsigned int cycles)
{
	_devMap.insert(pair<unsigned long long, SL1Device*>(_cycle + cycles, dev));
}

inline void DeviceScheduler::remove(SL1Device* dev)
{
	DeviceMap::iterator it;
	for (it=_devMap.begin(); it!=_devMap.end(); it++) {
		if (dev == it->second) {
			_devMap.erase(it);
		}
	}
}

inline void DeviceScheduler::addTime(SL1Device* dev, unsigned int cycles)
{
	_timeMap.insert(pair<unsigned long long, SL1Device*>(_timecycle + cycles, dev));
}

inline void DeviceScheduler::removeTime(SL1Device* dev)
{
	DeviceMap::iterator it;
	for (it=_timeMap.begin(); it!=_timeMap.end(); it++) {
		if (dev == it->second) {
			_timeMap.erase(it);
		}
	}
}

inline void DeviceScheduler::clock()
{
	//_cycle++;
	DeviceMap::iterator begin, end;
	while (!_devMap.empty()) {
		begin = _devMap.begin();
		end = _devMap.upper_bound(_cycle);
		if (begin == end) break;
		SL1Device* dev = begin->second;
		_devMap.erase(begin);
		// NOTE: The map maybe modified by this function
		dev->tick();
	}
	
	while (!_timeMap.empty()) {
		begin = _timeMap.begin();
		end = _timeMap.upper_bound(_timecycle);
		if (begin == end) return;
		SL1Device* devtime = begin->second;
		_timeMap.erase(begin);
		// NOTE: The map maybe modified by this function
		devtime->tick();
	}
}

SL1System::SL1System(SimConfig& c, BaseMMU& m) : _config(c), _mmu(m), _enableClock(true)
{
	initDmaController(c);
	initPIC(c);
	initTimer(c);
	initSerial(c);
	initNetRtl8019(c);
	for(INT i = 0; i <CORE_MAX_THREAD; i++) {
		_status[i] = STATUS_NORMAL;
		_threadReset[i] = SL1System::RESET_NORMAL;
	}
	_globalStatus = STATUS_NORMAL;
	/* Initialize the reset component which existed in system simulation */
	_keypad = new Keypad(this, SimConfig::KEYPAD_BASE_ADDR);
	_sysctrl = new SysCtrl(this, SimConfig::SYSCTRL_BASE_ADDR);
	mmu().registerDevice(_sysctrl, SimConfig::SYSCTRL_BASE_ADDR, SimConfig::SYSCTRL_ADDR_SPACE);
	mmu().registerDevice(_keypad, SimConfig::KEYPAD_BASE_ADDR, SimConfig::KEYPAD_ADDR_SPACE);

}

BaseMMU& SL1System::mmu()
{
	return _mmu;
}

DMAController* SL1System::dma()
{
	return _dmaController;
}

SimConfig& SL1System::config()
{
	return _config;
}

DeviceScheduler& SL1System::scheduler()
{
	return _scheduler;
}

inline void SL1System::initPIC(SimConfig& c)
{
	_picCore = new PIC(this, SimConfig::PIC_CORE_BASE_ADDR);
	mmu().registerDevice(_picCore, SimConfig::PIC_CORE_BASE_ADDR, SimConfig::PIC_CORE_ADDR_SPACE);
	_picDsp = new PIC(this, SimConfig::PIC_DSP_BASE_ADDR);
	mmu().registerDevice(_picDsp, SimConfig::PIC_DSP_BASE_ADDR, SimConfig::PIC_DSP_ADDR_SPACE);
}

inline void SL1System::initTimer(SimConfig& c)
{
	Timer* t;
	switch(c.ntimers()) {
	case 4:
		t = new Timer(this, SimConfig::TIMER3_BASE_ADDR);
		_timers.insert(_timers.begin(), t);
		mmu().registerDevice(t, SimConfig::TIMER3_BASE_ADDR, SimConfig::TIMER_ADDR_SPACE);
		// fall through
	case 3:
		t = new Timer(this, SimConfig::TIMER2_BASE_ADDR);
		_timers.insert(_timers.begin(), t);
		mmu().registerDevice(t, SimConfig::TIMER2_BASE_ADDR, SimConfig::TIMER_ADDR_SPACE);
		// fall through
	case 2:
		t = new Timer(this, SimConfig::TIMER1_BASE_ADDR);
		_timers.insert(_timers.begin(), t);
		mmu().registerDevice(t, SimConfig::TIMER1_BASE_ADDR, SimConfig::TIMER_ADDR_SPACE);
		// fall through
	case 1:
		t = new Timer(this, SimConfig::TIMER0_BASE_ADDR);
		_timers.insert(_timers.begin(), t);
		mmu().registerDevice(t, SimConfig::TIMER0_BASE_ADDR, SimConfig::TIMER_ADDR_SPACE);
	}
}

inline void SL1System::initSerial(SimConfig& c)
{
	Serial* s;
	switch (c.nuarts()) {
	case 2:
		s = new Serial(this, SimConfig::UART3_BASE_ADDR);
		_serials.insert(_serials.begin(), s);
		mmu().registerDevice(s, SimConfig::UART3_BASE_ADDR, SimConfig::UART3_ADDR_SPACE);
		// fall through
	case 1:
		s = new Serial(this, SimConfig::UART2_BASE_ADDR);
		_serials.insert(_serials.begin(), s);
		mmu().registerDevice(s, SimConfig::UART2_BASE_ADDR, SimConfig::UART2_ADDR_SPACE);
		// fall through
/*
	case 1:
		s = new Serial(this, SimConfig::UART1_BASE_ADDR);
		_serials.insert(_serials.begin(), s);
		mmu().registerDevice(s, SimConfig::UART1_BASE_ADDR, SimConfig::UART1_ADDR_SPACE);
*/
	}
}

inline void SL1System::initDmaController(SimConfig& c)
{
	_dmaController = new DMAController(this, SimConfig::DMA_BASE_ADDR);
	mmu().registerDevice(_dmaController,SimConfig::DMA_BASE_ADDR,SimConfig::DMA_ADDR_SPACE);
}

//netcard init
inline void SL1System::initNetRtl8019(SimConfig& c)
{
	if (c.netcard()){
	_netrtl8019 = new NetRtl8019(this,new Net_device, SimConfig::RTL8019_BASE_ADDR);
	mmu().registerDevice(_netrtl8019, SimConfig::RTL8019_BASE_ADDR, SimConfig::RTL8019_ADDR_SPACE);
	}
}

void SL1System::reset()
{
	_picCore->reset();
	_picDsp->reset();
	_dmaController->reset();
	for (vector<Serial*>::iterator it = _serials.begin(); it != _serials.end(); ++it) {
		(*it)->reset();
	}
	for (vector<Timer*>::iterator it = _timers.begin(); it != _timers.end(); ++it) {
		(*it)->reset();
	}
	_keypad->reset();
	if(config().netcard())
		_netrtl8019->reset();
}

void SL1System::trap(int threadid, SL1System::CORE_TRAP_ID id)
{
	ADDR tpc;
	switch (id) {
	case TRAP_INT_TIMER0:
	case TRAP_INT_TIMER1:
	case TRAP_INT_TIMER2:
	case TRAP_INT_TIMER3:
	//case TRAP_INT_UART1:
	case TRAP_INT_UART2:
	case TRAP_INT_UART3:
	case TRAP_INT_DMA:
	case TRAP_INT_GPIO0:
	case TRAP_INT_GPIO1:
	case TRAP_INT_GPIO2:
	case TRAP_INT_GPIO3:
	case TRAP_INT_GPIO4:
	  //	case TRAP_INT_RTC:
	case TRAP_INT_SPI:
	case TRAP_INT_IIC:
	case TRAP_INT_GSSI:
	case TRAP_INT_PMW:
	case TRAP_INT_SIMC:
	case TRAP_INT_KEYPAD:
	case TRAP_INT_WATCHDOG:
		trap(id);
		break;
	default:
		if (threadid == THREAD_ID_0) {
			if (_picCore->reportInterrupt(id, &tpc)) {
				setStatus(THREAD_ID_0, SL1System::STATUS_EXCEPT);
				_handlerBreakAddr[THREAD_ID_0] = tpc;
			}
		} else if (threadid == THREAD_ID_1) {
			if (_picDsp->reportInterrupt(id, &tpc)) {
				setStatus(THREAD_ID_1, SL1System::STATUS_EXCEPT);
				_handlerBreakAddr[THREAD_ID_1] = tpc;
			}
		}
	}
}

void SL1System::trap(SL1System::CORE_TRAP_ID id)
{
	ADDR tpc;
	if (_picCore->reportInterrupt(id, &tpc)) {
		setStatus(THREAD_ID_0, SL1System::STATUS_EXCEPT);
		_handlerAddr[THREAD_ID_0] = tpc;
	}

	if (_picDsp->reportInterrupt(id, &tpc)) {
		setStatus(THREAD_ID_1, SL1System::STATUS_EXCEPT);
		_handlerAddr[THREAD_ID_1] = tpc;
	}

}

void SL1System::clearTrap(int threadid)
{
	if (threadid == THREAD_ID_0)
		_picCore->clearInterrupt();
	else if (threadid == THREAD_ID_1)
		_picDsp->clearInterrupt();
}

unsigned long long SL1System::getCycles()
{
	return scheduler().cycles();
}

unsigned long long SL1System::getTimeCycles()
{
	return scheduler().timecycles();
}

void SL1System::addSchedule(SL1Device* dev, unsigned int cycles)
{
	scheduler().add(dev, cycles);
}

void SL1System::addTimeSchedule(SL1Device* dev, unsigned int cycles)
{
	scheduler().addTime(dev, cycles);
}

void SL1System::removeSchedule(SL1Device* dev)
{
	scheduler().remove(dev);
}

void SL1System::removeTimeSchedule(SL1Device* dev)
{
	scheduler().removeTime(dev);
}

void SL1System::clock()
{
	if (_enableClock)
		scheduler().clock();
}

void SL1System::addCycle(int threadid)
{
	if (_enableClock)
	{
		scheduler().addCycle();
		if(threadid == THREAD_ID_0 && _picCore->regenint())
				scheduler().addTimeCycle();
		else if(threadid == THREAD_ID_1 && _picDsp->regenint())
			scheduler().addTimeCycle();
	}	
}

void SL1System::enableClock(bool enable)
{
	_enableClock = enable;
}

SL1System::STATUS_ID SL1System::getStatus(int threadid)
{
	STATUS_ID m = _status[threadid];
	_status[threadid] = SL1System::STATUS_NORMAL;
	_globalStatus = SL1System::STATUS_NORMAL;
	for(INT i = 0; i <CORE_MAX_THREAD; i++) {
		if(_status[i]!=SL1System::STATUS_NORMAL) {
			_globalStatus = _status[i];
			break;
		}
	}
	return m;
}

void SL1System::setStatusNormal(int threadid)
{
	_status[threadid] = SL1System::STATUS_NORMAL;
	_globalStatus = SL1System::STATUS_NORMAL;
	for(INT i = 0; i <CORE_MAX_THREAD; i++) {
		if(_status[i]!=SL1System::STATUS_NORMAL) {
			_globalStatus = _status[i];
			break;
		}
	}
}

SL1System::STATUS_ID SL1System::getStatus() {
	return _globalStatus;	
}

void SL1System::setReset(int threadid, SL1System::RESET_ID b) {
	_threadReset[threadid] = b;
	_globalStatus = SL1System::STATUS_EXCEPT;
}

SL1System::RESET_ID SL1System::getReset(int threadid) {
	SL1System::RESET_ID m = _threadReset[threadid];
	_threadReset[threadid] = SL1System::RESET_NORMAL;
	return m;	
}

ADDR SL1System::getHandlerAddr(int threadid)
{
	return _handlerAddr[threadid];
}

ADDR SL1System::getHandlerBreakAddr(int threadid)
{
	return _handlerBreakAddr[threadid];
}

void SL1System::setStatus(int threadid, SL1System::STATUS_ID status) {
	_status[threadid] = status;
	_globalStatus = status;
}

ADDR SL1System::getStartPC(int threadid) {
	switch (threadid) {
		case THREAD_ID_0 :
			return (SimConfig::PIC_CORE_BASE_ADDR + PIC::PIC_INT_VECT7);
		case THREAD_ID_1 :
			return (SimConfig::PIC_DSP_BASE_ADDR + PIC::PIC_INT_VECT7);
		default :
			AppFatal((0), ("System: invalid PIC thread id (%d).", threadid));
			return 0;
	}
}

