/*
 *  File: sl1instr.cpp
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

#include "sl1instr.h"

//construct the reg list for psim
void SL1Instr::getRegList(RegList* destList, RegList* srcList) {
	
	//dest list
	if((_ctrl1.status&ERS_WRITE)>0) {
		destList->push_back(_ctrl1.index+_ctrl1.regbase);
	}
	if((_ctrl2.status&ERS_WRITE)>0) {
		destList->push_back(_ctrl2.index+_ctrl2.regbase);
	}
	if((_ctrlcore.status&ERS_WRITE)>0) {
		destList->push_back(_ctrlcore.index+_ctrlcore.regbase);
	}	
	if((_sreg0.status&ERS_WRITE)>0) {
		destList->push_back(_sreg0.index+_sreg0.regbase);
		if((_sreg0p.status&ERS_WRITE)>0) {
			destList->push_back(_sreg0p.index+_sreg0p.regbase);
		}		
	}	
	if((_sreg0.status&ERS_WRITE)>0) {
		destList->push_back(_sreg0.index+_sreg0.regbase);
	}	
	if((_sreg1.status&ERS_WRITE)>0) {
		destList->push_back(_sreg1.index+_sreg1.regbase);
	}
	if((_sreg2.status&ERS_WRITE)>0) {
		destList->push_back(_sreg2.index+_sreg2.regbase);
	}			
	if((_reg0.status&ERS_WRITE)>0) {
		destList->push_back(_reg0.index+_reg0.regbase);
	}
	if((_reg1.status&ERS_WRITE)>0) {
		destList->push_back(_reg1.index+_reg1.regbase);
	}
	if((_reg2.status&ERS_WRITE)>0) {
		destList->push_back(_reg2.index+_reg2.regbase);
	}

	//src list
	if((_ctrl1.status&ERS_READ)>0) {
		srcList->push_back(_ctrl1.index+_ctrl1.regbase);
	}
	if((_ctrl2.status&ERS_READ)>0) {
		srcList->push_back(_ctrl2.index+_ctrl2.regbase);
	}	
	if((_ctrlcore.status&ERS_READ)>0) {
		srcList->push_back(_ctrlcore.index+_ctrlcore.regbase);
	}	
	if((_reg0.status&ERS_READ)>0) {
		srcList->push_back(_reg0.index+_reg0.regbase);
	}
	if((_reg1.status&ERS_READ)>0) {
		srcList->push_back(_reg1.index+_reg1.regbase);
	}
	if((_reg2.status&ERS_READ)>0) {
		srcList->push_back(_reg2.index+_reg2.regbase);
	}
	if((_sreg0.status&ERS_READ)>0) {
		srcList->push_back(_sreg0.index+_sreg0.regbase);
		if((_sreg0p.status&ERS_READ)>0) {
			srcList->push_back(_sreg0p.index+_sreg0p.regbase);
		}		
	}	
	if((_sreg0.status&ERS_READ)>0) {
		srcList->push_back(_sreg0.index+_sreg0.regbase);
	}
	if((_sreg1.status&ERS_READ)>0) {
		srcList->push_back(_sreg1.index+_sreg1.regbase);
	}
	if((_sreg2.status&ERS_READ)>0) {
		srcList->push_back(_sreg2.index+_sreg2.regbase);
	}

}

pair<INT, INT> SL1Instr::gprRegPort() {
	INT readReg = 0;
	INT writeReg = 0;
	pair<INT, INT> result;
	if((_reg0.status&ERS_WRITE)>0) {
		writeReg++;
	}
	if((_reg1.status&ERS_WRITE)>0) {
		writeReg++;
	}
	if((_reg2.status&ERS_WRITE)>0) {
		writeReg++;
	}
	if((_reg0.status&ERS_READ)>0) {
		readReg++;
	}
	if((_reg1.status&ERS_READ)>0) {
		readReg++;
	}
	if((_reg2.status&ERS_READ)>0) {
		readReg++;
	}
	result.first = 	readReg;
	result.second = writeReg;	
	return result;
}

pair<INT, INT> SL1Instr::ctrlRegPort() {
	INT readReg = 0;
	INT writeReg = 0;
	pair<INT, INT> result;
	if((_ctrl1.status&ERS_WRITE)>0) {
		if(_ctrl1.regbase==EBASE_CTRL) {
			writeReg++;
		}
	}
	if((_ctrl2.status&ERS_WRITE)>0) {
		if(_ctrl2.regbase==EBASE_CTRL) {
			writeReg++;
		}
	}
	if((_ctrlcore.status&ERS_WRITE)>0) {
		if(_ctrlcore.regbase==EBASE_CTRL) {
			writeReg++;
		}
	}
	if((_ctrl1.status&ERS_READ)>0) {
		if(_ctrl1.regbase==EBASE_CTRL) {
			readReg++;
		}
	}
	if((_ctrl2.status&ERS_READ)>0) {
		if(_ctrl2.regbase==EBASE_CTRL) {
			readReg++;
		}
	}
	if((_ctrlcore.status&ERS_WRITE)>0) {
		if(_ctrlcore.regbase==EBASE_CTRL) {
			writeReg++;
		}
	}
	result.first = 	readReg;
	result.second = writeReg;	
	return result;
}

pair<INT, INT> SL1Instr::addrRegPort() {
	INT readReg = 0;
	INT writeReg = 0;
	pair<INT, INT> result;
	if((_sreg0.status&ERS_WRITE)>0) {
		if(_sreg0.regbase==EBASE_AR&&_sreg0.index<REG_AR_SIZE) {
			writeReg++;
		}
	}	
	if((_sreg1.status&ERS_WRITE)>0) {
		if(_sreg1.regbase==EBASE_AR&&_sreg1.index<REG_AR_SIZE) {
			writeReg++;
		}
	}
	if((_sreg2.status&ERS_WRITE)>0) {
		if(_sreg2.regbase==EBASE_AR&&_sreg2.index<REG_AR_SIZE) {
			writeReg++;
		}
	}
	if((_sreg0.status&ERS_READ)>0) {
		if(_sreg0.regbase==EBASE_AR&&_sreg0.index<REG_AR_SIZE) {
			readReg++;
		}
	}	
	if((_sreg1.status&ERS_READ)>0) {
		if(_sreg1.regbase==EBASE_AR&&_sreg1.index<REG_AR_SIZE) {
			readReg++;
		}
	}
	if((_sreg2.status&ERS_READ)>0) {
		if(_sreg2.regbase==EBASE_AR&&_sreg2.index<REG_AR_SIZE) {
			readReg++;
		}
	}
	result.first = 	readReg;
	result.second = writeReg;	
	return result;
}

pair<INT, INT> SL1Instr::addrUpdateRegPort() {
	INT readReg = 0;
	INT writeReg = 0;
	pair<INT, INT> result;
	if((_sreg0.status&ERS_WRITE)>0) {
		if(_sreg0.regbase==EBASE_AR&&_sreg0.index>=REG_AR_CUR_SIZE&&_sreg0.index<REG_AR_ALL_SIZE) {
			writeReg++;
		}
	}	
	if((_sreg1.status&ERS_WRITE)>0) {
		if(_sreg1.regbase==EBASE_AR&&_sreg1.index>=REG_AR_CUR_SIZE&&_sreg1.index<REG_AR_ALL_SIZE) {
			writeReg++;
		}
	}
	if((_sreg2.status&ERS_WRITE)>0) {
		if(_sreg2.regbase==EBASE_AR&&_sreg2.index>=REG_AR_CUR_SIZE&&_sreg2.index<REG_AR_ALL_SIZE) {
			writeReg++;
		}
	}
	if((_sreg0.status&ERS_READ)>0) {
		if(_sreg0.regbase==EBASE_AR&&_sreg0.index>=REG_AR_CUR_SIZE&&_sreg0.index<REG_AR_ALL_SIZE) {
			readReg++;
		}
	}	
	if((_sreg1.status&ERS_READ)>0) {
		if(_sreg1.regbase==EBASE_AR&&_sreg1.index>=REG_AR_CUR_SIZE&&_sreg1.index<REG_AR_ALL_SIZE) {
			readReg++;
		}
	}
	if((_sreg2.status&ERS_READ)>0) {
		if(_sreg2.regbase==EBASE_AR&&_sreg2.index>=REG_AR_CUR_SIZE&&_sreg2.index<REG_AR_ALL_SIZE) {
			readReg++;
		}
	}
	result.first = 	readReg;
	result.second = writeReg;	
	return result;
}

pair<INT, INT> SL1Instr::accPort() {
	INT readReg = 0;
	INT writeReg = 0;
	pair<INT, INT> result;
	if((_reg0.status&ERS_WRITE)>0) {
		if((_sreg0.regbase==EBASE_ACC&&_sreg0.index<REG_ACC_SIZE) || 
			(_sreg0.regbase==EBASE_AR&&_sreg0.index>=REG_AR_ALL_SIZE)){
			writeReg++;
			if((_sreg0p.status&ERS_WRITE)>0) {
				if((_sreg0p.regbase==EBASE_ACC&&_sreg0p.index<REG_ACC_SIZE)|| 
					(_sreg0p.regbase==EBASE_AR&&_sreg0p.index>=REG_AR_ALL_SIZE)) {
					writeReg++;
				}
			}
		}	
	}
	if((_reg0.status&ERS_READ)>0) {
		if((_sreg0.regbase==EBASE_ACC&&_sreg0.index<REG_ACC_SIZE) || 
					(_sreg0.regbase==EBASE_AR&&_sreg0.index>=REG_AR_ALL_SIZE)) {
			readReg++;
			if((_sreg0p.status&ERS_READ)>0) {
				if((_sreg0p.regbase==EBASE_ACC&&_sreg0p.index<REG_ACC_SIZE)|| 
					(_sreg0p.regbase==EBASE_AR&&_sreg0p.index>=REG_AR_ALL_SIZE)) {
					readReg++;
				}
			}			
		}
	}
	if((_sreg1.status&ERS_READ)>0) {
		if(_sreg1.regbase==EBASE_ACC&&_sreg1.index<REG_ACC_SIZE){
			readReg++;
		}
	}	
	result.first = 	readReg;
	result.second = writeReg;	
	return result;
}


