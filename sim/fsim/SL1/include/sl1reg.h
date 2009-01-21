/*
 *  File: sl1reg.h
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

#ifndef SL1REG_H_
#define SL1REG_H_

#include "defs.h"
#include "breg.h"
#include "sl1regdefs.h"
#include "status.h"
#include "sl1defs.h"

#define GET_ACC_40BIT(data) ((data<<24)>>24)

class SL1Instr;

class SL1Register : public BaseRegister<SL1Instr> {

	private:
	WORD _gpr[REG_GPR_SIZE];
	WORD _ja;
	WORD _ra;

	UWORD _loop_cnt[REG_LOOP_CUR_SIZE];	
	ADDR _loopStartPC[REG_LOOP_CUR_SIZE];
	ADDR _loopEndPC[REG_LOOP_CUR_SIZE];
	UINT _loopExecCnt[REG_LOOP_CUR_SIZE];

	WORD _ar[REG_AR_CUR_SIZE];
	WORD _ar_usize[REG_AR_CUR_SIZE];
	DWORD _acc[REG_ACC_CUR_SIZE];
	WORD _hi;
	WORD _ffe_fft;
	WORD _ffe_viterbi;
	WORD _ffe_trback;
	WORD _statusReg;

	public:
	SL1Register(ProcessStatus<SL1Instr>& status, UINT thid);
	
	INT createNameMap(RegMap& regmap);	// create register name map and return map size
	char* getRegName(UINT32 index, UINT32 regbase);
	char* getRegName(UINT32 norm_index);

	void clear();
	void clearFEReg();
	
	WORD getSP(void){
		return _gpr[INDEX_REG_SP];
	}
	
	WORD getGPR(UINT32 index) { 
		AppFatal((index<REG_GPR_SIZE), ("Register: invalid gpr index (%d) @0x%08x.", index, status().pre_pc()));
		return _gpr[index];
	}
	
	void setGPR(UINT32 index, WORD data) {
		if(index==0){
		 	data = 0;
		}
		AppFatal((index<REG_GPR_SIZE), ("Register: invalid gpr index (%d) @0x%08x.", index, status().pre_pc()));
		_gpr[index] = data;	
	}
	
	void setSP(WORD data){
		_gpr[INDEX_REG_SP] = data;
    	}
	
	WORD getStatusReg(void) { return _statusReg; }
	void setStatusReg(WORD s) { _statusReg = s; }

	WORD getRA(void) { 
		return _ra;
	}	
	void setRA(WORD data) { 
		_ra = data;
	}	
	WORD getJA(void) { 
		return _ja;
	}	
	void setJA(WORD data) { 
		_ja = data;
	}		
	UWORD getLOOP_CNT(UINT32 index) { 
		AppFatal((index<REG_LOOP_CUR_SIZE), ("Register: invalid loop cnt index (%d) @0x%08x.", index, status().pre_pc()));
		return _loop_cnt[index];
	}
	void setLOOP_CNT(UINT32 index, UWORD data) { 
		AppFatal((index<REG_LOOP_CUR_SIZE), ("Register: invalid loop cnt index (%d) @0x%08x.", index, status().pre_pc()));
		_loop_cnt[index] = data;
	}	

	/*for loop in cexec.h */
	void pushExecCnt(UINT cnt)
	{
		AppFatal((_loopExecCnt[REG_LOOP_CUR_SIZE-1]==0),("Register: too much nested loop @0x%08x.", status().pre_pc()));
		int i;
		for(i=REG_LOOP_CUR_SIZE-1;i>0;i--)
			_loopExecCnt[i] = _loopExecCnt[i-1];
		_loopExecCnt[0] = cnt;	
	}
	
	void popExecCnt(void)
	{
		int i;
		for(i=0;i<REG_LOOP_CUR_SIZE-1;i++)
			_loopExecCnt[i] = _loopExecCnt[i+1];
		_loopExecCnt[REG_LOOP_CUR_SIZE-1] = 0;
	}
	
	UINT loopExecCntLv0(void){
		return _loopExecCnt[0];
	}
	
	void loopExecCntLv0(UINT cnt)
	{
		_loopExecCnt[0]=cnt;
	}
	
	void pushStartPC(ADDR loopStart)
	{
		AppFatal((_loopStartPC[REG_LOOP_CUR_SIZE-1]==0),("Register: too much nested loop @0x%08x.", status().pre_pc()));
		int i;
		for(i=REG_LOOP_CUR_SIZE-1;i>0;i--)
			_loopStartPC[i] = _loopStartPC[i-1];
		_loopStartPC[0] = loopStart;
	}
	
	void popStartPC(void)
	{
		int i;
		for(i=0;i<REG_LOOP_CUR_SIZE-1;i++)
			_loopStartPC[i] = _loopStartPC[i+1];
		_loopStartPC[REG_LOOP_CUR_SIZE-1] = 0;
	}
	
	ADDR loopStartPCLv0(void) { 
    	return _loopStartPC[0]; 
    }
    
	void pushEndPC(ADDR endPC)
	{
		AppFatal((_loopEndPC[REG_LOOP_CUR_SIZE-1]==0),("Register: too much nested loop @0x%08x.", status().pre_pc()));
		int i;
		for(i=REG_LOOP_CUR_SIZE-1;i>0;i--)
			_loopEndPC[i] = _loopEndPC[i-1];
		_loopEndPC[0] = endPC;
	}
	
	void popEndPC(void)
	{
		int i;
		for(i=0;i<REG_LOOP_CUR_SIZE-1;i++)
			_loopEndPC[i] = _loopEndPC[i+1];
		_loopEndPC[REG_LOOP_CUR_SIZE-1] = 0;
	}
	
	ADDR loopEndPCLv0(void) {
		return _loopEndPC[0]; 
	}

	UINT loopExecCnt(INT index){
		AppFatal((index<REG_LOOP_CUR_SIZE), ("Exec: Invalid loop index (%d)", index));
		return _loopExecCnt[index];
	}
	
	void loopExecCnt(INT index,UINT count) { 
		AppFatal((index<REG_LOOP_CUR_SIZE), ("Exec: Invalid loop index (%d)", index));
		_loopExecCnt[index] = count;
	}
    ADDR loopStartPC(UINT index) { 
    	AppFatal((index<REG_LOOP_CUR_SIZE), ("Exec: Invalid loop index (%d)", index));
    	return _loopStartPC[index]; 
    }
    
	void loopStartPC(UINT index,ADDR addr) { 
		AppFatal((index<REG_LOOP_CUR_SIZE), ("Exec: Invalid loop index (%d)", index));
		_loopStartPC[index] = addr; 
	}
	
	ADDR loopEndPC(UINT index) {
		AppFatal((index<REG_LOOP_CUR_SIZE), ("Exec: Invalid loop index (%d)", index));
		return _loopEndPC[index]; 
	}
	
	void loopEndPC(UINT index,ADDR addr) {
		AppFatal((index<REG_LOOP_CUR_SIZE), ("Exec: Invalid loop index (%d)", index)); 
		_loopEndPC[index] = addr;
	}

	WORD getFEReg(UINT32 index) { 
		AppFatal((index<EBASE_FE_REGS_SIZE), ("Register: invalid FE reg index (%d) @0x%08x.", index, status().pre_pc()));
		if(index>=0&&index<REG_LOOP_CUR_SIZE) {
			return loopExecCnt(index);
		}
		else if(index>=REG_LOOP_CUR_SIZE&&index<(REG_LOOP_CUR_SIZE*2)) {
			return loopStartPC(index-REG_LOOP_CUR_SIZE);
		}
		else if(index>=(REG_LOOP_CUR_SIZE*2)&&index<=EBASE_FE_REGS_SIZE-1) {
			return loopEndPC(index-(REG_LOOP_CUR_SIZE*2));
		}		
		//else if(index==EBASE_FE_REGS_SIZE-1) {
		//	return loopCurIndex();
		//}
		else {
			AppFatal((0), ("Register: invalid FE reg index (%d) @0x%08x.", index, status().pre_pc()));
		}
		return -1;
	}

	WORD getCTRL(UINT32 index) { 
		AppFatal((index<REG_ALL_CTRL_SIZE), ("Register: invalid ctrl reg index (%d) @0x%08x.", index, status().pre_pc()));
		if(index==ECR_JA ) {
			return getJA();
		}
		else if(index==ECR_RA ) {
			return getRA();
		}		
		else if(index>=ECR_LOOP_CNT&&index<ECR_INSTR_CNT) {
			return getLOOP_CNT(index-ECR_LOOP_CNT);
		}
		else {
			AppFatal((0), ("Register: invalid ctrl reg index (%d) @0x%08x.", index, status().pre_pc()));
		}
		return -1;
	}

	void setCTRL(UINT32 index, WORD data) { 
		AppFatal((index<REG_ALL_CTRL_SIZE), ("Register: invalid ctrl reg index (%d) @0x%08x.", index, status().pre_pc()));
		if(index==ECR_JA ) {
			setJA(data);
		}
		else if(index==ECR_RA ) {
			setRA(data);
		}		
		else if(index>=ECR_LOOP_CNT&&index<ECR_INSTR_CNT) {
			setLOOP_CNT(index-ECR_LOOP_CNT, data);
		}
		else {
			AppFatal((0), ("Register: invalid ctrl reg index (%d) @0x%08x.", index, status().pre_pc()));
		}
	}
	
	WORD getGPR16(UINT32 index) { 
		AppFatal((index<REG_GPR_SIZE), ("Register: invalid gpr index (%d) @0x%08x.", index, status().pre_pc()));
		INT16 tmp = _gpr[index];
		return ((WORD)tmp);
	}
	void setGPR16(UINT32 index, WORD data) {
		if(index==0){
		 	data = 0;
		}
		AppFatal((index<REG_GPR_SIZE), ("Register: invalid gpr index (%d) @0x%08x.", index, status().pre_pc()));
		data &= HWORD_DATA_MASK;
		_gpr[index] = data;
	}

	//BB ctrl regs
	WORD getHI(void) { 
		return _hi;
	}	
	void setHI(WORD data) { 
		_hi = data;
	}
		
	DWORD getACC(UINT32 index) { 
		AppFatal((index<REG_ACC_CUR_SIZE), ("Register: invalid acc index (%d) @0x%08x.", index, status().pre_pc()));
		return _acc[index];
	}
	void setACC(UINT32 index, DWORD data) { 
		AppFatal((index<REG_ACC_CUR_SIZE), ("Register: invalid acc index (%d) @0x%08x.", index, status().pre_pc()));
		data = GET_ACC_40BIT(data);
		_acc[index] = data;
	}	
	UWORD getAR(UINT32 index) {
		AppFatal((index<REG_AR_CUR_SIZE), ("Register: invalid ar index (%d) @0x%08x.", index, status().pre_pc())); 
		return (_ar[index]);
	}
	void setAR(UINT32 index, UWORD data) { 
		AppFatal((index<REG_AR_CUR_SIZE), ("Register: invalid ar index (%d) @0x%08x.", index, status().pre_pc())); 
		_ar[index] = data;
	}	
	WORD getAR_USIZE(UINT32 index) {
		AppFatal((index<REG_AR_CUR_SIZE), ("Register: invalid ar_usize index (%d) @0x%08x.", index, status().pre_pc())); 
		return (_ar_usize[index]);
	}
	void setAR_USIZE(UINT32 index, UWORD data) { 
		AppFatal((index<REG_AR_CUR_SIZE), ("Register: invalid ar_usize index (%d) @0x%08x.", index, status().pre_pc())); 
		_ar_usize[index] = data;
	}
	void setFFE_FFT(WORD data){ _ffe_fft = data; }
	WORD getFFE_FFT(void) { return _ffe_fft; }
	
	void setFFE_VITERBI(WORD data){ _ffe_viterbi = data; }
	WORD getFFE_VITERBI(void) { return _ffe_viterbi; }
	
	void setFFE_TRBACK(WORD data){ _ffe_trback = data; }
	WORD getFFE_TRBACK(void) { return _ffe_trback; }
	
	void setSPEC(UINT32 index, DWORD data) { 
		AppFatal((index<REG_ALL_C3_SPEC_SIZE), ("Register: invalid spec reg index (%d) @0x%08x.", index, status().pre_pc())); 
		if(index==ESR_HI) {
			setHI(data);
		}
		else if(index>=ESR_AR && index<(ESR_AR+REG_AR_CUR_SIZE)) {
			_ar[index] = (WORD)data;
		}
		else if(index>=ESR_AR_USIZE &&index<(ESR_AR_USIZE+REG_AR_CUR_SIZE)) {
			_ar_usize[index-ESR_AR_USIZE] = (WORD)data;
		}		
		else if(index>=ESR_ACC &&index<ESR_HI) {
			_acc[index-ESR_ACC] = data;
		}
		else if(index==ESR_FFT) {
			_ffe_fft = data;
		}
		else if(index==ESR_VITERBI) {
			_ffe_viterbi = data;
		}
		else if(index==ESR_TRBACK){
			_ffe_trback = data;
		}
		else if(index==ESR_STATUS){
			AppFatal((0), ("Register: status spec reg is read only", status().pre_pc())); 
		}		
		else {
			AppFatal((0), ("Register: invalid spec reg index (%d) @0x%08x.", index, status().pre_pc())); 
		}
	}

	WORD getSPEC(UINT32 index) { 
		AppFatal((index<REG_ALL_C3_SPEC_SIZE), ("Register: invalid spec reg index (%d) @0x%08x.", index, status().pre_pc())); 
		if(index==ESR_HI) {
			return getHI();
		}
		else if(index>=ESR_AR && index<(ESR_AR+REG_AR_CUR_SIZE)) {
			return _ar[index];
		}
		else if(index>=ESR_AR_USIZE &&index<(ESR_AR_USIZE+REG_AR_CUR_SIZE)) {
			return _ar_usize[index-ESR_AR_USIZE];
		}		
		else if(index>=ESR_ACC &&index<ESR_HI) {
			return _acc[index-ESR_ACC];
		}
		else if(index==ESR_FFT) {
			return _ffe_fft;
		}
		else if(index==ESR_VITERBI) {
			return _ffe_viterbi;
		}
		else if(index==ESR_TRBACK) {
			return _ffe_trback;
		}
		else if(index==ESR_STATUS){
			return _statusReg;
		}			
		else {
			AppFatal((0), ("Register: invalid spec reg index (%d) @0x%08x.", index, status().pre_pc())); 
			return ESR_UNDEF;
		}
	}
	EREG_SPEC getSPECIndex(UINT32 index) { 
		AppFatal((index<REG_ALL_C3_SPEC_SIZE), ("Register: invalid spec reg index (%d) @0x%08x.", index, status().pre_pc())); 
		if(index>=ESR_AR &&index<(ESR_AR+REG_AR_CUR_SIZE)) {
			return ESR_AR;
		}
		if(index>=ESR_AR_USIZE &&index<(ESR_AR_USIZE+REG_AR_CUR_SIZE)) {
			return ESR_AR_USIZE;
		}		
		else if(index>=ESR_ACC &&index<ESR_MAX) {
			return ESR_ACC;
		}
		else if(index==ESR_HI) {
			return ESR_HI;
		}
		else {
			AppFatal((0), ("Register: invalid spec reg index (%d) @0x%08x.", index, status().pre_pc())); 
			return ESR_UNDEF;
		}
	}

	INT getRegIndexByName(const STRING regName);
	INT setRegByName(const STRING regName, const DWORD value);
	INT getRegisterNames(char *buf, int len);
	bool isValidRegName(const STRING regName);
	void dumpRegs(FILE* out, const char* regSetName);	
	void dumpRegs2File(FILE* out, const char* regSetName);	
	INT initRegs(FILE *in, const char* regSetName);
};

