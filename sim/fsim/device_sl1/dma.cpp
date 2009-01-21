/*
 *  File: dma.cpp
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
#include "dma.h"


DMAController::DMAController(SL1System *sys,ADDR base) : SL1Device(sys, base)
{
	_delayWriteEnable = FALSE;
	_writeLogSize = 0;
	_writeLogAddr = NULL;
	_writeLogData = NULL;
	_orgData = NULL;	
	_working_ch = INVALID_CH;

	for(int i = 0 ; i < DMA_MAX_CHANNELS; i++){
                _CH[i].dma_request_valid = 0;

                _CH[i].write_with_trigger = 0;
                _CH[i].read_with_trigger = 0;

                _CH[i].device = NULL;
	}
}

void DMAController::set_channel_status(int channel, int status)
{
	if(channel < 16){
		_STA &= ~(3<<(channel*2));
		_STA |= (status << (channel*2));
	}else{
		_STA_H.bit.dmaSTA_H &= ~(3<<((channel - 16) * 2));
		_STA_H.bit.dmaSTA_H |= (status << ((channel - 16) * 2));	
	}
	
	if(status == DMA_STA_IDLE){
		_POL.bit.dmaPOL &= ~(1 << channel);
		_POL.bit.dmaPOL |= 1 << channel;
	}else{
		_POL.bit.dmaPOL &= ~(1 << channel);
	}
}

int DMAController::get_channel_status(int channel)
{
	int status;
	if(channel < 16)
		status = (_STA >> (channel*2)) & 0x3;
	else
		status = (_STA_H.bit.dmaSTA_H >> ((channel-16)*2)) & 0x3;
		
	return status;
}

int DMAController::in_internal_sram(ADDR addr)
{
	if((addr >= CORE_DARAM_BASE) && (addr < (CORE_IRAM_BASE + CORE_IRAM_SPACE)))
		return 1;
	else
		return 0;
}

inline void DMAController::syncReg(ADDR reg, dev_u32 val)
{
	system()->mmu().setWord(baddr()+reg, val);
}

void DMAController::tick()
{
	dma_update_working_channel();
	
	if (_working_ch != INVALID_CH)
	{
		system()->addSchedule(this, 100);
		dma_channel_clock(_working_ch);
	}
}

void DMAController::reset()
{
	for(int i = 0 ; i < DMA_MAX_CHANNELS; i++) {
		_CH[i]._SRC = 0;
		_CH[i]._DEST = 0;
		_CH[i]._LLP = 0;
		_CH[i]._CTL.value = 0;
		_CH[i]._CTL_H.value = 0;
		_CH[i]._CTL_H.bit.int_mask_blk = 1;
		_CH[i]._CTL_H.bit.int_mask_half = 1;
		_CH[i]._CTL_H.bit.all_half_switch =0;
		_CH[i]._CTL_H.bit.dynamic_ptr_en = 0; //Dynamic memory pointer
		_CH[i]._CTL_H.bit.channel_clear = 0;

		/* default, source and destination addr is automatically increase */
		_CH[i]._CTL_H.bit.dest_fixed = 0;
		_CH[i]._CTL_H.bit.src_fixed = 0;
		if(i==0 || i==1)
			_CH[i]._CTL_H.bit.sw_start_enable = 1;
		
		/* Forward all values to mmu */
		syncReg(DMA_REG_SRC * DMA_CHREG_OFFSET + (i << 2) , _CH[i]._SRC);
		syncReg(DMA_REG_DST * DMA_CHREG_OFFSET + (i << 2) , _CH[i]._DEST);
		syncReg(DMA_REG_LLP * DMA_CHREG_OFFSET + (i << 2) , _CH[i]._LLP);
		syncReg(DMA_REG_CTL * DMA_CHREG_OFFSET + (i << 2) , _CH[i]._CTL.value);
		syncReg(DMA_REG_CTL_H * DMA_CHREG_OFFSET + (i << 2) , _CH[i]._CTL_H.value);
		
		_CH[i].channel_pending = 0;
		_CH[i].load_next_descriptor_when_done = 0;
		_CH[i].source = 0;
		_CH[i].destination = 0;
		_CH[i].burst_size = 0;
		_CH[i].total_size = 0;
		_CH[i].words_transferred = 0;
		_CH[i].completed = 1;
		_CH[i].scramble_preblk_remain = 0;
		
		_CH[i].trans_mode = -1;
	}
	
	_IXM_L = 0x00000000;
	_IXM_H = 0x00000000;
	_SSN0.value = 0x0;
	_SSN1.value = 0x0;
	_STA = 0xAAAAAAAA; //all channels are idle 
	_STA_H.bit.dmaSTA_H = 0xAAAA; //all channels are idle
	_POL.value = 0xFFFF;
	_IRC = 0;
	
	syncReg(DMA_REG_SSN0, _SSN0.value);
	syncReg(DMA_REG_SSN1, _SSN1.value);
	syncReg(DMA_REG_STA, _STA);
	syncReg(DMA_REG_STA_H, _STA_H.value);
	syncReg(DMA_REG_POL, _POL.value);
	
	system()->addSchedule(this, 1);
}


