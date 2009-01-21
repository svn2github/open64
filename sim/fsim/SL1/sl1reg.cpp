/*
 *  File: sl1reg.cpp
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

#include "sl1reg.h"
#include "status.h"
#include "messg.h"

SL1Register::SL1Register(ProcessStatus<SL1Instr>& status, UINT thid) 
								: BaseRegister<SL1Instr>(status) {
	clear();
	setStatusReg(thid&REG_STATUS_THREADID_MASK);
}

INT SL1Register::createNameMap(RegMap& regmap)
{
	INT i;

	for (i=0; i<REG_GPR_SIZE; i++) {
		regmap[reg_name_gpr[i]] = new RegMapItem(reg_name_gpr[i], WORD_BYTE, (BYTE*) &_gpr[i]);
	}

	regmap[reg_name_ctrl[0]] = new RegMapItem(reg_name_ctrl[0], WORD_BYTE, (BYTE*) &_ja);
	regmap[reg_name_ctrl[1]] = new RegMapItem(reg_name_ctrl[1], WORD_BYTE, (BYTE*) &_ra);

	for(i = 0; i<REG_LOOP_CUR_SIZE; i++) {
		regmap[reg_name_ctrl[i+REG_CTRL_SIZE]] = new RegMapItem(reg_name_ctrl[i+REG_CTRL_SIZE], WORD_BYTE, (BYTE*) &_loop_cnt[i]);
		regmap[reg_name_fe[i]] = new RegMapItem(reg_name_fe[i], WORD_BYTE, (BYTE*) &_loopStartPC[i]);
		regmap[reg_name_fe[i+REG_LOOP_CUR_SIZE]] = new RegMapItem(reg_name_fe[i+REG_LOOP_CUR_SIZE], WORD_BYTE, (BYTE*) &_loopEndPC[i]);
		regmap[reg_name_fe[i+(2*REG_LOOP_CUR_SIZE)]] = new RegMapItem(reg_name_fe[i+(2*REG_LOOP_CUR_SIZE)], WORD_BYTE, (BYTE*) &_loopExecCnt[i]);
	}

	for (i=0; i<REG_AR_CUR_SIZE; i++) {
		regmap[reg_name_c3_spec[i]] = new RegMapItem(reg_name_c3_spec[i], WORD_BYTE, (BYTE*) &_ar[i]);
		regmap[reg_name_c3_spec[i+REG_AR_CUR_SIZE]] = new RegMapItem(reg_name_c3_spec[i+REG_AR_CUR_SIZE], WORD_BYTE, (BYTE*) &_ar_usize[i]);
	}

	for (i=0; i<REG_ACC_CUR_SIZE; i++) {
		regmap[reg_name_c3_spec[i+(2*REG_AR_CUR_SIZE)]] = new RegMapItem(reg_name_c3_spec[i+(2*REG_AR_CUR_SIZE)], DWORD_BYTE, (BYTE*) &_acc[i]);
	}

	regmap[reg_name_c3_spec[ESR_HI]] = new RegMapItem(reg_name_c3_spec[ESR_HI], WORD_BYTE, (BYTE*) &_hi);
	regmap[reg_name_c3_spec[ESR_FFT]] = new RegMapItem(reg_name_c3_spec[ESR_FFT], WORD_BYTE, (BYTE*) &_ffe_fft);
	regmap[reg_name_c3_spec[ESR_VITERBI]] = new RegMapItem(reg_name_c3_spec[ESR_VITERBI],WORD_BYTE,(BYTE*) &_ffe_viterbi);
	regmap[reg_name_c3_spec[ESR_TRBACK]] = new RegMapItem(reg_name_c3_spec[ESR_TRBACK],WORD_BYTE,(BYTE*) &_ffe_trback);
	regmap[reg_name_c3_spec[ESR_STATUS]] = new RegMapItem(reg_name_c3_spec[ESR_STATUS],WORD_BYTE,(BYTE*) &_statusReg);

	return regmap.size();
}

void SL1Register::clear() {
	
	INT i;
	for(i = 0; i<REG_GPR_SIZE; i++) {
		 _gpr[i] = 0;
	}
	_ja = 0;
	_ra = 0;

	for(i = 0; i<REG_LOOP_CUR_SIZE; i++) {
		 _loop_cnt[i] = 0;
	}

	clearFEReg();

	for(i = 0; i<REG_ACC_CUR_SIZE; i++) {
		 _acc[i] = 0;
	}

	for(i = 0; i<REG_AR_CUR_SIZE; i++) {
		 _ar[i] = 0;
	}

	for(i = 0; i<REG_AR_CUR_SIZE; i++) {
		 _ar_usize[i] = 0;
	}

	_hi = 0;
	_ffe_fft = 0;
	_ffe_viterbi = 0;
	_ffe_trback = 0;
	_statusReg = 0;
}

void SL1Register::clearFEReg() {
	for(INT i = 0; i<REG_LOOP_CUR_SIZE; i++) {
		 _loopStartPC[i] = 0;
		 _loopEndPC[i] = 0;
		 _loopExecCnt[i] = 0;
	}		
}

INT SL1Register::initRegs(FILE* in,  const char* regSetName) {

	INT line = 0;
	
	WORD data = 0;
	if(strcasecmp(regSetName, "all")==0) {
		char str[50];
		INT i;

		for(i = 0; i<REG_GPR_SIZE; i++) {
			line++;
			if(fscanf(in, "%x%[^\n]", &data, str)!=EOF) {
				setGPR(i, data);
			}
			else {
				return (-line);
			}
		}
		line++;	
		if(fscanf(in, "%x%[^\n]", &data, str)!=EOF) {
			setJA(data);
		}
		else {
			return (-line);
		}	
		line++;
		if(fscanf(in, "%x%[^\n]", &data, str)!=EOF) {
			setRA(data);
		}
		else {
			return (-line);
		}			
		for(i = 0; i<REG_LOOP_CUR_SIZE; i++) {
			line++;
			if(fscanf(in, "%x%[^\n]", &data, str)!=EOF) {
				setLOOP_CNT(i, data);
			}
			else {
				return (-line);
			}	
		}	
		// ar
		for (i=0; i<REG_AR_CUR_SIZE; i++) {
			line++;
			if(fscanf(in, "%x%[^\n]", &data, str)!=EOF) {
				setAR(i, data);
			}
			else {
				return (-line);
			}					
		}
		// ar_usize
		for (i=0; i<REG_AR_CUR_SIZE; i++) {
			line++;
			if(fscanf(in, "%x%[^\n]", &data, str)!=EOF) {
				setAR_USIZE(i, data);
			}
			else {
				return (-line);
			}					
		}			
		// acc
		for (i=0; i<REG_ACC_CUR_SIZE; i++) {
			line++;
			if(fscanf(in, "%x%[^\n]", &data, str)!=EOF) {
				setACC(i, data);
				}
			else {
				return (-line);
			}				
		}
		line++;
		if(fscanf(in, "%x%[^\n]", &data, str)!=EOF) {
			setHI(data);
		}
		line++;
		if(fscanf(in, "%x%[^\n]", &data, str)!=EOF) {
			setFFE_FFT(data);
		}
		line++;
		if(fscanf(in, "%x%[^\n]", &data, str)!=EOF) {
			setFFE_VITERBI(data);
		}
		line++;
		if(fscanf(in, "%x%[^\n]", &data, str)!=EOF) {
			setFFE_TRBACK(data);
		}
		else {
			return (-line);
		}			
	}
	return line;
}

void SL1Register::dumpRegs2File(FILE* out, const char* regSetName) {

	if(strcasecmp(regSetName, "all")==0) {	
		INT i;
		
		for (i=0; i<REG_GPR_SIZE; i++) {
			fprintf(out, "%0*x \\\\ %s\n", 8, getGPR(i), reg_name_gpr[i]);
		}
		
		fprintf(out, "%0*x \\\\ %s\n", 8/*getRegWidth()*/, getJA(), reg_name_ctrl[ECR_JA]);
		fprintf(out, "%0*x \\\\ %s\n", 8/*getRegWidth()*/, getRA(), reg_name_ctrl[ECR_RA]);

		for (i=0; i<REG_LOOP_CUR_SIZE; i++) {
			fprintf(out, "%0*x \\\\ %s\n", 8/*getRegWidth()*/, getLOOP_CNT(i), reg_name_ctrl[i+REG_CTRL_SIZE]);
		}
	
		for (i=0; i<EBASE_FE_REGS_SIZE; i++) {
			fprintf(out, "%0*x \\\\ %s\n", 8/*getRegWidth()*/, getFEReg(i), reg_name_fe[i]);
		}
		// ar
		for (i=0; i<REG_AR_CUR_SIZE; i++) {
			fprintf(out, "%08x \\\\ %s\n", (UWORD)getAR(i), reg_name_c3_spec[i]);
		}
		// ar_usize
		for (i=0; i<REG_AR_CUR_SIZE; i++) {
			fprintf(out, "%08x \\\\ %s\n", (UWORD)getAR_USIZE(i), reg_name_c3_spec[i+REG_AR_CUR_SIZE]);
		}
		// acc
		for (i=0; i<REG_ACC_CUR_SIZE; i++) {
			fprintf(out, "%08x \\\\ %s\n", (WORD)getACC(i), reg_name_c3_spec[i+(2*REG_AR_CUR_SIZE)]);
		}
		fprintf(out, "%0*x \\\\ %s\n", 8/*getRegWidth()*/, getHI(), reg_name_c3_spec[ESR_HI]);
		fprintf(out, "%0*x \\\\ %s\n", 8/*getRegWidth()*/, getFFE_FFT(), reg_name_c3_spec[ESR_FFT]);
		fprintf(out, "%0*x \\\\ %s\n", 8/*getRegWidth()*/, getFFE_VITERBI(), reg_name_c3_spec[ESR_VITERBI]);
		fprintf(out, "%0*x \\\\ %s\n", 8/*getRegWidth()*/, getFFE_TRBACK(), reg_name_c3_spec[ESR_TRBACK]);
		fprintf(out, "%0*x \\\\ %s\n", 8/*getRegWidth()*/, getStatusReg(), reg_name_c3_spec[ESR_STATUS]);
	}
}

