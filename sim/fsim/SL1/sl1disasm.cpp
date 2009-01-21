/*
 *  File: sl1disasm.cpp
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
#include "sl1mmu.h"
#include "sl1reg.h"
#include "sl1instr.h"
#include "sl1disasm.h"
#include "sl1defs.h"

SL1Disasm::SL1Disasm(SL1MMU& mmu, SL1Register& reg, UINT th_id) 
	: BaseDisasm<SL1MMU, SL1Register, SL1Instr>(mmu, reg, th_id) {
}

/*sl1 core instr disasm*/
STRING SL1Disasm::disasmCore01_01 (ADDR pc, SL1Instr* instr, UINT meta) {
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,r%d,%d <0x%x,0x%x>\n",
          pc,
	      instr->rawbits(),
	      instr->mn(),
	      instr->rd(),
	      instr->rs1(),
	      instr->imm16(),
	      reg().getGPR(instr->rd()),
	      reg().getGPR(instr->rs1()));
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore01_02 (ADDR pc, SL1Instr* instr, UINT meta) {
    ADDR base = reg().getGPR(instr->rs1());
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,r%d,%d <0x%x,0x%x,0x%08x>\n",
          pc,
	      instr->rawbits(),
	      instr->mn(),
	      instr->rs0(),
	      instr->rs1(),
	      instr->offset(),
	      reg().getGPR(instr->rs0()),
	      base,
	      base + instr->offset());
     return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore01_03 (ADDR pc, SL1Instr* instr, UINT meta) {
    ADDR base = reg().getGPR(instr->rs1());
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,r%d,%d <0x%x,0x%x,0x%08x>\n",
          pc,
	      instr->rawbits(),
	      instr->mn(),
	      instr->rd(),
	      instr->rs1(),
	      instr->offset(),
	      reg().getGPR(instr->rd()),
	      base,
	      base + instr->offset());

	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore01_04 (ADDR pc, SL1Instr* instr, UINT meta) {
	ADDR target = (pc & 0xf8000000) | (instr->instr_index()<<OFFSET_SHIFT_JP);
	const STRING name = getSymName(target);
	int cc = sprintf(strbuf(),"0x%08x: 0x%08x  %-5s %d <0x%08x>",
          pc,
	      instr->rawbits(),
	      instr->mn(),
	      instr->instr_index(),
	      target);
	if (name)
     	sprintf(strbuf() + cc, "<%s>\n", name);
     else
     	sprintf(strbuf() + cc, "\n");
     return RET_STRBUF(pc); 
}

STRING SL1Disasm::disasmCore01_05 (ADDR pc, SL1Instr* instr, UINT meta) {
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,%d <0x%x>\n",
          pc,
	      instr->rawbits(),
	      instr->mn(),
	      instr->rd(),
	      instr->imm16(),
	      reg().getGPR(instr->rd()));
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore01_06 (ADDR pc, SL1Instr* instr, UINT meta) {
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d, r%d,%d <0x%x,0x%x>\n",
          pc,
	      instr->rawbits(),
	      instr->mn(),
	      instr->rd(),
	      instr->rs1(),
	      instr->imm16(),
	      reg().getGPR(instr->rd()),
	      reg().getGPR(instr->rs1()) );
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore01_07 (ADDR pc, SL1Instr* instr, UINT meta) {
 	ADDR target = pc+(instr->offset()<<OFFSET_SHIFT_BR);
 	const STRING name = getSymName(target);
    int cc = sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,r%d,%d <0x%x,0x%x,0x%08x>",
          pc,
	      instr->rawbits(),
	      instr->mn(),
	      instr->rd(),
	      instr->rs1(),
	      instr->offset(),
	      reg().getGPR(instr->rd()),
	      reg().getGPR(instr->rs1()),
	      target);
	if (name)
     	sprintf(strbuf() + cc, "<%s>\n", name);
     else
     	sprintf(strbuf() + cc, "\n");      
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore02_01 (ADDR pc, SL1Instr* instr, UINT meta) {
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,r%d <0x%x,0x%x>\n",
          pc,
	      instr->rawbits(),
	      instr->mn(),
	      instr->rd(),
	      instr->rs1(),
	      reg().getGPR(instr->rd()),
	      reg().getGPR(instr->rs1()));
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore02_02 (ADDR pc, SL1Instr* instr, UINT meta) {
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,%d <0x%x>\n",
          pc,
	      instr->rawbits(),
	      instr->mn(),
	      instr->rd(),
	      instr->imm5() & 0x1f,
	      reg().getGPR(instr->rd()));
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore02_03 (ADDR pc, SL1Instr* instr, UINT meta) {
    ADDR target = pc+(instr->offset()<<OFFSET_SHIFT_BR_16);
    const STRING name = getSymName(target);
    int cc = sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,%d <0x%x, 0x%x>",
          pc,
	      instr->rawbits(),
	      instr->mn(),
	      instr->rs0(),
	      instr->offset(),
	      reg().getGPR(instr->rs0()),
	      target);
	if (name)
     	sprintf(strbuf() + cc, "<%s>\n", name);
    else
     	sprintf(strbuf() + cc, "\n");     
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore02_05 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,%d <0x%x>\n",
          pc,
	      instr->rawbits(),
	      instr->mn(),
	      instr->rd(),
	      instr->imm5(),
	      reg().getGPR(instr->rd()));
	return RET_STRBUF(pc);   
}