void DMAController::writeHook(ADDR addr)
{
	dev_u32 val = system()->mmu().getWord(addr);
	ADDR offset =  addr - baddr();
	AppFatal((offset % 4 == 0), ("")); 
	if (addr < DMA_REG_SSN0) {
		dev_u32 reg,ch;
		reg = offset / (DMA_MAX_CHANNELS << 2);
		ch = (offset >> 2) % DMA_MAX_CHANNELS;
		switch(reg){
			case DMA_REG_SRC:
				_CH[ch]._SRC = val;
				break;
			case DMA_REG_DST:
				_CH[ch]._DEST = val;
				break;
			case DMA_REG_LLP:
				_CH[ch]._LLP = val;
				if(_CH[ch]._LLP)
					_CH[ch].load_next_descriptor_when_done = 1;
				break;
			case DMA_REG_CTL:
				_CH[ch]._CTL.value = val;
				_CH[ch].trans_mode = _CH[ch]._CTL.bit.trans_mode;
				if(_CH[ch].trans_mode == DMA_TM_MULTIBLOCK)
					_CH[ch].load_next_descriptor_when_done = 1;
				break; 
			case DMA_REG_CTL_H: 
				_CH[ch]._CTL_H.value = val;
				/* reset channel */
				if(_CH[ch]._CTL_H.bit.channel_clear){
					_CH[ch]._CTL_H.bit.enable = 0;
					set_channel_status(ch, DMA_STA_IDLE);
					_CH[ch]._CTL_H.bit.channel_clear = 0;
					_CH[ch].completed = 1;
					break;
				}
				

				if(_CH[ch]._CTL_H.bit.int_cause_blk | _CH[ch]._CTL_H.bit.int_cause_half){
					if(_CH[ch]._CTL_H.bit.int_cause_blk)
						_CH[ch]._CTL_H.bit.int_cause_blk = 0;
					if(_CH[ch]._CTL_H.bit.int_cause_half)
						_CH[ch]._CTL_H.bit.int_cause_half = 0;
					
					//update _IRC
					_IRC = _IRC & (~(1<<ch));
				}
					
				if(_CH[ch]._CTL_H.bit.enable){
					if(_CH[ch].completed == 0){
						_CH[ch].channel_pending = 1;
						set_channel_status(ch, DMA_STA_PENDING);
						system()->addSchedule(this, 1);
					}
				}else{
					 if(_CH[ch].completed){
						_CH[ch].channel_pending = 0;
						set_channel_status(ch, DMA_STA_IDLE);
					}else{
						_CH[ch].channel_pending = 1;
                        set_channel_status(ch, DMA_STA_PENDING);
					}
				}
				
				break;
			default:
				AppFatal((0), ("<writeHook>invalid addr: 0x%x reg = %x ch = %x!\n", offset, reg, ch));
 		}
  	}else{
		switch(addr){
		case DMA_REG_SSN0:
		{
			int dma_start = 0;
			_SSN0.bit.ch = val;
			if(_CH[_SSN0.bit.ch]._CTL_H.bit.enable && _CH[_SSN0.bit.ch]._CTL_H.bit.sw_start_enable)
			{
				_CH[_SSN0.bit.ch].channel_pending = 1;
				set_channel_status(_SSN0.bit.ch, DMA_STA_PENDING);
				system()->addSchedule(this, 1);
			}
			break;
		}
		case DMA_REG_SSN1:
		{
			int dma_start = 0;
			_SSN1.bit.ch = val;
			if(_CH[_SSN1.bit.ch]._CTL_H.bit.enable && _CH[_SSN1.bit.ch]._CTL_H.bit.sw_start_enable)
			{
				_CH[_SSN1.bit.ch].channel_pending = 1;
				set_channel_status(_SSN1.bit.ch, DMA_STA_PENDING);
				system()->addSchedule(this, 1);
			}
			break;
		}

		default:
			AppFatal((0), ("<writeHook>invalid addr: %x!\n", offset));
		}//end switch    
	}//end if(addr <= DMA_REG_SSN)
}//end writeHook
    
