/*
 *  File: sl1exec.cpp
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
#include "sl1exec.h"
#include "sl1reg.h"

SL1Exec::SL1Exec(SL1MMU& mmu, SL1Register& reg, ProcessStatus<SL1Instr>& status) : 
						BaseExec<SL1MMU, SL1Register, SL1Instr>(mmu, reg, status),
						_ffe(*(new SL1FFE(mmu))),_viterbi(*(new SL1VITERBI(mmu)))
						,_traceback(*(new SL1TRACEBACK(mmu))) {
	
}

/*sl1 core instr exec*/

ADDR SL1Exec::loopMode (ADDR curAddr, ADDR retAddr) {	
    if(reg().loopExecCntLv0()>=0) {
    	ADDR endpc = reg().loopEndPCLv0();
    	if(_checkLoopAddr(curAddr))
    	{
    			ADDR startpc = reg().loopStartPCLv0();
    			AppFatal(((retAddr<=(endpc+INSTR16)) && (retAddr>=startpc)),("Exec error:Branch or Jump out of loop(pc:0x%x)",curAddr));				
    			if((curAddr+INSTR16)!=endpc && curAddr!=endpc) 
    				AppFatal((retAddr!=(endpc+INSTR16)),("Exec error:Branch or Jump out of loop(pc:0x%x)",curAddr));
    	}
   		if(curAddr== endpc|| ((curAddr+INSTR16) == endpc && (curAddr+INSTR32==retAddr))) {
   			UINT cnt = reg().loopExecCntLv0() - 1;
   			reg().loopExecCntLv0(cnt);
   			if(cnt>0) {
   				retAddr = reg().loopStartPCLv0();
   			}
   			else {
   				reg().popExecCnt();
   				reg().popStartPC();
   				reg().popEndPC();  			
   				while(reg().loopExecCntLv0()) {
					endpc = reg().loopEndPCLv0();
   					if(curAddr==endpc || ((curAddr+INSTR16) == endpc && (curAddr+INSTR32==retAddr))) {
   						cnt = reg().loopExecCntLv0() - 1;
   						reg().loopExecCntLv0(cnt);
   						AppFatal((cnt<0xffff), ("Exec: Invalid loop count (@0x%08x)", curAddr));
   				  		if(cnt>0) {
   				       		retAddr = reg().loopStartPCLv0();
   				       		break;
   				  		}
   				  		else {
   				  			reg().popExecCnt();
   							reg().popStartPC();
   							reg().popEndPC();  
   				  		}
   				    }
   				    else {
   				    	break;
   				    }
   				}
   			}
   		}
   		//reg().loopCurIndex(loopCurIndex);
   }
   return retAddr;      
}

ADDR SL1Exec::execAbs16 (SL1Instr* instr) {
   WORD src_rd = reg().getGPR(instr->rd());
   WORD dest = (src_rd<0)? -src_rd : src_rd;
   reg().setGPR(instr->rd(),dest);
   return pc()+instr->instrsize();      
}

ADDR SL1Exec::execAdd (SL1Instr* instr) {
	 UWORD src1,src2,dest;
     src1 = reg().getGPR(instr->rs1());
     src2 = reg().getGPR(instr->rs2());
     dest = src1+src2;
     reg().setGPR(instr->rd(),dest);
     
     return pc()+instr->instrsize();     
}

ADDR SL1Exec::execAdd16 (SL1Instr* instr) {
     UWORD src1 = reg().getGPR(instr->rs1());
     UWORD src_rd = reg().getGPR(instr->rd());
     src_rd = src_rd+src1;
     reg().setGPR(instr->rd(),src_rd);
     return pc()+instr->instrsize();
}

ADDR SL1Exec::execAdd16i (SL1Instr* instr) {
     UINT uimm = instr->imm5() & 0x1f;
     WORD src_rd = reg().getGPR(instr->rd());
     src_rd = src_rd+uimm;
     reg().setGPR(instr->rd(),src_rd);
     return pc()+instr->instrsize();
}

ADDR SL1Exec::execAdd16sp (SL1Instr* instr) {
     ADDR ad1 = reg().getSP();
     INT simm = instr->imm5();
     ad1 += simm<<2;
     reg().setSP(ad1);
     return pc()+instr->instrsize();
}

ADDR SL1Exec::execAddi (SL1Instr* instr) {
    UWORD src1 = reg().getGPR(instr->rs1());
    WORD simm = instr->imm16();
    UWORD dest = src1+simm;
    reg().setGPR(instr->rd(),dest);
    return pc()+instr->instrsize();
}

ADDR SL1Exec::execAnd (SL1Instr* instr) {
    UWORD src1,src2,dest;
    src1 = reg().getGPR(instr->rs1());
    src2 = reg().getGPR(instr->rs2());
    dest = src1&src2;
    reg().setGPR(instr->rd(),dest);
    return pc()+instr->instrsize();     
}

ADDR SL1Exec::execAnd16 (SL1Instr* instr) {
    WORD src1 = reg().getGPR(instr->rs1());
    WORD src_rd = reg().getGPR(instr->rd());
    src_rd = src_rd & src1;
    reg().setGPR(instr->rd(),src_rd);
    return pc()+instr->instrsize();
}

ADDR SL1Exec::execAndi (SL1Instr* instr) {
   WORD src1 = reg().getGPR(instr->rs1());
   UINT uimm = instr->imm16() & 0xffff;
   WORD dest = src1&uimm;
   reg().setGPR(instr->rd(),dest);
   return pc()+instr->instrsize();
}

ADDR SL1Exec::execAnd16i (SL1Instr* instr) {
   WORD src1 = reg().getGPR(instr->rd());
   UINT uimm = instr->imm5() & 0x1f;
   WORD dest = src1&uimm;
   reg().setGPR(instr->rd(),dest);
   return pc()+instr->instrsize();
}