STRING SL1Disasm::disasmCore02_06 (ADDR pc, SL1Instr* instr, UINT meta) {
    AppFatal((instr->cs1() < ECR_MAX), ("invalid control register name(%d), pc@0x%x", instr->cs1(), pc));
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,%s <0x%x,0x%x>\n",
            pc,
            instr->rawbits(),
            instr->mn(),
            instr->rd(),
            reg_name_ctrl[instr->cs1()],
            reg().getGPR(instr->rd()) ,
            reg().getCTRL(instr->cs1()));
	return RET_STRBUF(pc);	
}

STRING SL1Disasm::disasmCore02_07 (ADDR pc, SL1Instr* instr, UINT meta) {
	AppFatal((instr->cd() < ECR_MAX), ("invalid control register name(%d),pc@0x%x", instr->cs1(), pc));
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s %s,r%d <0x%x,0x%x>\n",
            pc,
            instr->rawbits(),
            instr->mn(),
            reg_name_ctrl[instr->cd()],
            instr->rs1(),
            reg().getCTRL(instr->cd()),
            reg().getGPR(instr->rs1()) );
	return RET_STRBUF(pc);	
}

STRING SL1Disasm::disasmCore02_08 (ADDR pc, SL1Instr* instr, UINT meta) {
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,r%d <0x%x, 0x%x>\n",
          pc,
	      instr->rawbits(),
	      instr->mn(),
	      instr->rd(),
	      instr->rs1(),
	      reg().getGPR(instr->rd()),
	      reg().getGPR(instr->rs1()));
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore02_09 (ADDR pc, SL1Instr* instr, UINT meta) {
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,r%d <0x%x, 0x%x>\n",
          pc,
	      instr->rawbits(),
	      instr->mn(),
	      instr->rs0(),
	      instr->rs1(),
	      reg().getGPR(instr->rs0()),
	      reg().getGPR(instr->rs1()));
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore02_10 (ADDR pc, SL1Instr* instr, UINT meta) {
    ADDR offset = instr->imm4() & 0x1f;
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,%d <0x%x, 0x%x>\n",
          pc,
	      instr->rawbits(),
	      instr->mn(),
	      instr->rd(),
	      offset,
	      reg().getGPR(instr->rd()),
	      reg().getGPR(instr->rs1()) + (offset<<2));
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore02_11 (ADDR pc, SL1Instr* instr, UINT meta) {
    ADDR offset = instr->imm4() & 0x1f;
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,%d <0x%x, 0x%x>\n",
          pc,
	      instr->rawbits(),
	      instr->mn(),
	      instr->rs0(),
	      offset,
	      reg().getGPR(instr->rs0()),
	      reg().getGPR(instr->rs1()) + (offset<<2));
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore03_01 (ADDR pc, SL1Instr* instr, UINT meta) {
	ADDR target = reg().getJA();
	const STRING name = getSymName(target);
    	int cc = sprintf(strbuf(),"0x%08x: 0x%08x  %-5s <0x%08x>",
			pc,
             		instr->rawbits(),
             		instr->mn(),
             		target);
    	if (name)
     		sprintf(strbuf() + cc, "<%s>\n", name);
	else
     		sprintf(strbuf() + cc, "\n");                
	return RET_STRBUF(pc); 
}