void DMAController::readHook(dev_addr addr)
{
	ADDR offset = addr - baddr();
	AppFatal((offset % 4 == 0), (""));
	if(addr < DMA_REG_SSN0) {
		dev_u32 reg,ch;
		reg = offset / (DMA_MAX_CHANNELS << 2);
		ch = (offset >> 2) % DMA_MAX_CHANNELS;

		switch(reg) {
		case DMA_REG_SRC:
			if(!(_POL.bit.dmaPOL & (1<<ch))){
				if(_CH[ch]._CTL_H.bit.dynamic_ptr_en)
					syncReg(offset,_CH[ch]._SRC);
				else
					syncReg(offset, _CH[ch].source);
			}
			break;
		case DMA_REG_DST:
			if(!(_POL.bit.dmaPOL & (1<<ch))){
				if(_CH[ch]._CTL_H.bit.dynamic_ptr_en)
					syncReg(offset,_CH[ch]._DEST);
				else
					syncReg(offset,_CH[ch].destination);
			}
			break;
		case DMA_REG_LLP:
			syncReg(offset,_CH[ch]._LLP);
			break;
		case DMA_REG_CTL:
			syncReg(offset,_CH[ch]._CTL.value);
			break;  
		case DMA_REG_CTL_H:
			syncReg(offset,_CH[ch]._CTL_H.value);
			break; 
		default:
			AppFatal((0), ("<readHook>invalid addr: %x!\n", offset));
		}
	} else {
    switch(addr){
      case DMA_REG_SSN0:
        syncReg(offset,_SSN0.bit.ch);
        break;
      case DMA_REG_SSN1:
        syncReg(offset,_SSN1.bit.ch);
        break;
      case DMA_REG_STA:
	syncReg(offset,_STA);
	break;
      case DMA_REG_STA_H:
	syncReg(offset,_STA_H.bit.dmaSTA_H);
	break;
      case DMA_REG_IRC:
	syncReg(offset,_IRC);
	break;
      case DMA_REG_POL:
	syncReg(offset,_POL.bit.dmaPOL);
	break;
      default:
	AppFatal((0), ("<readHook>invalid addr: %x!\n", addr));
    }//end switch    
  }//end if(addr <= DMA_REG_SSN)
}//end readHook

void DMAController::dmaUpdateIRQ(int int_type)
{		
	if(int_type == BLK_DONE_INT)
		_CH[_working_ch]._CTL_H.bit.int_cause_blk = 1;
	if(int_type == HALF_DONE_INT)
		_CH[_working_ch]._CTL_H.bit.int_cause_half = 1;
	//update IRC at the same time
	_IRC = _IRC | (1 << _working_ch);
		
	system()->trap(SL1System::TRAP_INT_DMA);
}