void SL1Register::dumpRegs(FILE* out, const char* regSetName) {
	
	if(strcasecmp(regSetName, "all")==0) {
		INT i;
		
		for (i=0; i<REG_GPR_SIZE; i++) {
			fprintf(out, "%5s=%0*x ", reg_name_gpr[i], 8, getGPR(i));
			if (i%REG_PRINT_PER_LINE == (REG_PRINT_PER_LINE-1))
				fprintf(out, "\n");
		}	
		// register ja
		fprintf(out, "%5s=%0*x ", reg_name_ctrl[ECR_JA], 8, getJA());
		
		// register ra
		fprintf(out, "%5s=%0*x ", reg_name_ctrl[ECR_RA], 8, getRA());
		fprintf(out, "\n");
		for (INT i=0; i<REG_LOOP_CUR_SIZE; i++) {
			fprintf(out, "%5s=%0*x ", reg_name_ctrl[i+REG_CTRL_SIZE], 8/*getRegWidth()*/, getLOOP_CNT(i));
		}	
		fprintf(out, "\nFE internal Reg:\n");
		for (INT i=0; i<EBASE_FE_REGS_SIZE; i++) {
			fprintf(out, "%9s=%08x ", reg_name_fe[i], getFEReg(i));
			if (i%REG_LOOP_CUR_SIZE == (REG_LOOP_CUR_SIZE-1))
				fprintf(out, "\n");			
		}	
		fprintf(out, "\n");	

		fprintf(out, "C3 reg:\n");
		// ar
		for (i=0; i<REG_AR_CUR_SIZE; i++) {
			fprintf(out, "%5s=%08x ", reg_name_c3_spec[i], getAR(i));
			if (i%REG_PRINT_PER_LINE == (REG_PRINT_PER_LINE-1))
				fprintf(out, "\n");
		}
		if (i<REG_AR_CUR_SIZE)
			fprintf(out, "\n");
		// ar_usize
		for (i=0; i<REG_AR_CUR_SIZE; i++) {
			fprintf(out, "%5s=%08x ", reg_name_c3_spec[i+REG_AR_CUR_SIZE], getAR_USIZE(i));
			if (i%REG_PRINT_PER_LINE == (REG_PRINT_PER_LINE-1))
				fprintf(out, "\n");
		}
		if (i<REG_AR_CUR_SIZE)
			fprintf(out, "\n");
		for (i=0; i<REG_ACC_CUR_SIZE; i++) {
			fprintf(out, "%5s=%08llx ", reg_name_c3_spec[i+(2*REG_AR_CUR_SIZE)],(DWORD)getACC(i));
		}
		fprintf(out, "\n");	
		// register hi
		fprintf(out, "%5s=%0*x ", reg_name_c3_spec[ESR_HI], 8, getHI());
		fprintf(out, "%s=%0*x ", reg_name_c3_spec[ESR_FFT], 8, getFFE_FFT());
		fprintf(out, "%s=%0*x ", reg_name_c3_spec[ESR_VITERBI], 8, getFFE_VITERBI());
		fprintf(out, "%s=%0*x ", reg_name_c3_spec[ESR_TRBACK], 8, getFFE_TRBACK());		
		fprintf(out, "%s=%0*x ", reg_name_c3_spec[ESR_STATUS], 8, getStatusReg());
		fprintf(out, "\n");			
	}
}	