STRING SL1Disasm::disasmCore03_02 (ADDR pc, SL1Instr* instr, UINT meta) {
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d <0x%x>\n",
          pc,
	      instr->rawbits(),
	      instr->mn(),
	      instr->rd(),
	      reg().getGPR(instr->rd()));
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore03_03 (ADDR pc, SL1Instr* instr, UINT meta) {
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s %d \n",
          pc,
	      instr->rawbits(),
	      instr->mn(),
	      instr->imm5());
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore03_04 (ADDR pc, SL1Instr* instr, UINT meta) {
	ADDR target = reg().getRA();
	pair<STRING, INT> func_off = getSymOffset(target);
    int cc = sprintf(strbuf(),"0x%08x: 0x%08x  %-5s",
            pc,
            instr->rawbits(),
            instr->mn());
    if (func_off.first) {
		if(func_off.second>=0) {
     		sprintf(strbuf() + cc, " <0x%x> <%s+%d>\n", target, func_off.first, func_off.second);
		}
		else {
			sprintf(strbuf() + cc, " <0x%x> <%s-%d>\n", target, func_off.first, func_off.second);
		}
    }
    else {
     	sprintf(strbuf() + cc, " <0x%x>\n", target);
    }                
    return RET_STRBUF(pc);   
}

STRING SL1Disasm::disasmCore04_01 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s\n",
          pc,
	      instr->rawbits(),
	      instr->mn());
	return RET_STRBUF(pc); 
}

STRING SL1Disasm::disasmCore04_02 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(), 
      "0x%08x: 0x%08x  %-5s r%d,r%d,r%d <0x%x,0x%x,0x%x>\n", 
             pc,
             instr->rawbits(),
             instr->mn(),
             instr->rd(),
             instr->rs1(),
             instr->rs2(),
             reg().getGPR(instr->rd()) ,
             reg().getGPR(instr->rs1()) ,
             reg().getGPR(instr->rs2()) );
             return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore04_03 (ADDR pc, SL1Instr* instr, UINT meta) {
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,r%d,%d,%d <0x%x,0x%x>\n", 
             pc,
             instr->rawbits(),
             instr->mn(),
             instr->rd(),
             instr->rs1(),
             instr->pos(),
             instr->width(),
             reg().getGPR(instr->rd()),
             reg().getGPR(instr->rs1()));
             return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore04_04 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,r%d,r%d,%d <0x%x,0x%x,0x%x>\n",
        	pc,
        	instr->rawbits(),
        	instr->mn(),
        	instr->rd(),
        	instr->rs1(),
			instr->rs2(),
			instr->unsigned_flag(),
        	reg().getGPR(instr->rd()) ,
        	reg().getGPR(instr->rs1()),
			reg().getGPR(instr->rs2()));
	return RET_STRBUF(pc); 
}

STRING SL1Disasm::disasmCore04_05 (ADDR pc, SL1Instr* instr, UINT meta) {
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,r%d <0x%x,0x%x>\n",
            pc,
            instr->rawbits(),
            instr->mn(),
            instr->rd(),
            instr->rs1(),
            reg().getGPR(instr->rd()) ,
            reg().getGPR(instr->rs1()));
            return RET_STRBUF(pc); 
}

STRING SL1Disasm::disasmCore04_06 (ADDR pc, SL1Instr* instr, UINT meta) {
    AppFatal((instr->cs1() < ECR_MAX), ("invalid control register name(%d),pc@0x%x", instr->cs1(), pc));
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,%s <0x%x,0x%x>\n",
            pc,
            instr->rawbits(),
            instr->mn(),
            instr->rd(),
            reg_name_ctrl[instr->cs1()],
            reg().getGPR(instr->rd()) ,
            reg().getCTRL(instr->cs1()));
	return RET_STRBUF(pc);		
    
}

