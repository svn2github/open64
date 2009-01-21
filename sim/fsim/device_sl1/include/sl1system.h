/*
 *  File: sl1system.h
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
#ifndef SL1SYSTEM_H_
#define SL1SYSTEM_H_

#include "simconfig.h"
#include "bmmu.h"
#include "regdefs.h"

#include <map>

#define CORE_MAX_THREAD 4
class SysCtrl;
class SL1Device;

class DeviceScheduler
{
private:
	/* Cycle executed */
	unsigned long long _cycle;
	unsigned long long _timecycle;

	/* Schedule items container */
	typedef multimap<unsigned long long, SL1Device*> DeviceMap;
	DeviceMap _devMap;
	DeviceMap _timeMap;

public:
	DeviceScheduler();

	unsigned long long cycles();
	unsigned long long timecycles();
	void add(SL1Device* dev, unsigned int cycles);
	void addTime(SL1Device* dev, unsigned int cycles);
	void remove(SL1Device* dev);
	void removeTime(SL1Device* dev);

	/* Call this in every clock cycle in machine */
	void clock();
	void addCycle(void) { _cycle++;}
	void addTimeCycle(void) { _timecycle++;}
};

class Serial;
class Timer;
class PIC;
class Keypad;
class DMAController;
class NetRtl8019;
class Net_device;

class SL1System
{
	/* Friend class for cmodel */
	friend class SL1SocCmodel;

public:
	enum RESET_ID {
		RESET_NORMAL = 0,
		RESET_ENABLE = 1,
		RESET_DISABLE = -1,
	};
	
	enum STATUS_ID {
		STATUS_NORMAL,
		STATUS_EXCEPT,
	};
private:
	/* System status array */
	STATUS_ID _status[CORE_MAX_THREAD];
	STATUS_ID _globalStatus;
	RESET_ID _threadReset[CORE_MAX_THREAD];
	ADDR _handlerAddr[CORE_MAX_THREAD];
	ADDR _handlerBreakAddr[CORE_MAX_THREAD];

	/* Reference for common instances */
	BaseMMU& _mmu;
	SimConfig& _config;

	/* Class variables */
	DeviceScheduler _scheduler;
	vector<Timer*> _timers;
	vector<Serial*> _serials;
	PIC* _picCore;
	PIC* _picDsp;
	Keypad* _keypad;
	SysCtrl* _sysctrl;
	DMAController* _dmaController;
	NetRtl8019* _netrtl8019; 
//	Net_device* _net_device;

	bool _enableClock;
	
	/* wrapper functions for retrieving core modules in the simulator */
	SimConfig& config();
	DeviceScheduler& scheduler();