void DMAController::dma_init_transfer(int ch)
{
  _CH[ch].source = _CH[ch]._SRC;
  _CH[ch].destination = _CH[ch]._DEST;
  _CH[ch].total_size = _CH[ch]._CTL.bit.blk_size;
  
  /* the least significant bit of sram is masked */
  switch(_CH[ch]._CTL.bit.trans_dir)
  {
    case DMA_TD_INTMEM2INTMEM:
      _CH[ch].source &= ~0x1;
      _CH[ch].destination &= ~0x1;
      _CH[ch].total_size = (_CH[ch].total_size + 1) & (~0x01);
      break;
    case DMA_TD_INTMEM2EXTMEM:
    case DMA_TD_INTMEM2PER:
      _CH[ch].source &= ~0x1;
      _CH[ch].total_size = (_CH[ch].total_size + 1) & (~0x01);
      break;
    case DMA_TD_PER2INTMEM:
    case DMA_TD_EXTMEM2INTMEM:
      _CH[ch].destination &= ~0x1;
      _CH[ch].total_size = (_CH[ch].total_size + 1) & (~0x01);
      break;
  }//end switch
  
  if(_CH[ch]._CTL.bit.burst_size == 0)
  {
      //transaction involves SRAM, change burst_size to 2
      if(in_internal_sram(_CH[ch].source) || in_internal_sram(_CH[ch].destination))
      	_CH[ch].burst_size = 2;
      else
      	_CH[ch].burst_size = 1;
      	
      if(ch >= CH_TX_UART1 && ch <= CH_RX_UART3)
      	_CH[ch].burst_size = 1;
  }
  else if(_CH[ch]._CTL.bit.burst_size <= 0x6)
    _CH[ch].burst_size = 1 << (_CH[ch]._CTL.bit.burst_size + 1);
  else
    _CH[ch].burst_size = 1024;
    
  switch(_CH[ch].trans_mode)
  {
    case DMA_TM_SINGLEBLOCK:
    case DMA_TM_AUTOINIT:
    case DMA_TM_MULTIBLOCK:
      break;
    case DMA_TM_IQ:
      //For IQ-MAC Transfer Mode, DMA controller fixes the burst sizes 16
      _CH[ch].burst_size = IQMAC_BURST_SIZE;
      AppFatal(((_CH[ch].total_size%_CH[ch].burst_size) == 0), (""));
      break;
  } 
  
  //the minimum operation is a burst operation
  if(_CH[ch].burst_size > _CH[ch].total_size)
      _CH[ch].total_size = _CH[ch].burst_size;
  
  _CH[ch].words_transferred = 0;
}