STRING SL1Disasm::disasmCore04_08 (ADDR pc, SL1Instr* instr, UINT meta) {
    AppFatal((instr->cd() < ECR_MAX), ("invalid control register name(%d),pc@0x%x", instr->cs1(), pc));
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s %s,r%d <0x%x,0x%x>\n",
            pc,
            instr->rawbits(),
            instr->mn(),
            reg_name_ctrl[instr->cd()],
            instr->rs1(),
            reg().getCTRL(instr->cd()),
            reg().getGPR(instr->rs1()) );
            return RET_STRBUF(pc);	
}

STRING SL1Disasm::disasmCore04_10 (ADDR pc, SL1Instr* instr, UINT meta) {
	int cc = sprintf(strbuf(),"0x%08x: 0x%08x  %-5s  r%d,r%d,%d <0x%x,0x%x>\n", 
             pc,
             instr->rawbits(),
             instr->mn(),
             instr->rd(),
             instr->rs1(),
             instr->imm16(),
             reg().getGPR(instr->rd()),
             reg().getGPR(instr->rs1()));
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore05_01 (ADDR pc, SL1Instr* instr, UINT meta) {
	ADDR target = pc+(instr->offset()<<OFFSET_SHIFT_BR);
	const STRING name = getSymName(target);
    	int cc = sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,%d <0x%x,0x%08x>",
             pc,
             instr->rawbits(),
             instr->mn(),
             instr->rs1(),
             instr->imm16(),
             reg().getGPR(instr->rs1()),
             target);
     if (name)
     	sprintf(strbuf() + cc, "<%s>\n", name);
     else
     	sprintf(strbuf() + cc, "\n");
     return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore05_02 (ADDR pc, SL1Instr* instr, UINT meta) {
	ADDR target = reg().getRA();
     	pair<STRING, INT> func_off = getSymOffset(target);
     	int cc = sprintf(strbuf(),"0x%08x: 0x%08x  %-5s",
             pc,
             instr->rawbits(),
             instr->mn());
     	if (func_off.first) {
		if(func_off.second>=0) {
     		sprintf(strbuf() + cc, " <0x%x> <%s+%d>\n", target, func_off.first, func_off.second);
		}
		else {
			sprintf(strbuf() + cc, " <0x%x> <%s-%d>\n", target, func_off.first, func_off.second);
		}
     }
     else {
     	sprintf(strbuf() + cc, " <0x%x>\n", target);
     }                
     return RET_STRBUF(pc);     
}

STRING SL1Disasm::disasmCore05_03 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s %d\n",
	         pc,
             instr->rawbits(),
             instr->mn(),
             instr->sysc_id());
	return RET_STRBUF(pc); 
}

STRING SL1Disasm::disasmCore05_04 (ADDR pc, SL1Instr* instr, UINT meta) {
	 sprintf(strbuf(),"0x%08x: 0x%08x  %-5s %d,%d\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->loop_index(),
	       instr->instr_offset() );
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmCore05_05 (ADDR pc, SL1Instr* instr, UINT meta) {
     ADDR target = reg().getJA();
     const STRING name = getSymName(target);
     int cc = sprintf(strbuf(),"0x%08x: 0x%08x  %-5s <0x%08x >",
             pc,
             instr->rawbits(),
             instr->mn(),
             target);
     if (name)
     	sprintf(strbuf() + cc, "<%s>\n", name);
     else
     	sprintf(strbuf() + cc, "\n");                
     return RET_STRBUF(pc);  
}


STRING SL1Disasm::disasmCore05_06 (ADDR pc, SL1Instr* instr, UINT meta) {
	AppFatal((instr->cd() < ECR_MAX), ("invalid control register name(%d),pc@0x%x", instr->cs1(), pc));
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s %s,%d <0x%x>\n",
            pc,
            instr->rawbits(),
            instr->mn(),
            reg_name_ctrl[instr->cd()],
            instr->imm10(),
            reg().getCTRL(instr->cd()));
            return RET_STRBUF(pc);	

}

STRING SL1Disasm::disasmUndefined (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"unknown instruction\n");
	return RET_STRBUF(pc);
}

/*sl1 bb instr disasm*/

