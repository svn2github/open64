/*
 *  File: sl1exec.h
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

#ifndef SL1EXEC_H_
#define SL1EXEC_H_

#include "bexec.h"
#include "sl1reg.h"
#include "sl1mmu.h"
#include "sl1defs.h"
#include "sl1fft.h"
#include "sl1instr.h"
#include "sl1viterbi.h"
#include "sl1traceback.h"

class SL1Exec : public BaseExec<SL1MMU, SL1Register, SL1Instr> {
	private:
	SL1FFE& _ffe;
	SL1VITERBI& _viterbi;
	SL1TRACEBACK& _traceback;
	UINT _verboselevel;

	private:
	ADDR loopMode(ADDR curAddr, ADDR retAddr);
	void _updateSize(UINT index, BYTE am,UINT dtype)
	{
		ADDR ad = reg().getAR(index);
		INT ad_up=0;
		pair<ADDR, ADDR> cbuf;
		switch(am){
			case ADD_1:
				ad_up = dtype;
				break;
			case ADD_2:
				ad_up = dtype*2;
				break;
			case ADD_4:
				ad_up = dtype*4;
				break;
			case SUB_1:
				ad_up = -dtype;
				break;
			case SUB_2:
				ad_up = -dtype*2;
				break;
			case SUB_4:
				ad_up = -dtype*4;
				break;
			case SIZE_REGISTER:
				ad_up = reg().getAR_USIZE(index);
				break;
			case NORMAL_MODE:
			    break;
			default:
				AppFatal((0), ("Exec: invalid ar mode (%d).", am));
				break;
		}
		UINT cbuf_size;
		cbuf = mmu().getCbufAddr(BUFFER_ID_ZERO);
		if(ad>=cbuf.first && ad<cbuf.second)
		{
			SimFatal(((cbuf.second-cbuf.first)>0), ("MMU: cbuf address defined incorrectly (start=%x, end=%x).", cbuf.first, cbuf.second));
			cbuf_size = cbuf.second-cbuf.first;//+1;
			if(abs(ad_up)>cbuf_size)
				DevWarn("ar register's update size (%d) is too large for circular buf size(%d)\n",ad_up,cbuf_size);
			ad += ad_up;
			if(ad<cbuf.first) {
				ad = ad+cbuf_size;
			}			
			if(ad>=cbuf.second) {
				ad = ad-cbuf_size;
			}
			reg().setAR(index,ad);
			return;
		}
		cbuf = mmu().getCbufAddr(BUFFER_ID_ONE);
		if(ad>=cbuf.first && ad<cbuf.second)
		{
			SimFatal(((cbuf.second-cbuf.first)>0), ("MMU: cbuf address defined incorrectly (start=%x, end=%x).", cbuf.first, cbuf.second));
			cbuf_size = cbuf.second-cbuf.first;//+1;
			if(abs(ad_up)>cbuf_size)
				DevWarn("ar register's update size (%d) is too large for circular buf size(%d)\n",ad_up,cbuf_size);
			ad += ad_up;
			if(ad<cbuf.first) {
				ad = ad+cbuf_size;
			}			
			if(ad>=cbuf.second) {
				ad = ad-cbuf_size;
			}
			reg().setAR(index,ad);
			return;
		}
		ad += ad_up;
		reg().setAR(index,ad);
	}
	
	DWORD _calSaTemp40(DWORD tmp,UBYTE acm)
	{
		if(acm & SATURATION_MODE)
		{
			DWORD dest = tmp;
			if(dest>SATURATION_MAX40)
					dest = SATURATION_MAX40;
			else if(dest<SATURATION_MIN40)
					dest = SATURATION_MIN40;
			return dest;
		}
		else
			return tmp;
		
	}
	
	DWORD _calSatShiftLeft(DWORD src,UINT shift_value,UBYTE acm,UBYTE M)
	{
		INT i;
		DWORD res,lmt_max,lmt_min;
		if(acm & SATURATION_MODE)
		{
			res = src;
			if(shift_value)
			{
				if(M)
				{
					lmt_max = SATURATION_MAX40/2;
					lmt_min = SATURATION_MIN40/2;
				}
				else
				{
					lmt_max = SATURATION_MAX32/2;
					lmt_min = SATURATION_MIN32/2;
				}
				for(i=1;i<=shift_value;i++)
				{
				
					if(res>lmt_max)
					{
						res = lmt_max*2+1;
						break;
					}	
					else if(res<lmt_min)
					{
						res = lmt_min*2;
						break;
					}
					else
						res = res<<1;
				}
			}
			else
			{
				if(!M)
				{						
					if(res>SATURATION_MAX32)
			   			res = SATURATION_MAX32;
			 		else if(res<SATURATION_MIN32)  
			    		res = SATURATION_MIN32;
				}
				else
				{
					if(res>SATURATION_MAX40)
						res = SATURATION_MAX40;
					else if(res<SATURATION_MIN40)
						res = SATURATION_MIN40;	
				} 				
			}
		}
		else
			res = src<<shift_value;
		return res;
	}
	
	DWORD _calAccResult(DWORD dest,UBYTE acm,UBYTE M){
		if(acm & ROUND_MODE)
		   dest = ((dest +0x8000) >>16)<<16;   
		if(acm & SATURATION_MODE) 
		{
			if(!M)
			{						
				if(dest>SATURATION_MAX32)
			   		dest = SATURATION_MAX32;
			 	else if(dest<SATURATION_MIN32)  
			    	dest = SATURATION_MIN32;
			}
			else
			{
				if(dest>SATURATION_MAX40)
					dest = SATURATION_MAX40;
				else if(dest<SATURATION_MIN40)
					dest = SATURATION_MIN40;	
			} 
			
		}
		return dest;
	}

	DWORD _saturateGPR32(DWORD dest)
	{
		if(dest>SATURATION_MAX32)
			dest = SATURATION_MAX32;
	    else if(dest<SATURATION_MIN32)  
		 	dest = SATURATION_MIN32;
		return dest; 	 
	}
	
	DWORD _saturateGPR16(DWORD dest)
	{
		if(dest>SATURATION_MAX16)
			dest = SATURATION_MAX16;
	    else if(dest<SATURATION_MIN16)  
		 	dest = SATURATION_MIN16;
		return dest; 	 
	}
	public:	
	SL1Exec(SL1MMU& mmu, SL1Register& reg, ProcessStatus<SL1Instr>& status);
	SL1FFE& ffe(void) { return _ffe; }
	SL1VITERBI& viterbi(void) { return _viterbi;}
	SL1TRACEBACK& traceback(void) { return _traceback;}

	BOOL isInstr16(WORD raw) {
		union {
			WORD rawbits;
			struct {
				unsigned lv2 : 6;
				unsigned na : 10;
				unsigned lv2s : 5;
				unsigned lv2g1 : 5;
				unsigned top :6;
			} bits;
		}rb;
		rb.rawbits = raw;
		if((rb.bits.top==0x2)||(rb.bits.top>=0x20&&rb.bits.top<=0x37)) {
			return TRUE;
		}
		else {
			return FALSE;
		}
	}

	BOOL _checkLoopAddr(ADDR pc)
	{
		if(pc>= reg().loopStartPCLv0() && pc<=reg().loopEndPCLv0())
			return TRUE;
		return FALSE;
	}
	

	ADDR execute(ADDR addr, SL1Instr* instr) {
		ADDR ret_addr;
		pc(addr);
		ret_addr = (this->*(instr->exec()))(instr);
		status().logExec(addr, ret_addr, instr);
		return loopMode(addr, ret_addr);
	}
			
	void VerboseLevel(UINT verboselevel) {_verboselevel = verboselevel; }
	UINT VerboseLevel(void) {return  _verboselevel;}

	/*sl1 core instr exec*/
		ADDR execAbs16 (SL1Instr* instr);
	ADDR execAdd (SL1Instr* instr);
	ADDR execAdd16 (SL1Instr* instr);
	ADDR execAdd16i (SL1Instr* instr);
	ADDR execAdd16sp (SL1Instr* instr);
	ADDR execAddi (SL1Instr* instr);
	ADDR execAnd (SL1Instr* instr);
	ADDR execAnd16 (SL1Instr* instr);
	ADDR execAnd16i (SL1Instr* instr);
	ADDR execAndi (SL1Instr* instr);
	ADDR execBreak (SL1Instr* instr);
	ADDR execBreak16 (SL1Instr* instr);
	ADDR execBreq (SL1Instr* instr);
	ADDR execBrgez (SL1Instr* instr);
	ADDR execBrgtz (SL1Instr* instr);
	ADDR execBrlez (SL1Instr* instr);
	ADDR execBrltz (SL1Instr* instr);
	ADDR execBrne (SL1Instr* instr);
	ADDR execDcflush (SL1Instr* instr);
	ADDR execDepb (SL1Instr* instr);
	ADDR execExtrb (SL1Instr* instr);
	ADDR execExtrbu (SL1Instr* instr);
	ADDR execInv16 (SL1Instr* instr);	
	ADDR execInvalid (SL1Instr* instr);
	ADDR execJp (SL1Instr* instr);
	ADDR execJplnk (SL1Instr* instr);
	ADDR execJr (SL1Instr* instr);
	ADDR execJr16 (SL1Instr* instr);
	ADDR execJr16lnk (SL1Instr* instr);
	ADDR execJrlnk (SL1Instr* instr);
	ADDR execLdb (SL1Instr* instr);
	ADDR execLdh (SL1Instr* instr);
	ADDR execLdlnk (SL1Instr* instr);
	ADDR execLdub (SL1Instr* instr);
	ADDR execLdub16rs (SL1Instr* instr);
	ADDR execLduh (SL1Instr* instr);
	ADDR execLduh16rs (SL1Instr* instr);
	ADDR execLdw (SL1Instr* instr);
	ADDR execLdw16 (SL1Instr* instr);
	ADDR execLoop (SL1Instr* instr);	
	ADDR execMcabs (SL1Instr* instr);
	ADDR execMcreq (SL1Instr* instr);
	ADDR execMcrge (SL1Instr* instr);
	ADDR execMcrgt (SL1Instr* instr);
	ADDR execMcrle (SL1Instr* instr);
	ADDR execMcrlt (SL1Instr* instr);
	ADDR execMcrne (SL1Instr* instr);
	ADDR execMczceq (SL1Instr* instr);
	ADDR execMczcge (SL1Instr* instr);
	ADDR execMczcgt (SL1Instr* instr);
	ADDR execMczcle (SL1Instr* instr);
	ADDR execMczclt (SL1Instr* instr);
	ADDR execMczcne (SL1Instr* instr);
	ADDR execMczeq (SL1Instr* instr);
	ADDR execMczge (SL1Instr* instr);
	ADDR execMczgt (SL1Instr* instr);
	ADDR execMczle (SL1Instr* instr);
	ADDR execMczlt (SL1Instr* instr);
	ADDR execMczne (SL1Instr* instr);
	ADDR execMczneq (SL1Instr* instr);
	ADDR execMcznge (SL1Instr* instr);
	ADDR execMczngt (SL1Instr* instr);
	ADDR execMcznle (SL1Instr* instr);
	ADDR execMcznlt (SL1Instr* instr);
	ADDR execMcznne (SL1Instr* instr);
	ADDR execMv16 (SL1Instr* instr);
	ADDR execMv16i (SL1Instr* instr);
	ADDR execMvfc (SL1Instr* instr);
	ADDR execMvfc16 (SL1Instr* instr);
	ADDR execMvtc (SL1Instr* instr);
	ADDR execMvtc16 (SL1Instr* instr);
	ADDR execMvupi (SL1Instr* instr);
	ADDR execNop (SL1Instr* instr);
	ADDR execNop16 (SL1Instr* instr);
	ADDR execNor (SL1Instr* instr);
	ADDR execNori (SL1Instr* instr);
	ADDR execOr (SL1Instr* instr);
	ADDR execOr16 (SL1Instr* instr);
	ADDR execOr16i (SL1Instr* instr);
	ADDR execOri (SL1Instr* instr);
	ADDR execPop16 (SL1Instr* instr);
	ADDR execPush16 (SL1Instr* instr);
	ADDR execRet (SL1Instr* instr);
	ADDR execRet16 (SL1Instr* instr);
	ADDR execRete (SL1Instr* instr);
	ADDR execRete16 (SL1Instr* instr);
	ADDR execSetlt (SL1Instr* instr);
	ADDR execSetlti (SL1Instr* instr);
	ADDR execSetltu (SL1Instr* instr);
	ADDR execSetltui (SL1Instr* instr);
	ADDR execShll (SL1Instr* instr);
	ADDR execShll16 (SL1Instr* instr);
	ADDR execShll16i (SL1Instr* instr);
	ADDR execShlli (SL1Instr* instr);
	ADDR execShra (SL1Instr* instr);
	ADDR execShra16 (SL1Instr* instr);
	ADDR execShra16i (SL1Instr* instr);
	ADDR execShrai (SL1Instr* instr);
	ADDR execShrl (SL1Instr* instr);
	ADDR execShrl16 (SL1Instr* instr);
	ADDR execShrl16i (SL1Instr* instr);
	ADDR execShrli (SL1Instr* instr);
	ADDR execStb (SL1Instr* instr);
	ADDR execStc (SL1Instr* instr);
	ADDR execSth (SL1Instr* instr);
	ADDR execStw (SL1Instr* instr);
	ADDR execStw16 (SL1Instr* instr);
	ADDR execSub (SL1Instr* instr);
	ADDR execSub16 (SL1Instr* instr);
	ADDR execSub16i (SL1Instr* instr);
	ADDR execSyscall (SL1Instr* instr);
	ADDR execXor (SL1Instr* instr);
	ADDR execXor16 (SL1Instr* instr);
	ADDR execXor16i (SL1Instr* instr);
	ADDR execXori (SL1Instr* instr);
	ADDR execBr16eqz (SL1Instr* instr);
	ADDR execBr16nez (SL1Instr* instr);	
	ADDR execMvtci(SL1Instr* instr);	

	/*sl1 bb instr exec*/
	ADDR execC3saadds (SL1Instr* instr);
	ADDR execC3saadda (SL1Instr* instr);
	ADDR execC3aadda(SL1Instr* instr);
	ADDR execC3shav(SL1Instr* instr);  
	ADDR execC3bitr (SL1Instr* instr);
	ADDR execC3sadda (SL1Instr* instr);
	ADDR execC3saddaa (SL1Instr* instr);
	ADDR execC3ld (SL1Instr* instr);
	ADDR execC3mac (SL1Instr* instr);
	ADDR execC3maca (SL1Instr* instr);
	ADDR execC3macar (SL1Instr* instr);
	ADDR execC3maci (SL1Instr* instr);
	ADDR execC3samulsh (SL1Instr* instr);
	ADDR execC3samulha (SL1Instr* instr);
	ADDR execC3shlai (SL1Instr* instr);
	ADDR execC3saaddha (SL1Instr* instr);
	ADDR execC3sasubha (SL1Instr* instr);
	ADDR execC3shlafai (SL1Instr* instr);
	ADDR execC3shrafai (SL1Instr* instr);
	ADDR execC3shrai (SL1Instr* instr);
	ADDR execC3macn (SL1Instr* instr);
	ADDR execC3macna (SL1Instr* instr);
	ADDR execC3macnar (SL1Instr* instr);
	ADDR execC3macni (SL1Instr* instr);
	ADDR execC3mula (SL1Instr* instr);
	ADDR execC3mulaa (SL1Instr* instr);
	ADDR execC3mulaar (SL1Instr* instr);
	ADDR execC3mulai (SL1Instr* instr);
	ADDR execC3shlatai (SL1Instr* instr);
	ADDR execC3shratai (SL1Instr* instr);
	ADDR execC3mulan (SL1Instr* instr);
	ADDR execC3lead (SL1Instr* instr);
	ADDR execC3mvfs (SL1Instr* instr);
	ADDR execC3mvts (SL1Instr* instr);
	ADDR execC3dmac (SL1Instr* instr);
	ADDR execC3dmacn (SL1Instr* instr);
	ADDR execC3dmaca (SL1Instr* instr);
	ADDR execC3dmacna (SL1Instr* instr);
	ADDR execC3dadd (SL1Instr* instr);
	ADDR execC3dsub (SL1Instr* instr);
	ADDR execC3revb (SL1Instr* instr);
	ADDR execC3round (SL1Instr* instr);
	ADDR execC3dmula (SL1Instr* instr);
	ADDR execC3dmulan (SL1Instr* instr);
	ADDR execC3dmulaa (SL1Instr* instr);
	ADDR execC3dmulana (SL1Instr* instr);
	ADDR execC3fftld (SL1Instr* instr);
	ADDR execC3fftst (SL1Instr* instr);
	ADDR execC3subc (SL1Instr* instr);
	ADDR execC3cs (SL1Instr* instr);
	ADDR execC3dshlli (SL1Instr* instr);
	ADDR execC3dshrli (SL1Instr* instr);
	ADDR execC3st (SL1Instr* instr);
	ADDR execC3sasubsh (SL1Instr* instr);
	ADDR execC3sasuba (SL1Instr* instr);
	ADDR execC3muls (SL1Instr* instr);
	ADDR execC3mulus (SL1Instr* instr);
	ADDR execC3saaddsh (SL1Instr* instr);
	ADDR execC3sasubs (SL1Instr* instr);
	ADDR execC3ffe (SL1Instr* instr);
	ADDR execC3nega (SL1Instr* instr);

};

#endif /*EXEC_H_*/

