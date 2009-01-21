/*
 *  File: sl1eventhandler.cpp
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

#include "sl1eventhandler.h"

SL1EventHandler::SL1EventHandler(SL1MMU& mmu, SL1Machine *mach) :
        EventHandler<SL1_EVENT_CLASS_LIST_INI>(mmu, mach) {

}

void SL1EventHandler::contentSave(SL1Register& reg, ADDR pc, ADDR picAddr) {
	SimFatal((system()!=NULL), ("Machine error: system handler is NULL.\n"));
	mmu().setWord(picAddr, pc);

	UINT j;
	CONTENT_SWITCH_DEBUG("ContentSave started: ");

	//??? Need changed according real HW.
	if(picAddr == SYSGETPICPC(mmu().curthread())) {
		/* NOTE! Wenbo/2007-10-27: We depend on value of SAVE_PC_BRK to decide
		 * which context to restore(see contentRestore()). So if this is not 
		 * a break exception, we must set the CONTEXT_PC_BRK to 0 to avoid 
		 * do wrong thing while restore. */
		mmu().setWord(SYSGETPICPCBRK(mmu().curthread()), 0);
		picAddr += WORD_BYTE;
		for(j = 0; j<REG_LOOP_CUR_SIZE; j++) {
			mmu().setWord(picAddr, reg.loopExecCnt(j));
			CONTENT_SWITCH_DEBUG("%d ", reg.loopExecCnt(j));
			picAddr += WORD_BYTE;
		}
		for(j = 0; j<REG_LOOP_CUR_SIZE; j++) {
			mmu().setWord(picAddr, reg.loopStartPC(j));
			picAddr += WORD_BYTE;
		}
		for(j = 0; j<REG_LOOP_CUR_SIZE; j++) {
			mmu().setWord(picAddr, reg.loopEndPC(j));
			picAddr += WORD_BYTE;
		}	
		CONTENT_SWITCH_DEBUG(", cur_index=%d\n", reg.loopCurIndex());
	} else if (picAddr == SYSGETPICPCBRK(mmu().curthread())){
		picAddr += WORD_BYTE;
		for(j = 0; j<REG_LOOP_CUR_SIZE; j++) {
			mmu().setWord(picAddr, reg.loopExecCnt(j));
			CONTENT_SWITCH_DEBUG("%d ", reg.loopExecCnt(j));
			picAddr += WORD_BYTE;
		}
		CONTENT_SWITCH_DEBUG(", cur_index=%d\n", reg.loopCurIndex());		
	}
	reg.clearFEReg();	// Do not need do this??? (WWD)
}

ADDR SL1EventHandler::contentRestore(SL1Register& reg) {
	SimFatal((system()!=NULL), ("Machine error: system handler is NULL.\n"));
	/* Get the address of break's pic, if the content is 0, then get normal
	 * interrupt's pic. */
	ADDR picAddr = SYSGETPICPCBRK(mmu().curthread());
	ADDR nextPC = mmu().getWord(picAddr);
	if (nextPC == 0){
		picAddr = SYSGETPICPC(mmu().curthread());
		nextPC = mmu().getWord(picAddr);
	}
	else
		mmu().setWord(picAddr,0); //clear break ret pc
	UINT j;
	CONTENT_SWITCH_DEBUG("ContentRestore started: ");
	if(picAddr == SYSGETPICPC(mmu().curthread())) {
		picAddr += WORD_BYTE;
		for(j = 0; j<REG_LOOP_CUR_SIZE; j++) {
			INT cnt = mmu().getWord(picAddr);
			picAddr += WORD_BYTE;
			reg.loopExecCnt(j, cnt);
			CONTENT_SWITCH_DEBUG("%d ", cnt);
		}	
		for(j = 0; j<REG_LOOP_CUR_SIZE; j++) {
			reg.loopStartPC(j, mmu().getWord(picAddr));
			picAddr += WORD_BYTE;
		}	
		for(j = 0; j<REG_LOOP_CUR_SIZE; j++) {
			reg.loopEndPC(j, mmu().getWord(picAddr));
			picAddr += WORD_BYTE;
		}			
		CONTENT_SWITCH_DEBUG(", cur_index=%d\n", loopCurIndex);
	} else if (picAddr == SYSGETPICPCBRK(mmu().curthread())){
		picAddr += WORD_BYTE;
		for(j = 0; j<REG_LOOP_CUR_SIZE; j++) {
			INT cnt = mmu().getWord(picAddr);
			picAddr += WORD_BYTE;
			reg.loopExecCnt(j, cnt);
			CONTENT_SWITCH_DEBUG("%d ", cnt);
		}
	}
	return 	nextPC;
}

ADDR SL1EventHandler::returnHandler(SL1Register& reg, UINT thid) {
	mmu().curthread(thid);
	ADDR pc = contentRestore(reg);
	SYSTRAPEND(thid)
	return pc;
}

ADDR SL1EventHandler::interruptHandler(SL1Register& reg, ADDR pc, UINT thid) {
	ADDR ret_pc;
	mmu().curthread(thid);
	contentSave(reg, pc, SYSGETPICPC(thid));
	ret_pc = SYSGETHANDLER(thid);
	SYS_SET_NORMAL(thid);

	/* check reset interrupt for all thread */
	if(machine()!=NULL) {
		for(INT i = 0; i<MAX_THREAD; i++) {
			INT signal = SYS_GET_RESET(i);
			if(signal>0) {
				// enable thread i
				ADDR startpc = SYSGETRESETPC(i);
				mmu().curthread(i);
				machine()->setPC(i, mmu().getWord(startpc));
				machine()->enablePC(i);
				mmu().curthread(thid);
			}
			else if(signal<0) {
				machine()->disablePC(i);
			}
		}
	}

	return ret_pc;
}

ADDR SL1EventHandler::exceptionHandler(SL1Register& reg, ADDR pc, UINT flag, UINT thid) {
	ADDR ret_pc = pc;
	if((flag&EVENT_BREAK)>0) {
		SYSTRAP(SYS_BREAK, thid)
	}
	if((flag&EVENT_ILLEGAL_INS)>0) {
		SYSTRAP(SYS_ILLEGAL_INS, thid)
	}
	if((flag&EVENT_INVALID_ADDR)>0) {
		SYSTRAP(SYS_INVALID_ADDR, thid)
	}
	if((flag&EVENT_SYSCALL)>0) {
		SYSTRAP(SYS_SYSCALL, thid)
	}
	if(SYS_IS_THREAD_NON_NORMAL(thid)) {
		if((flag&EVENT_BREAK)>0)
			contentSave(reg, pc, SYSGETPICPCBRK(thid));
		else
			contentSave(reg, pc, SYSGETPICPC(thid));
		mmu().curthread(thid);
		ret_pc = SYSGETBREAKHANDLER(thid);
	}
	return ret_pc;	
}

void SL1EventHandler::sysBlackDoor(UINT flag) {
	if((flag&EVENT_SUSPENSE_SYS)>0){
		SYS_ENABLE_CLOCK(TRUE) 
	}
	else if((flag&EVENT_RESUME_SYS)>0) {
		SYS_ENABLE_CLOCK(FALSE) 
	}
}