STRING SL1Disasm::disasmBb_01 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,r%d,r%d,%d <0x%x,0x%x,0x%x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->rd(),
           instr->rs1(),
           instr->rs2(),
           instr->imm5(),
           reg().getGPR(instr->rd()),
           reg().getGPR(instr->rs1()) ,
           reg().getGPR(instr->rs2()) );
           return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmBb_02 (ADDR pc, SL1Instr* instr, UINT meta) {
	UINT bsel = instr->bsel();   
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,ar%d,%s,ar%d,%s <0x%x,0x%08x,0x%08x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->rd(),
           instr->as1(),
           ar_register_mode[instr->am1()],
           instr->as2(),
           ar_register_mode[instr->am2()],
           //c3_mem_mode[bsel],
           reg().getGPR(instr->rd()) ,
           reg().getAR(instr->as1()),
           reg().getAR(instr->as2()));
    return RET_STRBUF(pc);   
}

STRING SL1Disasm::disasmBb_03 (ADDR pc, SL1Instr* instr, UINT meta) {   
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,acc%d,%d <0x%08x,0x%08x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->acc(), 
           instr->acm(),
           instr->accs1(),
           instr->M(),
           (INT)reg().getACC(instr->acc()),
           (INT)reg().getACC(instr->accs1()));
	return RET_STRBUF(pc);	
}

STRING SL1Disasm::disasmBb_04 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,r%d,%d <0x%08x,0x%08x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->acc(), 
           instr->acm(),
           instr->rs1(),
           instr->M(),
           (INT)reg().getACC(instr->acc()),
           (INT)reg().getGPR(instr->rs1()));
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmBb_05 (ADDR pc, SL1Instr* instr, UINT meta) {
	UINT b_mode = instr->b_mode();
	AppFatal((b_mode>=NOP && b_mode<BIT_MAX), ("invalid b_mode(%d),pc@0x%x", b_mode, pc));
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,r%d,%d,%s <0x%x,0x%x>  \n", 
             pc,
             instr->rawbits(),
             instr->mn(),
             instr->rd(),
             instr->rs1(),
             instr->imm4(),
             c3_bit_mode[b_mode],
             reg().getGPR(instr->rd()) ,
             reg().getGPR(instr->rs1()) );
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmBb_06 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,r%d,%d,%d,%d,%d <0x%08x,0x%x>\n",
	       pc,
	       instr->rawbits(),
	       instr->mn(),
	       instr->acc(),
	       instr->acm(),
	       instr->rs1(),
	       instr->imm4(),
	       instr->mode(),
	       instr->N(),
	       instr->M(),
	       (INT)reg().getACC(instr->acc()),
	       reg().getGPR(instr->rs1()) );
	return RET_STRBUF(pc);	
}

STRING SL1Disasm::disasmBb_07 (ADDR pc, SL1Instr* instr, UINT meta) {
	UINT bsel = instr->bsel();   
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,ar%d,%s,%d,%d,%d,%d <0x%08x,0x%08x>\n",
	       pc,
	       instr->rawbits(),
	       instr->mn(),
	       instr->acc(),
	       instr->acm(),
	       instr->as1(),
	       ar_register_mode[instr->am1()],
	       instr->imm4(),
	       instr->mode(),
	       instr->N(),
	       instr->M(),
	       (INT)reg().getACC(instr->acc()),
	       reg().getAR(instr->as1()));
	return RET_STRBUF(pc);	
}

STRING SL1Disasm::disasmBb_08 (ADDR pc, SL1Instr* instr, UINT meta) {
	UINT type = instr->dtype();
	AppFatal((type<=WORDS && type>=BYTES), ("invalid dtype(%d),pc@0x%x", type, pc));
	UINT bsel = instr->bsel();   
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,ar%d,%s,%s <0x%x,0x%08x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->rd(),
           instr->as1(),
           ar_register_mode[instr->am1()],
           c3_ldst_type[type],
           reg().getGPR(instr->rd()) ,
           reg().getAR(instr->as1()));
	     
	 return RET_STRBUF(pc);  
}

STRING SL1Disasm::disasmBb_09 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,r%d,r%d,%d <0x%08x,0x%x,0x%x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->acc(),
           instr->acm(),
           instr->rs1(),
           instr->rs2(),
           instr->M(),
           (INT)reg().getACC(instr->acc()),
           reg().getGPR(instr->rs1()) ,
           reg().getGPR(instr->rs2()) );
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmBb_10 (ADDR pc, SL1Instr* instr, UINT meta) {  
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,ar%d,%s,ar%d,%s,%d <0x%08x,0x%08x,0x%08x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->acc(), 
           instr->acm(),
           instr->as1(),
           ar_register_mode[instr->am1()],
           instr->as2(),
           ar_register_mode[instr->am2()],
           instr->M(),
           (INT)reg().getACC(instr->acc()),
           reg().getAR(instr->as1()),
           reg().getAR(instr->as2()));
	return RET_STRBUF(pc);	  
}