const STRING reg_name_gpr[REG_GPR_SIZE] = {
        "zero", "r1", "r2", "r3", "r4", "r5", "r6", "r7",
        "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15",
        "r16", "r17", "r18", "r19", "r20", "r21", "r22", "r23",
        "r24", "r25", "r26", "r27", "gp", "sp", "r30", "r31"
};

const STRING reg_name_ctrl[REG_ALL_CTRL_SIZE] = {
	"ja", "ra", 
	"lcnt0", "lcnt1", "lcnt2", "lcnt3",
};

const STRING reg_name_fe[EBASE_FE_REGS_SIZE] = {
	"felcnt0", "felcnt1", "felcnt2", "felcnt3",
	"felstart0", "felstart1", "felstart2", "felstart3",
	"felend0", "felend1", "felend2", "felend3",
};

const STRING reg_name_c3_spec[REG_ALL_C3_SPEC_SIZE] = {
	"ar0", "ar1", "ar2", "ar3",
	"ar4", "ar5", "ar6", "ar7",
	"ar_usize0", "ar_usize1", "ar_usize2", "ar_usize3",
	"ar_usize4", "ar_usize5", "ar_usize6", "ar_usize7",
	"acc0", "acc1", "acc2", "acc3", "hi","ffe_fft","ffe_viterbi","ffe_trback","status",
};

#endif /*SL1REG_H_*/
