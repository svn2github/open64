/*
 *  File: dma.h
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
 #ifndef DMA_H_
 #define DMA_H_


#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>

#include "sl1device.h"
#include "regdefs.h"
#include "sl1system.h"

class DMAController : public SL1Device
{
private:
	enum{
		DMA_MAX_CHANNELS = DMA_CHANNELS,
		
		DMA_STA_ACTIVE  =   0x1,
		DMA_STA_PENDING =   0x3,
		DMA_STA_IDLE    =   0x2,
		
		INVALID_CH = -1,
		
		/* transfer mode */
		DMA_TM_SINGLEBLOCK = 0x0,
		DMA_TM_AUTOINIT    = 0x1,
		DMA_TM_MULTIBLOCK  = 0x2,
		DMA_TM_IQ          = 0x3,
	};

	/*****************************
	 * Peripheral to peripheral 0000
	 * Peripheral to external sram/sdram 0001
	 * Peripheral to internal sram 0101
	 * External sram/sdram to external sram/sdram 0011
	 * External sram/sdram to peripheral 0010
	 * External sram/sdram to internal sram 0111
	 * Internal sram to internal sram 1111
	 * Internal sram to peripheral 1010
	 * Internal sram to external sram 1011
 	 ********************************/
	enum DMA_trans_dir_t{
	  DMA_TD_PER2PER       = 0x0,
	  DMA_TD_PER2EXTMEM    = 0x1,
	  DMA_TD_PER2INTMEM    = 0x5,
	  DMA_TD_EXTMEM2EXTMEM = 0x3, 
	  DMA_TD_EXTMEM2PER    = 0x2,
	  DMA_TD_EXTMEM2INTMEM = 0x7,
	  DMA_TD_INTMEM2INTMEM = 0xF,
	  DMA_TD_INTMEM2PER    = 0xA,
	  DMA_TD_INTMEM2EXTMEM = 0xB,  
	};

	enum DMA_REGS{
		DMA_REG_SRC = 0,
		DMA_REG_DST = 1,
		DMA_REG_LLP = 2,
		DMA_REG_CTL = 3,
		DMA_REG_CTL_H = 4,
		
		DMA_REG_SSN0   = DMA_REGS_SSN0,
		DMA_REG_SSN1   = DMA_REGS_SSN1,
		DMA_REG_STA    = DMA_REGS_STA,
		DMA_REG_STA_H  = DMA_REGS_STA_H,
		DMA_REG_IRC    = DMA_REGS_IRC,
		DMA_REG_POL    = DMA_REGS_POL,
	};
	
	enum{
		DMA_CHREG_OFFSET = (DMA_MAX_CHANNELS * 4),
		IQMAC_BURST_SIZE = 16,
		
		HALF_DONE_INT = 1,
		BLK_DONE_INT = 0,
	};

	struct{
		unsigned load_next_descriptor_when_done;
		unsigned int current_descriptor;
			
		dev_u32 source, destination;
		unsigned int burst_size, total_size, words_transferred, completed;
		unsigned int scramble_preblk_remain;
		unsigned char scramble_remainbuf[12];
			
		//record dma start request if dma channel is enabled
		int channel_pending;
		int trans_mode;
		
		//request signal
		int dma_request_valid;
		
		//write read triggle signal
		int write_with_trigger;
		int read_with_trigger;
	
		SL1Device* device;
		
		//following is for registers
		dev_u32 _SRC;
		dev_u32 _DEST;
		dev_u32 _LLP;
	
		union {
			struct {
				dev_u32 trans_mode   		: 3;
				dev_u32 high_priority_flag 	: 1;
				dev_u32 priority   		: 3;
				dev_u32 trans_dir     		: 4;
				dev_u32 blk_size      		: 16;
				dev_u32 burst_size 		: 3;
				dev_u32 conf_threadID 		: 1;
				dev_u32 llp_insram		: 1;
			}bit;
			dev_u32 value;
		}_CTL;

		union {
			struct {
				dev_u32 int_cause_blk		: 1;
				dev_u32 int_cause_half		: 1;
				dev_u32 res0			: 14;
				dev_u32 channel_clear		: 1;
				dev_u32 res1			: 2;
				dev_u32 dynamic_ptr_en		: 1;
				dev_u32 all_half_switch		: 1;
				//dma use this bit to communicate with XI
				dev_u32 dest_fixed              : 1;
				dev_u32 src_fixed               : 1; 
				dev_u32	channel_map		: 5;
				dev_u32 sw_start_enable		: 1; //Software Request Enable/Disable bot
				dev_u32 int_mask_half  		: 1;
				dev_u32 int_mask_blk	 	: 1;
				dev_u32 enable			: 1; //Channel disable or enable bit
			}bit;
			dev_u32 value;
		}_CTL_H;
	}_CH[DMA_MAX_CHANNELS];
	
	/* Internal/External Channel Mapping Registers */
	dev_u32 _IXM_L;
	dev_u32 _IXM_H;

	union{
		struct{
		dev_u32 ch   : 4;
		dev_u32 res0 : 1;
		dev_u32 res1 : 27;
		}bit;
		dev_u32 value;
	}_SSN0;

	union{
		struct{
		dev_u32 ch   : 4;
		dev_u32 res0 : 1;
		dev_u32 res1 : 27;
		}bit;
		dev_u32 value;
	}_SSN1;

	dev_u32 _STA;
	union {
		struct {
			dev_u32 dmaSTA_H   : 16;
			dev_u32 res0       : 16;
		} bit;
		dev_u32 value;
	} _STA_H;
	
	dev_u32 _IRC;
	union {
		struct {
			dev_u32 dmaPOL     : 24;
			dev_u32 res0       : 8;
		} bit;
		dev_u32 value;
	} _POL;

	/* Forward the value of register to memory */
	void syncReg(ADDR reg, dev_u32 val);
 
	void dmaUpdateIRQ(int int_type);
	/* Initialize internal parameters used to implement transfers */
	void dma_init_transfer(int ch);
	/* Clock tick for one channel on one DMA controller.
	* This does the actual "DMA" operation.
	* One chunk is transferred per clock.
	*/
	void dma_channel_clock(int ch);
	/* Take care of transfer termination */
	void dma_channel_terminate_transfer(int ch);
	/* Copy relevant valued from linked list descriptor to channel registers */
	void dma_load_descriptor(int ch );
	/* calc working channel for next dma operation */
	void dma_update_working_channel();
	
	/* dma status help function */
	void set_channel_status(int channel, int status);
	int get_channel_status(int channel);
	
	int in_internal_sram(ADDR addr);

  /* current working channel */
	int _working_ch;
	
	

	//cmodel interfacing variable
	BOOL _delayWriteEnable;
	INT _writeLogSize;
	INT _dmaReqThreadID;
	ADDR* _writeLogAddr;
	BYTE* _writeLogData;
	BYTE* _orgData;