STRING SL1Disasm::disasmBb_11 (ADDR pc, SL1Instr* instr, UINT meta) { 
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,r%d,ar%d,%s,%d <0x%08x,0x%x,0x%08x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->acc(), 
           instr->acm(),
           instr->rs1(),
           instr->as2(),
           ar_register_mode[instr->am2()],
           instr->M(),
           (INT)reg().getACC(instr->acc()),
           reg().getGPR(instr->rs1()) ,
           reg().getAR(instr->as2()));
	return RET_STRBUF(pc);	 
}

STRING SL1Disasm::disasmBb_12 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,r%d,%d,%d <0x%08x,0x%x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->acc(), 
           instr->acm(),
           instr->rs1(),
           instr->imm9(),
           instr->M(),
           (INT)reg().getACC(instr->acc()),
           reg().getGPR(instr->rs1()));
	return RET_STRBUF(pc);	
}

STRING SL1Disasm::disasmBb_13 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,%d,%d <0x%08x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->acc(), 
           instr->acm(),
           instr->imm5(),
           instr->M(),
           (INT)reg().getACC(instr->acc()));
	return RET_STRBUF(pc);	
}

STRING SL1Disasm::disasmBb_14 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,acc%d,%d,%d <0x%x,0x%08x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->rd(),
           instr->accs1(), 
           instr->acm(),
           instr->imm5(),
           reg().getGPR(instr->rd()),
           (INT)reg().getACC(instr->accs1()));
	return RET_STRBUF(pc);	
}

STRING SL1Disasm::disasmBb_15 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,r%d,r%d <0x%08x,0x%x,0x%x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->acc(),
           instr->acm(),
           instr->rs1(),
           instr->rs2(),
           (INT)reg().getACC(instr->acc()),
           reg().getGPR(instr->rs1()) ,
           reg().getGPR(instr->rs2()) );
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmBb_16 (ADDR pc, SL1Instr* instr, UINT meta) {  
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d, %d,ar%d,%s,ar%d,%s <0x%08x,0x%08x,0x%08x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->acc(), 
           instr->acm(),
           instr->as1(),
           ar_register_mode[instr->am1()],
           instr->as2(),
           ar_register_mode[instr->am2()],
           (INT)reg().getACC(instr->acc()),
           reg().getAR(instr->as1()),
           reg().getAR(instr->as2()));
	return RET_STRBUF(pc);	  
}

STRING SL1Disasm::disasmBb_17 (ADDR pc, SL1Instr* instr, UINT meta) { 
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,r%d,ar%d,%s <0x%08x,0x%x,0x%08x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->acc(), 
           instr->acm(),
           instr->rs1(),
           instr->as2(),
           ar_register_mode[instr->am2()],
           (INT)reg().getACC(instr->acc()),
           reg().getGPR(instr->rs1()) ,
           reg().getAR(instr->as2()));
	return RET_STRBUF(pc);	 
}

STRING SL1Disasm::disasmBb_18 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,r%d,%d <0x%08x,0x%x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->acc(), 
           instr->acm(),
           instr->rs1(),
           instr->imm9(),
           (INT)reg().getACC(instr->acc()),
           reg().getGPR(instr->rs1()));
	return RET_STRBUF(pc);	
}

STRING SL1Disasm::disasmBb_19 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,r%d,%d,%d <0x%08x,0x%x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->acc(), 
           instr->acm(),
           instr->rs1(),
           instr->imm5(),
           instr->M(),
           (INT)reg().getACC(instr->acc()),
           reg().getGPR(instr->rs1()));
	return RET_STRBUF(pc);	
}