void DMAController::dma_channel_clock(int ch)
{	   
	/* Do we need to abort? */
	if (!_CH[ch]._CTL_H.bit.enable) {
		//set_channel_status(ch, DMA_STA_IDLE);
		return;
	}

	/* In HW Handshake mode, only work when dma_request_valid asserted */
	if (!_CH[ch]._CTL_H.bit.sw_start_enable) {
		if(!_CH[ch].dma_request_valid)
			return; //wait next cycle
		else
			_CH[ch].dma_request_valid = 0; //reset dma_request_valid
	}
  
	/* If this is the first cycle of the transfer, initialize our state */
	//if ( get_channel_status(ch) == DMA_STA_PENDING) {
	if(_CH[ch].completed){
		_CH[ch].completed = 0;
		set_channel_status(ch, DMA_STA_ACTIVE);

		/* If using linked lists, copy the appropriate fields to our registers*/
		if (!((_CH[ch].trans_mode == DMA_TM_SINGLEBLOCK) || (_CH[ch].trans_mode == DMA_TM_AUTOINIT))){	
		 	dma_load_descriptor(ch);
		}
		else{
		  	_CH[ch].load_next_descriptor_when_done = 0;
		}

		/* Set our internal status */
		dma_init_transfer(ch);

		/* Might need to skip descriptor */
 	 }
    
	int burst_size = _CH[ch].burst_size;
	int i = 0;
	if(_delayWriteEnable==TRUE) {
	 	IsTrue((_writeLogSize==0), ("DMA have been used twice!"));
	 	_writeLogSize = _CH[ch].total_size;
	 	_dmaReqThreadID = _CH[ch]._CTL.bit.conf_threadID;
	 	_writeLogAddr = new ADDR[_writeLogSize];
	 	_writeLogData = new BYTE[_writeLogSize];
	 	_orgData = new BYTE[_writeLogSize];
	}  
	switch(_CH[ch].trans_mode)
	{        
		case DMA_TM_SINGLEBLOCK:
		case DMA_TM_AUTOINIT:
		case DMA_TM_MULTIBLOCK:
		while(burst_size-- && (_CH[ch].words_transferred < _CH[ch].total_size)){
			if(_CH[ch]._CTL_H.bit.src_fixed)
			{
			        AppFatal((_CH[ch].device!= NULL), (""));
			        _CH[ch].device->readHook(_CH[ch].source);
			}
			ADDR addr = _CH[ch].destination;
			BYTE data = system()->mmu().getByte(_CH[ch].source);
		
			if(_delayWriteEnable==FALSE) {
			    system()->mmu().setByte(addr,data);
			}
			else{
			  _writeLogAddr[i] = addr;
			  _writeLogData[i] = data;
			  _orgData[i] = system()->mmu().getByte(addr);
			  i++;
			}

			if(_CH[ch]._CTL_H.bit.dest_fixed)
			{
			       AppFatal((_CH[ch].device!= NULL), (""));
			    	_CH[ch].device->writeHook(addr);
			}
		
			if(!_CH[ch]._CTL_H.bit.src_fixed)
				_CH[ch].source++;
			if(!_CH[ch]._CTL_H.bit.dest_fixed)
				_CH[ch].destination++;			
				
			_CH[ch].words_transferred++;
			
			//trigger half done interrupt
			//if(_CH[ch].trans_mode == DMA_TM_AUTOINIT){
			if(_CH[ch]._CTL_H.bit.int_mask_half == 0){
				if(_CH[ch].words_transferred == (_CH[ch].total_size / 2 + 1))
					dmaUpdateIRQ(HALF_DONE_INT);
			}
		}
		break;
		case DMA_TM_IQ:
			printf("DMA_TM_IQ, not complete...\n");
		break;
	}
    
	/* When done with a chunk, check if it is working in linked list */
	if ( _CH[ch].words_transferred >= _CH[ch].total_size ){
	
		if (_CH[ch].load_next_descriptor_when_done){
			dma_channel_terminate_transfer( ch );
			return;
		}else{
			//we have done
			dma_channel_terminate_transfer( ch );
			return;
		}
	}//end if
}

void DMAController::dma_channel_terminate_transfer(int ch)
{
	/* Might be working in a linked list */
	if ( _CH[ch].load_next_descriptor_when_done ) {
		if (_CH[ch]._CTL_H.bit.int_mask_blk == 0)
            dmaUpdateIRQ(BLK_DONE_INT);

		dma_load_descriptor( ch );
		dma_init_transfer( ch );
		return;
	}

	/* Mark end of transfer */
	set_channel_status(ch, DMA_STA_IDLE);

	/* If needed, generate interrupt, If only all done interrupt is allowed, 
         * blk done will be disabled in the middle of dma transfer 
         */
	if((_CH[ch]._CTL_H.bit.all_half_switch== 0) && (_CH[ch]._CTL_H.bit.int_mask_blk == 0))
	{
		dmaUpdateIRQ(BLK_DONE_INT);
	}

	/* Might be in auto-restart mode */
	/* update _working_ch */
	if(_CH[ch].trans_mode == DMA_TM_AUTOINIT)
		dma_init_transfer(ch);
	else
	{
		//update channel_pending flag
	    _CH[ch].channel_pending = 0;
        _CH[ch]._CTL_H.bit.enable = 0;
		_working_ch = INVALID_CH;
		_CH[ch].completed = 1;
	}

	/* check if there is no other channel to do */
	system()->addSchedule(this, 1);
}

void DMAController::dma_load_descriptor(int ch )
{
	struct LinkList_s{
		unsigned int dmaCTL;
		unsigned int dmaLLP;
		unsigned int dmaSRC;
		unsigned int dmaDST;
	};
		
	struct LinkList_s * llp = (struct LinkList_s *)_CH[ch]._LLP;
	if(llp){
		//update related registers
		_CH[ch]._LLP = system()->mmu().getWord((ADDR)&llp->dmaLLP);
		_CH[ch]._SRC = system()->mmu().getWord((ADDR)&llp->dmaSRC);
		_CH[ch]._DEST = system()->mmu().getWord((ADDR)&llp->dmaDST);
		_CH[ch]._CTL.value = system()->mmu().getWord((ADDR)&llp->dmaCTL);	
		if(!_CH[ch]._LLP)
	        _CH[ch].load_next_descriptor_when_done = 0;
        else
            _CH[ch].load_next_descriptor_when_done = 1;
	}else{
		_CH[ch].load_next_descriptor_when_done = 0;
	}
}