	/* Peripherals initialization */
	void initTimer(SimConfig& c);
	void initSerial(SimConfig& c);
	void initPIC(SimConfig& c);
	void initDmaController(SimConfig& c);
	void initNetRtl8019(SimConfig& c);

public:
	enum CORE_TRAP_ID {
		TRAP_POWER_RESET	= 0,
		TRAP_CPU_EXCEPT		= (1 << INTRC_INDEX_T0_EXCPT),
		TRAP_CPU_BREAK		= (1 << INTRC_INDEX_T0_BREAK),
		TRAP_EXCEPT		= (1 << INTRC_INDEX_T1_EXCPT),
		TRAP_BREAK		= (1 << INTRC_INDEX_T1_BREAK),
		TRAP_SIG		= (1 << INTRC_INDEX_T0_SW_INT),
		TRAP_SYSCALL		= (1 << INTRC_INDEX_T1_SW_INT),
		/* Define peripheral irq for dsp thread here */
		//TRAP_INT_ABB_CTRL	= (1 << INTRC_INDEX_T1_ABBCTL),
		//TRAP_INT_ABB_IQD	= (1 << INTRC_INDEX_T1_ABBIQD),
		//TRAP_INT_ABB_CODEC	= (1 << INTRC_INDEX_T1_ABBCODEC),
		TRAP_INT_ABB_RFIIQ	= (1 << INTRC_INDEX_T1_RFIIQ),
		TRAP_INT_ABB_RFICON	= (1 << INTRC_INDEX_T1_RFICON),
		TRAP_INT_ABB_GRFIIQ	= (1 << INTRC_INDEX_T1_GRFIIQ),
		TRAP_INT_ABB_GRFICON	= (1 << INTRC_INDEX_T1_GRFICON),
		TRAP_INT_DSP_RESET	= (1 << INTRC_INDEX_T1_DSPRST),
		/* Define peripheral irq for core thread here */
		TRAP_INT_POFF		= (1 << INTRC_INDEX_T0_POFF),
		TRAP_INT_SYSRST		= (1 << INTRC_INDEX_T0_SYSRST),
		TRAP_INT_WAKEUP		= (1 << INTRC_INDEX_T0_WKUP),
		TRAP_INT_DMA		= (1 << INTRC_INDEX_T0_DMA),
		TRAP_INT_PMU		= (1 << INTRC_INDEX_T0_PMU),
		TRAP_INT_USB		= (1 << INTRC_INDEX_T0_USB),
		TRAP_INT_LCD		= (1 << INTRC_INDEX_T0_LCDC),
		TRAP_INT_CPU_RESET	= (1 << INTRC_INDEX_T0_CPURST),
		TRAP_INT_UNKNOWN3	= (1 << INTRC_INDEX_T1_UNUSE3),
		TRAP_INT_WATCHDOG	= (1 << INTRC_INDEX_T0_WDT),
		//TRAP_INT_CPU_TIMER0    	= (1 << INTRC_INDEX_T0_TIM0),
		//TRAP_INT_CPU_TIMER1    	= (1 << INTRC_INDEX_T0_TIM1),
		TRAP_INT_TIMER0		= (1 << INTRC_INDEX_T1_TIM0),
		TRAP_INT_TIMER1		= (1 << INTRC_INDEX_T1_TIM1),
		TRAP_INT_TIMER2		= (1 << INTRC_INDEX_T1_TIM2),
		TRAP_INT_TIMER3		= (1 << INTRC_INDEX_T1_TIM3),
		TRAP_INT_RTC		= (1 << INTRC_INDEX_T0_RTC),
		TRAP_INT_CPU_SPI       	= (1 << INTRC_INDEX_T0_GSPI),
		TRAP_INT_SPI		= (1 << INTRC_INDEX_T1_GSPI),
		TRAP_INT_CPU_II		= (1 << INTRC_INDEX_T0_GI2C),
		TRAP_INT_IIC		= (1 << INTRC_INDEX_T1_GI2C),
		TRAP_INT_CPU_GSSI	= (1 << INTRC_INDEX_T0_GSSI),
		TRAP_INT_CPU_GPIO0     	= (1 << INTRC_INDEX_T0_GPIO0),
		TRAP_INT_CPU_GPIO1     	= (1 << INTRC_INDEX_T0_GPIO1),
		TRAP_INT_CPU_GPIO2     	= (1 << INTRC_INDEX_T0_GPIO2),
		TRAP_INT_GSSI 		= (1 << INTRC_INDEX_T1_GSSI),
		TRAP_INT_GPIO0		= (1 << INTRC_INDEX_T1_GPIO0),
		TRAP_INT_GPIO1		= (1 << INTRC_INDEX_T1_GPIO1),
		TRAP_INT_GPIO2		= (1 << INTRC_INDEX_T1_GPIO2),
		TRAP_INT_GPIO3		= (1 << INTRC_INDEX_T1_GPIO3),
		TRAP_INT_GPIO4		= (1 << INTRC_INDEX_T1_GPIO4),
		//TRAP_INT_CPU_UART1     	= (1 << INTRC_INDEX_T0_UART1),
		TRAP_INT_CPU_UART2     	= (1 << INTRC_INDEX_T0_UART2),
		TRAP_INT_CPU_UART3     	= (1 << INTRC_INDEX_T0_UART3),
		//TRAP_INT_UART1		= (1 << INTRC_INDEX_T1_UART1),
		TRAP_INT_UART2		= (1 << INTRC_INDEX_T1_UART2),
		TRAP_INT_UART3		= (1 << INTRC_INDEX_T1_UART3),
		TRAP_INT_PMW		= (1 << INTRC_INDEX_T0_PWM),
		TRAP_INT_SIMC		= (1 << INTRC_INDEX_T0_SIMC),
		TRAP_INT_KEYPAD		= (1 << INTRC_INDEX_T0_KEYPAD),
	};


	SL1System(SimConfig& c, BaseMMU& m);

	BaseMMU& mmu();

	DMAController* dma();

	/* Master reset for all peripherals */	
	void reset();

	/* Exception event */
	void trap(CORE_TRAP_ID id);
	void trap(int threadid, CORE_TRAP_ID id);
	/* Trap complete handler, should be called when executing rete */
	void clearTrap(int threadid);

	unsigned long long getCycles();
	unsigned long long getTimeCycles();
	void addSchedule(SL1Device* dev, unsigned int cycles);
	void addTimeSchedule(SL1Device* dev, unsigned int cycles);
	void removeSchedule(SL1Device* dev);
	void removeTimeSchedule(SL1Device* dev);

	/* Peripheral working cycle */
	void clock(void);
	void addCycle(int threadid);
	/* The system clock can be enable/disable for profiling */
	void enableClock(bool enable);
	
	/* set the status of the system */
	void setStatus(int threadid, STATUS_ID status);
	
	/* return handler address */
	ADDR getHandlerAddr(int threadid);
	ADDR getHandlerBreakAddr(int threadid);
	
	/* Return the status of the system */
	STATUS_ID getStatus(int threadid);
	STATUS_ID getStatus(void);
	void setStatusNormal(int threadid);

	/* get/set thread reset */
	void setReset(int threadid, RESET_ID b);
	RESET_ID getReset(int threadid);
	
	/* get reset start PC */
	ADDR getStartPC(int threadid);
};

#endif /* SL1SYSTEM_H_ */