STRING SL1Disasm::disasmBb_20 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,acc%d <0x%x,0x%08x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(), 
           instr->rd(),
           instr->accs1(),
           reg().getGPR(instr->rd()) ,
           (INT)reg().getACC(instr->accs1()));
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmBb_21 (ADDR pc, SL1Instr* instr, UINT meta) {
    AppFatal((instr->ss1() < ESR_MAX), ("invalid control register name(%d),pc@0x%x", instr->ss1(), pc));
    UWORD cs = reg().getSPEC(instr->ss1());
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,%s,%d <0x%x,0x%08x>\n",
            pc,
            instr->rawbits(),
            instr->mn(),
            instr->rd(),
            reg_name_c3_spec[instr->ss1()],
            instr->imm5(),
            reg().getGPR(instr->rd()) ,
            cs);		
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmBb_22 (ADDR pc, SL1Instr* instr, UINT meta) {
    AppFatal((instr->sd() < ESR_MAX), ("invalid control register name(%d),pc@0x%x", instr->cd(), pc));
    UWORD cs = reg().getSPEC(instr->sd());
    sprintf(strbuf(),"0x%08x: 0x%08x  %-5s %s,r%d,%d <0x%08x,0x%x>\n",
            pc,
            instr->rawbits(),
            instr->mn(),
            reg_name_c3_spec[instr->sd()],
            instr->rs1(),
            instr->imm5(),
            cs,
            reg().getGPR(instr->rs1()));
	       return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmBb_23 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,r%d,r%d,mac_%d,%d,%d <0x%08x,0x%x,0x%x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->acc(),
           instr->acm(),
           instr->rs1(),
           instr->rs2(),
           instr->mac_mode(),
           instr->N(),
           instr->M(),
           (INT)reg().getACC(instr->acc()),
           reg().getGPR(instr->rs1()) ,
           reg().getGPR(instr->rs2()) );
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmBb_24 (ADDR pc, SL1Instr* instr, UINT meta) {   
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,ar%d,%s,ar%d,%s,%d,%d <0x%08x,0x%08x,0x%08x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->acc(), 
           instr->acm(),
           instr->as1(),
           ar_register_mode[instr->am1()],
           instr->as2(),
           ar_register_mode[instr->am2()],
           instr->N(),
           instr->M(),
           (INT)reg().getACC(instr->acc()),
           reg().getAR(instr->as1()),
           reg().getAR(instr->as2()));
	return RET_STRBUF(pc);	
}

STRING SL1Disasm::disasmBb_25 (ADDR pc, SL1Instr* instr, UINT meta) {
      sprintf(strbuf(),"0x%08x: 0x%08x  %-5s  r%d,r%d,r%d <0x%x,0x%x,0x%x >\n", 
             pc,
             instr->rawbits(),
             instr->mn(),
             instr->rd(),
             instr->rs1(),
             instr->rs2(),
             reg().getGPR(instr->rd()) ,
             reg().getGPR(instr->rs1()) ,
             reg().getGPR(instr->rs2()) );
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmBb_26 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,r%d,%d <0x%x,0x%x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->rd(),
           instr->rs1(),
           instr->imm5(),
           reg().getGPR(instr->rd()) ,
           reg().getGPR(instr->rs1()) );
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmBb_27 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,%d,%d <0x%08x>\n",
	       pc,
	       instr->rawbits(),
	       instr->mn(),
	       instr->acc(),
	       instr->acm(),
	       instr->mode(),
	       instr->M(),
	       (INT)reg().getACC(instr->acc()));
	return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmBb_28 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,r%d,r%d,mac_%d,%d <0x%08x,0x%x,0x%x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->acc(),
           instr->acm(),
           instr->rs1(),
           instr->rs2(),
           instr->mac_mode(),
           instr->N(),
           (INT)reg().getACC(instr->acc()),
           reg().getGPR(instr->rs1()) ,
           reg().getGPR(instr->rs2()) );
	return RET_STRBUF(pc);
}


STRING SL1Disasm::disasmBb_29 (ADDR pc, SL1Instr* instr, UINT meta) {   
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,ar%d,%s,ar%d,%s,%d <0x%08x,0x%08x,0x%08x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->acc(), 
           instr->acm(),
           instr->as1(),
           ar_register_mode[instr->am1()],
           instr->as2(),
           ar_register_mode[instr->am2()],
           instr->N(),
           (INT)reg().getACC(instr->acc()),
           reg().getAR(instr->as1()),
           reg().getAR(instr->as2()));
	return RET_STRBUF(pc);	
}