void DMAController::dma_update_working_channel()
{
	int min_prio = 8;
	int channel = INVALID_CH;
	
	//Lin: Does large priority number mean high priority?
	//if(_working_ch != INVALID_CH)
	//	return;

	for(int i = 0 ; i < DMA_MAX_CHANNELS; i++){
		if((_CH[i].channel_pending) && _CH[i]._CTL_H.bit.enable){
			if(min_prio > (int)_CH[i]._CTL.bit.priority){
				min_prio = _CH[i]._CTL.bit.priority;
				channel = i;
			}
		}
	}//end for
	
	_working_ch = channel;
}


/* Interfaces for communicating with peripherals */
void DMAController::registerDMAChannel(SL1Device* const device, int channel, enum DMA_ADDR_MODE mode)
{
      _CH[channel].device = device;
	  
	switch(mode) {
		case SRC_FIXED:
//			_CH[channel].source_inc = 0;
//			_CH[channel].destination_inc = 1;
			_CH[channel].write_with_trigger = 0;
			_CH[channel].read_with_trigger = 1;
			break;
		case DEST_FIXED:
//			_CH[channel].source_inc = 1;
//			_CH[channel].destination_inc = 0;
			_CH[channel].write_with_trigger = 1;
			_CH[channel].read_with_trigger = 0;
			break;
		case SRCDEST_FIXED:
//			_CH[channel].source_inc = 0;
//			_CH[channel].destination_inc = 0;
			_CH[channel].write_with_trigger = 1;
			_CH[channel].read_with_trigger = 1;
			break;
		case SRCDEST_INC:
//			_CH[channel].source_inc = 1;
//			_CH[channel].destination_inc = 1;
			_CH[channel].write_with_trigger = 0;
			_CH[channel].read_with_trigger = 0;
			break;
		default:
			printf("don't support mode %x\n", mode);
	}		              
}

void DMAController::moveData(int channel)
{
	if(_CH[channel]._CTL_H.bit.enable)
	{	
		if(_CH[channel].dma_request_valid)
			return;
		
		_CH[channel].dma_request_valid = 1;
		_CH[channel].channel_pending = 1;
		
		//schedule next cycle for dma module
		system()->addSchedule(this, 1);
		
//		printf("moveData channel = %d\n", channel);
	}
}

/*
 * For Cmodel interfacing functions
 */

//for Cmodel or multi-cyc simulation
pair<ADDR*, BYTE*> DMAController::resultWriteBack(INT thid) {
	pair<ADDR*, BYTE*> ret(NULL, NULL);
	if(_delayWriteEnable==TRUE) {
		AppFatal((_writeLogSize>0), ("DMAController: DMA data write log is empty."));
		AppFatal((_writeLogAddr!=NULL), ("DMAController: DMA addr log is NULL."));
		AppFatal((_writeLogData!=NULL), ("DMAController: DMA data log is NULL."));
		AppFatal((_orgData!=NULL), ("DMAController: DMA original data log is NULL."));
		INT cur_id = system()->mmu().curthread();
		system()->mmu().curthread(thid);		
		for(INT i = 0; i<_writeLogSize; i++) {
			BYTE org_data = system()->mmu().getByte(_writeLogAddr[i]);
			AppFatal((_orgData[i]!=org_data), ("DMAController: The data @0x%x has been changed during the DMA execution.", _writeLogAddr[i]));
			system()->mmu().setByte(_writeLogAddr[i], _writeLogData[i]);
		}
		ret.first = _writeLogAddr;
		ret.second = _writeLogData;		
		delete _orgData;
		clearLog();
		system()->mmu().curthread(cur_id);	
	}
	return ret;
}