ADDR SL1Exec::execBreak (SL1Instr* instr) {
	EXEC_EXCEPTION(EVENT_BREAK, (0), ("Exec: unsupported sw exception"));
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execBreak16 (SL1Instr* instr) {
	EXEC_EXCEPTION(EVENT_BREAK, (0), ("Exec: unsupported sw exception"));
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execBreq (SL1Instr* instr) {
   WORD src1 = reg().getGPR(instr->rs0());
   WORD src2 = reg().getGPR(instr->rs1());
   ADDR target = pc();
   WORD offset = instr->offset()<<OFFSET_SHIFT_BR;
   UINT size = instr->instrsize();
   target += (src1==src2)? offset:size;
   return target;   
}

ADDR SL1Exec::execBrgez (SL1Instr* instr) {
   WORD src1 = reg().getGPR(instr->rs1());
   ADDR target = pc();
   WORD offset = instr->offset()<<OFFSET_SHIFT_BR;
   UINT size = instr->instrsize();
   target += (src1 >=0)? offset:size;
   return target;   
}

ADDR SL1Exec::execBrgtz (SL1Instr* instr) {
   WORD src1 = reg().getGPR(instr->rs1());
   ADDR target = pc();
   WORD offset = instr->offset()<<OFFSET_SHIFT_BR;
   UINT size = instr->instrsize();
   target += (src1 >0)? offset:size; 
   return target;   
}

ADDR SL1Exec::execBrlez (SL1Instr* instr) {
   WORD src1 = reg().getGPR(instr->rs1());
   ADDR target = pc();
   WORD offset = instr->offset()<<OFFSET_SHIFT_BR;
   UINT size = instr->instrsize();
   target += (src1<=0)? offset:size;
   return target;   
}

ADDR SL1Exec::execBrltz (SL1Instr* instr) {
   WORD src1 = reg().getGPR(instr->rs1());
   ADDR target = pc();
   WORD offset = instr->offset()<<OFFSET_SHIFT_BR;
   UINT size = instr->instrsize();
   target += (src1 <0)? offset:size;
   return target;   
}

ADDR SL1Exec::execBrne (SL1Instr* instr) {
   WORD src1 = reg().getGPR(instr->rs0());
   WORD src2 = reg().getGPR(instr->rs1());
   ADDR target = pc();
   WORD offset = instr->offset()<<OFFSET_SHIFT_BR;
   UINT size = instr->instrsize();
   target += (src1!=src2)? offset:size;
   return target;   
}

ADDR SL1Exec::execDcflush (SL1Instr* instr) {
	return pc() + instr->instrsize();
}

ADDR SL1Exec::execDepb (SL1Instr* instr) {
   WORD src = reg().getGPR(instr->rs1());
   WORD dest = reg().getGPR(instr->rd());
   UINT pos = instr->pos() & 0x1f;
   UINT width = instr->width() & 0x1f;
   AppFatal((width-1<=pos), ("depb: invalid position(%d) or width(%d), pc@0x%x", pos, width, pc()));
   UINT maskup = 0xffffffff;
   UINT maskdown = 0xffffffff;
   UINT mask = maskup<<width;
   src = src & (~mask);
   src = src<<(pos-width+1);
   maskup = maskup>>(31-pos);
   maskdown = maskdown<<(pos-width+1);
   mask = maskup & maskdown;
   dest = dest & (~mask);
   dest = dest | src;
   reg().setGPR(instr->rd(),dest);
   return pc()+instr->instrsize();    
}

ADDR SL1Exec::execExtrb (SL1Instr* instr) {
   WORD src = reg().getGPR(instr->rs1());
   UINT pos = instr->pos() & 0x1f;
   UINT width = instr->width() & 0x1f;
   UINT32 mask = 0xffffffff;
   if ((width-1)>pos)
      AppFatal((0), ("extrb: invalid position(%d) or width(%d), pc@0x%x", pos, width, pc()));
   src >>= (pos-width+1);   
   mask <<= width;
   src &= (~mask);
   if((src&(mask>>1))>0)
		src |= mask;	
	reg().setGPR(instr->rd(), src);
	return pc() + instr->instrsize();
}

ADDR SL1Exec::execExtrbu (SL1Instr* instr) {
    INT32 rs = reg().getGPR(instr->rs1());
	INT32 pos = instr->pos() & 0x1f;	
	INT32 width = instr->width() & 0x1f;	
	UINT32 mask = 0xffffffff;
	if((width-1)>pos){
		AppFatal((0), ("Extrbu: invalid position(%d) or width(%d), pc@0x%x", pos, width, pc()));
	}	
	rs >>= (pos-width+1);
	if(width<32)
		mask <<= width;
	else
		mask = 0;
	rs &= (~mask);
	reg().setGPR(instr->rd(),rs);
	return pc() + instr->instrsize(); 
}

ADDR SL1Exec::execInvalid (SL1Instr* instr) {
	EXEC_EXCEPTION(EVENT_ILLEGAL_INS, (0), ("Exec: invalid instruction exception"));	
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execJp (SL1Instr* instr) {
    ADDR offset = ((pc() + instr->instrsize()) & 0xf8000000) | (instr->instr_index()<<OFFSET_SHIFT_JP);
    return offset;
}

ADDR SL1Exec::execJplnk (SL1Instr* instr) {
    ADDR offset = ((pc() + instr->instrsize()) & 0xf8000000) | (instr->instr_index()<<OFFSET_SHIFT_JP);
    ADDR ra = pc() + instr->instrsize();
    reg().setRA(ra);
    return offset;
}

ADDR SL1Exec::execJr (SL1Instr* instr) {
    ADDR target = reg().getJA();
    return target;
}

ADDR SL1Exec::execJr16 (SL1Instr* instr) {
    ADDR target = reg().getJA();
    return target;
}

ADDR SL1Exec::execJr16lnk (SL1Instr* instr) {
    ADDR target = reg().getJA();
    ADDR ra = pc() + instr->instrsize();
    reg().setRA(ra);
    return target;
}

ADDR SL1Exec::execJrlnk (SL1Instr* instr) {
    ADDR target = reg().getJA();
    ADDR ra = pc() + instr->instrsize();
    reg().setRA(ra);
    return target;
}

ADDR SL1Exec::execLdb (SL1Instr* instr) {
    ADDR addr = reg().getGPR(instr->rs1()) + instr->offset();
	WORD data = mmu().readByte(addr);
	reg().setGPR(instr->rd(),data); // sign-extended
	return pc() + instr->instrsize(); 
}

ADDR SL1Exec::execLdh (SL1Instr* instr) {
    ADDR addr = reg().getGPR(instr->rs1()) + instr->offset();
	WORD data = mmu().readHword(addr);
	reg().setGPR(instr->rd(),data); // sign-extended
	return pc() + instr->instrsize(); 
}

ADDR SL1Exec::execLdlnk (SL1Instr* instr) {
	return pc() + instr->instrsize();
}

ADDR SL1Exec::execLdub (SL1Instr* instr) {
    ADDR addr = reg().getGPR(instr->rs1()) + instr->offset();
	WORD data = mmu().readByte(addr) & 0xff;
	reg().setGPR(instr->rd(),data); // sign-extended
	return pc() + instr->instrsize(); 
}

ADDR SL1Exec::execLdub16rs (SL1Instr* instr) {
    ADDR addr = reg().getGPR(instr->rd());
	WORD data = mmu().readByte(addr) & 0xff;
	reg().setGPR(instr->rd(),data); // sign-extended
	return pc() + instr->instrsize(); 
}

ADDR SL1Exec::execLduh (SL1Instr* instr) {
    ADDR addr = reg().getGPR(instr->rs1()) + instr->offset();;
	WORD data = mmu().readHword(addr) & 0xffff;
	reg().setGPR(instr->rd(),data); // sign-extended
	return pc() + instr->instrsize(); 
}

ADDR SL1Exec::execLduh16rs  (SL1Instr* instr) {
    ADDR addr = reg().getGPR(instr->rd());
	WORD data = mmu().readHword(addr) & 0xffff;
	reg().setGPR(instr->rd(),data); // sign-extended
	return pc() + instr->instrsize(); 
}

ADDR SL1Exec::execLdw (SL1Instr* instr) {
    ADDR addr = reg().getGPR(instr->rs1()) + instr->offset();
	WORD data = mmu().readWord(addr);
	reg().setGPR(instr->rd(),data); // sign-extended
	return pc() + instr->instrsize();
    
}

ADDR SL1Exec::execLdw16 (SL1Instr* instr) {
    ADDR addr = reg().getGPR(instr->rs1());
	WORD data = mmu().readWord(addr);
	reg().setGPR(instr->rd(),data); // sign-extended
	return pc() + instr->instrsize();
    
}

ADDR SL1Exec::execLoop (SL1Instr* instr) {
	ADDR loopStart = pc()+instr->instrsize();
	AppFatal((instr->loop_index()<REG_LOOP_CUR_SIZE),("invalid loop index(%d)\n",instr->loop_index()));
	UINT index = instr->loop_index();
	UINT cnt = reg().getLOOP_CNT(index);
	ADDR endPC = (instr->instr_offset()<<OFFSET_SHIFT_BR)+pc();
	if(cnt>0) { //if cnt=0, loop is effect is ignored, pc = endpc+2
		AppFatal((instr->instr_offset()>0), ("Exec: Invalid instr offset (empty loop?)"));
		reg().pushExecCnt(cnt);
		reg().pushStartPC(loopStart);
		reg().pushEndPC(endPC);
		return loopStart;
	}
	else {
		return (endPC + INT16_BYTE);
	}
}

ADDR SL1Exec::execMcabs (SL1Instr* instr) {
    WORD src,dest;
	src = reg().getGPR(instr->rs1());
    dest = (src<0)? -src : src;
    reg().setGPR(instr->rd(),dest);
    return pc() + instr->instrsize();    
}

ADDR SL1Exec::execMcreq (SL1Instr* instr) {
	WORD src1,src2,dest;
    src1 = reg().getGPR(instr->rs1());
    src2 = reg().getGPR(instr->rs2());
    dest = (src1 == src2)? src1:src2;
    reg().setGPR(instr->rd(),dest);
    return pc() + instr->instrsize();
}

ADDR SL1Exec::execMcrge (SL1Instr* instr) {
    WORD src1,src2,dest;
  
	if(instr->unsigned_flag()==1)
	{
		src1 = reg().getGPR(instr->rs1());
    	src2 = reg().getGPR(instr->rs2());
    	dest = ((unsigned)src1 >= (unsigned)src2)? src1:src2;
	}
	else
	{    
		src1 = reg().getGPR(instr->rs1());
    	src2 = reg().getGPR(instr->rs2());
    	dest = (src1 >= src2)? src1:src2;
	}
	reg().setGPR(instr->rd(),dest);
  
    return pc() + instr->instrsize();
}

ADDR SL1Exec::execMcrgt (SL1Instr* instr) {
    WORD src1,src2,dest;
   
	if(instr->unsigned_flag()==1)
	{
		src1 = reg().getGPR(instr->rs1());
    	src2 = reg().getGPR(instr->rs2());
    	dest = ((unsigned)src1 > (unsigned)src2)? src1:src2;
	}
	else
	{    
		src1 = reg().getGPR(instr->rs1());
    	src2 = reg().getGPR(instr->rs2());
    	dest = (src1 > src2)? src1:src2;
	}
	reg().setGPR(instr->rd(),dest);
 
    return pc() + instr->instrsize();
}

ADDR SL1Exec::execMcrle (SL1Instr* instr) {
    WORD src1,src2,dest;

	if(instr->unsigned_flag()==1)
	{
		src1 = reg().getGPR(instr->rs1());
    	src2 = reg().getGPR(instr->rs2());
    	dest = ((unsigned)src1 <= (unsigned)src2)? src1:src2;
	}
	else
	{    
		src1 = reg().getGPR(instr->rs1());
    	src2 = reg().getGPR(instr->rs2());
    	dest = (src1 <= src2)? src1:src2;
	}
	reg().setGPR(instr->rd(),dest);

    return pc() + instr->instrsize();
}

ADDR SL1Exec::execMcrlt (SL1Instr* instr) {
    WORD src1,src2,dest;
   
	if(instr->unsigned_flag()==1)
	{
		src1 = reg().getGPR(instr->rs1());
    	src2 = reg().getGPR(instr->rs2());
    	dest = ((unsigned)src1 < (unsigned)src2)? src1:src2;
	}
	else
	{    
		src1 = reg().getGPR(instr->rs1());
    	src2 = reg().getGPR(instr->rs2());
    	dest = (src1 < src2)? src1:src2;
	}
	reg().setGPR(instr->rd(),dest);

    return pc() + instr->instrsize();
}

ADDR SL1Exec::execMcrne (SL1Instr* instr) {
   WORD src1,src2,dest;

    src1 = reg().getGPR(instr->rs1());
    src2 = reg().getGPR(instr->rs2());
    dest = (src1 != src2)? src1:src2;
    reg().setGPR(instr->rd(),dest);

    return pc() + instr->instrsize();

}

ADDR SL1Exec::execMczceq (SL1Instr* instr) {
	WORD src1,src2,dest;
    src1 = reg().getGPR(instr->rs1());
    src2 = reg().getGPR(instr->rs2());
    dest = (src1 == 0)? src2:0;
    reg().setGPR(instr->rd(),dest);

    return pc() + instr->instrsize();   
}

ADDR SL1Exec::execMczcge (SL1Instr* instr) {
    WORD src1,src2,dest;
   
	if(instr->unsigned_flag()==1)
	{
		src1 = reg().getGPR(instr->rs1());
    	src2 = reg().getGPR(instr->rs2());
    	dest = ((unsigned)src1 >=0 )? src2:0;
	}
	else
	{    
		src1 = reg().getGPR(instr->rs1());
    	src2 = reg().getGPR(instr->rs2());
    	dest = (src1 >= 0)? src2:0;
	}
	reg().setGPR(instr->rd(),dest);
 
    return pc() + instr->instrsize();
}

ADDR SL1Exec::execMczcgt (SL1Instr* instr) {
    WORD src1,src2,dest;
	if(instr->unsigned_flag()==1)
	{
		src1 = reg().getGPR(instr->rs1());
    	src2 = reg().getGPR(instr->rs2());
    	dest = ((unsigned)src1 >0 )? src2:0;
	}
	else
	{    
		src1 = reg().getGPR(instr->rs1());
    	src2 = reg().getGPR(instr->rs2());
    	dest = (src1 > 0)? src2:0;
	}
	reg().setGPR(instr->rd(),dest);
 
    return pc() + instr->instrsize();
}

ADDR SL1Exec::execMczcle (SL1Instr* instr) {
    WORD src1,src2,dest;
	if(instr->unsigned_flag()==1)
	{
		src1 = reg().getGPR(instr->rs1());
    	src2 = reg().getGPR(instr->rs2());
    	dest = ((unsigned)src1 <=0 )? src2:0;
	}
	else
	{    
		src1 = reg().getGPR(instr->rs1());
    	src2 = reg().getGPR(instr->rs2());
    	dest = (src1 <= 0)? src2:0;
	}
	reg().setGPR(instr->rd(),dest);

    return pc() + instr->instrsize();
}

ADDR SL1Exec::execMczclt (SL1Instr* instr) {
    WORD src1,src2,dest;
	if(instr->unsigned_flag()==1)
	{
		src1 = reg().getGPR(instr->rs1());
    	src2 = reg().getGPR(instr->rs2());
    	dest = ((unsigned)src1 < 0 )? src2:0;
	}
	else
	{    
		src1 = reg().getGPR(instr->rs1());
    	src2 = reg().getGPR(instr->rs2());
    	dest = (src1 < 0)? src2:0;
	}
	reg().setGPR(instr->rd(),dest);

    return pc() + instr->instrsize();
}

ADDR SL1Exec::execMczcne (SL1Instr* instr) {
    WORD src1,src2,dest;
    src1 = reg().getGPR(instr->rs1());
    src2 = reg().getGPR(instr->rs2());
    dest = (src1 != 0)? src2:0;
    reg().setGPR(instr->rd(),dest);

    return pc() + instr->instrsize();   
}

ADDR SL1Exec::execMczeq (SL1Instr* instr) {
    WORD src1,src2;
    src1 = reg().getGPR(instr->rs1());
    src2 = reg().getGPR(instr->rs2());
    if(src1==0)
		reg().setGPR(instr->rd(),src2); 

   	return pc() + instr->instrsize();
}

ADDR SL1Exec::execMczge (SL1Instr* instr) {
	WORD src1,src2;
	src2 = reg().getGPR(instr->rs2());
	if(instr->unsigned_flag()==1)	
	{
   		src1 = reg().getGPR(instr->rs1());
   		if((unsigned)src1>=0)
 			reg().setGPR(instr->rd(),src2);
	}
	else
	{
   		src1 = reg().getGPR(instr->rs1());
   		if(src1>=0)
 			reg().setGPR(instr->rd(),src2);
	}  
	return pc() + instr->instrsize();
}

ADDR SL1Exec::execMczgt (SL1Instr* instr) {
	WORD src1,src2;
	src2 = reg().getGPR(instr->rs2());
	if(instr->unsigned_flag()==1)	
	{
   		src1 = reg().getGPR(instr->rs1());
   		if((unsigned)src1>0)
 			reg().setGPR(instr->rd(),src2);
	}
	else
	{
   		src1 = reg().getGPR(instr->rs1());
   		if(src1>0)
 			reg().setGPR(instr->rd(),src2);
	}   

	return pc() + instr->instrsize();
}

ADDR SL1Exec::execMczle (SL1Instr* instr) {
	WORD src1,src2;
	src2 = reg().getGPR(instr->rs2());
	if(instr->unsigned_flag()==1)	
	{
   		src1 = reg().getGPR(instr->rs1());
   		if((unsigned)src1<=0)
 			reg().setGPR(instr->rd(),src2);
	}
	else
	{
   		src1 = reg().getGPR(instr->rs1());
   		if(src1<=0)
 			reg().setGPR(instr->rd(),src2);
	}

	return pc() + instr->instrsize();
}

ADDR SL1Exec::execMczlt (SL1Instr* instr) {
    WORD src1,src2;
	src2 = reg().getGPR(instr->rs2());
	if(instr->unsigned_flag()==1)	
	{
   		src1 = reg().getGPR(instr->rs1());
   		if((unsigned)src1<0)
 			reg().setGPR(instr->rd(),src2);
	}
	else
	{
   		src1 = reg().getGPR(instr->rs1());
   		if(src1<0)
 			reg().setGPR(instr->rd(),src2);
	}   

   return pc() + instr->instrsize();
}

ADDR SL1Exec::execMczne (SL1Instr* instr) {
    WORD src1,src2;
    src1 = reg().getGPR(instr->rs1());
    src2 = reg().getGPR(instr->rs2());
    if(src1!=0)
		reg().setGPR(instr->rd(),src2); 
   	return pc() + instr->instrsize();
}

ADDR SL1Exec::execMczneq (SL1Instr* instr) {
	WORD src1,src2,dest;
	src1 = reg().getGPR(instr->rs1());
	src2 = reg().getGPR(instr->rs2());
	dest = (src1 == 0)? src2:-src2;
	reg().setGPR(instr->rd(),dest);

   	return pc() + instr->instrsize();
}

ADDR SL1Exec::execMcznge (SL1Instr* instr) {
   	WORD src1,src2,dest;
	src2 = reg().getGPR(instr->rs2());
	if(instr->unsigned_flag()==1)	
	{
		src1 = reg().getGPR(instr->rs1());
   		dest = ((unsigned)src1 >= 0)? src2:-src2;
	}
	else
	{
		src1 = reg().getGPR(instr->rs1());
   		dest = (src1 >= 0)? src2:-src2;
	}    
	reg().setGPR(instr->rd(),dest);

   	return pc() + instr->instrsize();
}

ADDR SL1Exec::execMczngt (SL1Instr* instr) {
   	WORD src1,src2,dest;
	src2 = reg().getGPR(instr->rs2());
	if(instr->unsigned_flag()==1)	
	{
		src1 = reg().getGPR(instr->rs1());
   		dest = ((unsigned)src1 > 0)? src2:-src2;
	}
	else
	{
		src1 = reg().getGPR(instr->rs1());
   		dest = (src1 > 0)? src2:-src2;
	}    
	reg().setGPR(instr->rd(),dest);

   return pc() + instr->instrsize();
}

ADDR SL1Exec::execMcznle (SL1Instr* instr) {
   	WORD src1,src2,dest;
	src2 = reg().getGPR(instr->rs2());
	if(instr->unsigned_flag()==1)	
	{
		src1 = reg().getGPR(instr->rs1());
   		dest = ((unsigned)src1 <= 0)? src2:-src2;
	}
	else
	{
		src1 = reg().getGPR(instr->rs1());
   		dest = (src1 <= 0)? src2:-src2;
	}    
	reg().setGPR(instr->rd(),dest);

   	return pc() + instr->instrsize();
}

ADDR SL1Exec::execMcznlt (SL1Instr* instr) {
    WORD src1,src2,dest;
	src2 = reg().getGPR(instr->rs2());
	if(instr->unsigned_flag()==1)	
	{
		src1 = reg().getGPR(instr->rs1());
   		dest = ((unsigned)src1 < 0)? src2:-src2;
	}
	else
	{
		src1 = reg().getGPR(instr->rs1());
   		dest = (src1 < 0)? src2:-src2;
	}    
	reg().setGPR(instr->rd(),dest);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execMcznne (SL1Instr* instr) {
	WORD src1,src2,dest;
	src1 = reg().getGPR(instr->rs1());
	src2 = reg().getGPR(instr->rs2());
	dest = (src1 != 0)? src2:-src2;
	reg().setGPR(instr->rd(),dest);
   	return pc() + instr->instrsize();
}

ADDR SL1Exec::execMv16 (SL1Instr* instr) {
   WORD src = reg().getGPR(instr->rs1());
   reg().setGPR(instr->rd(),src);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execMv16i (SL1Instr* instr) {
   WORD simm = instr->imm5();
   reg().setGPR(instr->rd(),simm);
   return pc() + instr->instrsize();  
}

ADDR SL1Exec::execMvfc (SL1Instr* instr) {
   UWORD cs = reg().getCTRL(instr->cs1());
   reg().setGPR(instr->rd(),cs);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execMvfc16 (SL1Instr* instr) {
   UWORD cs = reg().getCTRL(instr->cs1());
   reg().setGPR(instr->rd(),cs);
   return pc() + instr->instrsize();   
}

ADDR SL1Exec::execMvtc (SL1Instr* instr) {
   UWORD src = reg().getGPR(instr->rs1());
   reg().setCTRL(instr->cd(),src);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execMvtc16 (SL1Instr* instr) {
   UWORD src = reg().getGPR(instr->rs1());
   reg().setCTRL(instr->cd(),src);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execMvtci (SL1Instr* instr) {
	UWORD uimm = instr->imm10();
	reg().setCTRL(instr->cd(),uimm);
	return pc() + instr->instrsize();
}

ADDR SL1Exec::execMvupi (SL1Instr* instr) {
   WORD simm = instr->imm16();
   simm = simm << 16;
   reg().setGPR(instr->rd(),simm);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execNop (SL1Instr* instr) {
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execNop16 (SL1Instr* instr) {
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execNor (SL1Instr* instr) {
	WORD src1,src2,dest;
	src1 = reg().getGPR(instr->rs1());
	src2 = reg().getGPR(instr->rs2());
	dest = ~(src1 | src2);
	reg().setGPR(instr->rd(),dest);

   return pc() + instr->instrsize();
}

ADDR SL1Exec::execInv16 (SL1Instr* instr) {
   WORD src_rd = reg().getGPR(instr->rd());
   src_rd = ~(src_rd | 0);
   reg().setGPR(instr->rd(),src_rd);
   return pc() + instr->instrsize();  
}

ADDR SL1Exec::execNori (SL1Instr* instr) {
   UINT uimm = instr->imm16() & 0xffff;
   WORD src = reg().getGPR(instr->rs1());
   WORD dest = ~(src | uimm);
   reg().setGPR(instr->rd(),dest);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execOr (SL1Instr* instr) {
	WORD src1,src2,dest;
	src1 = reg().getGPR(instr->rs1());
	src2 = reg().getGPR(instr->rs2());
	dest = src1 | src2;
	reg().setGPR(instr->rd(),dest);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execOr16 (SL1Instr* instr) {
   WORD src1 = reg().getGPR(instr->rs1());
   WORD src_rd = reg().getGPR(instr->rd());
   src_rd = src_rd | src1;
   reg().setGPR(instr->rd(),src_rd);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execOri (SL1Instr* instr) {
   UINT uimm = instr->imm16() & 0xffff;
   WORD src = reg().getGPR(instr->rs1());
   WORD dest = src | uimm;
   reg().setGPR(instr->rd(),dest);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execOr16i (SL1Instr* instr) {
   UINT uimm = instr->imm5() & 0x1f;
   WORD src = reg().getGPR(instr->rd());
   WORD dest = src | uimm;
   reg().setGPR(instr->rd(),dest);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execPop16 (SL1Instr* instr) {
	ADDR ad1 = reg().getSP();
	ad1 += (instr->imm5() & 0x1f)<<2;
	WORD src = mmu().readWord(ad1);
	reg().setGPR(instr->rd(),src);
	return pc() + instr->instrsize();
}

ADDR SL1Exec::execPush16 (SL1Instr* instr) {
   WORD src;
   ADDR ad1 = reg().getSP();
   ad1 += (instr->imm5() & 0x1f)<<2;
   src = reg().getGPR(instr->rs0());   		
   mmu().writeWord(ad1,src);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execRet (SL1Instr* instr) {
    ADDR ad = reg().getRA();
    pc(ad);
    return pc();
}

ADDR SL1Exec::execRet16 (SL1Instr* instr) {
    ADDR ad = reg().getRA();
    pc(ad);
    return pc();
}

ADDR SL1Exec::execRete16 (SL1Instr* instr) {
	status().event(EVENT_ERETURN);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execRete (SL1Instr* instr) {
	status().event(EVENT_ERETURN);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execSetlt (SL1Instr* instr) {
    WORD src1,src2,dest;
   	src1 = reg().getGPR(instr->rs1());
    src2 = reg().getGPR(instr->rs2());
    dest = (src1 < src2)? 1:0;
    reg().setGPR(instr->rd(),dest);
    return pc() + instr->instrsize();
}

ADDR SL1Exec::execSetlti (SL1Instr* instr) {
    WORD src1 = reg().getGPR(instr->rs1());
    WORD simm = instr->imm16();
    WORD dest = (src1 < simm)? 1:0;
    reg().setGPR(instr->rd(),dest);
    return pc() + instr->instrsize();   
}

ADDR SL1Exec::execSetltu (SL1Instr* instr) {
    UINT src1,src2;
    WORD dest;
   	src1 = reg().getGPR(instr->rs1());
    src2 = reg().getGPR(instr->rs2());	
    dest = (src1 < src2)? 1:0;
    reg().setGPR(instr->rd(),dest);
    return pc() + instr->instrsize();
}

ADDR SL1Exec::execSetltui (SL1Instr* instr) {
    UINT src1 = reg().getGPR(instr->rs1());
    UINT uimm = instr->imm16();
    WORD dest = (src1 < uimm)? 1:0;
    reg().setGPR(instr->rd(),dest);
    return pc() + instr->instrsize();
}

ADDR SL1Exec::execShll (SL1Instr* instr) {
	WORD src1,dest;
	UINT src2 = reg().getGPR(instr->rs2());
   	src1 = reg().getGPR(instr->rs1());
    dest = src1 << src2;
    reg().setGPR(instr->rd(),dest);
    return pc() + instr->instrsize();
}

ADDR SL1Exec::execShll16 (SL1Instr* instr) {
   WORD src_rd = reg().getGPR(instr->rd());
   UINT src2 = reg().getGPR(instr->rs1());
   src_rd = src_rd << src2;
   reg().setGPR(instr->rd(),src_rd);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execShll16i (SL1Instr* instr) {
   UINT uimm = instr->imm5();
   WORD src_rd = reg().getGPR(instr->rd());
   src_rd = src_rd << uimm;
   reg().setGPR(instr->rd(),src_rd);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execShlli (SL1Instr* instr) {
   UINT uimm = instr->imm16();
   WORD src = reg().getGPR(instr->rs1());
   WORD dest = src << uimm;
   reg().setGPR(instr->rd(),dest);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execShra (SL1Instr* instr) {
   	WORD src1,dest;
   	UINT src2 = reg().getGPR(instr->rs2());
	src1 = reg().getGPR(instr->rs1());
   	dest = src1 >> src2;
   	reg().setGPR(instr->rd(),dest);
 	return pc() + instr->instrsize();  
}

ADDR SL1Exec::execShra16 (SL1Instr* instr) {
   WORD src_rd = reg().getGPR(instr->rd());
   UINT src2 = reg().getGPR(instr->rs1());
   src_rd = src_rd >> src2;
   reg().setGPR(instr->rd(),src_rd);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execShra16i (SL1Instr* instr){
   UINT uimm = instr->imm5();
   WORD src_rd = reg().getGPR(instr->rd());
   src_rd = src_rd >> uimm;
   reg().setGPR(instr->rd(),src_rd);
   return pc() + instr->instrsize();
   	
}

ADDR SL1Exec::execShrai (SL1Instr* instr) {
   UINT uimm = instr->imm16();
   WORD src = reg().getGPR(instr->rs1());
   WORD dest = src >> uimm;
   reg().setGPR(instr->rd(),dest);
   return pc() + instr->instrsize();
   
}

ADDR SL1Exec::execShrl (SL1Instr* instr) {
	UINT src1,dest;
	UINT src2 = reg().getGPR(instr->rs2());
	src1 = reg().getGPR(instr->rs1());
	dest = src1 >> src2;
	reg().setGPR(instr->rd(),dest);
	return pc() + instr->instrsize(); 
}

ADDR SL1Exec::execShrl16 (SL1Instr* instr) {
   UINT src_rd = reg().getGPR(instr->rd());
   UINT src2 = reg().getGPR(instr->rs1());
   src_rd = src_rd >> src2;
   reg().setGPR(instr->rd(),src_rd);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execShrl16i (SL1Instr* instr) {
   UINT uimm = instr->imm5();
   UINT src_rd = reg().getGPR(instr->rd());
   src_rd = src_rd >> uimm;
   reg().setGPR(instr->rd(),src_rd);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execShrli (SL1Instr* instr) {
   UINT uimm = instr->imm16();
   UINT src = reg().getGPR(instr->rs1());
   UINT dest = src >> uimm;
   reg().setGPR(instr->rd(),dest);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execStb (SL1Instr* instr) {
   ADDR ad1 = reg().getGPR(instr->rs1()) + instr->offset();
   BYTE src = reg().getGPR(instr->rs0());
   mmu().writeByte(ad1,src);
   return pc() + instr->instrsize();   
}

ADDR SL1Exec::execStc (SL1Instr* instr) {
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execSth (SL1Instr* instr) {
   ADDR ad1 = reg().getGPR(instr->rs1()) + instr->offset();
   HWORD src = reg().getGPR(instr->rs0());
   mmu().writeHword(ad1,src);
   return pc() + instr->instrsize(); 
}

ADDR SL1Exec::execStw (SL1Instr* instr) {
   ADDR ad1 = reg().getGPR(instr->rs1()) + instr->offset();
   WORD src = reg().getGPR(instr->rs0());
   mmu().writeWord(ad1,src);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execStw16 (SL1Instr* instr) {
   ADDR ad1 = reg().getGPR(instr->rs1());
   WORD src = reg().getGPR(instr->rs0());
   mmu().writeWord(ad1,src);
   return pc() + instr->instrsize();
}

ADDR SL1Exec::execSub (SL1Instr* instr) {
   	WORD src1,src2,dest;
	src1 = reg().getGPR(instr->rs1());
	src2 = reg().getGPR(instr->rs2());
	dest = src1-src2;
	reg().setGPR(instr->rd(),dest);
   	return pc() + instr->instrsize();
}

ADDR SL1Exec::execSub16 (SL1Instr* instr) {
   WORD src1 = reg().getGPR(instr->rs1());
   WORD src_rd = reg().getGPR(instr->rd());
   src_rd = src_rd-src1;
   reg().setGPR(instr->rd(),src_rd);
   return pc()+instr->instrsize();
}

ADDR SL1Exec::execSub16i (SL1Instr* instr) {
   UINT uimm = instr->imm5() & 0x1f;
   WORD src_rd = reg().getGPR(instr->rd());
   src_rd = src_rd-uimm;
   reg().setGPR(instr->rd(),src_rd);
   return pc()+instr->instrsize();
}

ADDR SL1Exec::execSyscall (SL1Instr* instr) {
	VRuntime<SL1MMU, SL1Register, SL1Instr> vrt(mmu(), reg(), status());
	UINT ret = vrt.syscall(instr->sysc_id());
	status().state(ret);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execXor (SL1Instr* instr) {
	WORD src1,src2,dest;
	src1 = reg().getGPR(instr->rs1());
	src2 = reg().getGPR(instr->rs2());
	dest = src1 ^ src2;
	reg().setGPR(instr->rd(),dest);
   	return pc()+instr->instrsize();
}

ADDR SL1Exec::execXor16 (SL1Instr* instr) {
   WORD src1 = reg().getGPR(instr->rs1());
   WORD src_rd = reg().getGPR(instr->rd());
   src_rd = src_rd ^ src1;
   reg().setGPR(instr->rd(),src_rd);
   return pc()+instr->instrsize();
}

ADDR SL1Exec::execXori (SL1Instr* instr) {
   WORD src1 = reg().getGPR(instr->rs1());
   UINT uimm = instr->imm16() & 0xffff;
   WORD dest = src1^uimm;
   reg().setGPR(instr->rd(),dest);
   return pc()+instr->instrsize();
}

ADDR SL1Exec::execXor16i (SL1Instr* instr) {
   WORD src1 = reg().getGPR(instr->rd());
   UINT uimm = instr->imm5() & 0x1f;
   WORD dest = src1^uimm;
   reg().setGPR(instr->rd(),dest);
   return pc()+instr->instrsize();
}

ADDR SL1Exec::execBr16eqz (SL1Instr* instr) {
   WORD src0 = reg().getGPR(instr->rs0());
   ADDR target = pc();
   WORD offset = (instr->offset()&0x1f)<<OFFSET_SHIFT_BR_16;
   UINT size = instr->instrsize();
   target += (src0==0)? offset:size;
   return target;   
}

ADDR SL1Exec::execBr16nez (SL1Instr* instr) {
   WORD src0 = reg().getGPR(instr->rs0());
   ADDR target = pc();
   WORD offset = (instr->offset() & 0x1f)<<OFFSET_SHIFT_BR_16;
   UINT size = instr->instrsize();
   target += (src0!=0)? offset:size;  
   return target;   
}

/*sl1 bb instr exec*/
ADDR SL1Exec::execC3saadds (SL1Instr* instr) {
	WORD src1 = reg().getGPR(instr->rs1());
	WORD src2 = reg().getGPR(instr->rs2());
	UWORD imm5 = instr->imm5() & 0x1f;
	DWORD dest = ((DWORD)(src1)+(DWORD)(src2))<<imm5;
	dest = _saturateGPR32(dest);	
	reg().setGPR(instr->rd(), (WORD)dest);
    return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3saadda (SL1Instr* instr) {
	AppFatal((instr->as1() != instr->as2()), ("c3.saadd.a: as1's index and as2's index is same ,pc@0x%x", pc()));
	ADDR ad1 = reg().getAR(instr->as1());
	ADDR ad2 = reg().getAR(instr->as2());
	WORD src1 = mmu().readSRAMWordByDmac(ad1,1);
	WORD src2 = mmu().readSRAMWordByDmac(ad2,2);
	DWORD dest = ((DWORD)src1)+src2;	
	dest = _saturateGPR32(dest);
	reg().setGPR(instr->rd(), (WORD)dest);
	_updateSize(instr->as1(),instr->am1(),WORDLENGTH);
	_updateSize(instr->as2(),instr->am2(),WORDLENGTH);
	return pc()+instr->instrsize();  
}

ADDR SL1Exec::execC3aadda (SL1Instr* instr) {
	DWORD src0 = reg().getACC(instr->accs1());
	DWORD dest = reg().getACC(instr->acc());
	dest += src0;
	dest = _calAccResult(dest,instr->acm()&SATURATION_MODE,instr->M());
	reg().setACC(instr->acc(),dest);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3shav (SL1Instr* instr) {
	INT sft_value = reg().getGPR(instr->rs1()) & 0x3f;
	DWORD src = reg().getACC(instr->acc());
	DWORD dest;
	
	if(sft_value & 0x20)
	{
		if(sft_value == 0x20)
			sft_value = 32;
		else
			sft_value = (-sft_value)&0x1f;
		dest = src >> sft_value;
		dest = _calAccResult(dest,instr->acm()&SATURATION_MODE ,instr->M());
	}	
	else
	{
		dest = _calSatShiftLeft(src,sft_value,instr->acm(),instr->M());	
	}
	reg().setACC(instr->acc(),dest);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3bitr (SL1Instr* instr) {
	UINT uimm = instr->imm5() & 0x1f;
	WORD dest = reg().getGPR(instr->rs1());
	switch(instr->b_mode()){
		case CLEAR:
		   dest = dest & (~(0x0001<<uimm));
		   break;		    
		case SET:
		   dest = dest | (0x0001<<uimm);
		   break;
		case INVERT:
		   dest = dest ^ (0x0001<<uimm);
		   break;
		case NOP:
		   break;
		default:
		AppFatal((0), ("c3bitr: invalid b_mode(%d),pc@0x%x", instr->b_mode(), pc()));
	}
	reg().setGPR(instr->rd(),dest);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3sadda (SL1Instr* instr) {
	DWORD src1;
	if(instr->mode())
		src1 = reg().getGPR(instr->rs1());
	else
		src1 = reg().getGPR16(instr->rs1());
	if(instr->N())
	   src1 = -src1;
	UINT uimm = instr->imm4() & 0x0f;
	src1 = src1 << uimm;
	src1 = _calSaTemp40(src1,instr->acm());
	
	DWORD dest = reg().getACC(instr->acc());
	dest = dest+src1;
	dest = _calAccResult(dest,instr->acm()&SATURATION_MODE,instr->M());
	reg().setACC(instr->acc(),dest);
	return pc()+instr->instrsize();	   
}

ADDR SL1Exec::execC3saddaa (SL1Instr* instr) {
	ADDR ad1 = reg().getAR(instr->as1());
	UINT dtype;
	UINT uimm = instr->imm4() & 0x0f;
	DWORD src1;
	if(instr->mode())
	{
		src1 = mmu().readSRAMWordByDmac(ad1,1);
		dtype = WORDLENGTH;
	}
	else
	{
		src1 = mmu().readSRAMHword(ad1,1);
		dtype = HALFLENGTH;	
	}		
	if(instr->N())
	   src1 = -src1;
	src1 = src1<<uimm;
	src1 = _calSaTemp40(src1,instr->acm());
	
	DWORD dest = reg().getACC(instr->acc());
	dest = dest+src1;
	dest = _calAccResult(dest,instr->acm()&SATURATION_MODE,instr->M());
	reg().setACC(instr->acc(),dest);
	_updateSize(instr->as1(),instr->am1(),dtype);
	return pc()+instr->instrsize();	  
}

ADDR SL1Exec::execC3ld (SL1Instr* instr) {
	ADDR ad1 = reg().getAR(instr->as1());
	WORD dest;
	INT type;
	switch(instr->dtype()){
		case BYTES:
		   dest = mmu().readByte(ad1);
		   type = 1;
		   break;
		case UBYTES:
		   dest = mmu().readByte(ad1);
		   dest = dest & 0xff;
		   type = 1;
		   break;
		case HALF:
		   dest = mmu().readHword(ad1);
		   type = 2;
		   break;
		case UHALF:
		   dest = mmu().readHword(ad1);
		   dest = dest & 0xffff;
		   type = 2;
		   break;
		case WORDS:
		   dest = mmu().readWord(ad1);
		   type = 4;
		   break;
		default:	
		AppFatal((0), ("c3.ld: invalid dtype(%d),pc@0x%x", instr->dtype(), pc()));	
	}
	reg().setGPR(instr->rd(),dest);
	_updateSize(instr->as1(),instr->am1(),type);
	return pc()+instr->instrsize();		
}

ADDR SL1Exec::execC3mac (SL1Instr* instr) {
	WORD src1 = reg().getGPR16(instr->rs1());
	WORD src2 = reg().getGPR16(instr->rs2());
	DWORD dest = reg().getACC(instr->acc());
	if(instr->acm() & SRC_SHF)
	   dest += ((DWORD)src1*src2)<<1;
	else	   
	   dest += (DWORD)src1*src2; 
	dest = _calAccResult(dest,instr->acm(),instr->M());
	reg().setACC(instr->acc(),dest);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3maca (SL1Instr* instr) {
	AppFatal((instr->as1() != instr->as2()), ("c3.mac.a: as1's index and as2's index is same ,pc@0x%x", pc()));
	ADDR ad1 = reg().getAR(instr->as1());
	ADDR ad2 = reg().getAR(instr->as2());
	WORD src1 = mmu().readSRAMHword(ad1,1);
	WORD src2 = mmu().readSRAMHword(ad2,2);
	DWORD dest = reg().getACC(instr->acc());
	if(instr->acm() & SRC_SHF)
	   dest += ((DWORD)src1*src2)<<1;
	else
	   dest += ((DWORD)src1*src2);
	dest = _calAccResult(dest,instr->acm(),instr->M());
	reg().setACC(instr->acc(),dest);
	_updateSize(instr->as1(),instr->am1(),HALFLENGTH);
	_updateSize(instr->as2(),instr->am2(),HALFLENGTH);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3macar (SL1Instr* instr) {
	ADDR ad1 = reg().getAR(instr->as2());
	WORD src1 = mmu().readSRAMHword(ad1,2);
	WORD src2 = reg().getGPR16(instr->rs1());
	DWORD dest = reg().getACC(instr->acc());
	if(instr->acm() & SRC_SHF)
	   dest += ((DWORD)src1*src2)<<1;
	else
	   dest += ((DWORD)src1*src2);
	dest = _calAccResult(dest,instr->acm(),instr->M());
	reg().setACC(instr->acc(),dest);
	_updateSize(instr->as2(),instr->am2(),HALFLENGTH);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3maci (SL1Instr* instr) {
	WORD src1 = reg().getGPR16(instr->rs1());
	WORD imm9 = instr->imm9();
	DWORD dest = reg().getACC(instr->acc());
	if(instr->acm() & SRC_SHF)
       dest += ((DWORD)src1*imm9)<<1;
    else
       dest += (DWORD)src1*imm9;
    dest = _calAccResult(dest,instr->acm(),instr->M());
	reg().setACC(instr->acc(),dest);
	return pc()+instr->instrsize(); 
}

ADDR SL1Exec::execC3samulsh (SL1Instr* instr) {
	WORD src1 = reg().getGPR16(instr->rs1());
	WORD src2 = reg().getGPR16(instr->rs2());
	UWORD imm5 = instr->imm5() & 0x1f;
	DWORD dest = ((DWORD)src1*src2)<<imm5;
	dest = _saturateGPR32(dest)>>16;	
	reg().setGPR(instr->rd(), (WORD)dest);
    	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3samulha (SL1Instr* instr) {
	AppFatal((instr->as1() != instr->as2()), ("c3.samulh.a: as1's index and as2's index is same ,pc@0x%x", pc()));
	ADDR ad1 = reg().getAR(instr->as1());
	ADDR ad2 = reg().getAR(instr->as2());
	WORD src1 = mmu().readSRAMHword(ad1,1);
	WORD src2 = mmu().readSRAMHword(ad2,2);
	DWORD dest = ((DWORD)src1*src2)<<1;
	dest = _saturateGPR32(dest) >>16;
	reg().setGPR(instr->rd(),(WORD)dest);
	_updateSize(instr->as1(),instr->am1(),HALFLENGTH);
	_updateSize(instr->as2(),instr->am2(),HALFLENGTH);
	return pc()+instr->instrsize(); 
}

ADDR SL1Exec::execC3shlai (SL1Instr* instr) {
	INT shift = instr->imm5() & 0x1f;
	DWORD src = reg().getACC(instr->acc());
	DWORD dest;
	dest = _calSatShiftLeft(src,shift,instr->acm(),instr->M());	
	reg().setACC(instr->acc(),dest);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3saaddha (SL1Instr* instr) {
	AppFatal((instr->as1() != instr->as2()), ("c3.saaddh.a: as1's index and as2's index is same ,pc@0x%x", pc()));
	ADDR ad1 = reg().getAR(instr->as1());
	ADDR ad2 = reg().getAR(instr->as2());
	WORD src1 = mmu().readSRAMHword(ad1,1);
	WORD src2 = mmu().readSRAMHword(ad2,2);
	WORD dest = src1+src2;
	dest = _saturateGPR16(dest);
	reg().setGPR(instr->rd(),dest);
	_updateSize(instr->as1(),instr->am1(),HALFLENGTH);
	_updateSize(instr->as2(),instr->am2(),HALFLENGTH);
	return pc()+instr->instrsize(); 
}

ADDR SL1Exec::execC3sasubha (SL1Instr* instr) {
	AppFatal((instr->as1() != instr->as2()), ("c3.sasubh.a: as1's index and as2's index is same ,pc@0x%x", pc()));
	ADDR ad1 = reg().getAR(instr->as1());
	ADDR ad2 = reg().getAR(instr->as2());
	WORD src1 = mmu().readSRAMHword(ad1,1);
	WORD src2 = mmu().readSRAMHword(ad2,2);
	WORD dest = src1-src2;
	dest = _saturateGPR16(dest);
	reg().setGPR(instr->rd(),dest);
	_updateSize(instr->as1(),instr->am1(),HALFLENGTH);
	_updateSize(instr->as2(),instr->am2(),HALFLENGTH);
	return pc()+instr->instrsize(); 

}

ADDR SL1Exec::execC3shlafai (SL1Instr* instr) {
	DWORD src = reg().getACC(instr->accs1());
	UINT shift = instr->imm5() & 0x1f;
	DWORD dest = _calSatShiftLeft(src,shift,instr->acm(),0);//32bit sat default
	reg().setGPR(instr->rd(),(WORD)dest);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3shrafai (SL1Instr* instr) {
	DWORD src = reg().getACC(instr->accs1());
	UINT shift = instr->imm5() & 0x1f;
	DWORD dest = src>>shift;
	if(instr->acm() & SATURATION_MODE)
		dest = _saturateGPR32(dest);//32bit sat default
	reg().setGPR(instr->rd(),(WORD)dest);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3shrai (SL1Instr* instr) {
	INT shift = instr->imm5() & 0x1f;
	DWORD src = reg().getACC(instr->acc());
	DWORD dest;
	dest = src>>shift;	
	dest = _calAccResult(dest,instr->acm() & SATURATION_MODE,instr->M());
	reg().setACC(instr->acc(),dest);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3macn (SL1Instr* instr) {
	WORD src1 = reg().getGPR16(instr->rs1());
	WORD src2 = reg().getGPR16(instr->rs2());
	DWORD dest = reg().getACC(instr->acc());
	if(instr->acm() & SRC_SHF)
	   dest -= ((DWORD)src1*src2)<<1;
	else	   
	   dest -= (DWORD)src1*src2;
	dest = _calAccResult(dest,instr->acm(),instr->M());
	reg().setACC(instr->acc(),dest);
	return pc()+instr->instrsize();
}


ADDR SL1Exec::execC3macna (SL1Instr* instr) {
	AppFatal((instr->as1() != instr->as2()), ("c3.macn.a: as1's index and as2's index is same ,pc@0x%x", pc()));
	ADDR ad1 = reg().getAR(instr->as1());
	ADDR ad2 = reg().getAR(instr->as2());
	WORD src1 = mmu().readSRAMHword(ad1,1);
	WORD src2 = mmu().readSRAMHword(ad2,2);
	DWORD dest = reg().getACC(instr->acc());
	if(instr->acm() & SRC_SHF)
	   dest -= ((DWORD)src1*src2)<<1;
	else
	   dest -= (DWORD)src1*src2;
	dest = _calAccResult(dest,instr->acm(),instr->M());
	reg().setACC(instr->acc(),dest);
	_updateSize(instr->as1(),instr->am1(),HALFLENGTH);
	_updateSize(instr->as2(),instr->am2(),HALFLENGTH);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3macnar (SL1Instr* instr) {
	ADDR ad1 = reg().getAR(instr->as2());
	WORD src1 = mmu().readSRAMHword(ad1,2);
	WORD src2 = reg().getGPR16(instr->rs1());
	DWORD dest = reg().getACC(instr->acc());
	if(instr->acm() & SRC_SHF)
	   dest -= ((DWORD)src1*src2)<<1;
	else
	   dest -= (DWORD)src1*src2;
	dest = _calAccResult(dest,instr->acm(),instr->M());
	reg().setACC(instr->acc(),dest);
	_updateSize(instr->as2(),instr->am2(),HALFLENGTH);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3macni (SL1Instr* instr) {
	WORD src1 = reg().getGPR16(instr->rs1());
	WORD imm9 = instr->imm9();
	DWORD dest = reg().getACC(instr->acc());
	if(instr->acm() & SRC_SHF)
       dest -= ((DWORD)src1*imm9)<<1;
    else
       dest -= (DWORD)src1*imm9;
    dest = _calAccResult(dest,instr->acm(),instr->M());
	reg().setACC(instr->acc(),dest);
	return pc()+instr->instrsize(); 
}

ADDR SL1Exec::execC3mula (SL1Instr* instr) {
	WORD src1 = reg().getGPR16(instr->rs1());
	WORD src2 = reg().getGPR16(instr->rs2());
	DWORD dest;
	if(instr->acm() & SRC_SHF)
	   dest = ((DWORD)src1*(DWORD)src2)<<1;
	else	   
	   dest = (DWORD)src1*src2;
	dest = _calAccResult(dest,instr->acm(),0);
	reg().setACC(instr->acc(),dest);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3mulaa (SL1Instr* instr) {
	AppFatal((instr->as1() != instr->as2()), ("c3.mula.a: as1's index and as2's index is same ,pc@0x%x", pc()));
	ADDR ad1 = reg().getAR(instr->as1());
	ADDR ad2 = reg().getAR(instr->as2());
	WORD src1 = mmu().readSRAMHword(ad1,1);
	WORD src2 = mmu().readSRAMHword(ad2,2);
	DWORD dest;
	if(instr->acm() & SRC_SHF)
	   dest = ((DWORD)src1*src2)<<1;
	else
	   dest = (src1*src2);
	dest = _calAccResult(dest,instr->acm(),0);
	reg().setACC(instr->acc(),dest);
	_updateSize(instr->as1(),instr->am1(),HALFLENGTH);
	_updateSize(instr->as2(),instr->am2(),HALFLENGTH);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3mulaar (SL1Instr* instr) {
	ADDR ad1 = reg().getAR(instr->as2());
	WORD src1 = mmu().readSRAMHword(ad1,2);
	WORD src2 = reg().getGPR16(instr->rs1());
	DWORD dest;
	if(instr->acm() & SRC_SHF)
	   dest = ((DWORD)src1*src2)<<1;
	else
	   dest = (src1*src2);
	dest = _calAccResult(dest,instr->acm(),0);
	reg().setACC(instr->acc(),dest);
	_updateSize(instr->as2(),instr->am2(),HALFLENGTH);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3mulai (SL1Instr* instr) {
    WORD src1 = reg().getGPR16(instr->rs1());
    WORD simm = instr->imm9();
    DWORD dest;
    if(instr->acm() & SRC_SHF)
       dest = ((DWORD)src1*simm)<<1;
    else
       dest = src1*simm;
    dest = _calAccResult(dest,instr->acm(),0);
	reg().setACC(instr->acc(),dest);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3shlatai (SL1Instr* instr) {
	DWORD src = reg().getGPR(instr->rs1()); //extend to 64bit
	UINT shift = instr->imm5() & 0x1f;
	DWORD dest = _calSatShiftLeft(src,shift,instr->acm(),instr->M());
	reg().setACC(instr->acc(),dest);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3shratai (SL1Instr* instr) {
	DWORD src = reg().getGPR(instr->rs1()); //extend to 64bit
	UINT shift = instr->imm5() & 0x1f;
	DWORD dest = src>>shift;
	dest = _calAccResult(dest,instr->acm() & SATURATION_MODE,instr->M());
	reg().setACC(instr->acc(),dest);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3mulan (SL1Instr* instr) {
	WORD src1 = reg().getGPR16(instr->rs1());
	WORD src2 = reg().getGPR16(instr->rs2());
	DWORD dest;
	if(instr->acm() & SRC_SHF)
       dest = ((DWORD)src1*src2)<<1;
    else
       dest = src1*src2;
    dest = -dest;
    dest = _calAccResult(dest,instr->acm(),0);
	reg().setACC(instr->acc(),dest);
	return pc()+instr->instrsize();   
}

ADDR SL1Exec::execC3lead (SL1Instr* instr) {
	DWORD src = reg().getACC(instr->accs1());
	DWORD src1 = src & MASK_LOW_40;
	WORD temp1;
	DWORD temp;
	if(src>=0)
	{
		for(UINT i=0;i<40;i++)
		{  
		   temp1 = 0;
		   temp = src1<<i;
		   if((temp & 0x8000000000LL)!=0)
		   {
		   	 temp1 = i;
		     break;
		   }
		}
	}    
	else
	{
		for(UINT i=0;i<40;i++)
		{  temp1 = 40;
		   temp = src1<<i;
		   if((temp & 0x8000000000LL)==0)
		   {
		   	 temp1 = i;
		     break;
		   }
		}   
	}
	reg().setGPR(instr->rd(),temp1);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3mvfs (SL1Instr* instr) {
	AppFatal((instr->ss1() < ESR_MAX), ("c3.mvfs: invalid control register name(%d),pc@0x%x", instr->cs1(), pc()));
	UINT uimm = instr->imm5()&0x1f;
	WORD dest;
	if(instr->ss1()>=ESR_ACC && instr->ss1()<ESR_HI) {
		DWORD src_acc = reg().getACC(instr->ss1()-ESR_ACC);
		dest = (WORD)(src_acc>>uimm);
	}
	else
	{
		dest = reg().getSPEC(instr->ss1());
		dest = dest>>uimm;
	}
	reg().setGPR(instr->rd(),dest); 
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3mvts (SL1Instr* instr) {
	AppFatal((instr->sd() < ESR_MAX), ("c3.mvts: invalid control register name(%d),pc@0x%x", instr->sd(), pc()));
	AppFatal((instr->sd() <= ESR_HI), ("c3.mvts: fobiden control register name(%d),pc@0x%x", instr->sd(), pc()));
	UINT uimm = instr->imm5() & 0x1f;
	DWORD dest;
	WORD src1 = reg().getGPR(instr->rs1());
	if(instr->sd()>=ESR_ACC && instr->sd()<ESR_HI) {
		dest = (DWORD)src1; //signed extended
		dest = dest <<uimm;
		reg().setACC(instr->sd()-ESR_ACC,dest);
	}
	else
	{
		src1 = src1 << uimm;
		reg().setSPEC(instr->sd(),src1);//acc
	}
		
  	
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3dmac (SL1Instr* instr) {
   AppFatal((instr->acc()%2 ==0 ), ("c3.dmac: acc's index is not even ,pc@0x%x\n", pc()));
   WORD data0,data1,data2,data3;
   WORD src1 = reg().getGPR(instr->rs1());
   WORD src2 = reg().getGPR(instr->rs2());
   switch(instr->mac_mode())
   {
   		case DMAC_GPR_MODE0:
   			data0 = (src1<<16)>>16;
   			data1 = (src2<<16)>>16;
   			data2 =  src1>>16;
   			data3 =  src2>>16;
   			break;
   		case DMAC_GPR_MODE1:
   			data0 = data2 = src1>>16;
   			data1 = (src2<<16)>>16;
   			data3 =  src2>>16;
   			break;
   		case DMAC_GPR_MODE2:
   			data0 = data2 = (src1<<16)>>16;
   			data1 = src2>>16;
   			data3 = (src2<<16)>>16;	
   			break;
   		case DMAC_GPR_MODE3:
   			data0 = src1>>16;
   			data1 = src2>>16;
   			data2 = (src1<<16)>>16;
   			data3 = (src2<<16)>>16;
   			break;
   		default:
   	   		AppFatal((0), ("c3.dmac: invalid gpr mode %d,pc@0x%x\n", instr->mac_mode(),pc()));		
   }
    
   DWORD dest = reg().getACC(instr->acc());
   DWORD dest1 = reg().getACC(instr->acc()+1);
   
   if(instr->acm() & SRC_SHF){
   		if(!instr->N())
   		{
   			dest += ((DWORD)data0 * data1)<<1;
   			dest1+= ((DWORD)data2 * data3)<<1;
   		}
   		else
   		{
   			dest += ((DWORD)data0 * data1)<<1;
   			dest1-= ((DWORD)data2 * data3)<<1;
   		}
   			
   }
   else{
   		if(!instr->N())
   		{
     		dest += (DWORD)data0 * data1;
   			dest1+= (DWORD)data2 * data3;
   		}
   		else
   		{
   			dest += (DWORD)data0 * data1;
   			dest1-= (DWORD)data2 * data3;
   		}
   }
   dest = _calAccResult(dest,instr->acm(),instr->M());
   dest1 = _calAccResult(dest1,instr->acm(),instr->M());
   reg().setACC(instr->acc(),dest);
   reg().setACC(instr->acc()+1,dest1);
   return pc()+instr->instrsize();	
}

ADDR SL1Exec::execC3dmacn (SL1Instr* instr) {
   AppFatal((instr->acc()%2 ==0 ), ("c3.dmacn: acc's index is not even ,pc@0x%x\n", pc()));
   WORD data0,data1,data2,data3;
   WORD src1 = reg().getGPR(instr->rs1());
   WORD src2 = reg().getGPR(instr->rs2());
   switch(instr->mac_mode())
   {
   		case DMAC_GPR_MODE0:
   			data0 = (src1<<16)>>16;
   			data1 = (src2<<16)>>16;
   			data2 =  src1>>16;
   			data3 =  src2>>16;
   			break;
   		case DMAC_GPR_MODE1:
   			data0 = data2 = src1>>16;
   			data1 = (src2<<16)>>16;
   			data3 =  src2>>16;
   			break;
   		case DMAC_GPR_MODE2:
   			data0 = data2 = (src1<<16)>>16;
   			data1 = src2>>16;
   			data3 = (src2<<16)>>16;	
   			break;
   		case DMAC_GPR_MODE3:
   			data0 = src1>>16;
   			data1 = src2>>16;
   			data2 = (src1<<16)>>16;
   			data3 = (src2<<16)>>16;
   			break;
   		default:
   	   		AppFatal((0), ("c3.dmacn: invalid gpr mode %d,pc@0x%x\n", instr->mac_mode(),pc()));		
   }
    
   DWORD dest = reg().getACC(instr->acc());
   DWORD dest1 = reg().getACC(instr->acc()+1);
   
   if(instr->acm() & SRC_SHF){
   		if(!instr->N())
   		{
   			dest -= ((DWORD)data0 * data1)<<1;
   			dest1-= ((DWORD)data2 * data3)<<1;
   		}
   		else
   		{
   			dest -= ((DWORD)data0 * data1)<<1;
   			dest1+= ((DWORD)data2 * data3)<<1;
   		}
   			
   }
   else{
   		if(!instr->N())
   		{
     		dest -= (DWORD)data0 * data1;
   			dest1-= (DWORD)data2 * data3;
   		}
   		else
   		{
   			dest -= (DWORD)data0 * data1;
   			dest1+= (DWORD)data2 * data3;
   		}
   }
   dest = _calAccResult(dest,instr->acm(),instr->M());
   dest1 = _calAccResult(dest1,instr->acm(),instr->M());
   reg().setACC(instr->acc(),dest);
   reg().setACC(instr->acc()+1,dest1);
   return pc()+instr->instrsize();	
}

ADDR SL1Exec::execC3dmaca (SL1Instr* instr) {
	AppFatal((instr->acc()%2 ==0 ), ("c3.dmac.a: acc's index is not even ,pc@0x%x", pc()))
	AppFatal((instr->as1() != instr->as2()), ("c3.dmac.a: as1's index and as2's index is same ,pc@0x%x", pc()));
	ADDR ad1 = reg().getAR(instr->as1());
	ADDR ad2 = reg().getAR(instr->as2());
	WORD src1 = mmu().readSRAMWordByDmac(ad1,1);
	WORD src2 = mmu().readSRAMWordByDmac(ad2,2);
	    
    WORD data0 = (src1<<16)>>16; //sign extended
    WORD data1 = (src2<<16)>>16; //sign extended
    WORD data2 = src1>>16;
    WORD data3 = src2>>16;
    
	DWORD dest = reg().getACC(instr->acc());
	DWORD dest1 = reg().getACC(instr->acc()+1);
	
	
	if(instr->acm() & SRC_SHF){
		if(!instr->N())
		{
   			dest += ((DWORD)data0 * data1)<<1;
   			dest1+= ((DWORD)data2 * data3)<<1;
		}
		else
		{
			dest += ((DWORD)data0 * data1)<<1;
   			dest1-= ((DWORD)data2 * data3)<<1;
		}
   	}
   	else{
   		if(!instr->N())
     	{
     		dest += (DWORD)data0 * data1;
   			dest1+= (DWORD)data2 * data3;
     	}
     	else
     	{
     		dest += (DWORD)data0 * data1;
   			dest1-= (DWORD)data2 * data3;
     	}
   	}
   	dest = _calAccResult(dest,instr->acm(),instr->M());
   	dest1 = _calAccResult(dest1,instr->acm(),instr->M());
	reg().setACC(instr->acc(),dest);
   	reg().setACC(instr->acc()+1,dest1);
	
	_updateSize(instr->as1(),instr->am1(),WORDLENGTH);
	_updateSize(instr->as2(),instr->am2(),WORDLENGTH);
	return pc()+instr->instrsize();	
}

ADDR SL1Exec::execC3dmacna (SL1Instr* instr) {
	AppFatal((instr->acc()%2 ==0 ), ("c3.dmacn.a: acc's index is not even ,pc@0x%x", pc()))
	AppFatal((instr->as1() != instr->as2()), ("c3.dmacn.a: as1's index and as2's index is same ,pc@0x%x", pc()));
	ADDR ad1 = reg().getAR(instr->as1());
	ADDR ad2 = reg().getAR(instr->as2());
	UBYTE mode = instr->N();
	WORD src1 = mmu().readSRAMWordByDmac(ad1,1);
	WORD src2 = mmu().readSRAMWordByDmac(ad2,2);
    
    WORD data0 = (src1<<16)>>16; //sign extended
    WORD data1 = (src2<<16)>>16; //sign extended
    WORD data2 = src1>>16;
    WORD data3 = src2>>16;
    
	DWORD dest = reg().getACC(instr->acc());
	DWORD dest1 = reg().getACC(instr->acc()+1);

	
	if(instr->acm() & SRC_SHF){
		if(!mode)
		{
   			dest -= ((DWORD)data0 * data1)<<1;
   			dest1-= ((DWORD)data2 * data3)<<1;
		}
		else
		{
			dest -= ((DWORD)data0 * data1)<<1;
   			dest1+= ((DWORD)data2 * data3)<<1;
		}
   	}
   	else{
   		if(!mode)
   		{
     		dest -= (DWORD)data0 * data1;
   			dest1-= (DWORD)data2 * data3;
   		}
   		else
   		{
   			dest -= (DWORD)data0 * data1;
   			dest1+= (DWORD)data2 * data3;
   		}
   	}
   	dest = _calAccResult(dest,instr->acm(),instr->M());
   	dest1 = _calAccResult(dest1,instr->acm(),instr->M());
	reg().setACC(instr->acc(),dest);
   	reg().setACC(instr->acc()+1,dest1);
	
	_updateSize(instr->as1(),instr->am1(),WORDLENGTH);
	_updateSize(instr->as2(),instr->am2(),WORDLENGTH);
	return pc()+instr->instrsize();	
}

ADDR SL1Exec::execC3dadd (SL1Instr* instr) {
	WORD src1 = reg().getGPR(instr->rs1());
	WORD src2 = reg().getGPR(instr->rs2());
	WORD data0 = (src1<<16)>>16;
	WORD data1 = (src2<<16)>>16;
	WORD data2 =  src1>>16;
	WORD data3 =  src2>>16;
	WORD destlo = data0+data1;
	WORD desthi = data2+data3;
	
	destlo = _saturateGPR16(destlo);
	desthi = _saturateGPR16(desthi);
    WORD dest = (destlo & HWORD_DATA_MASK) | (desthi<<16);
	reg().setGPR(instr->rd(),dest);
	return pc()+instr->instrsize(); 
}

ADDR SL1Exec::execC3dsub (SL1Instr* instr) {
	WORD src1 = reg().getGPR(instr->rs1());
	WORD src2 = reg().getGPR(instr->rs2());
	WORD data0 = (src1<<16)>>16;
	WORD data1 = (src2<<16)>>16;
	WORD data2 =  src1>>16;
	WORD data3 =  src2>>16;
	WORD destlo = data0-data1;
	WORD desthi = data2-data3;
    
    destlo = _saturateGPR16(destlo);
	desthi = _saturateGPR16(desthi);
    WORD dest = (destlo & HWORD_DATA_MASK) | (desthi<<16);
	reg().setGPR(instr->rd(),dest);
	return pc()+instr->instrsize();  
}

ADDR SL1Exec::execC3revb (SL1Instr* instr) {
	WORD src1 = reg().getGPR(instr->rs1());
	UINT uimm = instr->imm5() & 0x1f;
	WORD dest = 0;
	UWORD temp;
	for(UINT i=0;i<=uimm;i++)
	{   
		temp = ((UWORD)src1&(0x1<<i))>>i;
	    dest = (temp<<(uimm-i)) | dest;
	}
	reg().setGPR(instr->rd(),dest);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3round (SL1Instr* instr) {
	DWORD src1 = reg().getACC(instr->acc());
	src1 = src1+0x8000;
	src1 = _calAccResult(src1,instr->acm() & SATURATION_MODE,instr->M());
	switch(instr->mode()){
		case SET_LOW:
		     src1 = src1 | 0xffff;
		     break;
		case CLEAR_LOW:
		     src1 = (src1>>16)<<16;
		     break;
		case NORMAL:
		     break;       
		default:
		     AppFatal((0), ("c3.round: invalid mode(%d),pc@0x%x",instr->mode(), pc()));
	}
	reg().setACC(instr->acc(),src1);
	return pc()+instr->instrsize();	
}

ADDR SL1Exec::execC3dmula (SL1Instr* instr) {
	AppFatal((instr->acc()%2 ==0 ), ("c3.dmac: acc's index is not even ,pc@0x%x\n", pc()));
    WORD data0,data1,data2,data3;
   	WORD src1 = reg().getGPR(instr->rs1());
   	WORD src2 = reg().getGPR(instr->rs2());
   	switch(instr->mac_mode())
   	{
   		case DMAC_GPR_MODE0:
   			data0 = (src1<<16)>>16;
   			data1 = (src2<<16)>>16;
   			data2 =  src1>>16;
   			data3 =  src2>>16;
   			break;
   		case DMAC_GPR_MODE1:
   			data0 = data2 = src1>>16;
   			data1 = (src2<<16)>>16;
   			data3 =  src2>>16;
   			break;
   		case DMAC_GPR_MODE2:
   			data0 = data2 = (src1<<16)>>16;
   			data1 = src2>>16;
   			data3 = (src2<<16)>>16;	
   			break;
   		case DMAC_GPR_MODE3:
   			data0 = src1>>16;
   			data1 = src2>>16;
   			data2 = (src1<<16)>>16;
   			data3 = (src2<<16)>>16;
   			break;
   		default:
   	   		AppFatal((0), ("c3.dmac: invalid gpr mode %d,pc@0x%x\n", instr->mac_mode(),pc()));		
   	}
    
   	DWORD dest,dest1;
   	if(instr->acm() & SRC_SHF){
   		if(!instr->N())
   		{
   			dest = ((DWORD)data0 * data1)<<1;
   			dest1 = ((DWORD)data2 * data3)<<1;
   		}
   		else
   		{
   			dest = ((DWORD)data0 * data1)<<1;
   			dest1 = -(((DWORD)data2 * data3)<<1);
   		}
   			
   	}
   	else{
   		if(!instr->N())
   		{
     		dest = (DWORD)data0 * data1;
   			dest1 = (DWORD)data2 * data3;
   		}
   		else
   		{
   			dest = (DWORD)data0 * data1;
   			dest1 = -((DWORD)data2 * data3);
   		}
   	}
   	dest = _calAccResult(dest,instr->acm(),0); //default 32bit sat
   	dest1 = _calAccResult(dest1,instr->acm(),0); //default 32bit sat
   	reg().setACC(instr->acc(),dest);
   	reg().setACC(instr->acc()+1,dest1);
   	return pc()+instr->instrsize();	
}

ADDR SL1Exec::execC3dmulan (SL1Instr* instr) {
	AppFatal((instr->acc()%2 ==0 ), ("c3.dmac: acc's index is not even ,pc@0x%x\n", pc()));
    WORD data0,data1,data2,data3;
   	WORD src1 = reg().getGPR(instr->rs1());
   	WORD src2 = reg().getGPR(instr->rs2());
   	switch(instr->mac_mode())
   	{
   		case DMAC_GPR_MODE0:
   			data0 = (src1<<16)>>16;
   			data1 = (src2<<16)>>16;
   			data2 =  src1>>16;
   			data3 =  src2>>16;
   			break;
   		case DMAC_GPR_MODE1:
   			data0 = data2 = src1>>16;
   			data1 = (src2<<16)>>16;
   			data3 =  src2>>16;
   			break;
   		case DMAC_GPR_MODE2:
   			data0 = data2 = (src1<<16)>>16;
   			data1 = src2>>16;
   			data3 = (src2<<16)>>16;	
   			break;
   		case DMAC_GPR_MODE3:
   			data0 = src1>>16;
   			data1 = src2>>16;
   			data2 = (src1<<16)>>16;
   			data3 = (src2<<16)>>16;
   			break;
   		default:
   	   		AppFatal((0), ("c3.dmac: invalid gpr mode %d,pc@0x%x\n", instr->mac_mode(),pc()));		
   	}
    
   	DWORD dest,dest1;
   	if(instr->acm() & SRC_SHF){
   		if(!instr->N())
   		{
   			dest = -((DWORD)data0 * data1)<<1;
   			dest1 = -((DWORD)data2 * data3)<<1;
   		}
   		else
   		{
   			dest = -((DWORD)data0 * data1)<<1;
   			dest1 = ((DWORD)data2 * data3)<<1;
   		}
   			
   	}
   	else{
   		if(!instr->N())
   		{
     		dest = -((DWORD)data0 * data1);
   			dest1 = -((DWORD)data2 * data3);
   		}
   		else
   		{
   			dest = -((DWORD)data0 * data1);
   			dest1 = (DWORD)data2 * data3;
   		}
   	}
   	dest = _calAccResult(dest,instr->acm(),0); //default 32bit sat
   	dest1 = _calAccResult(dest1,instr->acm(),0); //default 32bit sat
   	reg().setACC(instr->acc(),dest);
   	reg().setACC(instr->acc()+1,dest1);
   	return pc()+instr->instrsize();	
}

ADDR SL1Exec::execC3dmulaa (SL1Instr* instr) {
	AppFatal((instr->acc()%2 ==0 ), ("c3.dmula.a: acc's index is not even ,pc@0x%x", pc()))
	AppFatal((instr->as1() != instr->as2()), ("c3.dmula.a: as1's index and as2's index is same ,pc@0x%x", pc()));
	ADDR ad1 = reg().getAR(instr->as1());
	ADDR ad2 = reg().getAR(instr->as2());
	WORD src1 = mmu().readSRAMWordByDmac(ad1,1);
	WORD src2 = mmu().readSRAMWordByDmac(ad2,2);
    
    WORD data0 = (src1<<16)>>16; //sign extended
    WORD data1 = (src2<<16)>>16; //sign extended
    WORD data2 = src1>>16;
    WORD data3 = src2>>16;
    
	DWORD dest = reg().getACC(instr->acc());
	DWORD dest1 = reg().getACC(instr->acc()+1);

	
	if(instr->acm() & SRC_SHF){
		if(!instr->N())
		{
   			dest = ((DWORD)data0 * data1)<<1;
   			dest1= ((DWORD)data2 * data3)<<1;
		}
		else
		{
			dest = ((DWORD)data0 * data1)<<1;
   			dest1= -((DWORD)data2 * data3)<<1;
		}
   	}
   	else{
   		if(!instr->N())
   		{
     		dest = (DWORD)data0 * data1;
   			dest1= (DWORD)data2 * data3;
   		}
   		else
   		{
   			dest = (DWORD)data0 * data1;
   			dest1= -((DWORD)data2 * data3);
   		}
   	}
   	dest = _calAccResult(dest,instr->acm(),0);
   	dest1 = _calAccResult(dest1,instr->acm(),0);
	reg().setACC(instr->acc(),dest);
   	reg().setACC(instr->acc()+1,dest1);
	
	_updateSize(instr->as1(),instr->am1(),WORDLENGTH);
	_updateSize(instr->as2(),instr->am2(),WORDLENGTH);
	return pc()+instr->instrsize();	
}

ADDR SL1Exec::execC3dmulana (SL1Instr* instr) {
	AppFatal((instr->acc()%2 ==0 ), ("c3.dmulan.a: acc's index is not even ,pc@0x%x", pc()))
	AppFatal((instr->as1() != instr->as2()), ("c3.dmulan.a: as1's index and as2's index is same ,pc@0x%x", pc()));
	ADDR ad1 = reg().getAR(instr->as1());
	ADDR ad2 = reg().getAR(instr->as2());
	WORD src1 = mmu().readSRAMWordByDmac(ad1,1);
	WORD src2 = mmu().readSRAMWordByDmac(ad2,2);
    
    WORD data0 = (src1<<16)>>16; //sign extended
    WORD data1 = (src2<<16)>>16; //sign extended
    WORD data2 = src1>>16;
    WORD data3 = src2>>16;
    
	DWORD dest = reg().getACC(instr->acc());
	DWORD dest1 = reg().getACC(instr->acc()+1);

	
	if(instr->acm() & SRC_SHF){
		if(!instr->N())
		{
   			dest = -((DWORD)data0 * data1)<<1;
   			dest1= -((DWORD)data2 * data3)<<1;
		}
		else
		{
			dest = -((DWORD)data0 * data1)<<1;
   			dest1= ((DWORD)data2 * data3)<<1;
		}
   	}
   	else{
   		if(!instr->N())
   		{
     		dest = -(DWORD)data0 * data1;
   			dest1= -(DWORD)data2 * data3;
   		}
   		else
   		{
   			dest = -(DWORD)data0 * data1;
   			dest1= (DWORD)data2 * data3;
   		}
   	}
   	dest = _calAccResult(dest,instr->acm(),0);
   	dest1 = _calAccResult(dest1,instr->acm(),0);
	reg().setACC(instr->acc(),dest);
   	reg().setACC(instr->acc()+1,dest1);
	
	_updateSize(instr->as1(),instr->am1(),WORDLENGTH);
	_updateSize(instr->as2(),instr->am2(),WORDLENGTH);
	return pc()+instr->instrsize();	
}

ADDR SL1Exec::execC3fftld (SL1Instr* instr) {
	ADDR ad0;
	ADDR ad1 = ad0 = reg().getAR(instr->as1());
	if(ad1 >= (8192*4))
		DevWarn("c3.fftld offset out of range %x, pc@0x%x", ad1, pc());
	// get effective ad1 from index_calculate and bank index 
	INT j, total=0;
	ad1= (ad1 & FFT_OFFSET_MASK);
	for (j = 0; j < 8; j++) {
	  ad1 >>= 2;
	  total += (ad1 & 0x3);
	}
	UINT bk_idx = total % 4;
	AppFatal((bk_idx < 4), ("invalid bank index %d\n", bk_idx));
	AppFatal((instr->am1()==ADD_1),("invalid am mode(%d) in c3fftld,pc@0x%x",instr->am1(),pc()));
	ad1 = reg().getAR_USIZE(instr->as1()) + (ad0 & FFT_POS_MASK) + (bk_idx << 2);

	WORD dest;
	INT type;

	switch(instr->dtype()){
		case WORDS:
		   dest = mmu().readSRAMWordByCbus(ad1);
		   type = 4;
		   break;
		default:	
		AppFatal((0), ("c3.fftld: invalid dtype(%d),pc@0x%x", instr->dtype(), pc()));	
	}
	_updateSize(instr->as1(),instr->am1(),type);
	reg().setGPR(instr->rd(),dest);
	return pc()+instr->instrsize();		
}

ADDR SL1Exec::execC3fftst (SL1Instr* instr) {
    ADDR ad0;
	ADDR ad1 = ad0 = reg().getAR(instr->as1());
	WORD src1 = reg().getGPR(instr->rs0());
	UINT type;
		
	//AppFatal((ad1 < (8192*4)), ("offset out of range %x, pc@0x%x", ad1, pc()));
	if(ad1 >= (8192*4))
		DevWarn("c3.fftst offset out of range %x, pc@0x%x", ad1, pc());
	AppFatal((instr->am1()==ADD_1),("invalid am mode(%d) in c3fftst,pc@0x%x",instr->am1(),pc()));
	// get effective ad1 from index_calculate and bank index 
	INT j, total=0;
	ad1= (ad1 & FFT_OFFSET_MASK);
	for (j = 0; j < 8; j++) {
	  ad1 >>= 2;
	  total += (ad1 & 0x3);
	}
	UINT bk_idx = total&3;
	AppFatal((bk_idx < 4), ("invalid bank index %d\n", bk_idx));
	ad1 = reg().getAR_USIZE(instr->as1()) + (ad0 & FFT_POS_MASK) + (bk_idx << 2);

	switch(instr->dtype()){
		case WORDS:
		   mmu().writeSRAMWordByCbus(ad1,src1);
		   type = 4;
		   break;
		default:
		AppFatal((0), ("c3.fftst: invalid dtype(%d),pc@0x%x", instr->dtype(), pc()));
	}
	_updateSize(instr->as1(),instr->am1(),type);
	return pc()+instr->instrsize();		
}

ADDR SL1Exec::execC3subc (SL1Instr* instr) {
	WORD dest;
	UWORD src1 = reg().getGPR(instr->rs1());
	UWORD src2 = reg().getGPR(instr->rs2());
	WORD hi = reg().getHI();
	if(src1>=src2)
	{
		dest = (src1 - src2)<<1;
		hi = (hi<<1)+1;
	}
	else
	{
		dest = src1<<1;
		hi = hi<<1;
	}
	reg().setGPR(instr->rd(),dest);
	reg().setHI(hi);
	return pc()+instr->instrsize();	
}

ADDR SL1Exec::execC3cs (SL1Instr* instr) {
	WORD src1 = reg().getGPR(instr->rs1());
	WORD src2 = reg().getGPR(instr->rs2());
	WORD hi = reg().getHI();
	WORD dest;
	hi = hi<<1;
	if(instr->mode())
	{
		dest = (src1<src2)?src1:src2;
		hi |= (src1<src2);
	}
	else
	{
		dest = (src1>src2)?src1:src2;
		hi |= (src1>src2);
	}
	reg().setGPR(instr->rd(),dest);
	reg().setHI(hi);
	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3dshlli (SL1Instr* instr) {
	WORD src1 = reg().getGPR(instr->rs1());
	WORD result;
	WORD data0 = src1 & HWORD_DATA_MASK;
	WORD data1 = (src1 & UPPER_HWORD_DATA_MASK)>>INT16_BIT;
	data0 = (data0 << (instr->imm_lo()))&HWORD_DATA_MASK;
	data1 = (data1 << (instr->imm_hi()))&HWORD_DATA_MASK;
	result = (data1<<INT16_BIT) | data0;
	reg().setGPR(instr->rd(),result);
	 return pc()+instr->instrsize();	
}

ADDR SL1Exec::execC3dshrli (SL1Instr* instr) {
	WORD src1 = reg().getGPR(instr->rs1());
	WORD result;
	UWORD data0 = src1 & HWORD_DATA_MASK;
	UWORD data1 = ((UWORD)src1 & UPPER_HWORD_DATA_MASK)>>INT16_BIT;
	data0 = (data0 >> (instr->imm_lo()))&HWORD_DATA_MASK;
	data1 = (data1 >> (instr->imm_hi()))&HWORD_DATA_MASK;
	result = (data1<<INT16_BIT) | data0;
	reg().setGPR(instr->rd(),result);	
	 return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3st (SL1Instr* instr) {
	ADDR ad1 = reg().getAR(instr->as1());
	WORD src1 = reg().getGPR(instr->rs0());
	UINT type;

	switch(instr->dtype()){
		case BYTES:		   
		   mmu().writeByte(ad1,src1);
		   type = 1; 
		   break;	   
		case HALF:		   	   
		   mmu().writeHword(ad1,src1);
		   type = 2;
		   break;
		case WORDS:
		   mmu().writeWord(ad1,src1);
		   type = 4;
		   break;
		default:
		AppFatal((0), ("c3.st: invalid dtype(%d),pc@0x%x", instr->dtype(), pc()));
	}
	_updateSize(instr->as1(),instr->am1(),type);
	return pc()+instr->instrsize();		
}



ADDR SL1Exec::execC3sasuba (SL1Instr* instr) {
	AppFatal((instr->as1() != instr->as2()), ("c3.sasub.a: as1's index and as2's index is same ,pc@0x%x", pc()));
	ADDR ad1 = reg().getAR(instr->as1());
	ADDR ad2 = reg().getAR(instr->as2());
	WORD src1 = mmu().readSRAMWordByDmac(ad1,1);
	WORD src2 = mmu().readSRAMWordByDmac(ad2,2);
	DWORD dest = ((DWORD)src1)-src2;

	dest = _saturateGPR32(dest);
	reg().setGPR(instr->rd(), (WORD)dest);
	_updateSize(instr->as1(),instr->am1(),WORDLENGTH);
	_updateSize(instr->as2(),instr->am2(),WORDLENGTH);
	return pc()+instr->instrsize();  

}

ADDR SL1Exec::execC3muls (SL1Instr* instr) {
	WORD src1 = reg().getGPR(instr->rs1());
	WORD src2 = reg().getGPR(instr->rs2());
	UWORD imm5 = instr->imm5() & 0x1f;
	DWORD dest = ((DWORD)(src1)*(DWORD)(src2))<<imm5;
	reg().setHI((dest>>32));
	reg().setGPR(instr->rd(),(dest & WORD_DATA_MASK));
    return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3mulus (SL1Instr* instr) {
	UWORD src1 = reg().getGPR(instr->rs1());
	UWORD src2 = reg().getGPR(instr->rs2());
	UWORD imm5 = instr->imm5()&0x1f;
	DWORD dest = ((((DWORD)src1)&WORD_DATA_MASK)*(((DWORD)src2)&WORD_DATA_MASK))<<imm5;
	reg().setHI((WORD)(dest>>32));
	reg().setGPR(instr->rd(),((WORD)(dest & WORD_DATA_MASK)));
    return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3sasubsh (SL1Instr* instr) {
	WORD src1 = reg().getGPR16(instr->rs1());
	WORD src2 = reg().getGPR16(instr->rs2());
	UWORD imm5 = instr->imm5() & 0x1f;
	DWORD dest = ((DWORD)src1-src2)<<imm5;
	dest = _saturateGPR16(dest);	
	reg().setGPR(instr->rd(), dest);
    return pc()+instr->instrsize();

}

ADDR SL1Exec::execC3saaddsh (SL1Instr* instr) {
	WORD src1 = reg().getGPR16(instr->rs1());
	WORD src2 = reg().getGPR16(instr->rs2());
	UWORD imm5 = instr->imm5() & 0x1f;
	DWORD dest = ((DWORD)src1+src2)<<imm5;
	dest = _saturateGPR16(dest);	
	reg().setGPR(instr->rd(), dest);
    	return pc()+instr->instrsize();
}

ADDR SL1Exec::execC3sasubs (SL1Instr* instr) {
	WORD src1 = reg().getGPR(instr->rs1());
	WORD src2 = reg().getGPR(instr->rs2());
	UWORD imm5 = instr->imm5() & 0x1f;
	DWORD dest = ((DWORD)(src1)-(DWORD)(src2))<<imm5;
	dest = _saturateGPR32(dest);	
	reg().setGPR(instr->rd(), (WORD)dest);
    	return pc()+instr->instrsize();

}

ADDR SL1Exec::execC3ffe (SL1Instr* instr) {
	WORD src1 = reg().getGPR(instr->rs1());
	WORD src2 = reg().getGPR(instr->rs2());
	WORD result;
	switch(instr->ffe_mode())
	{
		case FFT_MOD:
			result = ffe().exec(src1, src2);
			break;
		case VIT_MOD:
			result = viterbi().exec(src1,src2);
			break;
		case TRACE_MOD:
			result = traceback().exec(src1,src2);
			break;
		default:
			AppFatal((0), ("c3.ffe: invalid ffe mode(%d) ,pc@0x%x", instr->ffe_mode(),pc()));
	}
	reg().setSPEC(instr->sd(),result);
	return pc()+instr->instrsize();  
}

ADDR SL1Exec::execC3nega (SL1Instr* instr) {
	DWORD src1 = reg().getACC(instr->accs1());
	DWORD dest;
	#ifdef ACC_64BITS_MOD
	if(src1 == MIN64)
		dest = MAX64;
	else
	#endif
		dest = -src1;
	dest = _calAccResult(dest,instr->acm()&SATURATION_MODE ,instr->M());
	reg().setACC(instr->acc(),dest);
	return pc()+instr->instrsize();		
}