INT SL1Register::setRegByName(const STRING regName, const DWORD value) {
	INT i;
	
	// Check if the register belongs to parent
	for (i=0; i<REG_GPR_SIZE; i++) {
		if (strcmp(reg_name_gpr[i], regName) == 0) {
			setGPR(i, value);
			return 0;
		}
	}
	// ctrl
	for (i=0; i<REG_ALL_CTRL_SIZE; i++) {
		if (strcmp(reg_name_ctrl[i], regName) == 0) {
			setCTRL(i, value);
			return 0;
		}
	}
	// ar
	for (i=0; i<REG_AR_CUR_SIZE; i++) {
		if (strcmp(reg_name_c3_spec[i], regName) == 0) {
			setAR(i, value);
			return 0;
		}
	}
	// ar_usize
	for (i=0; i<REG_AR_CUR_SIZE; i++) {
		if (strcmp(reg_name_c3_spec[i+REG_AR_CUR_SIZE], regName) == 0) {
			setAR_USIZE(i, value);
			return 0;
		}
	}
	// acc
	for (i=0; i<REG_ACC_CUR_SIZE; i++) {
		if (strcmp(reg_name_c3_spec[i+(2*REG_AR_CUR_SIZE)], regName) == 0) {
			setACC(i, value);
			return 0;
		}
	}
	if(strcmp(reg_name_c3_spec[ESR_HI],regName)==0){
		setHI(value);
		return 0;
	}
	if(strcmp(reg_name_c3_spec[ESR_FFT],regName)==0){
		setFFE_FFT(value);
		return 0;
	}
	if(strcmp(reg_name_c3_spec[ESR_VITERBI],regName)==0){
		setFFE_VITERBI(value);
		return 0;
	}
	if(strcmp(reg_name_c3_spec[ESR_TRBACK],regName)==0){
		setFFE_TRBACK(value);
		return 0;
	}
	if(strcmp(reg_name_c3_spec[ESR_STATUS],regName)==0){
		DevWarn("status reg is read only\n");
		return 0;
	}
	return -1;
}