STRING SL1Disasm::disasmBb_30 (ADDR pc, SL1Instr* instr, UINT meta) {
	UINT type = instr->dtype();
	AppFatal((type==WORDS), ("invalid dtype(%d),pc@0x%x", type, pc));
	UINT bsel = 0;   
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,ar%d,%s,%s <0x%x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->rd(),
           instr->as1(),
           ar_register_mode[1],
           c3_ldst_type[type],
           reg().getGPR(instr->rd()));
	     
	 return RET_STRBUF(pc);  
}

STRING SL1Disasm::disasmBb_31 (ADDR pc, SL1Instr* instr, UINT meta) {
	UINT type = instr->dtype();
	AppFatal((type==WORDS), ("invalid dtype(%d),pc@0x%x", type, pc));
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,ar%d,%s,%s <0x%x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->rs0(),
           instr->as1(),
           ar_register_mode[1],
           c3_ldst_type[type],
           reg().getGPR(instr->rs0()));
	     
	 return RET_STRBUF(pc); 
}

STRING SL1Disasm::disasmBb_32 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,r%d,r%d <0x%x,0x%x,0x%x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->rd(),
           instr->rs1(),
           instr->rs2(),
           reg().getGPR(instr->rd()),
           reg().getGPR(instr->rs1()),
           reg().getGPR(instr->rs2()));
	 return RET_STRBUF(pc); 
}

STRING SL1Disasm::disasmBb_33 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,r%d,r%d,%d <0x%x,0x%x,0x%x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->rd(),
           instr->rs1(),
           instr->rs2(),
           instr->mode(),
           reg().getGPR(instr->rd()),
           reg().getGPR(instr->rs1()),
           reg().getGPR(instr->rs2()));
	 return RET_STRBUF(pc); 
}

STRING SL1Disasm::disasmBb_34 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s  r%d, r%d, %d, %d   <0x%x,0x%x>\n", 
           pc,
           instr->rawbits(),
           instr->mn(),
           instr->rd(),
           instr->rs1(),
		   instr->imm_hi(),
		   instr->imm_lo(),
		   reg().getGPR(instr->rd()) ,
		   reg().getGPR(instr->rs1()));
	return RET_STRBUF(pc);  
}

STRING SL1Disasm::disasmBb_35 (ADDR pc, SL1Instr* instr, UINT meta) {
	UINT type = instr->dtype();
	AppFatal((type==WORDS || type==BYTES || type==HALF), ("invalid dtype(%d),pc@0x%x", type, pc));   
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,%s,ar%d,%s <0x%x,0x%08x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->rs0(),
           c3_ldst_type[type],
           instr->as1(),
           ar_register_mode[instr->am1()],
           reg().getGPR(instr->rd()) ,
           reg().getAR(instr->as1()));
	     
	 return RET_STRBUF(pc); 
}

STRING SL1Disasm::disasmBb_36 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,r%d,r%d,%d <0x%x,0x%x,0x%x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->rd(),
           instr->rs1(),
           instr->rs2(),
           instr->imm5(),
           reg().getGPR(instr->rd()),
           reg().getGPR(instr->rs1()) ,
           reg().getGPR(instr->rs2()) );
           return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmBb_37 (ADDR pc, SL1Instr* instr, UINT meta) {
	AppFatal((instr->ffe_mode()<3), ("invalid ffe mode(%d),pc@0x%x", instr->ffe_mode(), pc));   
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s r%d,r%d,%s <0x%x,0x%x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->rs1(),
           instr->rs2(),
           c3_ffe_mod[instr->ffe_mode()],
           reg().getGPR(instr->rs1()) ,
           reg().getGPR(instr->rs2()) );
           return RET_STRBUF(pc);
}

STRING SL1Disasm::disasmBb_38 (ADDR pc, SL1Instr* instr, UINT meta) {
	sprintf(strbuf(),"0x%08x: 0x%08x  %-5s acc%d,%d,acc%d,%d <0x%08x,0x%08x>\n",
	       pc,
           instr->rawbits(),
           instr->mn(),
           instr->acc(),
           instr->acm(),
           instr->accs1(),
           instr->M(),
           (INT)reg().getACC(instr->acc()) ,
           (INT)reg().getACC(instr->accs1()) );
           return RET_STRBUF(pc);
}