public:
	enum DMA_CHANNEL {
		CH_RX_SSI = 15,
	        CH_TX_SSI = 14,
        	CH_RX_MMCSD = 13,
        	CH_TX_MMCSD = 12,
        	CH_RX_UART3 = 11,
        	CH_TX_UART3 = 10,
        	CH_RX_UART2 = 9,
        	CH_TX_UART2 = 8,
        	CH_TX_LCD1 = 7,
        	CH_TX_LCD0 = 6,
        	CH_RX_GRFIC = 5,
        	CH_TX_GRFIC = 4,
        	CH_RX_RFICIQ = 3,
        	CH_TX_RFICIQ = 2,
        	CH_SW_TH1 = 1,
        	CH_SW_TH0 = 0,

		CH_RX_UART1 = 16,
                CH_TX_UART1 = 17,
	};	
	enum DMA_ADDR_MODE {
		SRC_FIXED,
		DEST_FIXED,
		SRCDEST_FIXED,
		SRCDEST_INC,
	};

	DMAController(SL1System *sys,ADDR base);

	virtual void reset();
	virtual void readHook(ADDR addr);
	virtual void writeHook(ADDR addr);
	virtual void tick();

	/* Interfaces for communicating with peripherals */
	/* Register DMA channel for peripherals */
	void registerDMAChannel(SL1Device* const device, int channel, enum DMA_ADDR_MODE mode);
	/* Ask DMA to move data once */
	void moveData(int channel);

	//cmodel interfacing function
	BOOL delayWriteEnable(void) { return _delayWriteEnable; }
	void delayWriteEnable(BOOL t) { _delayWriteEnable = t; }
	pair<ADDR*, BYTE*> resultWriteBack(INT thid);
	INT writeLogSize(void) { return _writeLogSize; }
	INT dmaReqThreadID(void) { return _dmaReqThreadID; }
	
	ADDR* writeLogAddr(void) { return _writeLogAddr; }
	BYTE* writeLogData(void) { return _writeLogData; }
  	void clearLog(void) {
  		_writeLogAddr = NULL;
  		_writeLogData = NULL;
  		_orgData = NULL;
  		_dmaReqThreadID = 0;
  		_writeLogSize = 0;
  	}
  	
  	void deleteLog(void) {
	 	if(_writeLogAddr!=NULL) {
			delete _writeLogAddr;
		}
		if(_writeLogData!=NULL) {
			delete _writeLogData;
		}
		if(_orgData!=NULL) {
			delete _orgData;
		}	
		_dmaReqThreadID = 0;
		_writeLogSize = 0;  		
  	}
};

#endif /*  DMA_H_ */