bool SL1Register::isValidRegName(const STRING regName) {
	INT i;
	
	// Check if the register belongs to parent
	for (i=0; i<REG_GPR_SIZE; i++) {
		if (strcmp(reg_name_gpr[i], regName) == 0) {
			return true;
		}
	}
	// ctrl
	for (i=0; i<REG_ALL_CTRL_SIZE; i++) {
		if (strcmp(reg_name_ctrl[i], regName) == 0) {
			return true;
		}
	}
	//fe
	for (i=0; i<EBASE_FE_REGS_SIZE; i++) {
		if (strcmp(reg_name_fe[i], regName) == 0) {
			return true;
		}
	}	
	//c3
	for (i=0; i<REG_ALL_C3_SPEC_SIZE; i++) {
		if (strcmp(reg_name_c3_spec[i], regName) == 0) {
			return true;
		}
	}
	return false;
}		

INT SL1Register::getRegisterNames(char *buf, int len) {
	INT i;
	INT cc;
	
	cc = strlen(buf);
	for (INT i=0; i<REG_GPR_SIZE; i++) {
		cc += sprintf(buf+cc, "%s ", reg_name_gpr[i]);
		if (i % 8 == 7)
			cc += sprintf(buf+cc, "\n");
	}
	cc += sprintf(buf+cc, "\n");
	buf[cc] = '\0';
	if (cc >= len)
		return -1;

	cc += sprintf(buf+cc, "%s ", reg_name_ctrl[ECR_JA]);
	cc += sprintf(buf+cc, "%s ", reg_name_ctrl[ECR_RA]);
	cc += sprintf(buf+cc, "\n");

	for (INT i=0; i<REG_LOOP_CUR_SIZE; i++) {
		cc += sprintf(buf+cc, "%s ", reg_name_ctrl[i+REG_CTRL_SIZE]);
	}
	for (INT i=0; i<EBASE_FE_REGS_SIZE; i++) {
		cc += sprintf(buf+cc, "%s ", reg_name_fe[i]);
	}	
	buf[cc] = '\0';
	if (cc >= len)
		return -1;
	cc = strlen(buf);
	for (i=0; i<REG_ALL_C3_SPEC_SIZE; i++) {
		cc += sprintf(buf+cc, "%s ", reg_name_c3_spec[i]);
		if (i%4 == 3)
			cc += sprintf(buf+cc, "\n");
	}
	if (cc >= len)
		return -1;
	buf[cc] = '\0';
	return 0;
}
