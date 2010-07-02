#include "topcode.h"
#include "targ_isa_pack.h"


const ISA_PACK_INFO ISA_PACK_info[] = {
  { ISA_PACK_COMP_end     , -1, -1,   -1 },  /* UNDEFINED */
  { ISA_PACK_COMP_opnd    ,  0, 16, 0x0f },  /* p1, OPND0 */
  { ISA_PACK_COMP_opnd+1  ,  0, 20, 0x0f },  /* p1, OPND1 */
  { ISA_PACK_COMP_result  ,  0, 12, 0x0f },  /* p1, RESULT0 */
  { ISA_PACK_COMP_end     , -1, -1,   -1 },  /* p1 */
};


const mUINT8 ISA_PACK_info_index[3311] = {
    1,  /* add32: p1 */
    1,  /* adc32: p1 */
    1,  /* add64: p1 */
    1,  /* addx32: p1 */
    1,  /* addxx32: p1 */
    1,  /* addxxx32: p1 */
    1,  /* addx64: p1 */
    1,  /* addxx64: p1 */
    1,  /* addxxx64: p1 */
    1,  /* addi32: p1 */
    1,  /* adci32: p1 */
    1,  /* addi64: p1 */
    1,  /* add128v8: p1 */
    1,  /* addx128v8: p1 */
    1,  /* addxx128v8: p1 */
    1,  /* addxxx128v8: p1 */
    1,  /* add128v16: p1 */
    1,  /* addx128v16: p1 */
    1,  /* addxx128v16: p1 */
    1,  /* addxxx128v16: p1 */
    1,  /* add128v32: p1 */
    1,  /* addx128v32: p1 */
    1,  /* addxx128v32: p1 */
    1,  /* addxxx128v32: p1 */
    1,  /* add128v64: p1 */
    1,  /* addx128v64: p1 */
    1,  /* addxx128v64: p1 */
    1,  /* addxxx128v64: p1 */
    1,  /* add64v8: p1 */
    1,  /* add64v16: p1 */
    1,  /* add64v32: p1 */
    1,  /* paddsb: p1 */
    1,  /* paddsw: p1 */
    1,  /* paddq: p1 */
    1,  /* psubsb: p1 */
    1,  /* psubsw: p1 */
    1,  /* psubq: p1 */
    1,  /* paddusb: p1 */
    1,  /* paddusw: p1 */
    1,  /* psubusb: p1 */
    1,  /* psubusw: p1 */
    1,  /* pmullw: p1 */
    1,  /* pmulhw: p1 */
    1,  /* pmulhuw: p1 */
    1,  /* pmuludq: p1 */
    1,  /* pmaddwd: p1 */
    1,  /* paddsb128: p1 */
    1,  /* paddsw128: p1 */
    1,  /* paddq128: p1 */
    1,  /* psubsb128: p1 */
    1,  /* psubsw128: p1 */
    1,  /* psubq128: p1 */
    1,  /* paddusb128: p1 */
    1,  /* paddusw128: p1 */
    1,  /* psubusb128: p1 */
    1,  /* psubusw128: p1 */
    1,  /* pmullw128: p1 */
    1,  /* pmulhw128: p1 */
    1,  /* pmulhuw128: p1 */
    1,  /* pmuludq128: p1 */
    1,  /* pmaddwd128: p1 */
    1,  /* and8: p1 */
    1,  /* and16: p1 */
    1,  /* and32: p1 */
    1,  /* andx32: p1 */
    1,  /* andxx32: p1 */
    1,  /* andxxx32: p1 */
    1,  /* and64: p1 */
    1,  /* andx64: p1 */
    1,  /* andxx64: p1 */
    1,  /* andxxx64: p1 */
    1,  /* andx8: p1 */
    1,  /* andx16: p1 */
    1,  /* andxx8: p1 */
    1,  /* andxxx8: p1 */
    1,  /* andxx16: p1 */
    1,  /* andxxx16: p1 */
    1,  /* and128v8: p1 */
    1,  /* andx128v8: p1 */
    1,  /* andxx128v8: p1 */
    1,  /* andxxx128v8: p1 */
    1,  /* and128v16: p1 */
    1,  /* andx128v16: p1 */
    1,  /* andxx128v16: p1 */
    1,  /* andxxx128v16: p1 */
    1,  /* and128v32: p1 */
    1,  /* andx128v32: p1 */
    1,  /* andxx128v32: p1 */
    1,  /* andxxx128v32: p1 */
    1,  /* and128v64: p1 */
    1,  /* andx128v64: p1 */
    1,  /* andxx128v64: p1 */
    1,  /* andxxx128v64: p1 */
    1,  /* andi32: p1 */
    1,  /* andi64: p1 */
    1,  /* call: p1 */
    1,  /* icall: p1 */
    1,  /* icallx: p1 */
    1,  /* icallxx: p1 */
    1,  /* icallxxx: p1 */
    1,  /* cmp8: p1 */
    1,  /* cmpx8: p1 */
    1,  /* cmpxx8: p1 */
    1,  /* cmpxxx8: p1 */
    1,  /* cmp16: p1 */
    1,  /* cmpx16: p1 */
    1,  /* cmpxx16: p1 */
    1,  /* cmpxxx16: p1 */
    1,  /* cmp32: p1 */
    1,  /* cmpx32: p1 */
    1,  /* cmpxx32: p1 */
    1,  /* cmpxxx32: p1 */
    1,  /* cmp64: p1 */
    1,  /* cmpx64: p1 */
    1,  /* cmpxx64: p1 */
    1,  /* cmpxxx64: p1 */
    1,  /* cmpi8: p1 */
    1,  /* cmpxr8: p1 */
    1,  /* cmpxi8: p1 */
    1,  /* cmpxxr8: p1 */
    1,  /* cmpxxi8: p1 */
    1,  /* cmpxxxr8: p1 */
    1,  /* cmpxxxi8: p1 */
    1,  /* cmpi16: p1 */
    1,  /* cmpxr16: p1 */
    1,  /* cmpxi16: p1 */
    1,  /* cmpxxr16: p1 */
    1,  /* cmpxxi16: p1 */
    1,  /* cmpxxxr16: p1 */
    1,  /* cmpxxxi16: p1 */
    1,  /* cmpi32: p1 */
    1,  /* cmpxr32: p1 */
    1,  /* cmpxi32: p1 */
    1,  /* cmpxxr32: p1 */
    1,  /* cmpxxi32: p1 */
    1,  /* cmpxxxr32: p1 */
    1,  /* cmpxxxi32: p1 */
    1,  /* cmpi64: p1 */
    1,  /* cmpxr64: p1 */
    1,  /* cmpxi64: p1 */
    1,  /* cmpxxr64: p1 */
    1,  /* cmpxxi64: p1 */
    1,  /* cmpxxxr64: p1 */
    1,  /* cmpxxxi64: p1 */
    1,  /* cmovb: p1 */
    1,  /* cmovae: p1 */
    1,  /* cmovp: p1 */
    1,  /* cmovnp: p1 */
    1,  /* cmove: p1 */
    1,  /* cmovne: p1 */
    1,  /* cmovbe: p1 */
    1,  /* cmova: p1 */
    1,  /* cmovl: p1 */
    1,  /* cmovge: p1 */
    1,  /* cmovle: p1 */
    1,  /* cmovg: p1 */
    1,  /* cmovs: p1 */
    1,  /* cmovns: p1 */
    1,  /* div32: p1 */
    1,  /* div64: p1 */
    1,  /* enter: p1 */
    1,  /* idiv32: p1 */
    1,  /* idiv64: p1 */
    1,  /* imul32: p1 */
    1,  /* imulx32: p1 */
    1,  /* imul64: p1 */
    1,  /* imuli32: p1 */
    1,  /* imuli64: p1 */
    1,  /* imulx64: p1 */
    1,  /* mul128v16: p1 */
    1,  /* inc8: p1 */
    1,  /* dec8: p1 */
    1,  /* inc16: p1 */
    1,  /* dec16: p1 */
    1,  /* inc32: p1 */
    1,  /* dec32: p1 */
    1,  /* inc64: p1 */
    1,  /* dec64: p1 */
    1,  /* jb: p1 */
    1,  /* jae: p1 */
    1,  /* jp: p1 */
    1,  /* jnp: p1 */
    1,  /* je: p1 */
    1,  /* jne: p1 */
    1,  /* jbe: p1 */
    1,  /* ja: p1 */
    1,  /* jl: p1 */
    1,  /* jge: p1 */
    1,  /* jle: p1 */
    1,  /* jg: p1 */
    1,  /* jcxz: p1 */
    1,  /* jecxz: p1 */
    1,  /* jrcxz: p1 */
    1,  /* js: p1 */
    1,  /* jns: p1 */
    1,  /* jmp: p1 */
    1,  /* ijmp: p1 */
    1,  /* ijmpx: p1 */
    1,  /* ijmpxx: p1 */
    1,  /* ijmpxxx: p1 */
    1,  /* ld64: p1 */
    1,  /* ldx64: p1 */
    1,  /* ldxx64: p1 */
    1,  /* ld64_2m: p1 */
    1,  /* ld64_2sse: p1 */
    1,  /* lea32: p1 */
    1,  /* lea64: p1 */
    1,  /* leax32: p1 */
    1,  /* leax64: p1 */
    1,  /* leaxx32: p1 */
    1,  /* leaxx64: p1 */
    1,  /* leave: p1 */
    1,  /* ldc32: p1 */
    1,  /* ldc64: p1 */
    1,  /* mul32: p1 */
    1,  /* mulx64: p1 */
    1,  /* mov32: p1 */
    1,  /* mov64: p1 */
    1,  /* mov64_m: p1 */
    1,  /* ld32_64_off: p1 */
    1,  /* ld64_off: p1 */
    1,  /* store64_off: p1 */
    1,  /* ld8_32_n32: p1 */
    1,  /* ldu8_32_n32: p1 */
    1,  /* ld16_32_n32: p1 */
    1,  /* ldu16_32_n32: p1 */
    1,  /* ld32_n32: p1 */
    1,  /* ldss_n32: p1 */
    1,  /* ldsd_n32: p1 */
    1,  /* ldaps_n32: p1 */
    1,  /* ldapd_n32: p1 */
    1,  /* ldups_n32: p1 */
    1,  /* ldupd_n32: p1 */
    1,  /* lddqa_n32: p1 */
    1,  /* lddqu_n32: p1 */
    1,  /* ldlps_n32: p1 */
    1,  /* ldlpd_n32: p1 */
    1,  /* ldhps_n32: p1 */
    1,  /* ldhpd_n32: p1 */
    1,  /* ld64_2m_n32: p1 */
    1,  /* ld64_2sse_n32: p1 */
    1,  /* store8_n32: p1 */
    1,  /* store16_n32: p1 */
    1,  /* store32_n32: p1 */
    1,  /* stss_n32: p1 */
    1,  /* stsd_n32: p1 */
    1,  /* staps_n32: p1 */
    1,  /* stapd_n32: p1 */
    1,  /* stdqa_n32: p1 */
    1,  /* stdqu_n32: p1 */
    1,  /* stlps_n32: p1 */
    1,  /* sthps_n32: p1 */
    1,  /* stlpd_n32: p1 */
    1,  /* sthpd_n32: p1 */
    1,  /* store64_fm_n32: p1 */
    1,  /* store64_fsse_n32: p1 */
    1,  /* ld32_gs_seg_off: p1 */
    1,  /* ld64_fs_seg_off: p1 */
    1,  /* movsbl: p1 */
    1,  /* ld8_32: p1 */
    1,  /* ldx8_32: p1 */
    1,  /* ldxx8_32: p1 */
    1,  /* movzbl: p1 */
    1,  /* ldu8_32: p1 */
    1,  /* ldxu8_32: p1 */
    1,  /* ldxxu8_32: p1 */
    1,  /* movswl: p1 */
    1,  /* ld16_32: p1 */
    1,  /* ldx16_32: p1 */
    1,  /* ldxx16_32: p1 */
    1,  /* movzwl: p1 */
    1,  /* ldu16_32: p1 */
    1,  /* ldxu16_32: p1 */
    1,  /* ldxxu16_32: p1 */
    1,  /* movsbq: p1 */
    1,  /* ld8_64: p1 */
    1,  /* ldx8_64: p1 */
    1,  /* ldxx8_64: p1 */
    1,  /* ld8_64_off: p1 */
    1,  /* movzbq: p1 */
    1,  /* ldu8_64: p1 */
    1,  /* ldxu8_64: p1 */
    1,  /* ldxxu8_64: p1 */
    1,  /* ldu8_64_off: p1 */
    1,  /* movswq: p1 */
    1,  /* ld16_64: p1 */
    1,  /* ldx16_64: p1 */
    1,  /* ldxx16_64: p1 */
    1,  /* ld16_64_off: p1 */
    1,  /* movzwq: p1 */
    1,  /* ldu16_64: p1 */
    1,  /* ldxu16_64: p1 */
    1,  /* ldxxu16_64: p1 */
    1,  /* ldu16_64_off: p1 */
    1,  /* movslq: p1 */
    1,  /* ld32_64: p1 */
    1,  /* ldx32_64: p1 */
    1,  /* ldxx32_64: p1 */
    1,  /* ld32: p1 */
    1,  /* ldx32: p1 */
    1,  /* ldxx32: p1 */
    1,  /* movzlq: p1 */
    1,  /* neg8: p1 */
    1,  /* neg16: p1 */
    1,  /* neg32: p1 */
    1,  /* neg64: p1 */
    1,  /* not8: p1 */
    1,  /* not16: p1 */
    1,  /* not32: p1 */
    1,  /* not64: p1 */
    1,  /* or8: p1 */
    1,  /* or16: p1 */
    1,  /* or32: p1 */
    1,  /* orx32: p1 */
    1,  /* orxx32: p1 */
    1,  /* orxxx32: p1 */
    1,  /* or64: p1 */
    1,  /* orx64: p1 */
    1,  /* orxx64: p1 */
    1,  /* orxxx64: p1 */
    1,  /* orx8: p1 */
    1,  /* orx16: p1 */
    1,  /* orxx8: p1 */
    1,  /* orxxx8: p1 */
    1,  /* orxx16: p1 */
    1,  /* orxxx16: p1 */
    1,  /* or128v8: p1 */
    1,  /* orx128v8: p1 */
    1,  /* orxx128v8: p1 */
    1,  /* orxxx128v8: p1 */
    1,  /* or128v16: p1 */
    1,  /* orx128v16: p1 */
    1,  /* orxx128v16: p1 */
    1,  /* orxxx128v16: p1 */
    1,  /* or128v32: p1 */
    1,  /* orx128v32: p1 */
    1,  /* orxx128v32: p1 */
    1,  /* orxxx128v32: p1 */
    1,  /* or128v64: p1 */
    1,  /* orx128v64: p1 */
    1,  /* orxx128v64: p1 */
    1,  /* orxxx128v64: p1 */
    1,  /* ori32: p1 */
    1,  /* ori64: p1 */
    1,  /* popl: p1 */
    1,  /* popq: p1 */
    1,  /* pushl: p1 */
    1,  /* pushq: p1 */
    1,  /* ret: p1 */
    1,  /* reti: p1 */
    1,  /* ror8: p1 */
    1,  /* ror16: p1 */
    1,  /* ror32: p1 */
    1,  /* ror64: p1 */
    1,  /* rori8: p1 */
    1,  /* rori16: p1 */
    1,  /* rori32: p1 */
    1,  /* rori64: p1 */
    1,  /* rol8: p1 */
    1,  /* rol16: p1 */
    1,  /* rol32: p1 */
    1,  /* rol64: p1 */
    1,  /* roli8: p1 */
    1,  /* roli16: p1 */
    1,  /* roli32: p1 */
    1,  /* roli64: p1 */
    1,  /* prefetch: p1 */
    1,  /* prefetchw: p1 */
    1,  /* prefetcht0: p1 */
    1,  /* prefetcht1: p1 */
    1,  /* prefetchnta: p1 */
    1,  /* prefetchx: p1 */
    1,  /* prefetchxx: p1 */
    1,  /* prefetchwx: p1 */
    1,  /* prefetchwxx: p1 */
    1,  /* prefetcht0x: p1 */
    1,  /* prefetcht0xx: p1 */
    1,  /* prefetcht1x: p1 */
    1,  /* prefetcht1xx: p1 */
    1,  /* prefetchntax: p1 */
    1,  /* prefetchntaxx: p1 */
    1,  /* setb: p1 */
    1,  /* setae: p1 */
    1,  /* setp: p1 */
    1,  /* setnp: p1 */
    1,  /* sete: p1 */
    1,  /* setne: p1 */
    1,  /* setbe: p1 */
    1,  /* seta: p1 */
    1,  /* setl: p1 */
    1,  /* setge: p1 */
    1,  /* setle: p1 */
    1,  /* setg: p1 */
    1,  /* setc: p1 */
    1,  /* seto: p1 */
    1,  /* sets: p1 */
    1,  /* setz: p1 */
    1,  /* store8: p1 */
    1,  /* storex8: p1 */
    1,  /* storexx8: p1 */
    1,  /* store16: p1 */
    1,  /* storex16: p1 */
    1,  /* storexx16: p1 */
    1,  /* store32: p1 */
    1,  /* storex32: p1 */
    1,  /* storexx32: p1 */
    1,  /* store64: p1 */
    1,  /* storex64: p1 */
    1,  /* storexx64: p1 */
    1,  /* store64_fm: p1 */
    1,  /* store64_fsse: p1 */
    1,  /* storenti32: p1 */
    1,  /* storentix32: p1 */
    1,  /* storentixx32: p1 */
    1,  /* storenti64: p1 */
    1,  /* storentix64: p1 */
    1,  /* storentixx64: p1 */
    1,  /* storenti128: p1 */
    1,  /* sar32: p1 */
    1,  /* sar64: p1 */
    1,  /* sari32: p1 */
    1,  /* sari64: p1 */
    1,  /* shl32: p1 */
    1,  /* shld32: p1 */
    1,  /* shldi32: p1 */
    1,  /* shrd32: p1 */
    1,  /* shrdi32: p1 */
    1,  /* shl64: p1 */
    1,  /* shli32: p1 */
    1,  /* shli64: p1 */
    1,  /* shr32: p1 */
    1,  /* shr64: p1 */
    1,  /* shri32: p1 */
    1,  /* shri64: p1 */
    1,  /* sub32: p1 */
    1,  /* sbb32: p1 */
    1,  /* sub64: p1 */
    1,  /* subx32: p1 */
    1,  /* subx64: p1 */
    1,  /* subxx32: p1 */
    1,  /* subxxx32: p1 */
    1,  /* subxx64: p1 */
    1,  /* subxxx64: p1 */
    1,  /* subi32: p1 */
    1,  /* sbbi32: p1 */
    1,  /* subi64: p1 */
    1,  /* sub128v8: p1 */
    1,  /* subx128v8: p1 */
    1,  /* subxx128v8: p1 */
    1,  /* subxxx128v8: p1 */
    1,  /* sub128v16: p1 */
    1,  /* subx128v16: p1 */
    1,  /* subxx128v16: p1 */
    1,  /* subxxx128v16: p1 */
    1,  /* sub128v32: p1 */
    1,  /* subx128v32: p1 */
    1,  /* subxx128v32: p1 */
    1,  /* subxxx128v32: p1 */
    1,  /* sub128v64: p1 */
    1,  /* subx128v64: p1 */
    1,  /* subxx128v64: p1 */
    1,  /* subxxx128v64: p1 */
    1,  /* sub64v8: p1 */
    1,  /* sub64v16: p1 */
    1,  /* sub64v32: p1 */
    1,  /* test32: p1 */
    1,  /* testx32: p1 */
    1,  /* testxx32: p1 */
    1,  /* testxxx32: p1 */
    1,  /* test64: p1 */
    1,  /* testx64: p1 */
    1,  /* testxx64: p1 */
    1,  /* testxxx64: p1 */
    1,  /* testi32: p1 */
    1,  /* testi64: p1 */
    1,  /* xor8: p1 */
    1,  /* xor16: p1 */
    1,  /* xor32: p1 */
    1,  /* xorx32: p1 */
    1,  /* xorxx32: p1 */
    1,  /* xorxxx32: p1 */
    1,  /* xor64: p1 */
    1,  /* xorx64: p1 */
    1,  /* xorxx64: p1 */
    1,  /* xorxxx64: p1 */
    1,  /* xorx8: p1 */
    1,  /* xorx16: p1 */
    1,  /* xorxx8: p1 */
    1,  /* xorxxx8: p1 */
    1,  /* xorxx16: p1 */
    1,  /* xorxxx16: p1 */
    1,  /* xor128v8: p1 */
    1,  /* xorx128v8: p1 */
    1,  /* xorxx128v8: p1 */
    1,  /* xorxxx128v8: p1 */
    1,  /* xor128v16: p1 */
    1,  /* xorx128v16: p1 */
    1,  /* xorxx128v16: p1 */
    1,  /* xorxxx128v16: p1 */
    1,  /* xor128v32: p1 */
    1,  /* xorx128v32: p1 */
    1,  /* xorxx128v32: p1 */
    1,  /* xorxxx128v32: p1 */
    1,  /* xor128v64: p1 */
    1,  /* xorx128v64: p1 */
    1,  /* xorxx128v64: p1 */
    1,  /* xorxxx128v64: p1 */
    1,  /* xori32: p1 */
    1,  /* xori64: p1 */
    1,  /* fxor128v32: p1 */
    1,  /* fxorx128v32: p1 */
    1,  /* fxorxx128v32: p1 */
    1,  /* fxorxxx128v32: p1 */
    1,  /* fxor128v64: p1 */
    1,  /* fxorx128v64: p1 */
    1,  /* fxorxx128v64: p1 */
    1,  /* fxorxxx128v64: p1 */
    1,  /* xorps: p1 */
    1,  /* xorpd: p1 */
    1,  /* addsd: p1 */
    1,  /* addss: p1 */
    1,  /* addxsd: p1 */
    1,  /* addxss: p1 */
    1,  /* addxxsd: p1 */
    1,  /* addxxxsd: p1 */
    1,  /* addxxss: p1 */
    1,  /* addxxxss: p1 */
    1,  /* faddsub128v32: p1 */
    1,  /* faddsubx128v32: p1 */
    1,  /* faddsubxx128v32: p1 */
    1,  /* faddsubxxx128v32: p1 */
    1,  /* faddsub128v64: p1 */
    1,  /* faddsubx128v64: p1 */
    1,  /* faddsubxx128v64: p1 */
    1,  /* faddsubxxx128v64: p1 */
    1,  /* fadd128v32: p1 */
    1,  /* faddx128v32: p1 */
    1,  /* faddxx128v32: p1 */
    1,  /* faddxxx128v32: p1 */
    1,  /* fadd128v64: p1 */
    1,  /* faddx128v64: p1 */
    1,  /* faddxx128v64: p1 */
    1,  /* faddxxx128v64: p1 */
    1,  /* fhadd128v32: p1 */
    1,  /* fhaddx128v32: p1 */
    1,  /* fhaddxx128v32: p1 */
    1,  /* fhaddxxx128v32: p1 */
    1,  /* fhadd128v64: p1 */
    1,  /* fhaddx128v64: p1 */
    1,  /* fhaddxx128v64: p1 */
    1,  /* fhaddxxx128v64: p1 */
    1,  /* fand128v32: p1 */
    1,  /* fandx128v32: p1 */
    1,  /* fandxx128v32: p1 */
    1,  /* fandxxx128v32: p1 */
    1,  /* fand128v64: p1 */
    1,  /* fandx128v64: p1 */
    1,  /* fandxx128v64: p1 */
    1,  /* fandxxx128v64: p1 */
    1,  /* andps: p1 */
    1,  /* andpd: p1 */
    1,  /* andnps: p1 */
    1,  /* andnpd: p1 */
    1,  /* for128v32: p1 */
    1,  /* forx128v32: p1 */
    1,  /* forxx128v32: p1 */
    1,  /* forxxx128v32: p1 */
    1,  /* for128v64: p1 */
    1,  /* forx128v64: p1 */
    1,  /* forxx128v64: p1 */
    1,  /* forxxx128v64: p1 */
    1,  /* orps: p1 */
    1,  /* orpd: p1 */
    1,  /* comisd: p1 */
    1,  /* comixsd: p1 */
    1,  /* comixxsd: p1 */
    1,  /* comixxxsd: p1 */
    1,  /* comiss: p1 */
    1,  /* comixss: p1 */
    1,  /* comixxss: p1 */
    1,  /* comixxxss: p1 */
    1,  /* cmpss: p1 */
    1,  /* cmpsd: p1 */
    1,  /* cmpps: p1 */
    1,  /* cmppd: p1 */
    1,  /* cmpeq128v8: p1 */
    1,  /* cmpeq128v16: p1 */
    1,  /* cmpeq128v32: p1 */
    1,  /* cmpeqx128v8: p1 */
    1,  /* cmpeqx128v16: p1 */
    1,  /* cmpeqx128v32: p1 */
    1,  /* cmpeqxx128v8: p1 */
    1,  /* cmpeqxx128v16: p1 */
    1,  /* cmpeqxx128v32: p1 */
    1,  /* cmpeqxxx128v8: p1 */
    1,  /* cmpeqxxx128v16: p1 */
    1,  /* cmpeqxxx128v32: p1 */
    1,  /* cmpgt128v8: p1 */
    1,  /* cmpgt128v16: p1 */
    1,  /* cmpgt128v32: p1 */
    1,  /* cmpgtx128v8: p1 */
    1,  /* cmpgtx128v16: p1 */
    1,  /* cmpgtx128v32: p1 */
    1,  /* cmpgtxx128v8: p1 */
    1,  /* cmpgtxx128v16: p1 */
    1,  /* cmpgtxx128v32: p1 */
    1,  /* cmpgtxxx128v8: p1 */
    1,  /* cmpgtxxx128v16: p1 */
    1,  /* cmpgtxxx128v32: p1 */
    1,  /* pcmpeqb: p1 */
    1,  /* pcmpeqw: p1 */
    1,  /* pcmpeqd: p1 */
    1,  /* pcmpgtb: p1 */
    1,  /* pcmpgtw: p1 */
    1,  /* pcmpgtd: p1 */
    1,  /* fmovsldup: p1 */
    1,  /* fmovshdup: p1 */
    1,  /* fmovddup: p1 */
    1,  /* fmovsldupx: p1 */
    1,  /* fmovshdupx: p1 */
    1,  /* fmovddupx: p1 */
    1,  /* fmovsldupxx: p1 */
    1,  /* fmovshdupxx: p1 */
    1,  /* fmovddupxx: p1 */
    1,  /* fmovsldupxxx: p1 */
    1,  /* fmovshdupxxx: p1 */
    1,  /* fmovddupxxx: p1 */
    1,  /* cltd: p1 */
    1,  /* cqto: p1 */
    1,  /* cvtss2sd: p1 */
    1,  /* cvtsd2ss: p1 */
    1,  /* cvtsd2ss_x: p1 */
    1,  /* cvtsd2ss_xx: p1 */
    1,  /* cvtsd2ss_xxx: p1 */
    1,  /* cvtsi2sd: p1 */
    1,  /* cvtsi2sd_x: p1 */
    1,  /* cvtsi2sd_xx: p1 */
    1,  /* cvtsi2sd_xxx: p1 */
    1,  /* cvtsi2ss: p1 */
    1,  /* cvtsi2ss_x: p1 */
    1,  /* cvtsi2ss_xx: p1 */
    1,  /* cvtsi2ss_xxx: p1 */
    1,  /* cvtsi2sdq: p1 */
    1,  /* cvtsi2sdq_x: p1 */
    1,  /* cvtsi2sdq_xx: p1 */
    1,  /* cvtsi2sdq_xxx: p1 */
    1,  /* cvtsi2ssq: p1 */
    1,  /* cvtsi2ssq_x: p1 */
    1,  /* cvtsi2ssq_xx: p1 */
    1,  /* cvtsi2ssq_xxx: p1 */
    1,  /* cvtss2si: p1 */
    1,  /* cvtsd2si: p1 */
    1,  /* cvtss2siq: p1 */
    1,  /* cvtsd2siq: p1 */
    1,  /* cvttss2si: p1 */
    1,  /* cvttsd2si: p1 */
    1,  /* cvttss2siq: p1 */
    1,  /* cvttsd2siq: p1 */
    1,  /* cvtdq2pd: p1 */
    1,  /* cvtdq2ps: p1 */
    1,  /* cvtps2pd: p1 */
    1,  /* cvtpd2ps: p1 */
    1,  /* cvtps2dq: p1 */
    1,  /* cvttps2dq: p1 */
    1,  /* cvtpd2dq: p1 */
    1,  /* cvttpd2dq: p1 */
    1,  /* cvtdq2pd_x: p1 */
    1,  /* cvtdq2ps_x: p1 */
    1,  /* cvtps2pd_x: p1 */
    1,  /* cvtpd2ps_x: p1 */
    1,  /* cvtps2dq_x: p1 */
    1,  /* cvtpd2dq_x: p1 */
    1,  /* cvttps2dq_x: p1 */
    1,  /* cvttpd2dq_x: p1 */
    1,  /* cvtdq2pd_xx: p1 */
    1,  /* cvtdq2ps_xx: p1 */
    1,  /* cvtps2pd_xx: p1 */
    1,  /* cvtpd2ps_xx: p1 */
    1,  /* cvtps2dq_xx: p1 */
    1,  /* cvtpd2dq_xx: p1 */
    1,  /* cvttps2dq_xx: p1 */
    1,  /* cvttpd2dq_xx: p1 */
    1,  /* cvtdq2pd_xxx: p1 */
    1,  /* cvtdq2ps_xxx: p1 */
    1,  /* cvtps2pd_xxx: p1 */
    1,  /* cvtpd2ps_xxx: p1 */
    1,  /* cvtps2dq_xxx: p1 */
    1,  /* cvtpd2dq_xxx: p1 */
    1,  /* cvttps2dq_xxx: p1 */
    1,  /* cvttpd2dq_xxx: p1 */
    1,  /* cvtpi2ps: p1 */
    1,  /* cvtps2pi: p1 */
    1,  /* cvttps2pi: p1 */
    1,  /* cvtpi2pd: p1 */
    1,  /* cvtpd2pi: p1 */
    1,  /* cvttpd2pi: p1 */
    1,  /* ldsd: p1 */
    1,  /* ldsdx: p1 */
    1,  /* ldsdxx: p1 */
    1,  /* ldss: p1 */
    1,  /* ldssx: p1 */
    1,  /* ldssxx: p1 */
    1,  /* lddqa: p1 */
    1,  /* lddqu: p1 */
    1,  /* ldlps: p1 */
    1,  /* ldhps: p1 */
    1,  /* ldlpd: p1 */
    1,  /* ldhpd: p1 */
    1,  /* stdqa: p1 */
    1,  /* stdqu: p1 */
    1,  /* stlps: p1 */
    1,  /* sthps: p1 */
    1,  /* stlpd: p1 */
    1,  /* storelpd: p1 */
    1,  /* sthpd: p1 */
    1,  /* stntpd: p1 */
    1,  /* stntps: p1 */
    1,  /* storent64_fm: p1 */
    1,  /* lddqax: p1 */
    1,  /* lddqux: p1 */
    1,  /* ldlpsx: p1 */
    1,  /* ldhpsx: p1 */
    1,  /* ldlpdx: p1 */
    1,  /* ldhpdx: p1 */
    1,  /* stdqax: p1 */
    1,  /* stntpdx: p1 */
    1,  /* stntpsx: p1 */
    1,  /* stdqux: p1 */
    1,  /* stlpsx: p1 */
    1,  /* sthpsx: p1 */
    1,  /* stlpdx: p1 */
    1,  /* sthpdx: p1 */
    1,  /* lddqaxx: p1 */
    1,  /* lddquxx: p1 */
    1,  /* ldlpsxx: p1 */
    1,  /* ldhpsxx: p1 */
    1,  /* ldlpdxx: p1 */
    1,  /* ldhpdxx: p1 */
    1,  /* ldaps: p1 */
    1,  /* ldapsx: p1 */
    1,  /* ldapsxx: p1 */
    1,  /* ldapd: p1 */
    1,  /* ldapdx: p1 */
    1,  /* ldapdxx: p1 */
    1,  /* ldups: p1 */
    1,  /* ldupd: p1 */
    1,  /* ldupdx: p1 */
    1,  /* ldupdxx: p1 */
    1,  /* stdqaxx: p1 */
    1,  /* stntpdxx: p1 */
    1,  /* stntpsxx: p1 */
    1,  /* stdquxx: p1 */
    1,  /* stlpsxx: p1 */
    1,  /* sthpsxx: p1 */
    1,  /* stlpdxx: p1 */
    1,  /* sthpdxx: p1 */
    1,  /* staps: p1 */
    1,  /* stapsx: p1 */
    1,  /* stapsxx: p1 */
    1,  /* stapd: p1 */
    1,  /* stapdx: p1 */
    1,  /* stapdxx: p1 */
    1,  /* stups: p1 */
    1,  /* stupd: p1 */
    1,  /* maxsd: p1 */
    1,  /* maxss: p1 */
    1,  /* fmax128v32: p1 */
    1,  /* fmaxx128v32: p1 */
    1,  /* fmaxxx128v32: p1 */
    1,  /* fmaxxxx128v32: p1 */
    1,  /* fmax128v64: p1 */
    1,  /* fmaxx128v64: p1 */
    1,  /* fmaxxx128v64: p1 */
    1,  /* fmaxxxx128v64: p1 */
    1,  /* max128v16: p1 */
    1,  /* max128v8: p1 */
    1,  /* maxx128v16: p1 */
    1,  /* maxx128v8: p1 */
    1,  /* maxxx128v16: p1 */
    1,  /* maxxx128v8: p1 */
    1,  /* maxxxx128v16: p1 */
    1,  /* maxxxx128v8: p1 */
    1,  /* max64v8: p1 */
    1,  /* max64v16: p1 */
    1,  /* min128v16: p1 */
    1,  /* min128v8: p1 */
    1,  /* minx128v16: p1 */
    1,  /* minx128v8: p1 */
    1,  /* minxx128v16: p1 */
    1,  /* minxx128v8: p1 */
    1,  /* minxxx128v16: p1 */
    1,  /* minxxx128v8: p1 */
    1,  /* min64v8: p1 */
    1,  /* min64v16: p1 */
    1,  /* minsd: p1 */
    1,  /* minss: p1 */
    1,  /* fmin128v32: p1 */
    1,  /* fminx128v32: p1 */
    1,  /* fminxx128v32: p1 */
    1,  /* fminxxx128v32: p1 */
    1,  /* fmin128v64: p1 */
    1,  /* fminx128v64: p1 */
    1,  /* fminxx128v64: p1 */
    1,  /* fminxxx128v64: p1 */
    1,  /* movx2g64: p1 */
    1,  /* movx2g: p1 */
    1,  /* movg2x64: p1 */
    1,  /* movg2x: p1 */
    1,  /* movsd: p1 */
    1,  /* movss: p1 */
    1,  /* movdq: p1 */
    1,  /* movapd: p1 */
    1,  /* movaps: p1 */
    1,  /* movq2dq: p1 */
    1,  /* movdq2q: p1 */
    1,  /* divsd: p1 */
    1,  /* divxsd: p1 */
    1,  /* divxxsd: p1 */
    1,  /* divxxxsd: p1 */
    1,  /* divss: p1 */
    1,  /* divxss: p1 */
    1,  /* divxxss: p1 */
    1,  /* divxxxss: p1 */
    1,  /* fdiv128v32: p1 */
    1,  /* fdivx128v32: p1 */
    1,  /* fdivxx128v32: p1 */
    1,  /* fdivxxx128v32: p1 */
    1,  /* fdiv128v64: p1 */
    1,  /* fdivx128v64: p1 */
    1,  /* fdivxx128v64: p1 */
    1,  /* fdivxxx128v64: p1 */
    1,  /* mulsd: p1 */
    1,  /* mulss: p1 */
    1,  /* fmul128v32: p1 */
    1,  /* fmulx128v32: p1 */
    1,  /* fmulxx128v32: p1 */
    1,  /* fmulxxx128v32: p1 */
    1,  /* fmul128v64: p1 */
    1,  /* fmulx128v64: p1 */
    1,  /* fmulxx128v64: p1 */
    1,  /* fmulxxx128v64: p1 */
    1,  /* mulxsd: p1 */
    1,  /* mulxss: p1 */
    1,  /* mulxxsd: p1 */
    1,  /* mulxxxsd: p1 */
    1,  /* mulxxss: p1 */
    1,  /* mulxxxss: p1 */
    1,  /* subsd: p1 */
    1,  /* subss: p1 */
    1,  /* subxsd: p1 */
    1,  /* subxss: p1 */
    1,  /* subxxsd: p1 */
    1,  /* subxxxsd: p1 */
    1,  /* subxxss: p1 */
    1,  /* subxxxss: p1 */
    1,  /* fsub128v32: p1 */
    1,  /* fsubx128v32: p1 */
    1,  /* fsubxx128v32: p1 */
    1,  /* fsubxxx128v32: p1 */
    1,  /* fsub128v64: p1 */
    1,  /* fsubx128v64: p1 */
    1,  /* fsubxx128v64: p1 */
    1,  /* fsubxxx128v64: p1 */
    1,  /* fhsub128v32: p1 */
    1,  /* fhsubx128v32: p1 */
    1,  /* fhsubxx128v32: p1 */
    1,  /* fhsubxxx128v32: p1 */
    1,  /* fhsub128v64: p1 */
    1,  /* fhsubx128v64: p1 */
    1,  /* fhsubxx128v64: p1 */
    1,  /* fhsubxxx128v64: p1 */
    1,  /* stss: p1 */
    1,  /* stntss: p1 */
    1,  /* stssx: p1 */
    1,  /* stntssx: p1 */
    1,  /* stssxx: p1 */
    1,  /* stntssxx: p1 */
    1,  /* stsd: p1 */
    1,  /* stntsd: p1 */
    1,  /* stsdx: p1 */
    1,  /* stntsdx: p1 */
    1,  /* stsdxx: p1 */
    1,  /* stntsdxx: p1 */
    1,  /* rcpss: p1 */
    1,  /* frcp128v32: p1 */
    1,  /* sqrtsd: p1 */
    1,  /* sqrtss: p1 */
    1,  /* rsqrtss: p1 */
    1,  /* fsqrt128v32: p1 */
    1,  /* frsqrt128v32: p1 */
    1,  /* fsqrt128v64: p1 */
    1,  /* punpcklwd: p1 */
    1,  /* punpcklbw: p1 */
    1,  /* punpckldq: p1 */
    1,  /* punpcklbw128: p1 */
    1,  /* punpcklwd128: p1 */
    1,  /* punpckldq128: p1 */
    1,  /* punpckhbw: p1 */
    1,  /* punpckhwd: p1 */
    1,  /* punpckhdq: p1 */
    1,  /* punpckhbw128: p1 */
    1,  /* punpckhwd128: p1 */
    1,  /* punpckhdq128: p1 */
    1,  /* punpcklqdq: p1 */
    1,  /* punpckhqdq: p1 */
    1,  /* packsswb: p1 */
    1,  /* packssdw: p1 */
    1,  /* packuswb: p1 */
    1,  /* packsswb128: p1 */
    1,  /* packssdw128: p1 */
    1,  /* packuswb128: p1 */
    1,  /* pshufd: p1 */
    1,  /* pshufw: p1 */
    1,  /* pshuflw: p1 */
    1,  /* pshufhw: p1 */
    1,  /* pslldq: p1 */
    1,  /* psllw: p1 */
    1,  /* psllwi: p1 */
    1,  /* pslld: p1 */
    1,  /* pslldi: p1 */
    1,  /* psllq: p1 */
    1,  /* psllqi: p1 */
    1,  /* psrlw: p1 */
    1,  /* psrlwi: p1 */
    1,  /* psrld: p1 */
    1,  /* psrldi: p1 */
    1,  /* psrlq: p1 */
    1,  /* psrlqi: p1 */
    1,  /* psraw: p1 */
    1,  /* psrawi: p1 */
    1,  /* psrad: p1 */
    1,  /* psradi: p1 */
    1,  /* psllw_mmx: p1 */
    1,  /* psllwi_mmx: p1 */
    1,  /* pslld_mmx: p1 */
    1,  /* pslldi_mmx: p1 */
    1,  /* psllq_mmx: p1 */
    1,  /* psllqi_mmx: p1 */
    1,  /* psrlw_mmx: p1 */
    1,  /* psrlwi_mmx: p1 */
    1,  /* psrld_mmx: p1 */
    1,  /* psrldi_mmx: p1 */
    1,  /* psrlq_mmx: p1 */
    1,  /* psrlqi_mmx: p1 */
    1,  /* psraw_mmx: p1 */
    1,  /* psrawi_mmx: p1 */
    1,  /* psrad_mmx: p1 */
    1,  /* psradi_mmx: p1 */
    1,  /* pand_mmx: p1 */
    1,  /* pandn_mmx: p1 */
    1,  /* por_mmx: p1 */
    1,  /* pxor_mmx: p1 */
    1,  /* pand: p1 */
    1,  /* pandn: p1 */
    1,  /* por: p1 */
    1,  /* pxor: p1 */
    1,  /* unpckhpd: p1 */
    1,  /* unpckhps: p1 */
    1,  /* unpcklpd: p1 */
    1,  /* unpcklps: p1 */
    1,  /* shufpd: p1 */
    1,  /* shufps: p1 */
    1,  /* movhlps: p1 */
    1,  /* movlhps: p1 */
    1,  /* psrldq: p1 */
    1,  /* psrlq128v64: p1 */
    1,  /* subus128v16: p1 */
    1,  /* pavgb: p1 */
    1,  /* pavgw: p1 */
    1,  /* psadbw: p1 */
    1,  /* pavgb128: p1 */
    1,  /* pavgw128: p1 */
    1,  /* psadbw128: p1 */
    1,  /* pextrw: p1 */
    1,  /* pinsrw: p1 */
    1,  /* pmovmskb: p1 */
    1,  /* pmovmskb128: p1 */
    1,  /* movi32_2m: p1 */
    1,  /* movi64_2m: p1 */
    1,  /* movm_2i32: p1 */
    1,  /* movm_2i64: p1 */
    1,  /* pshufw64v16: p1 */
    1,  /* movmskps: p1 */
    1,  /* movmskpd: p1 */
    1,  /* maskmovdqu: p1 */
    1,  /* maskmovq: p1 */
    1,  /* extrq: p1 */
    1,  /* insertq: p1 */
    1,  /* vfmaddss: p1 */
    1,  /* vfmaddxss: p1 */
    1,  /* vfmaddxxss: p1 */
    1,  /* vfmaddxxxss: p1 */
    1,  /* vfmaddxrss: p1 */
    1,  /* vfmaddxxrss: p1 */
    1,  /* vfmaddxxxrss: p1 */
    1,  /* vfmaddsd: p1 */
    1,  /* vfmaddxsd: p1 */
    1,  /* vfmaddxxsd: p1 */
    1,  /* vfmaddxxxsd: p1 */
    1,  /* vfmaddxrsd: p1 */
    1,  /* vfmaddxxrsd: p1 */
    1,  /* vfmaddxxxrsd: p1 */
    1,  /* vfnmaddss: p1 */
    1,  /* vfnmaddxss: p1 */
    1,  /* vfnmaddxxss: p1 */
    1,  /* vfnmaddxxxss: p1 */
    1,  /* vfnmaddxrss: p1 */
    1,  /* vfnmaddxxrss: p1 */
    1,  /* vfnmaddxxxrss: p1 */
    1,  /* vfnmaddsd: p1 */
    1,  /* vfnmaddxsd: p1 */
    1,  /* vfnmaddxxsd: p1 */
    1,  /* vfnmaddxxxsd: p1 */
    1,  /* vfnmaddxrsd: p1 */
    1,  /* vfnmaddxxrsd: p1 */
    1,  /* vfnmaddxxxrsd: p1 */
    1,  /* vfmaddps: p1 */
    1,  /* vfmaddxps: p1 */
    1,  /* vfmaddxxps: p1 */
    1,  /* vfmaddxxxps: p1 */
    1,  /* vfmaddxrps: p1 */
    1,  /* vfmaddxxrps: p1 */
    1,  /* vfmaddxxxrps: p1 */
    1,  /* vfmaddpd: p1 */
    1,  /* vfmaddxpd: p1 */
    1,  /* vfmaddxxpd: p1 */
    1,  /* vfmaddxxxpd: p1 */
    1,  /* vfmaddxrpd: p1 */
    1,  /* vfmaddxxrpd: p1 */
    1,  /* vfmaddxxxrpd: p1 */
    1,  /* vfmaddsubps: p1 */
    1,  /* vfmaddsubxps: p1 */
    1,  /* vfmaddsubxxps: p1 */
    1,  /* vfmaddsubxxxps: p1 */
    1,  /* vfmaddsubxrps: p1 */
    1,  /* vfmaddsubxxrps: p1 */
    1,  /* vfmaddsubxxxrps: p1 */
    1,  /* vfmaddsubpd: p1 */
    1,  /* vfmaddsubxpd: p1 */
    1,  /* vfmaddsubxxpd: p1 */
    1,  /* vfmaddsubxxxpd: p1 */
    1,  /* vfmaddsubxrpd: p1 */
    1,  /* vfmaddsubxxrpd: p1 */
    1,  /* vfmaddsubxxxrpd: p1 */
    1,  /* vfnmaddps: p1 */
    1,  /* vfnmaddxps: p1 */
    1,  /* vfnmaddxxps: p1 */
    1,  /* vfnmaddxxxps: p1 */
    1,  /* vfnmaddxrps: p1 */
    1,  /* vfnmaddxxrps: p1 */
    1,  /* vfnmaddxxxrps: p1 */
    1,  /* vfnmaddpd: p1 */
    1,  /* vfnmaddxpd: p1 */
    1,  /* vfnmaddxxpd: p1 */
    1,  /* vfnmaddxxxpd: p1 */
    1,  /* vfnmaddxrpd: p1 */
    1,  /* vfnmaddxxrpd: p1 */
    1,  /* vfnmaddxxxrpd: p1 */
    1,  /* vfmsubss: p1 */
    1,  /* vfmsubxss: p1 */
    1,  /* vfmsubxxss: p1 */
    1,  /* vfmsubxxxss: p1 */
    1,  /* vfmsubxrss: p1 */
    1,  /* vfmsubxxrss: p1 */
    1,  /* vfmsubxxxrss: p1 */
    1,  /* vfmsubsd: p1 */
    1,  /* vfmsubxsd: p1 */
    1,  /* vfmsubxxsd: p1 */
    1,  /* vfmsubxxxsd: p1 */
    1,  /* vfmsubxrsd: p1 */
    1,  /* vfmsubxxrsd: p1 */
    1,  /* vfmsubxxxrsd: p1 */
    1,  /* vfnmsubss: p1 */
    1,  /* vfnmsubxss: p1 */
    1,  /* vfnmsubxxss: p1 */
    1,  /* vfnmsubxxxss: p1 */
    1,  /* vfnmsubxrss: p1 */
    1,  /* vfnmsubxxrss: p1 */
    1,  /* vfnmsubxxxrss: p1 */
    1,  /* vfnmsubsd: p1 */
    1,  /* vfnmsubxsd: p1 */
    1,  /* vfnmsubxxsd: p1 */
    1,  /* vfnmsubxxxsd: p1 */
    1,  /* vfnmsubxrsd: p1 */
    1,  /* vfnmsubxxrsd: p1 */
    1,  /* vfnmsubxxxrsd: p1 */
    1,  /* vfmsubps: p1 */
    1,  /* vfmsubxps: p1 */
    1,  /* vfmsubxxps: p1 */
    1,  /* vfmsubxxxps: p1 */
    1,  /* vfmsubxrps: p1 */
    1,  /* vfmsubxxrps: p1 */
    1,  /* vfmsubxxxrps: p1 */
    1,  /* vfmsubpd: p1 */
    1,  /* vfmsubxpd: p1 */
    1,  /* vfmsubxxpd: p1 */
    1,  /* vfmsubxxxpd: p1 */
    1,  /* vfmsubxrpd: p1 */
    1,  /* vfmsubxxrpd: p1 */
    1,  /* vfmsubxxxrpd: p1 */
    1,  /* vfmsubaddps: p1 */
    1,  /* vfmsubaddxps: p1 */
    1,  /* vfmsubaddxxps: p1 */
    1,  /* vfmsubaddxxxps: p1 */
    1,  /* vfmsubaddxrps: p1 */
    1,  /* vfmsubaddxxrps: p1 */
    1,  /* vfmsubaddxxxrps: p1 */
    1,  /* vfmsubaddpd: p1 */
    1,  /* vfmsubaddxpd: p1 */
    1,  /* vfmsubaddxxpd: p1 */
    1,  /* vfmsubaddxxxpd: p1 */
    1,  /* vfmsubaddxrpd: p1 */
    1,  /* vfmsubaddxxrpd: p1 */
    1,  /* vfmsubaddxxxrpd: p1 */
    1,  /* vfnmsubps: p1 */
    1,  /* vfnmsubxps: p1 */
    1,  /* vfnmsubxxps: p1 */
    1,  /* vfnmsubxxxps: p1 */
    1,  /* vfnmsubxrps: p1 */
    1,  /* vfnmsubxxrps: p1 */
    1,  /* vfnmsubxxxrps: p1 */
    1,  /* vfnmsubpd: p1 */
    1,  /* vfnmsubxpd: p1 */
    1,  /* vfnmsubxxpd: p1 */
    1,  /* vfnmsubxxxpd: p1 */
    1,  /* vfnmsubxrpd: p1 */
    1,  /* vfnmsubxxrpd: p1 */
    1,  /* vfnmsubxxxrpd: p1 */
    1,  /* vzeroupper: p1 */
    1,  /* mfence: p1 */
    1,  /* lfence: p1 */
    1,  /* sfence: p1 */
    1,  /* monitor: p1 */
    1,  /* mwait: p1 */
    0,  /* asm */
    0,  /* intrncall */
    0,  /* spadjust */
    0,  /* savexmms */
    1,  /* zero32: p1 */
    1,  /* zero64: p1 */
    1,  /* xzero32: p1 */
    1,  /* xzero64: p1 */
    1,  /* xzero128v32: p1 */
    1,  /* xzero128v64: p1 */
    1,  /* fadd: p1 */
    1,  /* faddp: p1 */
    1,  /* flds: p1 */
    1,  /* flds_n32: p1 */
    1,  /* fldl: p1 */
    1,  /* fldl_n32: p1 */
    1,  /* fldt: p1 */
    1,  /* fldt_n32: p1 */
    1,  /* fld: p1 */
    1,  /* fst: p1 */
    1,  /* fstp: p1 */
    1,  /* fstps: p1 */
    1,  /* fstps_n32: p1 */
    1,  /* fstpl: p1 */
    1,  /* fstpl_n32: p1 */
    1,  /* fstpt: p1 */
    1,  /* fstpt_n32: p1 */
    1,  /* fsts: p1 */
    1,  /* fsts_n32: p1 */
    1,  /* fstl: p1 */
    1,  /* fstl_n32: p1 */
    1,  /* fxch: p1 */
    1,  /* fmov: p1 */
    1,  /* fsub: p1 */
    1,  /* fsubr: p1 */
    1,  /* fsubp: p1 */
    1,  /* fsubrp: p1 */
    1,  /* fmul: p1 */
    1,  /* fmulp: p1 */
    1,  /* fdiv: p1 */
    1,  /* fdivp: p1 */
    1,  /* fdivr: p1 */
    1,  /* fdivrp: p1 */
    1,  /* fucomi: p1 */
    1,  /* fucomip: p1 */
    1,  /* fchs: p1 */
    1,  /* frndint: p1 */
    1,  /* fnstcw: p1 */
    1,  /* fldcw: p1 */
    1,  /* fistps: p1 */
    1,  /* fistpl: p1 */
    1,  /* fists: p1 */
    1,  /* fistl: p1 */
    1,  /* fistpll: p1 */
    1,  /* filds: p1 */
    1,  /* fildl: p1 */
    1,  /* fildll: p1 */
    1,  /* fldz: p1 */
    1,  /* fabs: p1 */
    1,  /* fsqrt: p1 */
    1,  /* fcmovb: p1 */
    1,  /* fcmovbe: p1 */
    1,  /* fcmovnb: p1 */
    1,  /* fcmovnbe: p1 */
    1,  /* fcmove: p1 */
    1,  /* fcmovne: p1 */
    1,  /* fcmovu: p1 */
    1,  /* fcmovnu: p1 */
    1,  /* fcos: p1 */
    1,  /* fsin: p1 */
    1,  /* cmpeqpd: p1 */
    1,  /* cmpltpd: p1 */
    1,  /* cmplepd: p1 */
    1,  /* cmpunordpd: p1 */
    1,  /* cmpneqpd: p1 */
    1,  /* cmpnltpd: p1 */
    1,  /* cmpnlepd: p1 */
    1,  /* cmpordpd: p1 */
    1,  /* cmpeqps: p1 */
    1,  /* cmpltps: p1 */
    1,  /* cmpleps: p1 */
    1,  /* cmpunordps: p1 */
    1,  /* cmpneqps: p1 */
    1,  /* cmpnltps: p1 */
    1,  /* cmpnleps: p1 */
    1,  /* cmpordps: p1 */
    1,  /* cmpeqsd: p1 */
    1,  /* cmpltsd: p1 */
    1,  /* cmplesd: p1 */
    1,  /* cmpunordsd: p1 */
    1,  /* cmpneqsd: p1 */
    1,  /* cmpnltsd: p1 */
    1,  /* cmpnlesd: p1 */
    1,  /* cmpordsd: p1 */
    1,  /* cmpeqss: p1 */
    1,  /* cmpltss: p1 */
    1,  /* cmpless: p1 */
    1,  /* cmpunordss: p1 */
    1,  /* cmpneqss: p1 */
    1,  /* cmpnltss: p1 */
    1,  /* cmpnless: p1 */
    1,  /* cmpordss: p1 */
    1,  /* emms: p1 */
    1,  /* stmxcsr: p1 */
    1,  /* ldmxcsr: p1 */
    1,  /* clflush: p1 */
    1,  /* fisttps: p1 */
    1,  /* fisttpl: p1 */
    1,  /* fisttpll: p1 */
    1,  /* pabs128v8: p1 */
    1,  /* pabsx128v8: p1 */
    1,  /* pabsxx128v8: p1 */
    1,  /* pabsxxx128v8: p1 */
    1,  /* pabs128v16: p1 */
    1,  /* pabsx128v16: p1 */
    1,  /* pabsxx128v16: p1 */
    1,  /* pabsxxx128v16: p1 */
    1,  /* pabs128v32: p1 */
    1,  /* pabsx128v32: p1 */
    1,  /* pabsxx128v32: p1 */
    1,  /* pabsxxx128v32: p1 */
    1,  /* psign128v8: p1 */
    1,  /* psignx128v8: p1 */
    1,  /* psignxx128v8: p1 */
    1,  /* psignxxx128v8: p1 */
    1,  /* psign128v16: p1 */
    1,  /* psignx128v16: p1 */
    1,  /* psignxx128v16: p1 */
    1,  /* psignxxx128v16: p1 */
    1,  /* psign128v32: p1 */
    1,  /* psignx128v32: p1 */
    1,  /* psignxx128v32: p1 */
    1,  /* psignxxx128v32: p1 */
    1,  /* pshuf128v8: p1 */
    1,  /* pshufx128v8: p1 */
    1,  /* pshufxx128v8: p1 */
    1,  /* pshufxxx128v8: p1 */
    1,  /* phsub128v16: p1 */
    1,  /* phsubx128v16: p1 */
    1,  /* phsubxx128v16: p1 */
    1,  /* phsubxxx128v16: p1 */
    1,  /* phsub128v32: p1 */
    1,  /* phsubx128v32: p1 */
    1,  /* phsubxx128v32: p1 */
    1,  /* phsubxxx128v32: p1 */
    1,  /* phsubs128v16: p1 */
    1,  /* phsubsx128v16: p1 */
    1,  /* phsubsxx128v16: p1 */
    1,  /* phsubsxxx128v16: p1 */
    1,  /* phadd128v16: p1 */
    1,  /* phaddx128v16: p1 */
    1,  /* phaddxx128v16: p1 */
    1,  /* phaddxxx128v16: p1 */
    1,  /* phadd128v32: p1 */
    1,  /* phaddx128v32: p1 */
    1,  /* phaddxx128v32: p1 */
    1,  /* phaddxxx128v32: p1 */
    1,  /* phadds128v16: p1 */
    1,  /* phaddsx128v16: p1 */
    1,  /* phaddsxx128v16: p1 */
    1,  /* phaddsxxx128v16: p1 */
    1,  /* pmulhrsw128: p1 */
    1,  /* pmulhrswx128: p1 */
    1,  /* pmulhrswxx128: p1 */
    1,  /* pmulhrswxxx128: p1 */
    1,  /* pmaddubsw128: p1 */
    1,  /* pmaddubswx128: p1 */
    1,  /* pmaddubswxx128: p1 */
    1,  /* pmaddubswxxx128: p1 */
    1,  /* palignr128: p1 */
    1,  /* palignrx128: p1 */
    1,  /* palignrxx128: p1 */
    1,  /* palignrxxx128: p1 */
    1,  /* muldq: p1 */
    1,  /* muldqx: p1 */
    1,  /* muldqxx: p1 */
    1,  /* muldqxxx: p1 */
    1,  /* ldntdqa: p1 */
    1,  /* ldntdqax: p1 */
    1,  /* ldntdqaxx: p1 */
    1,  /* stntdq: p1 */
    1,  /* stntdqx: p1 */
    1,  /* stntdqxx: p1 */
    1,  /* mins128v8: p1 */
    1,  /* minsx128v8: p1 */
    1,  /* minsxx128v8: p1 */
    1,  /* minsxxx128v8: p1 */
    1,  /* maxs128v8: p1 */
    1,  /* maxsx128v8: p1 */
    1,  /* maxsxx128v8: p1 */
    1,  /* maxsxxx128v8: p1 */
    1,  /* minu128v16: p1 */
    1,  /* minux128v16: p1 */
    1,  /* minuxx128v16: p1 */
    1,  /* minuxxx128v16: p1 */
    1,  /* maxu128v16: p1 */
    1,  /* maxux128v16: p1 */
    1,  /* maxuxx128v16: p1 */
    1,  /* maxuxxx128v16: p1 */
    1,  /* minu128v32: p1 */
    1,  /* minux128v32: p1 */
    1,  /* minuxx128v32: p1 */
    1,  /* minuxxx128v32: p1 */
    1,  /* maxu128v32: p1 */
    1,  /* maxux128v32: p1 */
    1,  /* maxuxx128v32: p1 */
    1,  /* maxuxxx128v32: p1 */
    1,  /* mins128v32: p1 */
    1,  /* minsx128v32: p1 */
    1,  /* minsxx128v32: p1 */
    1,  /* minsxxx128v32: p1 */
    1,  /* maxs128v32: p1 */
    1,  /* maxsx128v32: p1 */
    1,  /* maxsxx128v32: p1 */
    1,  /* maxsxxx128v32: p1 */
    1,  /* pmovsxbw: p1 */
    1,  /* pmovsxbwx: p1 */
    1,  /* pmovsxbwxx: p1 */
    1,  /* pmovsxbwxxx: p1 */
    1,  /* pmovzxbw: p1 */
    1,  /* pmovzxbwx: p1 */
    1,  /* pmovzxbwxx: p1 */
    1,  /* pmovzxbwxxx: p1 */
    1,  /* pmovsxbd: p1 */
    1,  /* pmovsxbdx: p1 */
    1,  /* pmovsxbdxx: p1 */
    1,  /* pmovsxbdxxx: p1 */
    1,  /* pmovzxbd: p1 */
    1,  /* pmovzxbdx: p1 */
    1,  /* pmovzxbdxx: p1 */
    1,  /* pmovzxbdxxx: p1 */
    1,  /* pmovsxbq: p1 */
    1,  /* pmovsxbqx: p1 */
    1,  /* pmovsxbqxx: p1 */
    1,  /* pmovsxbqxxx: p1 */
    1,  /* pmovzxbq: p1 */
    1,  /* pmovzxbqx: p1 */
    1,  /* pmovzxbqxx: p1 */
    1,  /* pmovzxbqxxx: p1 */
    1,  /* pmovsxwd: p1 */
    1,  /* pmovsxwdx: p1 */
    1,  /* pmovsxwdxx: p1 */
    1,  /* pmovsxwdxxx: p1 */
    1,  /* pmovzxwd: p1 */
    1,  /* pmovzxwdx: p1 */
    1,  /* pmovzxwdxx: p1 */
    1,  /* pmovzxwdxxx: p1 */
    1,  /* pmovsxwq: p1 */
    1,  /* pmovsxwqx: p1 */
    1,  /* pmovsxwqxx: p1 */
    1,  /* pmovsxwqxxx: p1 */
    1,  /* pmovzxwq: p1 */
    1,  /* pmovzxwqx: p1 */
    1,  /* pmovzxwqxx: p1 */
    1,  /* pmovzxwqxxx: p1 */
    1,  /* pmovsxdq: p1 */
    1,  /* pmovsxdqx: p1 */
    1,  /* pmovsxdqxx: p1 */
    1,  /* pmovsxdqxxx: p1 */
    1,  /* pmovzxdq: p1 */
    1,  /* pmovzxdqx: p1 */
    1,  /* pmovzxdqxx: p1 */
    1,  /* pmovzxdqxxx: p1 */
    1,  /* mul128v32: p1 */
    1,  /* mulx128v32: p1 */
    1,  /* mulxx128v32: p1 */
    1,  /* mulxxx128v32: p1 */
    1,  /* cmpeq128v64: p1 */
    1,  /* cmpeqx128v64: p1 */
    1,  /* cmpeqxx128v64: p1 */
    1,  /* cmpeqxxx128v64: p1 */
    1,  /* packusdw: p1 */
    1,  /* packusdwx: p1 */
    1,  /* packusdwxx: p1 */
    1,  /* packusdwxxx: p1 */
    1,  /* phminposuw: p1 */
    1,  /* phminposuwx: p1 */
    1,  /* phminposuwxx: p1 */
    1,  /* phminposuwxxx: p1 */
    1,  /* ptest128: p1 */
    1,  /* ptestx128: p1 */
    1,  /* ptestxx128: p1 */
    1,  /* ptestxxx128: p1 */
    1,  /* roundsd: p1 */
    1,  /* roundxsd: p1 */
    1,  /* roundxxsd: p1 */
    1,  /* roundxxxsd: p1 */
    1,  /* mpsadbw: p1 */
    1,  /* mpsadbwx: p1 */
    1,  /* mpsadbwxx: p1 */
    1,  /* mpsadbwxxx: p1 */
    1,  /* insr128v8: p1 */
    1,  /* insrx128v8: p1 */
    1,  /* insrxx128v8: p1 */
    1,  /* insrxxx128v8: p1 */
    1,  /* insr128v16: p1 */
    1,  /* insrx128v16: p1 */
    1,  /* insrxx128v16: p1 */
    1,  /* insrxxx128v16: p1 */
    1,  /* insr128v32: p1 */
    1,  /* insrx128v32: p1 */
    1,  /* insrxx128v32: p1 */
    1,  /* insrxxx128v32: p1 */
    1,  /* insr128v64: p1 */
    1,  /* insrx128v64: p1 */
    1,  /* insrxx128v64: p1 */
    1,  /* insrxxx128v64: p1 */
    1,  /* extr128v8: p1 */
    1,  /* extrx128v8: p1 */
    1,  /* extrxx128v8: p1 */
    1,  /* extrxxx128v8: p1 */
    1,  /* extr128v16: p1 */
    1,  /* extrx128v16: p1 */
    1,  /* extrxx128v16: p1 */
    1,  /* extrxxx128v16: p1 */
    1,  /* extr128v32: p1 */
    1,  /* extrx128v32: p1 */
    1,  /* extrxx128v32: p1 */
    1,  /* extrxxx128v32: p1 */
    1,  /* extr128v64: p1 */
    1,  /* extrx128v64: p1 */
    1,  /* extrxx128v64: p1 */
    1,  /* extrxxx128v64: p1 */
    1,  /* finsr128v32: p1 */
    1,  /* finsrx128v32: p1 */
    1,  /* finsrxx128v32: p1 */
    1,  /* finsrxxx128v32: p1 */
    1,  /* fextr128v32: p1 */
    1,  /* fextrx128v32: p1 */
    1,  /* fextrxx128v32: p1 */
    1,  /* fextrxxx128v32: p1 */
    1,  /* fblendv128v32: p1 */
    1,  /* fblendvx128v32: p1 */
    1,  /* fblendvxx128v32: p1 */
    1,  /* fblendvxxx128v32: p1 */
    1,  /* fblendv128v64: p1 */
    1,  /* fblendvx128v64: p1 */
    1,  /* fblendvxx128v64: p1 */
    1,  /* fblendvxxx128v64: p1 */
    1,  /* blendv128v8: p1 */
    1,  /* blendvx128v8: p1 */
    1,  /* blendvxx128v8: p1 */
    1,  /* blendvxxx128v8: p1 */
    1,  /* round128v32: p1 */
    1,  /* roundx128v32: p1 */
    1,  /* roundxx128v32: p1 */
    1,  /* roundxxx128v32: p1 */
    1,  /* roundss: p1 */
    1,  /* roundxss: p1 */
    1,  /* roundxxss: p1 */
    1,  /* roundxxxss: p1 */
    1,  /* fblend128v64: p1 */
    1,  /* fblendx128v64: p1 */
    1,  /* fblendxx128v64: p1 */
    1,  /* fblendxxx128v64: p1 */
    1,  /* blend128v16: p1 */
    1,  /* blendx128v16: p1 */
    1,  /* blendxx128v16: p1 */
    1,  /* blendxxx128v16: p1 */
    1,  /* fdp128v32: p1 */
    1,  /* fdpx128v32: p1 */
    1,  /* fdpxx128v32: p1 */
    1,  /* fdpxxx128v32: p1 */
    1,  /* fdp128v64: p1 */
    1,  /* fdpx128v64: p1 */
    1,  /* fdpxx128v64: p1 */
    1,  /* fdpxxx128v64: p1 */
    1,  /* round128v64: p1 */
    1,  /* roundx128v64: p1 */
    1,  /* roundxx128v64: p1 */
    1,  /* roundxxx128v64: p1 */
    1,  /* fblend128v32: p1 */
    1,  /* fblendx128v32: p1 */
    1,  /* fblendxx128v32: p1 */
    1,  /* fblendxxx128v32: p1 */
    1,  /* cmpgt128v64: p1 */
    1,  /* cmpgtx128v64: p1 */
    1,  /* cmpgtxx128v64: p1 */
    1,  /* cmpgtxxx128v64: p1 */
    1,  /* crc32w: p1 */
    1,  /* crc32wx: p1 */
    1,  /* crc32wxx: p1 */
    1,  /* crc32wxxx: p1 */
    1,  /* crc32d: p1 */
    1,  /* crc32dx: p1 */
    1,  /* crc32dxx: p1 */
    1,  /* crc32dxxx: p1 */
    1,  /* crc32q: p1 */
    1,  /* crc32qx: p1 */
    1,  /* crc32qxx: p1 */
    1,  /* crc32qxxx: p1 */
    1,  /* crc32b: p1 */
    1,  /* crc32bx: p1 */
    1,  /* crc32bxx: p1 */
    1,  /* crc32bxxx: p1 */
    1,  /* cmpestrm: p1 */
    1,  /* cmpestrmx: p1 */
    1,  /* cmpestrmxx: p1 */
    1,  /* cmpestrmxxx: p1 */
    1,  /* cmpestri: p1 */
    1,  /* cmpestrix: p1 */
    1,  /* cmpestrixx: p1 */
    1,  /* cmpestrixxx: p1 */
    1,  /* cmpistrm: p1 */
    1,  /* cmpistrmx: p1 */
    1,  /* cmpistrmxx: p1 */
    1,  /* cmpistrmxxx: p1 */
    1,  /* cmpistri: p1 */
    1,  /* cmpistrix: p1 */
    1,  /* cmpistrixx: p1 */
    1,  /* cmpistrixxx: p1 */
    1,  /* popcnt16: p1 */
    1,  /* popcntx16: p1 */
    1,  /* popcntxx16: p1 */
    1,  /* popcntxxx16: p1 */
    1,  /* popcnt32: p1 */
    1,  /* popcntx32: p1 */
    1,  /* popcntxx32: p1 */
    1,  /* popcntxxx32: p1 */
    1,  /* popcnt64: p1 */
    1,  /* popcntx64: p1 */
    1,  /* popcntxx64: p1 */
    1,  /* popcntxxx64: p1 */
    1,  /* aesimc: p1 */
    1,  /* aesimcx: p1 */
    1,  /* aesimcxx: p1 */
    1,  /* aesimcxxx: p1 */
    1,  /* aeskeygenassist: p1 */
    1,  /* aeskeygenassistx: p1 */
    1,  /* aeskeygenassistxx: p1 */
    1,  /* aeskeygenassistxxx: p1 */
    1,  /* aesenc: p1 */
    1,  /* aesencx: p1 */
    1,  /* aesencxx: p1 */
    1,  /* aesencxxx: p1 */
    1,  /* aesenclast: p1 */
    1,  /* aesenclastx: p1 */
    1,  /* aesenclastxx: p1 */
    1,  /* aesenclastxxx: p1 */
    1,  /* aesdec: p1 */
    1,  /* aesdecx: p1 */
    1,  /* aesdecxx: p1 */
    1,  /* aesdecxxx: p1 */
    1,  /* aesdeclast: p1 */
    1,  /* aesdeclastx: p1 */
    1,  /* aesdeclastxx: p1 */
    1,  /* aesdeclastxxx: p1 */
    1,  /* pclmulqdq: p1 */
    1,  /* pclmulqdqx: p1 */
    1,  /* pclmulqdqxx: p1 */
    1,  /* pclmulqdqxxx: p1 */
    1,  /* vphaddbd: p1 */
    1,  /* vphaddbdx: p1 */
    1,  /* vphaddbdxx: p1 */
    1,  /* vphaddbdxxx: p1 */
    1,  /* vphaddbq: p1 */
    1,  /* vphaddbqx: p1 */
    1,  /* vphaddbqxx: p1 */
    1,  /* vphaddbqxxx: p1 */
    1,  /* vphaddbw: p1 */
    1,  /* vphaddbwx: p1 */
    1,  /* vphaddbwxx: p1 */
    1,  /* vphaddbwxxx: p1 */
    1,  /* vphadddq: p1 */
    1,  /* vphadddqx: p1 */
    1,  /* vphadddqxx: p1 */
    1,  /* vphadddqxxx: p1 */
    1,  /* vphaddubd: p1 */
    1,  /* vphaddubdx: p1 */
    1,  /* vphaddubdxx: p1 */
    1,  /* vphaddubdxxx: p1 */
    1,  /* vphaddubq: p1 */
    1,  /* vphaddubqx: p1 */
    1,  /* vphaddubqxx: p1 */
    1,  /* vphaddubqxxx: p1 */
    1,  /* vphaddubw: p1 */
    1,  /* vphaddubwx: p1 */
    1,  /* vphaddubwxx: p1 */
    1,  /* vphaddubwxxx: p1 */
    1,  /* vphaddudq: p1 */
    1,  /* vphaddudqx: p1 */
    1,  /* vphaddudqxx: p1 */
    1,  /* vphaddudqxxx: p1 */
    1,  /* vphadduwd: p1 */
    1,  /* vphadduwdx: p1 */
    1,  /* vphadduwdxx: p1 */
    1,  /* vphadduwdxxx: p1 */
    1,  /* vphadduwq: p1 */
    1,  /* vphadduwqx: p1 */
    1,  /* vphadduwqxx: p1 */
    1,  /* vphadduwqxxx: p1 */
    1,  /* vphaddwd: p1 */
    1,  /* vphaddwdx: p1 */
    1,  /* vphaddwdxx: p1 */
    1,  /* vphaddwdxxx: p1 */
    1,  /* vphaddwq: p1 */
    1,  /* vphaddwqx: p1 */
    1,  /* vphaddwqxx: p1 */
    1,  /* vphaddwqxxx: p1 */
    1,  /* vphsubbw: p1 */
    1,  /* vphsubbwx: p1 */
    1,  /* vphsubbwxx: p1 */
    1,  /* vphsubbwxxx: p1 */
    1,  /* vphsubdq: p1 */
    1,  /* vphsubdqx: p1 */
    1,  /* vphsubdqxx: p1 */
    1,  /* vphsubdqxxx: p1 */
    1,  /* vphsubwd: p1 */
    1,  /* vphsubwdx: p1 */
    1,  /* vphsubwdxx: p1 */
    1,  /* vphsubwdxxx: p1 */
    1,  /* vfrczpd: p1 */
    1,  /* vfrczpdx: p1 */
    1,  /* vfrczpdxx: p1 */
    1,  /* vfrczpdxxx: p1 */
    1,  /* vfrczps: p1 */
    1,  /* vfrczpsx: p1 */
    1,  /* vfrczpsxx: p1 */
    1,  /* vfrczpsxxx: p1 */
    1,  /* vfrczsd: p1 */
    1,  /* vfrczsdx: p1 */
    1,  /* vfrczsdxx: p1 */
    1,  /* vfrczsdxxx: p1 */
    1,  /* vfrczss: p1 */
    1,  /* vfrczssx: p1 */
    1,  /* vfrczssxx: p1 */
    1,  /* vfrczssxxx: p1 */
    1,  /* vprotbi: p1 */
    1,  /* vprotbix: p1 */
    1,  /* vprotbixx: p1 */
    1,  /* vprotbixxx: p1 */
    1,  /* vprotdi: p1 */
    1,  /* vprotdix: p1 */
    1,  /* vprotdixx: p1 */
    1,  /* vprotdixxx: p1 */
    1,  /* vprotqi: p1 */
    1,  /* vprotqix: p1 */
    1,  /* vprotqixx: p1 */
    1,  /* vprotqixxx: p1 */
    1,  /* vprotwi: p1 */
    1,  /* vprotwix: p1 */
    1,  /* vprotwixx: p1 */
    1,  /* vprotwixxx: p1 */
    1,  /* vpcomb: p1 */
    1,  /* vpcombx: p1 */
    1,  /* vpcombxx: p1 */
    1,  /* vpcombxxx: p1 */
    1,  /* vpcomd: p1 */
    1,  /* vpcomdx: p1 */
    1,  /* vpcomdxx: p1 */
    1,  /* vpcomdxxx: p1 */
    1,  /* vpcomq: p1 */
    1,  /* vpcomqx: p1 */
    1,  /* vpcomqxx: p1 */
    1,  /* vpcomqxxx: p1 */
    1,  /* vpcomw: p1 */
    1,  /* vpcomwx: p1 */
    1,  /* vpcomwxx: p1 */
    1,  /* vpcomwxxx: p1 */
    1,  /* vpcomub: p1 */
    1,  /* vpcomubx: p1 */
    1,  /* vpcomubxx: p1 */
    1,  /* vpcomubxxx: p1 */
    1,  /* vpcomud: p1 */
    1,  /* vpcomudx: p1 */
    1,  /* vpcomudxx: p1 */
    1,  /* vpcomudxxx: p1 */
    1,  /* vpcomuq: p1 */
    1,  /* vpcomuqx: p1 */
    1,  /* vpcomuqxx: p1 */
    1,  /* vpcomuqxxx: p1 */
    1,  /* vpcomuw: p1 */
    1,  /* vpcomuwx: p1 */
    1,  /* vpcomuwxx: p1 */
    1,  /* vpcomuwxxx: p1 */
    1,  /* vpperm: p1 */
    1,  /* vppermx: p1 */
    1,  /* vppermxx: p1 */
    1,  /* vppermxxx: p1 */
    1,  /* vppermxr: p1 */
    1,  /* vppermxxr: p1 */
    1,  /* vppermxxxr: p1 */
    1,  /* vprotb: p1 */
    1,  /* vprotbx: p1 */
    1,  /* vprotbxx: p1 */
    1,  /* vprotbxxx: p1 */
    1,  /* vprotbxr: p1 */
    1,  /* vprotbxxr: p1 */
    1,  /* vprotbxxxr: p1 */
    1,  /* vprotd: p1 */
    1,  /* vprotdx: p1 */
    1,  /* vprotdxx: p1 */
    1,  /* vprotdxxx: p1 */
    1,  /* vprotdxr: p1 */
    1,  /* vprotdxxr: p1 */
    1,  /* vprotdxxxr: p1 */
    1,  /* vprotq: p1 */
    1,  /* vprotqx: p1 */
    1,  /* vprotqxx: p1 */
    1,  /* vprotqxxx: p1 */
    1,  /* vprotqxr: p1 */
    1,  /* vprotqxxr: p1 */
    1,  /* vprotqxxxr: p1 */
    1,  /* vprotw: p1 */
    1,  /* vprotwx: p1 */
    1,  /* vprotwxx: p1 */
    1,  /* vprotwxxx: p1 */
    1,  /* vprotwxr: p1 */
    1,  /* vprotwxxr: p1 */
    1,  /* vprotwxxxr: p1 */
    1,  /* vpshab: p1 */
    1,  /* vpshabx: p1 */
    1,  /* vpshabxx: p1 */
    1,  /* vpshabxxx: p1 */
    1,  /* vpshabxr: p1 */
    1,  /* vpshabxxr: p1 */
    1,  /* vpshabxxxr: p1 */
    1,  /* vpshad: p1 */
    1,  /* vpshadx: p1 */
    1,  /* vpshadxx: p1 */
    1,  /* vpshadxxx: p1 */
    1,  /* vpshadxr: p1 */
    1,  /* vpshadxxr: p1 */
    1,  /* vpshadxxxr: p1 */
    1,  /* vpshaq: p1 */
    1,  /* vpshaqx: p1 */
    1,  /* vpshaqxx: p1 */
    1,  /* vpshaqxxx: p1 */
    1,  /* vpshaqxr: p1 */
    1,  /* vpshaqxxr: p1 */
    1,  /* vpshaqxxxr: p1 */
    1,  /* vpshaw: p1 */
    1,  /* vpshawx: p1 */
    1,  /* vpshawxx: p1 */
    1,  /* vpshawxxx: p1 */
    1,  /* vpshawxr: p1 */
    1,  /* vpshawxxr: p1 */
    1,  /* vpshawxxxr: p1 */
    1,  /* vpshlb: p1 */
    1,  /* vpshlbx: p1 */
    1,  /* vpshlbxx: p1 */
    1,  /* vpshlbxxx: p1 */
    1,  /* vpshlbxr: p1 */
    1,  /* vpshlbxxr: p1 */
    1,  /* vpshlbxxxr: p1 */
    1,  /* vpshld: p1 */
    1,  /* vpshldx: p1 */
    1,  /* vpshldxx: p1 */
    1,  /* vpshldxxx: p1 */
    1,  /* vpshldxr: p1 */
    1,  /* vpshldxxr: p1 */
    1,  /* vpshldxxxr: p1 */
    1,  /* vpshlq: p1 */
    1,  /* vpshlqx: p1 */
    1,  /* vpshlqxx: p1 */
    1,  /* vpshlqxxx: p1 */
    1,  /* vpshlqxr: p1 */
    1,  /* vpshlqxxr: p1 */
    1,  /* vpshlqxxxr: p1 */
    1,  /* vpshlw: p1 */
    1,  /* vpshlwx: p1 */
    1,  /* vpshlwxx: p1 */
    1,  /* vpshlwxxx: p1 */
    1,  /* vpshlwxr: p1 */
    1,  /* vpshlwxxr: p1 */
    1,  /* vpshlwxxxr: p1 */
    1,  /* vpcmov: p1 */
    1,  /* vpcmovx: p1 */
    1,  /* vpcmovxx: p1 */
    1,  /* vpcmovxxx: p1 */
    1,  /* vpcmovxr: p1 */
    1,  /* vpcmovxxr: p1 */
    1,  /* vpcmovxxxr: p1 */
    1,  /* vpmacsdd: p1 */
    1,  /* vpmacsddx: p1 */
    1,  /* vpmacsddxx: p1 */
    1,  /* vpmacsddxxx: p1 */
    1,  /* vpmacsdqh: p1 */
    1,  /* vpmacsdqhx: p1 */
    1,  /* vpmacsdqhxx: p1 */
    1,  /* vpmacsdqhxxx: p1 */
    1,  /* vpmacsdql: p1 */
    1,  /* vpmacsdqlx: p1 */
    1,  /* vpmacsdqlxx: p1 */
    1,  /* vpmacsdqlxxx: p1 */
    1,  /* vpmacssdd: p1 */
    1,  /* vpmacssddx: p1 */
    1,  /* vpmacssddxx: p1 */
    1,  /* vpmacssddxxx: p1 */
    1,  /* vpmacssdqh: p1 */
    1,  /* vpmacssdqhx: p1 */
    1,  /* vpmacssdqhxx: p1 */
    1,  /* vpmacssdqhxxx: p1 */
    1,  /* vpmacssdql: p1 */
    1,  /* vpmacssdqlx: p1 */
    1,  /* vpmacssdqlxx: p1 */
    1,  /* vpmacssdqlxxx: p1 */
    1,  /* vpmacsswd: p1 */
    1,  /* vpmacsswdx: p1 */
    1,  /* vpmacsswdxx: p1 */
    1,  /* vpmacsswdxxx: p1 */
    1,  /* vpmacssww: p1 */
    1,  /* vpmacsswwx: p1 */
    1,  /* vpmacsswwxx: p1 */
    1,  /* vpmacsswwxxx: p1 */
    1,  /* vpmacswd: p1 */
    1,  /* vpmacswdx: p1 */
    1,  /* vpmacswdxx: p1 */
    1,  /* vpmacswdxxx: p1 */
    1,  /* vpmacsww: p1 */
    1,  /* vpmacswwx: p1 */
    1,  /* vpmacswwxx: p1 */
    1,  /* vpmacswwxxx: p1 */
    1,  /* vpmadcsswd: p1 */
    1,  /* vpmadcsswdx: p1 */
    1,  /* vpmadcsswdxx: p1 */
    1,  /* vpmadcsswdxxx: p1 */
    1,  /* vpmadcswd: p1 */
    1,  /* vpmadcswdx: p1 */
    1,  /* vpmadcswdxx: p1 */
    1,  /* vpmadcswdxxx: p1 */
    1,  /* vfadd128v64: p1 */
    1,  /* vfaddx128v64: p1 */
    1,  /* vfaddxx128v64: p1 */
    1,  /* vfaddxxx128v64: p1 */
    1,  /* vfadd128v32: p1 */
    1,  /* vfaddx128v32: p1 */
    1,  /* vfaddxx128v32: p1 */
    1,  /* vfaddxxx128v32: p1 */
    1,  /* vfaddsd: p1 */
    1,  /* vfaddxsd: p1 */
    1,  /* vfaddxxsd: p1 */
    1,  /* vfaddxxxsd: p1 */
    1,  /* vfaddss: p1 */
    1,  /* vfaddxss: p1 */
    1,  /* vfaddxxss: p1 */
    1,  /* vfaddxxxss: p1 */
    1,  /* vfaddsub128v64: p1 */
    1,  /* vfaddsubx128v64: p1 */
    1,  /* vfaddsubxx128v64: p1 */
    1,  /* vfaddsubxxx128v64: p1 */
    1,  /* vfaddsub128v32: p1 */
    1,  /* vfaddsubx128v32: p1 */
    1,  /* vfaddsubxx128v32: p1 */
    1,  /* vfaddsubxxx128v32: p1 */
    1,  /* vaesenc: p1 */
    1,  /* vaesencx: p1 */
    1,  /* vaesencxx: p1 */
    1,  /* vaesencxxx: p1 */
    1,  /* vaesenclast: p1 */
    1,  /* vaesenclastx: p1 */
    1,  /* vaesenclastxx: p1 */
    1,  /* vaesenclastxxx: p1 */
    1,  /* vaesdec: p1 */
    1,  /* vaesdecx: p1 */
    1,  /* vaesdecxx: p1 */
    1,  /* vaesdecxxx: p1 */
    1,  /* vaesdeclast: p1 */
    1,  /* vaesdeclastx: p1 */
    1,  /* vaesdeclastxx: p1 */
    1,  /* vaesdeclastxxx: p1 */
    1,  /* vaesimc: p1 */
    1,  /* vaesimcx: p1 */
    1,  /* vaesimcxx: p1 */
    1,  /* vaesimcxxx: p1 */
    1,  /* vaeskeygenassist: p1 */
    1,  /* vaeskeygenassistx: p1 */
    1,  /* vaeskeygenassistxx: p1 */
    1,  /* vaeskeygenassistxxx: p1 */
    1,  /* vandpd: p1 */
    1,  /* vfand128v64: p1 */
    1,  /* vfandx128v64: p1 */
    1,  /* vfandxx128v64: p1 */
    1,  /* vfandxxx128v64: p1 */
    1,  /* vandps: p1 */
    1,  /* vfand128v32: p1 */
    1,  /* vfandx128v32: p1 */
    1,  /* vfandxx128v32: p1 */
    1,  /* vfandxxx128v32: p1 */
    1,  /* vandnpd: p1 */
    1,  /* vfandn128v64: p1 */
    1,  /* vfandnx128v64: p1 */
    1,  /* vfandnxx128v64: p1 */
    1,  /* vfandnxxx128v64: p1 */
    1,  /* vandnps: p1 */
    1,  /* vfandn128v32: p1 */
    1,  /* vfandnx128v32: p1 */
    1,  /* vfandnxx128v32: p1 */
    1,  /* vfandnxxx128v32: p1 */
    1,  /* vfblend128v64: p1 */
    1,  /* vfblendx128v64: p1 */
    1,  /* vfblendxx128v64: p1 */
    1,  /* vfblendxxx128v64: p1 */
    1,  /* vfblend128v32: p1 */
    1,  /* vfblendx128v32: p1 */
    1,  /* vfblendxx128v32: p1 */
    1,  /* vfblendxxx128v32: p1 */
    1,  /* vfblendv128v64: p1 */
    1,  /* vfblendvx128v64: p1 */
    1,  /* vfblendvxx128v64: p1 */
    1,  /* vfblendvxxx128v64: p1 */
    1,  /* vfblendv128v32: p1 */
    1,  /* vfblendvx128v32: p1 */
    1,  /* vfblendvxx128v32: p1 */
    1,  /* vfblendvxxx128v32: p1 */
    1,  /* vfbroadcastss: p1 */
    1,  /* vfbroadcastxss: p1 */
    1,  /* vfbroadcastxxss: p1 */
    1,  /* vfbroadcastsd: p1 */
    1,  /* vfbroadcastxsd: p1 */
    1,  /* vfbroadcastxxsd: p1 */
    1,  /* vfbroadcastf128: p1 */
    1,  /* vfbroadcastxf128: p1 */
    1,  /* vfbroadcastxxf128: p1 */
    1,  /* vcmppd: p1 */
    1,  /* vfcmp128v64: p1 */
    1,  /* vfcmpx128v64: p1 */
    1,  /* vfcmpxx128v64: p1 */
    1,  /* vfcmpxxx128v64: p1 */
    1,  /* vcmpps: p1 */
    1,  /* vfcmp128v32: p1 */
    1,  /* vfcmpx128v32: p1 */
    1,  /* vfcmpxx128v32: p1 */
    1,  /* vfcmpxxx128v32: p1 */
    1,  /* vfcmpsd: p1 */
    1,  /* vfcmpxsd: p1 */
    1,  /* vfcmpxxsd: p1 */
    1,  /* vfcmpxxxsd: p1 */
    1,  /* vfcmpss: p1 */
    1,  /* vfcmpxss: p1 */
    1,  /* vfcmpxxss: p1 */
    1,  /* vfcmpxxxss: p1 */
    1,  /* vcomisd: p1 */
    1,  /* vcomixsd: p1 */
    1,  /* vcomixxsd: p1 */
    1,  /* vcomixxxsd: p1 */
    1,  /* vcomiss: p1 */
    1,  /* vcomixss: p1 */
    1,  /* vcomixxss: p1 */
    1,  /* vcomixxxss: p1 */
    1,  /* vcvtdq2pd: p1 */
    1,  /* vcvtdq2pdx: p1 */
    1,  /* vcvtdq2pdxx: p1 */
    1,  /* vcvtdq2pdxxx: p1 */
    1,  /* vcvtdq2ps: p1 */
    1,  /* vcvtdq2psx: p1 */
    1,  /* vcvtdq2psxx: p1 */
    1,  /* vcvtdq2psxxx: p1 */
    1,  /* vcvtpd2dq: p1 */
    1,  /* vcvtpd2dqx: p1 */
    1,  /* vcvtpd2dqxx: p1 */
    1,  /* vcvtpd2dqxxx: p1 */
    1,  /* vcvtpd2dqy: p1 */
    1,  /* vcvtpd2dqyx: p1 */
    1,  /* vcvtpd2dqyxx: p1 */
    1,  /* vcvtpd2dqyxxx: p1 */
    1,  /* vcvtpd2ps: p1 */
    1,  /* vcvtpd2psx: p1 */
    1,  /* vcvtpd2psxx: p1 */
    1,  /* vcvtpd2psxxx: p1 */
    1,  /* vcvtpd2psy: p1 */
    1,  /* vcvtpd2psyx: p1 */
    1,  /* vcvtpd2psyxx: p1 */
    1,  /* vcvtpd2psyxxx: p1 */
    1,  /* vcvtps2dq: p1 */
    1,  /* vcvtps2dqx: p1 */
    1,  /* vcvtps2dqxx: p1 */
    1,  /* vcvtps2dqxxx: p1 */
    1,  /* vcvtps2pd: p1 */
    1,  /* vcvtps2pdx: p1 */
    1,  /* vcvtps2pdxx: p1 */
    1,  /* vcvtps2pdxxx: p1 */
    1,  /* vcvtsd2si: p1 */
    1,  /* vcvtsd2siq: p1 */
    1,  /* vcvtsd2ss: p1 */
    1,  /* vcvtsd2ssx: p1 */
    1,  /* vcvtsd2ssxx: p1 */
    1,  /* vcvtsd2ssxxx: p1 */
    1,  /* vcvtsi2sd: p1 */
    1,  /* vcvtsi2sdx: p1 */
    1,  /* vcvtsi2sdxx: p1 */
    1,  /* vcvtsi2sdxxx: p1 */
    1,  /* vcvtsi2sdq: p1 */
    1,  /* vcvtsi2sdqx: p1 */
    1,  /* vcvtsi2sdqxx: p1 */
    1,  /* vcvtsi2sdqxxx: p1 */
    1,  /* vcvtsi2ss: p1 */
    1,  /* vcvtsi2ssx: p1 */
    1,  /* vcvtsi2ssxx: p1 */
    1,  /* vcvtsi2ssxxx: p1 */
    1,  /* vcvtsi2ssq: p1 */
    1,  /* vcvtsi2ssqx: p1 */
    1,  /* vcvtsi2ssqxx: p1 */
    1,  /* vcvtsi2ssqxxx: p1 */
    1,  /* vcvtss2sd: p1 */
    1,  /* vcvtss2sdx: p1 */
    1,  /* vcvtss2sdxx: p1 */
    1,  /* vcvtss2sdxxx: p1 */
    1,  /* vcvtss2si: p1 */
    1,  /* vcvtss2siq: p1 */
    1,  /* vcvttpd2dq: p1 */
    1,  /* vcvttpd2dqx: p1 */
    1,  /* vcvttpd2dqxx: p1 */
    1,  /* vcvttpd2dqxxx: p1 */
    1,  /* vcvttpd2dqy: p1 */
    1,  /* vcvttpd2dqyx: p1 */
    1,  /* vcvttpd2dqyxx: p1 */
    1,  /* vcvttpd2dqyxxx: p1 */
    1,  /* vcvttps2dq: p1 */
    1,  /* vcvttps2dqx: p1 */
    1,  /* vcvttps2dqxx: p1 */
    1,  /* vcvttps2dqxxx: p1 */
    1,  /* vcvttsd2si: p1 */
    1,  /* vcvttsd2siq: p1 */
    1,  /* vcvttss2si: p1 */
    1,  /* vcvttss2siq: p1 */
    1,  /* vfdiv128v64: p1 */
    1,  /* vfdivx128v64: p1 */
    1,  /* vfdivxx128v64: p1 */
    1,  /* vfdivxxx128v64: p1 */
    1,  /* vfdiv128v32: p1 */
    1,  /* vfdivx128v32: p1 */
    1,  /* vfdivxx128v32: p1 */
    1,  /* vfdivxxx128v32: p1 */
    1,  /* vdivsd: p1 */
    1,  /* vdivxsd: p1 */
    1,  /* vdivxxsd: p1 */
    1,  /* vdivxxxsd: p1 */
    1,  /* vdivss: p1 */
    1,  /* vdivxss: p1 */
    1,  /* vdivxxss: p1 */
    1,  /* vdivxxxss: p1 */
    1,  /* vfdp128v64: p1 */
    1,  /* vfdpx128v64: p1 */
    1,  /* vfdpxx128v64: p1 */
    1,  /* vfdpxxx128v64: p1 */
    1,  /* vfdp128v32: p1 */
    1,  /* vfdpx128v32: p1 */
    1,  /* vfdpxx128v32: p1 */
    1,  /* vfdpxxx128v32: p1 */
    1,  /* vfextrf128: p1 */
    1,  /* vfextrxf128: p1 */
    1,  /* vfextrxxf128: p1 */
    1,  /* vfextrxxxf128: p1 */
    1,  /* vfextr128v32: p1 */
    1,  /* vfextrx128v32: p1 */
    1,  /* vfextrxx128v32: p1 */
    1,  /* vfextrxxx128v32: p1 */
    1,  /* vfhadd128v64: p1 */
    1,  /* vfhaddx128v64: p1 */
    1,  /* vfhaddxx128v64: p1 */
    1,  /* vfhaddxxx128v64: p1 */
    1,  /* vfhadd128v32: p1 */
    1,  /* vfhaddx128v32: p1 */
    1,  /* vfhaddxx128v32: p1 */
    1,  /* vfhaddxxx128v32: p1 */
    1,  /* vfhsub128v64: p1 */
    1,  /* vfhsubx128v64: p1 */
    1,  /* vfhsubxx128v64: p1 */
    1,  /* vfhsubxxx128v64: p1 */
    1,  /* vfhsub128v32: p1 */
    1,  /* vfhsubx128v32: p1 */
    1,  /* vfhsubxx128v32: p1 */
    1,  /* vfhsubxxx128v32: p1 */
    1,  /* vfinsrf128: p1 */
    1,  /* vfinsrxf128: p1 */
    1,  /* vfinsrxxf128: p1 */
    1,  /* vfinsrxxxf128: p1 */
    1,  /* vfinsr128v32: p1 */
    1,  /* vfinsrx128v32: p1 */
    1,  /* vfinsrxx128v32: p1 */
    1,  /* vfinsrxxx128v32: p1 */
    1,  /* vlddqu: p1 */
    1,  /* vlddqux: p1 */
    1,  /* vlddquxx: p1 */
    1,  /* vlddqu_n32: p1 */
    1,  /* vldmxcsr: p1 */
    1,  /* vmaskmovdqu: p1 */
    1,  /* vfmaskld128v32: p1 */
    1,  /* vfmaskldx128v32: p1 */
    1,  /* vfmaskldxx128v32: p1 */
    1,  /* vfmaskld128v64: p1 */
    1,  /* vfmaskldx128v64: p1 */
    1,  /* vfmaskldxx128v64: p1 */
    1,  /* vfmaskst128v32: p1 */
    1,  /* vfmaskstx128v32: p1 */
    1,  /* vfmaskstxx128v32: p1 */
    1,  /* vfmaskst128v64: p1 */
    1,  /* vfmaskstx128v64: p1 */
    1,  /* vfmaskstxx128v64: p1 */
    1,  /* vfmax128v64: p1 */
    1,  /* vfmaxx128v64: p1 */
    1,  /* vfmaxxx128v64: p1 */
    1,  /* vfmaxxxx128v64: p1 */
    1,  /* vfmax128v32: p1 */
    1,  /* vfmaxx128v32: p1 */
    1,  /* vfmaxxx128v32: p1 */
    1,  /* vfmaxxxx128v32: p1 */
    1,  /* vfmaxsd: p1 */
    1,  /* vfmaxxsd: p1 */
    1,  /* vfmaxxxsd: p1 */
    1,  /* vfmaxxxxsd: p1 */
    1,  /* vfmaxss: p1 */
    1,  /* vfmaxxss: p1 */
    1,  /* vfmaxxxss: p1 */
    1,  /* vfmaxxxxss: p1 */
    1,  /* vfmin128v64: p1 */
    1,  /* vfminx128v64: p1 */
    1,  /* vfminxx128v64: p1 */
    1,  /* vfminxxx128v64: p1 */
    1,  /* vfmin128v32: p1 */
    1,  /* vfminx128v32: p1 */
    1,  /* vfminxx128v32: p1 */
    1,  /* vfminxxx128v32: p1 */
    1,  /* vfminsd: p1 */
    1,  /* vfminxsd: p1 */
    1,  /* vfminxxsd: p1 */
    1,  /* vfminxxxsd: p1 */
    1,  /* vfminss: p1 */
    1,  /* vfminxss: p1 */
    1,  /* vfminxxss: p1 */
    1,  /* vfminxxxss: p1 */
    1,  /* vmovapd: p1 */
    1,  /* vldapd: p1 */
    1,  /* vldapdx: p1 */
    1,  /* vldapdxx: p1 */
    1,  /* vldapd_n32: p1 */
    1,  /* vstapd: p1 */
    1,  /* vstapdx: p1 */
    1,  /* vstapdxx: p1 */
    1,  /* vstapd_n32: p1 */
    1,  /* vmovaps: p1 */
    1,  /* vldaps: p1 */
    1,  /* vldapsx: p1 */
    1,  /* vldapsxx: p1 */
    1,  /* vldaps_n32: p1 */
    1,  /* vstaps: p1 */
    1,  /* vstapsx: p1 */
    1,  /* vstapsxx: p1 */
    1,  /* vstaps_n32: p1 */
    1,  /* vmovg2x: p1 */
    1,  /* vmovg2x64: p1 */
    1,  /* vmovx2g: p1 */
    1,  /* vmovx2g64: p1 */
    1,  /* vld64_2sse: p1 */
    1,  /* vldx64_2sse: p1 */
    1,  /* vldxx64_2sse: p1 */
    1,  /* vld64_2sse_n32: p1 */
    1,  /* vst64_fsse: p1 */
    1,  /* vstx64_fsse: p1 */
    1,  /* vstxx64_fsse: p1 */
    1,  /* vst64_fsse_n32: p1 */
    1,  /* vmovddup: p1 */
    1,  /* vmovddupx: p1 */
    1,  /* vmovddupxx: p1 */
    1,  /* vmovddupxxx: p1 */
    1,  /* vlddqa: p1 */
    1,  /* vlddqax: p1 */
    1,  /* vlddqaxx: p1 */
    1,  /* vlddqa_n32: p1 */
    1,  /* vmovdqa: p1 */
    1,  /* vstdqa: p1 */
    1,  /* vstdqax: p1 */
    1,  /* vstdqaxx: p1 */
    1,  /* vstdqa_n32: p1 */
    1,  /* vstdqu: p1 */
    1,  /* vstdqux: p1 */
    1,  /* vstdquxx: p1 */
    1,  /* vstdqu_n32: p1 */
    1,  /* vldhpd: p1 */
    1,  /* vldhpdx: p1 */
    1,  /* vldhpdxx: p1 */
    1,  /* vldhpd_n32: p1 */
    1,  /* vsthpd: p1 */
    1,  /* vsthpdx: p1 */
    1,  /* vsthpdxx: p1 */
    1,  /* vsthpd_n32: p1 */
    1,  /* vldhps: p1 */
    1,  /* vldhpsx: p1 */
    1,  /* vldhpsxx: p1 */
    1,  /* vldhps_n32: p1 */
    1,  /* vsthps: p1 */
    1,  /* vsthpsx: p1 */
    1,  /* vsthpsxx: p1 */
    1,  /* vsthps_n32: p1 */
    1,  /* vldlpd: p1 */
    1,  /* vldlpdx: p1 */
    1,  /* vldlpdxx: p1 */
    1,  /* vldlpd_n32: p1 */
    1,  /* vstorelpd: p1 */
    1,  /* vstlpd: p1 */
    1,  /* vstlpdx: p1 */
    1,  /* vstlpdxx: p1 */
    1,  /* vstlpd_n32: p1 */
    1,  /* vldlps: p1 */
    1,  /* vldlpsx: p1 */
    1,  /* vldlpsxx: p1 */
    1,  /* vldlps_n32: p1 */
    1,  /* vstlps: p1 */
    1,  /* vstlpsx: p1 */
    1,  /* vstlpsxx: p1 */
    1,  /* vstlps_n32: p1 */
    1,  /* vmovmskpd: p1 */
    1,  /* vmovmskps: p1 */
    1,  /* vstorenti128: p1 */
    1,  /* vstorentxi128: p1 */
    1,  /* vstorentxxi128: p1 */
    1,  /* vldntdqa: p1 */
    1,  /* vldntdqax: p1 */
    1,  /* vldntdqaxx: p1 */
    1,  /* vstntdq: p1 */
    1,  /* vstntdqx: p1 */
    1,  /* vstntdqxx: p1 */
    1,  /* vstntpd: p1 */
    1,  /* vstntpdx: p1 */
    1,  /* vstntpdxx: p1 */
    1,  /* vstntps: p1 */
    1,  /* vstntpsx: p1 */
    1,  /* vstntpsxx: p1 */
    1,  /* vstntsd: p1 */
    1,  /* vstntsdx: p1 */
    1,  /* vstntsdxx: p1 */
    1,  /* vstntss: p1 */
    1,  /* vstntssx: p1 */
    1,  /* vstntssxx: p1 */
    1,  /* vmovsd: p1 */
    1,  /* vldsd: p1 */
    1,  /* vldsdx: p1 */
    1,  /* vldsdxx: p1 */
    1,  /* vldsd_n32: p1 */
    1,  /* vstsd: p1 */
    1,  /* vstsdx: p1 */
    1,  /* vstsdxx: p1 */
    1,  /* vstsd_n32: p1 */
    1,  /* vmovss: p1 */
    1,  /* vldss: p1 */
    1,  /* vldssx: p1 */
    1,  /* vldssxx: p1 */
    1,  /* vldss_n32: p1 */
    1,  /* vstss: p1 */
    1,  /* vstssx: p1 */
    1,  /* vstssxx: p1 */
    1,  /* vstss_n32: p1 */
    1,  /* vmovlhps: p1 */
    1,  /* vmovhlps: p1 */
    1,  /* vmovshdup: p1 */
    1,  /* vmovshdupx: p1 */
    1,  /* vmovshdupxx: p1 */
    1,  /* vmovshdupxxx: p1 */
    1,  /* vmovsldup: p1 */
    1,  /* vmovsldupx: p1 */
    1,  /* vmovsldupxx: p1 */
    1,  /* vmovsldupxxx: p1 */
    1,  /* vldupd: p1 */
    1,  /* vldupdx: p1 */
    1,  /* vldupdxx: p1 */
    1,  /* vldupd_n32: p1 */
    1,  /* vstupd: p1 */
    1,  /* vstupdx: p1 */
    1,  /* vstupdxx: p1 */
    1,  /* vstupd_n32: p1 */
    1,  /* vldups: p1 */
    1,  /* vldupsx: p1 */
    1,  /* vldupsxx: p1 */
    1,  /* vldups_n32: p1 */
    1,  /* vstups: p1 */
    1,  /* vstupsx: p1 */
    1,  /* vstupsxx: p1 */
    1,  /* vstups_n32: p1 */
    1,  /* vmpsadbw: p1 */
    1,  /* vmpsadbwx: p1 */
    1,  /* vmpsadbwxx: p1 */
    1,  /* vmpsadbwxxx: p1 */
    1,  /* vfmul128v64: p1 */
    1,  /* vfmulx128v64: p1 */
    1,  /* vfmulxx128v64: p1 */
    1,  /* vfmulxxx128v64: p1 */
    1,  /* vfmul128v32: p1 */
    1,  /* vfmulx128v32: p1 */
    1,  /* vfmulxx128v32: p1 */
    1,  /* vfmulxxx128v32: p1 */
    1,  /* vmulsd: p1 */
    1,  /* vmulxsd: p1 */
    1,  /* vmulxxsd: p1 */
    1,  /* vmulxxxsd: p1 */
    1,  /* vmulss: p1 */
    1,  /* vmulxss: p1 */
    1,  /* vmulxxss: p1 */
    1,  /* vmulxxxss: p1 */
    1,  /* vorpd: p1 */
    1,  /* vfor128v64: p1 */
    1,  /* vforx128v64: p1 */
    1,  /* vforxx128v64: p1 */
    1,  /* vforxxx128v64: p1 */
    1,  /* vorps: p1 */
    1,  /* vfor128v32: p1 */
    1,  /* vforx128v32: p1 */
    1,  /* vforxx128v32: p1 */
    1,  /* vforxxx128v32: p1 */
    1,  /* vabs128v8: p1 */
    1,  /* vabsx128v8: p1 */
    1,  /* vabsxx128v8: p1 */
    1,  /* vabsxxx128v8: p1 */
    1,  /* vabs128v32: p1 */
    1,  /* vabsx128v32: p1 */
    1,  /* vabsxx128v32: p1 */
    1,  /* vabsxxx128v32: p1 */
    1,  /* vabs128v16: p1 */
    1,  /* vabsx128v16: p1 */
    1,  /* vabsxx128v16: p1 */
    1,  /* vabsxxx128v16: p1 */
    1,  /* vpackssdw: p1 */
    1,  /* vpackssdwx: p1 */
    1,  /* vpackssdwxx: p1 */
    1,  /* vpackssdwxxx: p1 */
    1,  /* vpacksswb: p1 */
    1,  /* vpacksswbx: p1 */
    1,  /* vpacksswbxx: p1 */
    1,  /* vpacksswbxxx: p1 */
    1,  /* vpackusdw: p1 */
    1,  /* vpackusdwx: p1 */
    1,  /* vpackusdwxx: p1 */
    1,  /* vpackusdwxxx: p1 */
    1,  /* vpackuswb: p1 */
    1,  /* vpackuswbx: p1 */
    1,  /* vpackuswbxx: p1 */
    1,  /* vpackuswbxxx: p1 */
    1,  /* vadd128v8: p1 */
    1,  /* vaddx128v8: p1 */
    1,  /* vaddxx128v8: p1 */
    1,  /* vaddxxx128v8: p1 */
    1,  /* vadd128v32: p1 */
    1,  /* vaddx128v32: p1 */
    1,  /* vaddxx128v32: p1 */
    1,  /* vaddxxx128v32: p1 */
    1,  /* vadd128v64: p1 */
    1,  /* vaddx128v64: p1 */
    1,  /* vaddxx128v64: p1 */
    1,  /* vaddxxx128v64: p1 */
    1,  /* vadd128v16: p1 */
    1,  /* vaddx128v16: p1 */
    1,  /* vaddxx128v16: p1 */
    1,  /* vaddxxx128v16: p1 */
    1,  /* vadds128v8: p1 */
    1,  /* vaddsx128v8: p1 */
    1,  /* vaddsxx128v8: p1 */
    1,  /* vaddsxxx128v8: p1 */
    1,  /* vadds128v16: p1 */
    1,  /* vaddsx128v16: p1 */
    1,  /* vaddsxx128v16: p1 */
    1,  /* vaddsxxx128v16: p1 */
    1,  /* vaddus128v8: p1 */
    1,  /* vaddusx128v8: p1 */
    1,  /* vaddusxx128v8: p1 */
    1,  /* vaddusxxx128v8: p1 */
    1,  /* vaddus128v16: p1 */
    1,  /* vaddusx128v16: p1 */
    1,  /* vaddusxx128v16: p1 */
    1,  /* vaddusxxx128v16: p1 */
    1,  /* vpalignr128: p1 */
    1,  /* vpalignrx128: p1 */
    1,  /* vpalignrxx128: p1 */
    1,  /* vpalignrxxx128: p1 */
    1,  /* vand128v8: p1 */
    1,  /* vandx128v8: p1 */
    1,  /* vandxx128v8: p1 */
    1,  /* vandxxx128v8: p1 */
    1,  /* vand128v16: p1 */
    1,  /* vandx128v16: p1 */
    1,  /* vandxx128v16: p1 */
    1,  /* vandxxx128v16: p1 */
    1,  /* vand128v32: p1 */
    1,  /* vandx128v32: p1 */
    1,  /* vandxx128v32: p1 */
    1,  /* vandxxx128v32: p1 */
    1,  /* vand128v64: p1 */
    1,  /* vandx128v64: p1 */
    1,  /* vandxx128v64: p1 */
    1,  /* vandxxx128v64: p1 */
    1,  /* vandn128v8: p1 */
    1,  /* vandnx128v8: p1 */
    1,  /* vandnxx128v8: p1 */
    1,  /* vandnxxx128v8: p1 */
    1,  /* vandn128v16: p1 */
    1,  /* vandnx128v16: p1 */
    1,  /* vandnxx128v16: p1 */
    1,  /* vandnxxx128v16: p1 */
    1,  /* vandn128v32: p1 */
    1,  /* vandnx128v32: p1 */
    1,  /* vandnxx128v32: p1 */
    1,  /* vandnxxx128v32: p1 */
    1,  /* vandn128v64: p1 */
    1,  /* vandnx128v64: p1 */
    1,  /* vandnxx128v64: p1 */
    1,  /* vandnxxx128v64: p1 */
    1,  /* vpavgb: p1 */
    1,  /* vpavgbx: p1 */
    1,  /* vpavgbxx: p1 */
    1,  /* vpavgbxxx: p1 */
    1,  /* vpavgw: p1 */
    1,  /* vpavgwx: p1 */
    1,  /* vpavgwxx: p1 */
    1,  /* vpavgwxxx: p1 */
    1,  /* vblendv128v8: p1 */
    1,  /* vblendvx128v8: p1 */
    1,  /* vblendvxx128v8: p1 */
    1,  /* vblendvxxx128v8: p1 */
    1,  /* vblend128v16: p1 */
    1,  /* vblendx128v16: p1 */
    1,  /* vblendxx128v16: p1 */
    1,  /* vblendxxx128v16: p1 */
    1,  /* vpclmulqdq: p1 */
    1,  /* vpclmulqdqx: p1 */
    1,  /* vpclmulqdqxx: p1 */
    1,  /* vpclmulqdqxxx: p1 */
    1,  /* vcmpeq128v8: p1 */
    1,  /* vcmpeqx128v8: p1 */
    1,  /* vcmpeqxx128v8: p1 */
    1,  /* vcmpeqxxx128v8: p1 */
    1,  /* vcmpeq128v32: p1 */
    1,  /* vcmpeqx128v32: p1 */
    1,  /* vcmpeqxx128v32: p1 */
    1,  /* vcmpeqxxx128v32: p1 */
    1,  /* vcmpeq128v64: p1 */
    1,  /* vcmpeqx128v64: p1 */
    1,  /* vcmpeqxx128v64: p1 */
    1,  /* vcmpeqxxx128v64: p1 */
    1,  /* vcmpeq128v16: p1 */
    1,  /* vcmpeqx128v16: p1 */
    1,  /* vcmpeqxx128v16: p1 */
    1,  /* vcmpeqxxx128v16: p1 */
    1,  /* vcmpestri: p1 */
    1,  /* vcmpestrix: p1 */
    1,  /* vcmpestrixx: p1 */
    1,  /* vcmpestrixxx: p1 */
    1,  /* vcmpestrm: p1 */
    1,  /* vcmpestrmx: p1 */
    1,  /* vcmpestrmxx: p1 */
    1,  /* vcmpestrmxxx: p1 */
    1,  /* vcmpgt128v8: p1 */
    1,  /* vcmpgtx128v8: p1 */
    1,  /* vcmpgtxx128v8: p1 */
    1,  /* vcmpgtxxx128v8: p1 */
    1,  /* vcmpgt128v32: p1 */
    1,  /* vcmpgtx128v32: p1 */
    1,  /* vcmpgtxx128v32: p1 */
    1,  /* vcmpgtxxx128v32: p1 */
    1,  /* vcmpgt128v64: p1 */
    1,  /* vcmpgtx128v64: p1 */
    1,  /* vcmpgtxx128v64: p1 */
    1,  /* vcmpgtxxx128v64: p1 */
    1,  /* vcmpgt128v16: p1 */
    1,  /* vcmpgtx128v16: p1 */
    1,  /* vcmpgtxx128v16: p1 */
    1,  /* vcmpgtxxx128v16: p1 */
    1,  /* vcmpistri: p1 */
    1,  /* vcmpistrix: p1 */
    1,  /* vcmpistrixx: p1 */
    1,  /* vcmpistrixxx: p1 */
    1,  /* vcmpistrm: p1 */
    1,  /* vcmpistrmx: p1 */
    1,  /* vcmpistrmxx: p1 */
    1,  /* vcmpistrmxxx: p1 */
    1,  /* vfperm128v64: p1 */
    1,  /* vfpermx128v64: p1 */
    1,  /* vfpermxx128v64: p1 */
    1,  /* vfpermxxx128v64: p1 */
    1,  /* vfpermi128v64: p1 */
    1,  /* vfpermix128v64: p1 */
    1,  /* vfpermixx128v64: p1 */
    1,  /* vfpermixxx128v64: p1 */
    1,  /* vfperm128v32: p1 */
    1,  /* vfpermx128v32: p1 */
    1,  /* vfpermxx128v32: p1 */
    1,  /* vfpermxxx128v32: p1 */
    1,  /* vfpermi128v32: p1 */
    1,  /* vfpermix128v32: p1 */
    1,  /* vfpermixx128v32: p1 */
    1,  /* vfpermixxx128v32: p1 */
    1,  /* vfperm2f128: p1 */
    1,  /* vfperm2xf128: p1 */
    1,  /* vfperm2xxf128: p1 */
    1,  /* vfperm2xxxf128: p1 */
    1,  /* vextr128v8: p1 */
    1,  /* vextrx128v8: p1 */
    1,  /* vextrxx128v8: p1 */
    1,  /* vextrxxx128v8: p1 */
    1,  /* vextr128v32: p1 */
    1,  /* vextrx128v32: p1 */
    1,  /* vextrxx128v32: p1 */
    1,  /* vextrxxx128v32: p1 */
    1,  /* vextr128v64: p1 */
    1,  /* vextrx128v64: p1 */
    1,  /* vextrxx128v64: p1 */
    1,  /* vextrxxx128v64: p1 */
    1,  /* vextr128v16: p1 */
    1,  /* vextrx128v16: p1 */
    1,  /* vextrxx128v16: p1 */
    1,  /* vextrxxx128v16: p1 */
    1,  /* vphadd128v32: p1 */
    1,  /* vphaddx128v32: p1 */
    1,  /* vphaddxx128v32: p1 */
    1,  /* vphaddxxx128v32: p1 */
    1,  /* vphadds128v16: p1 */
    1,  /* vphaddsx128v16: p1 */
    1,  /* vphaddsxx128v16: p1 */
    1,  /* vphaddsxxx128v16: p1 */
    1,  /* vphadd128v16: p1 */
    1,  /* vphaddx128v16: p1 */
    1,  /* vphaddxx128v16: p1 */
    1,  /* vphaddxxx128v16: p1 */
    1,  /* vphminposuw: p1 */
    1,  /* vphminposuwx: p1 */
    1,  /* vphminposuwxx: p1 */
    1,  /* vphminposuwxxx: p1 */
    1,  /* vphsub128v32: p1 */
    1,  /* vphsubx128v32: p1 */
    1,  /* vphsubxx128v32: p1 */
    1,  /* vphsubxxx128v32: p1 */
    1,  /* vphsubs128v16: p1 */
    1,  /* vphsubsx128v16: p1 */
    1,  /* vphsubsxx128v16: p1 */
    1,  /* vphsubsxxx128v16: p1 */
    1,  /* vphsub128v16: p1 */
    1,  /* vphsubx128v16: p1 */
    1,  /* vphsubxx128v16: p1 */
    1,  /* vphsubxxx128v16: p1 */
    1,  /* vinsr128v8: p1 */
    1,  /* vinsrx128v8: p1 */
    1,  /* vinsrxx128v8: p1 */
    1,  /* vinsrxxx128v8: p1 */
    1,  /* vinsr128v32: p1 */
    1,  /* vinsrx128v32: p1 */
    1,  /* vinsrxx128v32: p1 */
    1,  /* vinsrxxx128v32: p1 */
    1,  /* vinsr128v64: p1 */
    1,  /* vinsrx128v64: p1 */
    1,  /* vinsrxx128v64: p1 */
    1,  /* vinsrxxx128v64: p1 */
    1,  /* vinsr128v16: p1 */
    1,  /* vinsrx128v16: p1 */
    1,  /* vinsrxx128v16: p1 */
    1,  /* vinsrxxx128v16: p1 */
    1,  /* vpmaddwd: p1 */
    1,  /* vpmaddwdx: p1 */
    1,  /* vpmaddwdxx: p1 */
    1,  /* vpmaddwdxxx: p1 */
    1,  /* vpmaddubsw128: p1 */
    1,  /* vpmaddubswx128: p1 */
    1,  /* vpmaddubswxx128: p1 */
    1,  /* vpmaddubswxxx128: p1 */
    1,  /* vmaxs128v8: p1 */
    1,  /* vmaxsx128v8: p1 */
    1,  /* vmaxsxx128v8: p1 */
    1,  /* vmaxsxxx128v8: p1 */
    1,  /* vmaxs128v32: p1 */
    1,  /* vmaxsx128v32: p1 */
    1,  /* vmaxsxx128v32: p1 */
    1,  /* vmaxsxxx128v32: p1 */
    1,  /* vmaxs128v16: p1 */
    1,  /* vmaxsx128v16: p1 */
    1,  /* vmaxsxx128v16: p1 */
    1,  /* vmaxsxxx128v16: p1 */
    1,  /* vmaxu128v8: p1 */
    1,  /* vmaxux128v8: p1 */
    1,  /* vmaxuxx128v8: p1 */
    1,  /* vmaxuxxx128v8: p1 */
    1,  /* vmaxu128v32: p1 */
    1,  /* vmaxux128v32: p1 */
    1,  /* vmaxuxx128v32: p1 */
    1,  /* vmaxuxxx128v32: p1 */
    1,  /* vmaxu128v16: p1 */
    1,  /* vmaxux128v16: p1 */
    1,  /* vmaxuxx128v16: p1 */
    1,  /* vmaxuxxx128v16: p1 */
    1,  /* vmins128v8: p1 */
    1,  /* vminsx128v8: p1 */
    1,  /* vminsxx128v8: p1 */
    1,  /* vminsxxx128v8: p1 */
    1,  /* vmins128v32: p1 */
    1,  /* vminsx128v32: p1 */
    1,  /* vminsxx128v32: p1 */
    1,  /* vminsxxx128v32: p1 */
    1,  /* vmins128v16: p1 */
    1,  /* vminsx128v16: p1 */
    1,  /* vminsxx128v16: p1 */
    1,  /* vminsxxx128v16: p1 */
    1,  /* vminu128v8: p1 */
    1,  /* vminux128v8: p1 */
    1,  /* vminuxx128v8: p1 */
    1,  /* vminuxxx128v8: p1 */
    1,  /* vminu128v32: p1 */
    1,  /* vminux128v32: p1 */
    1,  /* vminuxx128v32: p1 */
    1,  /* vminuxxx128v32: p1 */
    1,  /* vminu128v16: p1 */
    1,  /* vminux128v16: p1 */
    1,  /* vminuxx128v16: p1 */
    1,  /* vminuxxx128v16: p1 */
    1,  /* vpmovmskb128: p1 */
    1,  /* vpmovsxbd: p1 */
    1,  /* vpmovsxbdx: p1 */
    1,  /* vpmovsxbdxx: p1 */
    1,  /* vpmovsxbdxxx: p1 */
    1,  /* vpmovsxbq: p1 */
    1,  /* vpmovsxbqx: p1 */
    1,  /* vpmovsxbqxx: p1 */
    1,  /* vpmovsxbqxxx: p1 */
    1,  /* vpmovsxbw: p1 */
    1,  /* vpmovsxbwx: p1 */
    1,  /* vpmovsxbwxx: p1 */
    1,  /* vpmovsxbwxxx: p1 */
    1,  /* vpmovsxdq: p1 */
    1,  /* vpmovsxdqx: p1 */
    1,  /* vpmovsxdqxx: p1 */
    1,  /* vpmovsxdqxxx: p1 */
    1,  /* vpmovsxwd: p1 */
    1,  /* vpmovsxwdx: p1 */
    1,  /* vpmovsxwdxx: p1 */
    1,  /* vpmovsxwdxxx: p1 */
    1,  /* vpmovsxwq: p1 */
    1,  /* vpmovsxwqx: p1 */
    1,  /* vpmovsxwqxx: p1 */
    1,  /* vpmovsxwqxxx: p1 */
    1,  /* vpmovzxbd: p1 */
    1,  /* vpmovzxbdx: p1 */
    1,  /* vpmovzxbdxx: p1 */
    1,  /* vpmovzxbdxxx: p1 */
    1,  /* vpmovzxbq: p1 */
    1,  /* vpmovzxbqx: p1 */
    1,  /* vpmovzxbqxx: p1 */
    1,  /* vpmovzxbqxxx: p1 */
    1,  /* vpmovzxbw: p1 */
    1,  /* vpmovzxbwx: p1 */
    1,  /* vpmovzxbwxx: p1 */
    1,  /* vpmovzxbwxxx: p1 */
    1,  /* vpmovzxdq: p1 */
    1,  /* vpmovzxdqx: p1 */
    1,  /* vpmovzxdqxx: p1 */
    1,  /* vpmovzxdqxxx: p1 */
    1,  /* vpmovzxwd: p1 */
    1,  /* vpmovzxwdx: p1 */
    1,  /* vpmovzxwdxx: p1 */
    1,  /* vpmovzxwdxxx: p1 */
    1,  /* vpmovzxwq: p1 */
    1,  /* vpmovzxwqx: p1 */
    1,  /* vpmovzxwqxx: p1 */
    1,  /* vpmovzxwqxxx: p1 */
    1,  /* vmulhuw: p1 */
    1,  /* vmulhuwx: p1 */
    1,  /* vmulhuwxx: p1 */
    1,  /* vmulhuwxxx: p1 */
    1,  /* vmulhrsw: p1 */
    1,  /* vmulhrswx: p1 */
    1,  /* vmulhrswxx: p1 */
    1,  /* vmulhrswxxx: p1 */
    1,  /* vmulhw: p1 */
    1,  /* vmulhwx: p1 */
    1,  /* vmulhwxx: p1 */
    1,  /* vmulhwxxx: p1 */
    1,  /* vmulld: p1 */
    1,  /* vmulldx: p1 */
    1,  /* vmulldxx: p1 */
    1,  /* vmulldxxx: p1 */
    1,  /* vmul128v16: p1 */
    1,  /* vmulx128v16: p1 */
    1,  /* vmulxx128v16: p1 */
    1,  /* vmulxxx128v16: p1 */
    1,  /* vmul128v32: p1 */
    1,  /* vmulx128v32: p1 */
    1,  /* vmulxx128v32: p1 */
    1,  /* vmulxxx128v32: p1 */
    1,  /* vmuludq: p1 */
    1,  /* vmuludqx: p1 */
    1,  /* vmuludqxx: p1 */
    1,  /* vmuludqxxx: p1 */
    1,  /* vmuldq: p1 */
    1,  /* vmuldqx: p1 */
    1,  /* vmuldqxx: p1 */
    1,  /* vmuldqxxx: p1 */
    1,  /* vor128v8: p1 */
    1,  /* vorx128v8: p1 */
    1,  /* vorxx128v8: p1 */
    1,  /* vorxxx128v8: p1 */
    1,  /* vor128v16: p1 */
    1,  /* vorx128v16: p1 */
    1,  /* vorxx128v16: p1 */
    1,  /* vorxxx128v16: p1 */
    1,  /* vor128v32: p1 */
    1,  /* vorx128v32: p1 */
    1,  /* vorxx128v32: p1 */
    1,  /* vorxxx128v32: p1 */
    1,  /* vor128v64: p1 */
    1,  /* vorx128v64: p1 */
    1,  /* vorxx128v64: p1 */
    1,  /* vorxxx128v64: p1 */
    1,  /* vpsadbw: p1 */
    1,  /* vpsadbwx: p1 */
    1,  /* vpsadbwxx: p1 */
    1,  /* vpsadbwxxx: p1 */
    1,  /* vpshuf128v8: p1 */
    1,  /* vpshufx128v8: p1 */
    1,  /* vpshufxx128v8: p1 */
    1,  /* vpshufxxx128v8: p1 */
    1,  /* vpshuf128v32: p1 */
    1,  /* vpshufx128v32: p1 */
    1,  /* vpshufxx128v32: p1 */
    1,  /* vpshufxxx128v32: p1 */
    1,  /* vpshufw64v16: p1 */
    1,  /* vpshufwx64v16: p1 */
    1,  /* vpshufwxx64v16: p1 */
    1,  /* vpshufwxxx64v16: p1 */
    1,  /* vpshufhw: p1 */
    1,  /* vpshufhwx: p1 */
    1,  /* vpshufhwxx: p1 */
    1,  /* vpshufhwxxx: p1 */
    1,  /* vpshuflw: p1 */
    1,  /* vpshuflwx: p1 */
    1,  /* vpshuflwxx: p1 */
    1,  /* vpshuflwxxx: p1 */
    1,  /* vpsign128v8: p1 */
    1,  /* vpsignx128v8: p1 */
    1,  /* vpsignxx128v8: p1 */
    1,  /* vpsignxxx128v8: p1 */
    1,  /* vpsign128v32: p1 */
    1,  /* vpsignx128v32: p1 */
    1,  /* vpsignxx128v32: p1 */
    1,  /* vpsignxxx128v32: p1 */
    1,  /* vpsign128v16: p1 */
    1,  /* vpsignx128v16: p1 */
    1,  /* vpsignxx128v16: p1 */
    1,  /* vpsignxxx128v16: p1 */
    1,  /* vpslldq: p1 */
    1,  /* vpsrldq: p1 */
    1,  /* vpslld: p1 */
    1,  /* vpslldx: p1 */
    1,  /* vpslldxx: p1 */
    1,  /* vpslldxxx: p1 */
    1,  /* vpslldi: p1 */
    1,  /* vpsllq: p1 */
    1,  /* vpsllqx: p1 */
    1,  /* vpsllqxx: p1 */
    1,  /* vpsllqxxx: p1 */
    1,  /* vpsllqi: p1 */
    1,  /* vpsllw: p1 */
    1,  /* vpsllwx: p1 */
    1,  /* vpsllwxx: p1 */
    1,  /* vpsllwxxx: p1 */
    1,  /* vpsllwi: p1 */
    1,  /* vpsrad: p1 */
    1,  /* vpsradx: p1 */
    1,  /* vpsradxx: p1 */
    1,  /* vpsradxxx: p1 */
    1,  /* vpsradi: p1 */
    1,  /* vpsraw: p1 */
    1,  /* vpsrawx: p1 */
    1,  /* vpsrawxx: p1 */
    1,  /* vpsrawxxx: p1 */
    1,  /* vpsrawi: p1 */
    1,  /* vpsrld: p1 */
    1,  /* vpsrldx: p1 */
    1,  /* vpsrldxx: p1 */
    1,  /* vpsrldxxx: p1 */
    1,  /* vpsrldi: p1 */
    1,  /* vpsrlq: p1 */
    1,  /* vpsrlqx: p1 */
    1,  /* vpsrlqxx: p1 */
    1,  /* vpsrlqxxx: p1 */
    1,  /* vpsrlqi: p1 */
    1,  /* vpsrlw: p1 */
    1,  /* vpsrlwx: p1 */
    1,  /* vpsrlwxx: p1 */
    1,  /* vpsrlwxxx: p1 */
    1,  /* vpsrlwi: p1 */
    1,  /* vsub128v8: p1 */
    1,  /* vsubx128v8: p1 */
    1,  /* vsubxx128v8: p1 */
    1,  /* vsubxxx128v8: p1 */
    1,  /* vsub128v32: p1 */
    1,  /* vsubx128v32: p1 */
    1,  /* vsubxx128v32: p1 */
    1,  /* vsubxxx128v32: p1 */
    1,  /* vsub128v64: p1 */
    1,  /* vsubx128v64: p1 */
    1,  /* vsubxx128v64: p1 */
    1,  /* vsubxxx128v64: p1 */
    1,  /* vsub128v16: p1 */
    1,  /* vsubx128v16: p1 */
    1,  /* vsubxx128v16: p1 */
    1,  /* vsubxxx128v16: p1 */
    1,  /* vsubs128v8: p1 */
    1,  /* vsubsx128v8: p1 */
    1,  /* vsubsxx128v8: p1 */
    1,  /* vsubsxxx128v8: p1 */
    1,  /* vsubs128v16: p1 */
    1,  /* vsubsx128v16: p1 */
    1,  /* vsubsxx128v16: p1 */
    1,  /* vsubsxxx128v16: p1 */
    1,  /* vsubus128v8: p1 */
    1,  /* vsubusx128v8: p1 */
    1,  /* vsubusxx128v8: p1 */
    1,  /* vsubusxxx128v8: p1 */
    1,  /* vsubus128v16: p1 */
    1,  /* vsubusx128v16: p1 */
    1,  /* vsubusxx128v16: p1 */
    1,  /* vsubusxxx128v16: p1 */
    1,  /* vptest128: p1 */
    1,  /* vptestx128: p1 */
    1,  /* vptestxx128: p1 */
    1,  /* vptestxxx128: p1 */
    1,  /* vtestpd: p1 */
    1,  /* vtestxpd: p1 */
    1,  /* vtestxxpd: p1 */
    1,  /* vtestxxxpd: p1 */
    1,  /* vtestps: p1 */
    1,  /* vtestxps: p1 */
    1,  /* vtestxxps: p1 */
    1,  /* vtestxxxps: p1 */
    1,  /* vpunpckh64v8: p1 */
    1,  /* vpunpckhx64v8: p1 */
    1,  /* vpunpckhxx64v8: p1 */
    1,  /* vpunpckhxxx64v8: p1 */
    1,  /* vpunpckh64v32: p1 */
    1,  /* vpunpckhx64v32: p1 */
    1,  /* vpunpckhxx64v32: p1 */
    1,  /* vpunpckhxxx64v32: p1 */
    1,  /* vpunpckh64v16: p1 */
    1,  /* vpunpckhx64v16: p1 */
    1,  /* vpunpckhxx64v16: p1 */
    1,  /* vpunpckhxxx64v16: p1 */
    1,  /* vpunpckh64v64: p1 */
    1,  /* vpunpckhx64v64: p1 */
    1,  /* vpunpckhxx64v64: p1 */
    1,  /* vpunpckhxxx64v64: p1 */
    1,  /* vpunpckl64v8: p1 */
    1,  /* vpunpcklx64v8: p1 */
    1,  /* vpunpcklxx64v8: p1 */
    1,  /* vpunpcklxxx64v8: p1 */
    1,  /* vpunpckl64v32: p1 */
    1,  /* vpunpcklx64v32: p1 */
    1,  /* vpunpcklxx64v32: p1 */
    1,  /* vpunpcklxxx64v32: p1 */
    1,  /* vpunpckl64v16: p1 */
    1,  /* vpunpcklx64v16: p1 */
    1,  /* vpunpcklxx64v16: p1 */
    1,  /* vpunpcklxxx64v16: p1 */
    1,  /* vpunpckl64v64: p1 */
    1,  /* vpunpcklx64v64: p1 */
    1,  /* vpunpcklxx64v64: p1 */
    1,  /* vpunpcklxxx64v64: p1 */
    1,  /* vxor128v8: p1 */
    1,  /* vxorx128v8: p1 */
    1,  /* vxorxx128v8: p1 */
    1,  /* vxorxxx128v8: p1 */
    1,  /* vxor128v16: p1 */
    1,  /* vxorx128v16: p1 */
    1,  /* vxorxx128v16: p1 */
    1,  /* vxorxxx128v16: p1 */
    1,  /* vxor128v32: p1 */
    1,  /* vxorx128v32: p1 */
    1,  /* vxorxx128v32: p1 */
    1,  /* vxorxxx128v32: p1 */
    1,  /* vxor128v64: p1 */
    1,  /* vxorx128v64: p1 */
    1,  /* vxorxx128v64: p1 */
    1,  /* vxorxxx128v64: p1 */
    1,  /* vfrcp128v32: p1 */
    1,  /* vfrcpx128v32: p1 */
    1,  /* vfrcpxx128v32: p1 */
    1,  /* vfrcpxxx128v32: p1 */
    1,  /* vfrcpss: p1 */
    1,  /* vfrcpxss: p1 */
    1,  /* vfrcpxxss: p1 */
    1,  /* vfrcpxxxss: p1 */
    1,  /* vround128v64: p1 */
    1,  /* vroundx128v64: p1 */
    1,  /* vroundxx128v64: p1 */
    1,  /* vroundxxx128v64: p1 */
    1,  /* vround128v32: p1 */
    1,  /* vroundx128v32: p1 */
    1,  /* vroundxx128v32: p1 */
    1,  /* vroundxxx128v32: p1 */
    1,  /* vroundsd: p1 */
    1,  /* vroundxsd: p1 */
    1,  /* vroundxxsd: p1 */
    1,  /* vroundxxxsd: p1 */
    1,  /* vroundss: p1 */
    1,  /* vroundxss: p1 */
    1,  /* vroundxxss: p1 */
    1,  /* vroundxxxss: p1 */
    1,  /* vfrsqrt128v32: p1 */
    1,  /* vfrsqrtx128v32: p1 */
    1,  /* vfrsqrtxx128v32: p1 */
    1,  /* vfrsqrtxxx128v32: p1 */
    1,  /* vfrsqrtss: p1 */
    1,  /* vfrsqrtxss: p1 */
    1,  /* vfrsqrtxxss: p1 */
    1,  /* vfrsqrtxxxss: p1 */
    1,  /* vshufpd: p1 */
    1,  /* vfshuf128v64: p1 */
    1,  /* vfshufx128v64: p1 */
    1,  /* vfshufxx128v64: p1 */
    1,  /* vfshufxxx128v64: p1 */
    1,  /* vshufps: p1 */
    1,  /* vfshuf128v32: p1 */
    1,  /* vfshufx128v32: p1 */
    1,  /* vfshufxx128v32: p1 */
    1,  /* vfshufxxx128v32: p1 */
    1,  /* vfsqrt128v64: p1 */
    1,  /* vfsqrtx128v64: p1 */
    1,  /* vfsqrtxx128v64: p1 */
    1,  /* vfsqrtxxx128v64: p1 */
    1,  /* vfsqrt128v32: p1 */
    1,  /* vfsqrtx128v32: p1 */
    1,  /* vfsqrtxx128v32: p1 */
    1,  /* vfsqrtxxx128v32: p1 */
    1,  /* vfsqrtsd: p1 */
    1,  /* vfsqrtxsd: p1 */
    1,  /* vfsqrtxxsd: p1 */
    1,  /* vfsqrtxxxsd: p1 */
    1,  /* vfsqrtss: p1 */
    1,  /* vfsqrtxss: p1 */
    1,  /* vfsqrtxxss: p1 */
    1,  /* vfsqrtxxxss: p1 */
    1,  /* vstmxcsr: p1 */
    1,  /* vfsub128v64: p1 */
    1,  /* vfsubx128v64: p1 */
    1,  /* vfsubxx128v64: p1 */
    1,  /* vfsubxxx128v64: p1 */
    1,  /* vfsub128v32: p1 */
    1,  /* vfsubx128v32: p1 */
    1,  /* vfsubxx128v32: p1 */
    1,  /* vfsubxxx128v32: p1 */
    1,  /* vsubsd: p1 */
    1,  /* vsubxsd: p1 */
    1,  /* vsubxxsd: p1 */
    1,  /* vsubxxxsd: p1 */
    1,  /* vsubss: p1 */
    1,  /* vsubxss: p1 */
    1,  /* vsubxxss: p1 */
    1,  /* vsubxxxss: p1 */
    1,  /* vucomisd: p1 */
    1,  /* vucomixsd: p1 */
    1,  /* vucomixxsd: p1 */
    1,  /* vucomixxxsd: p1 */
    1,  /* vucomiss: p1 */
    1,  /* vucomixss: p1 */
    1,  /* vucomixxss: p1 */
    1,  /* vucomixxxss: p1 */
    1,  /* vunpckh128v64: p1 */
    1,  /* vunpckhx128v64: p1 */
    1,  /* vunpckhxx128v64: p1 */
    1,  /* vunpckhxxx128v64: p1 */
    1,  /* vunpckh128v32: p1 */
    1,  /* vunpckhx128v32: p1 */
    1,  /* vunpckhxx128v32: p1 */
    1,  /* vunpckhxxx128v32: p1 */
    1,  /* vunpckl128v64: p1 */
    1,  /* vunpcklx128v64: p1 */
    1,  /* vunpcklxx128v64: p1 */
    1,  /* vunpcklxxx128v64: p1 */
    1,  /* vunpckl128v32: p1 */
    1,  /* vunpcklx128v32: p1 */
    1,  /* vunpcklxx128v32: p1 */
    1,  /* vunpcklxxx128v32: p1 */
    1,  /* vxorpd: p1 */
    1,  /* vfxor128v64: p1 */
    1,  /* vfxorx128v64: p1 */
    1,  /* vfxorxx128v64: p1 */
    1,  /* vfxorxxx128v64: p1 */
    1,  /* vxzero128v64: p1 */
    1,  /* vxzero64: p1 */
    1,  /* vxorps: p1 */
    1,  /* vfxor128v32: p1 */
    1,  /* vfxorx128v32: p1 */
    1,  /* vfxorxx128v32: p1 */
    1,  /* vfxorxxx128v32: p1 */
    1,  /* vxzero128v32: p1 */
    1,  /* vxzero32: p1 */
    1,  /* vzeroall: p1 */
    1,  /* xfmadd132pd: p1 */
    1,  /* xfmadd132xpd: p1 */
    1,  /* xfmadd132xxpd: p1 */
    1,  /* xfmadd132xxxpd: p1 */
    1,  /* xfmadd213pd: p1 */
    1,  /* xfmadd213xpd: p1 */
    1,  /* xfmadd213xxpd: p1 */
    1,  /* xfmadd213xxxpd: p1 */
    1,  /* xfmadd231pd: p1 */
    1,  /* xfmadd231xpd: p1 */
    1,  /* xfmadd231xxpd: p1 */
    1,  /* xfmadd231xxxpd: p1 */
    1,  /* xfmadd132ps: p1 */
    1,  /* xfmadd132xps: p1 */
    1,  /* xfmadd132xxps: p1 */
    1,  /* xfmadd132xxxps: p1 */
    1,  /* xfmadd213ps: p1 */
    1,  /* xfmadd213xps: p1 */
    1,  /* xfmadd213xxps: p1 */
    1,  /* xfmadd213xxxps: p1 */
    1,  /* xfmadd231ps: p1 */
    1,  /* xfmadd231xps: p1 */
    1,  /* xfmadd231xxps: p1 */
    1,  /* xfmadd231xxxps: p1 */
    1,  /* xfmadd132sd: p1 */
    1,  /* xfmadd132xsd: p1 */
    1,  /* xfmadd132xxsd: p1 */
    1,  /* xfmadd132xxxsd: p1 */
    1,  /* xfmadd213sd: p1 */
    1,  /* xfmadd213xsd: p1 */
    1,  /* xfmadd213xxsd: p1 */
    1,  /* xfmadd213xxxsd: p1 */
    1,  /* xfmadd231sd: p1 */
    1,  /* xfmadd231xsd: p1 */
    1,  /* xfmadd231xxsd: p1 */
    1,  /* xfmadd231xxxsd: p1 */
    1,  /* xfmadd132ss: p1 */
    1,  /* xfmadd132xss: p1 */
    1,  /* xfmadd132xxss: p1 */
    1,  /* xfmadd132xxxss: p1 */
    1,  /* xfmadd213ss: p1 */
    1,  /* xfmadd213xss: p1 */
    1,  /* xfmadd213xxss: p1 */
    1,  /* xfmadd213xxxss: p1 */
    1,  /* xfmadd231ss: p1 */
    1,  /* xfmadd231xss: p1 */
    1,  /* xfmadd231xxss: p1 */
    1,  /* xfmadd231xxxss: p1 */
    1,  /* xfmaddsub132pd: p1 */
    1,  /* xfmaddsub132xpd: p1 */
    1,  /* xfmaddsub132xxpd: p1 */
    1,  /* xfmaddsub132xxxpd: p1 */
    1,  /* xfmaddsub213pd: p1 */
    1,  /* xfmaddsub213xpd: p1 */
    1,  /* xfmaddsub213xxpd: p1 */
    1,  /* xfmaddsub213xxxpd: p1 */
    1,  /* xfmaddsub231pd: p1 */
    1,  /* xfmaddsub231xpd: p1 */
    1,  /* xfmaddsub231xxpd: p1 */
    1,  /* xfmaddsub231xxxpd: p1 */
    1,  /* xfmaddsub132ps: p1 */
    1,  /* xfmaddsub132xps: p1 */
    1,  /* xfmaddsub132xxps: p1 */
    1,  /* xfmaddsub132xxxps: p1 */
    1,  /* xfmaddsub213ps: p1 */
    1,  /* xfmaddsub213xps: p1 */
    1,  /* xfmaddsub213xxps: p1 */
    1,  /* xfmaddsub213xxxps: p1 */
    1,  /* xfmaddsub231ps: p1 */
    1,  /* xfmaddsub231xps: p1 */
    1,  /* xfmaddsub231xxps: p1 */
    1,  /* xfmaddsub231xxxps: p1 */
    1,  /* xfmsubadd132pd: p1 */
    1,  /* xfmsubadd132xpd: p1 */
    1,  /* xfmsubadd132xxpd: p1 */
    1,  /* xfmsubadd132xxxpd: p1 */
    1,  /* xfmsubadd213pd: p1 */
    1,  /* xfmsubadd213xpd: p1 */
    1,  /* xfmsubadd213xxpd: p1 */
    1,  /* xfmsubadd213xxxpd: p1 */
    1,  /* xfmsubadd231pd: p1 */
    1,  /* xfmsubadd231xpd: p1 */
    1,  /* xfmsubadd231xxpd: p1 */
    1,  /* xfmsubadd231xxxpd: p1 */
    1,  /* xfmsubadd132ps: p1 */
    1,  /* xfmsubadd132xps: p1 */
    1,  /* xfmsubadd132xxps: p1 */
    1,  /* xfmsubadd132xxxps: p1 */
    1,  /* xfmsubadd213ps: p1 */
    1,  /* xfmsubadd213xps: p1 */
    1,  /* xfmsubadd213xxps: p1 */
    1,  /* xfmsubadd213xxxps: p1 */
    1,  /* xfmsubadd231ps: p1 */
    1,  /* xfmsubadd231xps: p1 */
    1,  /* xfmsubadd231xxps: p1 */
    1,  /* xfmsubadd231xxxps: p1 */
    1,  /* xfmsub132pd: p1 */
    1,  /* xfmsub132xpd: p1 */
    1,  /* xfmsub132xxpd: p1 */
    1,  /* xfmsub132xxxpd: p1 */
    1,  /* xfmsub213pd: p1 */
    1,  /* xfmsub213xpd: p1 */
    1,  /* xfmsub213xxpd: p1 */
    1,  /* xfmsub213xxxpd: p1 */
    1,  /* xfmsub231pd: p1 */
    1,  /* xfmsub231xpd: p1 */
    1,  /* xfmsub231xxpd: p1 */
    1,  /* xfmsub231xxxpd: p1 */
    1,  /* xfmsub132ps: p1 */
    1,  /* xfmsub132xps: p1 */
    1,  /* xfmsub132xxps: p1 */
    1,  /* xfmsub132xxxps: p1 */
    1,  /* xfmsub213ps: p1 */
    1,  /* xfmsub213xps: p1 */
    1,  /* xfmsub213xxps: p1 */
    1,  /* xfmsub213xxxps: p1 */
    1,  /* xfmsub231ps: p1 */
    1,  /* xfmsub231xps: p1 */
    1,  /* xfmsub231xxps: p1 */
    1,  /* xfmsub231xxxps: p1 */
    1,  /* xfmsub132sd: p1 */
    1,  /* xfmsub132xsd: p1 */
    1,  /* xfmsub132xxsd: p1 */
    1,  /* xfmsub132xxxsd: p1 */
    1,  /* xfmsub213sd: p1 */
    1,  /* xfmsub213xsd: p1 */
    1,  /* xfmsub213xxsd: p1 */
    1,  /* xfmsub213xxxsd: p1 */
    1,  /* xfmsub231sd: p1 */
    1,  /* xfmsub231xsd: p1 */
    1,  /* xfmsub231xxsd: p1 */
    1,  /* xfmsub231xxxsd: p1 */
    1,  /* xfmsub132ss: p1 */
    1,  /* xfmsub132xss: p1 */
    1,  /* xfmsub132xxss: p1 */
    1,  /* xfmsub132xxxss: p1 */
    1,  /* xfmsub213ss: p1 */
    1,  /* xfmsub213xss: p1 */
    1,  /* xfmsub213xxss: p1 */
    1,  /* xfmsub213xxxss: p1 */
    1,  /* xfmsub231ss: p1 */
    1,  /* xfmsub231xss: p1 */
    1,  /* xfmsub231xxss: p1 */
    1,  /* xfmsub231xxxss: p1 */
    1,  /* xfnmadd132pd: p1 */
    1,  /* xfnmadd132xpd: p1 */
    1,  /* xfnmadd132xxpd: p1 */
    1,  /* xfnmadd132xxxpd: p1 */
    1,  /* xfnmadd213pd: p1 */
    1,  /* xfnmadd213xpd: p1 */
    1,  /* xfnmadd213xxpd: p1 */
    1,  /* xfnmadd213xxxpd: p1 */
    1,  /* xfnmadd231pd: p1 */
    1,  /* xfnmadd231xpd: p1 */
    1,  /* xfnmadd231xxpd: p1 */
    1,  /* xfnmadd231xxxpd: p1 */
    1,  /* xfnmadd132ps: p1 */
    1,  /* xfnmadd132xps: p1 */
    1,  /* xfnmadd132xxps: p1 */
    1,  /* xfnmadd132xxxps: p1 */
    1,  /* xfnmadd213ps: p1 */
    1,  /* xfnmadd213xps: p1 */
    1,  /* xfnmadd213xxps: p1 */
    1,  /* xfnmadd213xxxps: p1 */
    1,  /* xfnmadd231ps: p1 */
    1,  /* xfnmadd231xps: p1 */
    1,  /* xfnmadd231xxps: p1 */
    1,  /* xfnmadd231xxxps: p1 */
    1,  /* xfnmadd132sd: p1 */
    1,  /* xfnmadd132xsd: p1 */
    1,  /* xfnmadd132xxsd: p1 */
    1,  /* xfnmadd132xxxsd: p1 */
    1,  /* xfnmadd213sd: p1 */
    1,  /* xfnmadd213xsd: p1 */
    1,  /* xfnmadd213xxsd: p1 */
    1,  /* xfnmadd213xxxsd: p1 */
    1,  /* xfnmadd231sd: p1 */
    1,  /* xfnmadd231xsd: p1 */
    1,  /* xfnmadd231xxsd: p1 */
    1,  /* xfnmadd231xxxsd: p1 */
    1,  /* xfnmadd132ss: p1 */
    1,  /* xfnmadd132xss: p1 */
    1,  /* xfnmadd132xxss: p1 */
    1,  /* xfnmadd132xxxss: p1 */
    1,  /* xfnmadd213ss: p1 */
    1,  /* xfnmadd213xss: p1 */
    1,  /* xfnmadd213xxss: p1 */
    1,  /* xfnmadd213xxxss: p1 */
    1,  /* xfnmadd231ss: p1 */
    1,  /* xfnmadd231xss: p1 */
    1,  /* xfnmadd231xxss: p1 */
    1,  /* xfnmadd231xxxss: p1 */
    1,  /* xfnmsub132pd: p1 */
    1,  /* xfnmsub132xpd: p1 */
    1,  /* xfnmsub132xxpd: p1 */
    1,  /* xfnmsub132xxxpd: p1 */
    1,  /* xfnmsub213pd: p1 */
    1,  /* xfnmsub213xpd: p1 */
    1,  /* xfnmsub213xxpd: p1 */
    1,  /* xfnmsub213xxxpd: p1 */
    1,  /* xfnmsub231pd: p1 */
    1,  /* xfnmsub231xpd: p1 */
    1,  /* xfnmsub231xxpd: p1 */
    1,  /* xfnmsub231xxxpd: p1 */
    1,  /* xfnmsub132ps: p1 */
    1,  /* xfnmsub132xps: p1 */
    1,  /* xfnmsub132xxps: p1 */
    1,  /* xfnmsub132xxxps: p1 */
    1,  /* xfnmsub213ps: p1 */
    1,  /* xfnmsub213xps: p1 */
    1,  /* xfnmsub213xxps: p1 */
    1,  /* xfnmsub213xxxps: p1 */
    1,  /* xfnmsub231ps: p1 */
    1,  /* xfnmsub231xps: p1 */
    1,  /* xfnmsub231xxps: p1 */
    1,  /* xfnmsub231xxxps: p1 */
    1,  /* xfnmsub132sd: p1 */
    1,  /* xfnmsub132xsd: p1 */
    1,  /* xfnmsub132xxsd: p1 */
    1,  /* xfnmsub132xxxsd: p1 */
    1,  /* xfnmsub213sd: p1 */
    1,  /* xfnmsub213xsd: p1 */
    1,  /* xfnmsub213xxsd: p1 */
    1,  /* xfnmsub213xxxsd: p1 */
    1,  /* xfnmsub231sd: p1 */
    1,  /* xfnmsub231xsd: p1 */
    1,  /* xfnmsub231xxsd: p1 */
    1,  /* xfnmsub231xxxsd: p1 */
    1,  /* xfnmsub132ss: p1 */
    1,  /* xfnmsub132xss: p1 */
    1,  /* xfnmsub132xxss: p1 */
    1,  /* xfnmsub132xxxss: p1 */
    1,  /* xfnmsub213ss: p1 */
    1,  /* xfnmsub213xss: p1 */
    1,  /* xfnmsub213xxss: p1 */
    1,  /* xfnmsub213xxxss: p1 */
    1,  /* xfnmsub231ss: p1 */
    1,  /* xfnmsub231xss: p1 */
    1,  /* xfnmsub231xxss: p1 */
    1,  /* xfnmsub231xxxss: p1 */
    1,  /* movabsq: p1 */
    1,  /* store8_abs: p1 */
    1,  /* store16_abs: p1 */
    1,  /* store32_abs: p1 */
    1,  /* store64_abs: p1 */
    1,  /* ld8_abs: p1 */
    1,  /* ld16_abs: p1 */
    1,  /* ld32_abs: p1 */
    1,  /* ld64_abs: p1 */
    1,  /* lock_add32: p1 */
    1,  /* lock_adc32: p1 */
    1,  /* lock_add64: p1 */
    1,  /* lock_xchg32: p1 */
    1,  /* lock_xchg64: p1 */
    1,  /* lock_cmpxchg32: p1 */
    1,  /* lock_cmpxchg64: p1 */
    1,  /* lock_and32: p1 */
    1,  /* lock_and64: p1 */
    1,  /* lock_or32: p1 */
    1,  /* lock_or64: p1 */
    1,  /* lock_xor32: p1 */
    1,  /* lock_xor64: p1 */
    1,  /* lock_sub32: p1 */
    1,  /* lock_sub64: p1 */
    1,  /* lock_add8: p1 */
    1,  /* lock_add16: p1 */
    1,  /* lock_xchg8: p1 */
    1,  /* lock_xchg16: p1 */
    1,  /* lock_cmpxchg8: p1 */
    1,  /* lock_cmpxchg16: p1 */
    1,  /* lock_and8: p1 */
    1,  /* lock_and16: p1 */
    1,  /* lock_or8: p1 */
    1,  /* lock_or16: p1 */
    1,  /* lock_xor8: p1 */
    1,  /* lock_xor16: p1 */
    1,  /* lock_sub8: p1 */
    1,  /* lock_sub16: p1 */
    1,  /* lock_xadd8: p1 */
    1,  /* lock_xadd16: p1 */
    1,  /* lock_xadd32: p1 */
    1,  /* lock_xadd64: p1 */
    1,  /* bsf32: p1 */
    1,  /* bsf64: p1 */
    1,  /* bsr32: p1 */
    1,  /* bsr64: p1 */
    1,  /* tls_global_dynamic_64: p1 */
    1,  /* tls_global_dynamic_32: p1 */
    1,  /* tls_local_dynamic_64: p1 */
    1,  /* tls_local_dynamic_32: p1 */
    0,  /* begin_pregtn */
    0,  /* end_pregtn */
    0,  /* bwd_bar */
    0,  /* fwd_bar */
    0,  /* label */
    1,  /* nop: p1 */
    0,  /* noop */
};

const mUINT32 ISA_PACK_init_mask[3311][1] = {
  { 0x000000ffLL, }, /* add32 */
  { 0x000000ffLL, }, /* adc32 */
  { 0x000000ffLL, }, /* add64 */
  { 0x000000ffLL, }, /* addx32 */
  { 0x000000ffLL, }, /* addxx32 */
  { 0x000000ffLL, }, /* addxxx32 */
  { 0x000000ffLL, }, /* addx64 */
  { 0x000000ffLL, }, /* addxx64 */
  { 0x000000ffLL, }, /* addxxx64 */
  { 0x000000ffLL, }, /* addi32 */
  { 0x000000ffLL, }, /* adci32 */
  { 0x000000ffLL, }, /* addi64 */
  { 0x000000ffLL, }, /* add128v8 */
  { 0x000000ffLL, }, /* addx128v8 */
  { 0x000000ffLL, }, /* addxx128v8 */
  { 0x000000ffLL, }, /* addxxx128v8 */
  { 0x000000ffLL, }, /* add128v16 */
  { 0x000000ffLL, }, /* addx128v16 */
  { 0x000000ffLL, }, /* addxx128v16 */
  { 0x000000ffLL, }, /* addxxx128v16 */
  { 0x000000ffLL, }, /* add128v32 */
  { 0x000000ffLL, }, /* addx128v32 */
  { 0x000000ffLL, }, /* addxx128v32 */
  { 0x000000ffLL, }, /* addxxx128v32 */
  { 0x000000ffLL, }, /* add128v64 */
  { 0x000000ffLL, }, /* addx128v64 */
  { 0x000000ffLL, }, /* addxx128v64 */
  { 0x000000ffLL, }, /* addxxx128v64 */
  { 0x000000ffLL, }, /* add64v8 */
  { 0x000000ffLL, }, /* add64v16 */
  { 0x000000ffLL, }, /* add64v32 */
  { 0x000000ffLL, }, /* paddsb */
  { 0x000000ffLL, }, /* paddsw */
  { 0x000000ffLL, }, /* paddq */
  { 0x000000ffLL, }, /* psubsb */
  { 0x000000ffLL, }, /* psubsw */
  { 0x000000ffLL, }, /* psubq */
  { 0x000000ffLL, }, /* paddusb */
  { 0x000000ffLL, }, /* paddusw */
  { 0x000000ffLL, }, /* psubusb */
  { 0x000000ffLL, }, /* psubusw */
  { 0x000000ffLL, }, /* pmullw */
  { 0x000000ffLL, }, /* pmulhw */
  { 0x000000ffLL, }, /* pmulhuw */
  { 0x000000ffLL, }, /* pmuludq */
  { 0x000000ffLL, }, /* pmaddwd */
  { 0x000000ffLL, }, /* paddsb128 */
  { 0x000000ffLL, }, /* paddsw128 */
  { 0x000000ffLL, }, /* paddq128 */
  { 0x000000ffLL, }, /* psubsb128 */
  { 0x000000ffLL, }, /* psubsw128 */
  { 0x000000ffLL, }, /* psubq128 */
  { 0x000000ffLL, }, /* paddusb128 */
  { 0x000000ffLL, }, /* paddusw128 */
  { 0x000000ffLL, }, /* psubusb128 */
  { 0x000000ffLL, }, /* psubusw128 */
  { 0x000000ffLL, }, /* pmullw128 */
  { 0x000000ffLL, }, /* pmulhw128 */
  { 0x000000ffLL, }, /* pmulhuw128 */
  { 0x000000ffLL, }, /* pmuludq128 */
  { 0x000000ffLL, }, /* pmaddwd128 */
  { 0x000000ffLL, }, /* and8 */
  { 0x000000ffLL, }, /* and16 */
  { 0x000000ffLL, }, /* and32 */
  { 0x000000ffLL, }, /* andx32 */
  { 0x000000ffLL, }, /* andxx32 */
  { 0x000000ffLL, }, /* andxxx32 */
  { 0x000000ffLL, }, /* and64 */
  { 0x000000ffLL, }, /* andx64 */
  { 0x000000ffLL, }, /* andxx64 */
  { 0x000000ffLL, }, /* andxxx64 */
  { 0x000000ffLL, }, /* andx8 */
  { 0x000000ffLL, }, /* andx16 */
  { 0x000000ffLL, }, /* andxx8 */
  { 0x000000ffLL, }, /* andxxx8 */
  { 0x000000ffLL, }, /* andxx16 */
  { 0x000000ffLL, }, /* andxxx16 */
  { 0x000000ffLL, }, /* and128v8 */
  { 0x000000ffLL, }, /* andx128v8 */
  { 0x000000ffLL, }, /* andxx128v8 */
  { 0x000000ffLL, }, /* andxxx128v8 */
  { 0x000000ffLL, }, /* and128v16 */
  { 0x000000ffLL, }, /* andx128v16 */
  { 0x000000ffLL, }, /* andxx128v16 */
  { 0x000000ffLL, }, /* andxxx128v16 */
  { 0x000000ffLL, }, /* and128v32 */
  { 0x000000ffLL, }, /* andx128v32 */
  { 0x000000ffLL, }, /* andxx128v32 */
  { 0x000000ffLL, }, /* andxxx128v32 */
  { 0x000000ffLL, }, /* and128v64 */
  { 0x000000ffLL, }, /* andx128v64 */
  { 0x000000ffLL, }, /* andxx128v64 */
  { 0x000000ffLL, }, /* andxxx128v64 */
  { 0x000000ffLL, }, /* andi32 */
  { 0x000000ffLL, }, /* andi64 */
  { 0x000000ffLL, }, /* call */
  { 0x000000ffLL, }, /* icall */
  { 0x000000ffLL, }, /* icallx */
  { 0x000000ffLL, }, /* icallxx */
  { 0x000000ffLL, }, /* icallxxx */
  { 0x000000ffLL, }, /* cmp8 */
  { 0x000000ffLL, }, /* cmpx8 */
  { 0x000000ffLL, }, /* cmpxx8 */
  { 0x000000ffLL, }, /* cmpxxx8 */
  { 0x000000ffLL, }, /* cmp16 */
  { 0x000000ffLL, }, /* cmpx16 */
  { 0x000000ffLL, }, /* cmpxx16 */
  { 0x000000ffLL, }, /* cmpxxx16 */
  { 0x000000ffLL, }, /* cmp32 */
  { 0x000000ffLL, }, /* cmpx32 */
  { 0x000000ffLL, }, /* cmpxx32 */
  { 0x000000ffLL, }, /* cmpxxx32 */
  { 0x000000ffLL, }, /* cmp64 */
  { 0x000000ffLL, }, /* cmpx64 */
  { 0x000000ffLL, }, /* cmpxx64 */
  { 0x000000ffLL, }, /* cmpxxx64 */
  { 0x000000ffLL, }, /* cmpi8 */
  { 0x000000ffLL, }, /* cmpxr8 */
  { 0x000000ffLL, }, /* cmpxi8 */
  { 0x000000ffLL, }, /* cmpxxr8 */
  { 0x000000ffLL, }, /* cmpxxi8 */
  { 0x000000ffLL, }, /* cmpxxxr8 */
  { 0x000000ffLL, }, /* cmpxxxi8 */
  { 0x000000ffLL, }, /* cmpi16 */
  { 0x000000ffLL, }, /* cmpxr16 */
  { 0x000000ffLL, }, /* cmpxi16 */
  { 0x000000ffLL, }, /* cmpxxr16 */
  { 0x000000ffLL, }, /* cmpxxi16 */
  { 0x000000ffLL, }, /* cmpxxxr16 */
  { 0x000000ffLL, }, /* cmpxxxi16 */
  { 0x000000ffLL, }, /* cmpi32 */
  { 0x000000ffLL, }, /* cmpxr32 */
  { 0x000000ffLL, }, /* cmpxi32 */
  { 0x000000ffLL, }, /* cmpxxr32 */
  { 0x000000ffLL, }, /* cmpxxi32 */
  { 0x000000ffLL, }, /* cmpxxxr32 */
  { 0x000000ffLL, }, /* cmpxxxi32 */
  { 0x000000ffLL, }, /* cmpi64 */
  { 0x000000ffLL, }, /* cmpxr64 */
  { 0x000000ffLL, }, /* cmpxi64 */
  { 0x000000ffLL, }, /* cmpxxr64 */
  { 0x000000ffLL, }, /* cmpxxi64 */
  { 0x000000ffLL, }, /* cmpxxxr64 */
  { 0x000000ffLL, }, /* cmpxxxi64 */
  { 0x000000ffLL, }, /* cmovb */
  { 0x000000ffLL, }, /* cmovae */
  { 0x000000ffLL, }, /* cmovp */
  { 0x000000ffLL, }, /* cmovnp */
  { 0x000000ffLL, }, /* cmove */
  { 0x000000ffLL, }, /* cmovne */
  { 0x000000ffLL, }, /* cmovbe */
  { 0x000000ffLL, }, /* cmova */
  { 0x000000ffLL, }, /* cmovl */
  { 0x000000ffLL, }, /* cmovge */
  { 0x000000ffLL, }, /* cmovle */
  { 0x000000ffLL, }, /* cmovg */
  { 0x000000ffLL, }, /* cmovs */
  { 0x000000ffLL, }, /* cmovns */
  { 0x000000ffLL, }, /* div32 */
  { 0x000000ffLL, }, /* div64 */
  { 0x000000ffLL, }, /* enter */
  { 0x000000ffLL, }, /* idiv32 */
  { 0x000000ffLL, }, /* idiv64 */
  { 0x000000ffLL, }, /* imul32 */
  { 0x000000ffLL, }, /* imulx32 */
  { 0x000000ffLL, }, /* imul64 */
  { 0x000000ffLL, }, /* imuli32 */
  { 0x000000ffLL, }, /* imuli64 */
  { 0x000000ffLL, }, /* imulx64 */
  { 0x000000ffLL, }, /* mul128v16 */
  { 0x000000ffLL, }, /* inc8 */
  { 0x000000ffLL, }, /* dec8 */
  { 0x000000ffLL, }, /* inc16 */
  { 0x000000ffLL, }, /* dec16 */
  { 0x000000ffLL, }, /* inc32 */
  { 0x000000ffLL, }, /* dec32 */
  { 0x000000ffLL, }, /* inc64 */
  { 0x000000ffLL, }, /* dec64 */
  { 0x000000ffLL, }, /* jb */
  { 0x000000ffLL, }, /* jae */
  { 0x000000ffLL, }, /* jp */
  { 0x000000ffLL, }, /* jnp */
  { 0x000000ffLL, }, /* je */
  { 0x000000ffLL, }, /* jne */
  { 0x000000ffLL, }, /* jbe */
  { 0x000000ffLL, }, /* ja */
  { 0x000000ffLL, }, /* jl */
  { 0x000000ffLL, }, /* jge */
  { 0x000000ffLL, }, /* jle */
  { 0x000000ffLL, }, /* jg */
  { 0x000000ffLL, }, /* jcxz */
  { 0x000000ffLL, }, /* jecxz */
  { 0x000000ffLL, }, /* jrcxz */
  { 0x000000ffLL, }, /* js */
  { 0x000000ffLL, }, /* jns */
  { 0x000000ffLL, }, /* jmp */
  { 0x000000ffLL, }, /* ijmp */
  { 0x000000ffLL, }, /* ijmpx */
  { 0x000000ffLL, }, /* ijmpxx */
  { 0x000000ffLL, }, /* ijmpxxx */
  { 0x000000ffLL, }, /* ld64 */
  { 0x000000ffLL, }, /* ldx64 */
  { 0x000000ffLL, }, /* ldxx64 */
  { 0x000000ffLL, }, /* ld64_2m */
  { 0x000000ffLL, }, /* ld64_2sse */
  { 0x000000ffLL, }, /* lea32 */
  { 0x000000ffLL, }, /* lea64 */
  { 0x000000ffLL, }, /* leax32 */
  { 0x000000ffLL, }, /* leax64 */
  { 0x000000ffLL, }, /* leaxx32 */
  { 0x000000ffLL, }, /* leaxx64 */
  { 0x000000ffLL, }, /* leave */
  { 0x000000ffLL, }, /* ldc32 */
  { 0x000000ffLL, }, /* ldc64 */
  { 0x000000ffLL, }, /* mul32 */
  { 0x000000ffLL, }, /* mulx64 */
  { 0x000000ffLL, }, /* mov32 */
  { 0x000000ffLL, }, /* mov64 */
  { 0x000000ffLL, }, /* mov64_m */
  { 0x000000ffLL, }, /* ld32_64_off */
  { 0x000000ffLL, }, /* ld64_off */
  { 0x000000ffLL, }, /* store64_off */
  { 0x000000ffLL, }, /* ld8_32_n32 */
  { 0x000000ffLL, }, /* ldu8_32_n32 */
  { 0x000000ffLL, }, /* ld16_32_n32 */
  { 0x000000ffLL, }, /* ldu16_32_n32 */
  { 0x000000ffLL, }, /* ld32_n32 */
  { 0x000000ffLL, }, /* ldss_n32 */
  { 0x000000ffLL, }, /* ldsd_n32 */
  { 0x000000ffLL, }, /* ldaps_n32 */
  { 0x000000ffLL, }, /* ldapd_n32 */
  { 0x000000ffLL, }, /* ldups_n32 */
  { 0x000000ffLL, }, /* ldupd_n32 */
  { 0x000000ffLL, }, /* lddqa_n32 */
  { 0x000000ffLL, }, /* lddqu_n32 */
  { 0x000000ffLL, }, /* ldlps_n32 */
  { 0x000000ffLL, }, /* ldlpd_n32 */
  { 0x000000ffLL, }, /* ldhps_n32 */
  { 0x000000ffLL, }, /* ldhpd_n32 */
  { 0x000000ffLL, }, /* ld64_2m_n32 */
  { 0x000000ffLL, }, /* ld64_2sse_n32 */
  { 0x000000ffLL, }, /* store8_n32 */
  { 0x000000ffLL, }, /* store16_n32 */
  { 0x000000ffLL, }, /* store32_n32 */
  { 0x000000ffLL, }, /* stss_n32 */
  { 0x000000ffLL, }, /* stsd_n32 */
  { 0x000000ffLL, }, /* staps_n32 */
  { 0x000000ffLL, }, /* stapd_n32 */
  { 0x000000ffLL, }, /* stdqa_n32 */
  { 0x000000ffLL, }, /* stdqu_n32 */
  { 0x000000ffLL, }, /* stlps_n32 */
  { 0x000000ffLL, }, /* sthps_n32 */
  { 0x000000ffLL, }, /* stlpd_n32 */
  { 0x000000ffLL, }, /* sthpd_n32 */
  { 0x000000ffLL, }, /* store64_fm_n32 */
  { 0x000000ffLL, }, /* store64_fsse_n32 */
  { 0x000000ffLL, }, /* ld32_gs_seg_off */
  { 0x000000ffLL, }, /* ld64_fs_seg_off */
  { 0x000000ffLL, }, /* movsbl */
  { 0x000000ffLL, }, /* ld8_32 */
  { 0x000000ffLL, }, /* ldx8_32 */
  { 0x000000ffLL, }, /* ldxx8_32 */
  { 0x000000ffLL, }, /* movzbl */
  { 0x000000ffLL, }, /* ldu8_32 */
  { 0x000000ffLL, }, /* ldxu8_32 */
  { 0x000000ffLL, }, /* ldxxu8_32 */
  { 0x000000ffLL, }, /* movswl */
  { 0x000000ffLL, }, /* ld16_32 */
  { 0x000000ffLL, }, /* ldx16_32 */
  { 0x000000ffLL, }, /* ldxx16_32 */
  { 0x000000ffLL, }, /* movzwl */
  { 0x000000ffLL, }, /* ldu16_32 */
  { 0x000000ffLL, }, /* ldxu16_32 */
  { 0x000000ffLL, }, /* ldxxu16_32 */
  { 0x000000ffLL, }, /* movsbq */
  { 0x000000ffLL, }, /* ld8_64 */
  { 0x000000ffLL, }, /* ldx8_64 */
  { 0x000000ffLL, }, /* ldxx8_64 */
  { 0x000000ffLL, }, /* ld8_64_off */
  { 0x000000ffLL, }, /* movzbq */
  { 0x000000ffLL, }, /* ldu8_64 */
  { 0x000000ffLL, }, /* ldxu8_64 */
  { 0x000000ffLL, }, /* ldxxu8_64 */
  { 0x000000ffLL, }, /* ldu8_64_off */
  { 0x000000ffLL, }, /* movswq */
  { 0x000000ffLL, }, /* ld16_64 */
  { 0x000000ffLL, }, /* ldx16_64 */
  { 0x000000ffLL, }, /* ldxx16_64 */
  { 0x000000ffLL, }, /* ld16_64_off */
  { 0x000000ffLL, }, /* movzwq */
  { 0x000000ffLL, }, /* ldu16_64 */
  { 0x000000ffLL, }, /* ldxu16_64 */
  { 0x000000ffLL, }, /* ldxxu16_64 */
  { 0x000000ffLL, }, /* ldu16_64_off */
  { 0x000000ffLL, }, /* movslq */
  { 0x000000ffLL, }, /* ld32_64 */
  { 0x000000ffLL, }, /* ldx32_64 */
  { 0x000000ffLL, }, /* ldxx32_64 */
  { 0x000000ffLL, }, /* ld32 */
  { 0x000000ffLL, }, /* ldx32 */
  { 0x000000ffLL, }, /* ldxx32 */
  { 0x000000ffLL, }, /* movzlq */
  { 0x000000ffLL, }, /* neg8 */
  { 0x000000ffLL, }, /* neg16 */
  { 0x000000ffLL, }, /* neg32 */
  { 0x000000ffLL, }, /* neg64 */
  { 0x000000ffLL, }, /* not8 */
  { 0x000000ffLL, }, /* not16 */
  { 0x000000ffLL, }, /* not32 */
  { 0x000000ffLL, }, /* not64 */
  { 0x000000ffLL, }, /* or8 */
  { 0x000000ffLL, }, /* or16 */
  { 0x000000ffLL, }, /* or32 */
  { 0x000000ffLL, }, /* orx32 */
  { 0x000000ffLL, }, /* orxx32 */
  { 0x000000ffLL, }, /* orxxx32 */
  { 0x000000ffLL, }, /* or64 */
  { 0x000000ffLL, }, /* orx64 */
  { 0x000000ffLL, }, /* orxx64 */
  { 0x000000ffLL, }, /* orxxx64 */
  { 0x000000ffLL, }, /* orx8 */
  { 0x000000ffLL, }, /* orx16 */
  { 0x000000ffLL, }, /* orxx8 */
  { 0x000000ffLL, }, /* orxxx8 */
  { 0x000000ffLL, }, /* orxx16 */
  { 0x000000ffLL, }, /* orxxx16 */
  { 0x000000ffLL, }, /* or128v8 */
  { 0x000000ffLL, }, /* orx128v8 */
  { 0x000000ffLL, }, /* orxx128v8 */
  { 0x000000ffLL, }, /* orxxx128v8 */
  { 0x000000ffLL, }, /* or128v16 */
  { 0x000000ffLL, }, /* orx128v16 */
  { 0x000000ffLL, }, /* orxx128v16 */
  { 0x000000ffLL, }, /* orxxx128v16 */
  { 0x000000ffLL, }, /* or128v32 */
  { 0x000000ffLL, }, /* orx128v32 */
  { 0x000000ffLL, }, /* orxx128v32 */
  { 0x000000ffLL, }, /* orxxx128v32 */
  { 0x000000ffLL, }, /* or128v64 */
  { 0x000000ffLL, }, /* orx128v64 */
  { 0x000000ffLL, }, /* orxx128v64 */
  { 0x000000ffLL, }, /* orxxx128v64 */
  { 0x000000ffLL, }, /* ori32 */
  { 0x000000ffLL, }, /* ori64 */
  { 0x000000ffLL, }, /* popl */
  { 0x000000ffLL, }, /* popq */
  { 0x000000ffLL, }, /* pushl */
  { 0x000000ffLL, }, /* pushq */
  { 0x000000ffLL, }, /* ret */
  { 0x000000ffLL, }, /* reti */
  { 0x000000ffLL, }, /* ror8 */
  { 0x000000ffLL, }, /* ror16 */
  { 0x000000ffLL, }, /* ror32 */
  { 0x000000ffLL, }, /* ror64 */
  { 0x000000ffLL, }, /* rori8 */
  { 0x000000ffLL, }, /* rori16 */
  { 0x000000ffLL, }, /* rori32 */
  { 0x000000ffLL, }, /* rori64 */
  { 0x000000ffLL, }, /* rol8 */
  { 0x000000ffLL, }, /* rol16 */
  { 0x000000ffLL, }, /* rol32 */
  { 0x000000ffLL, }, /* rol64 */
  { 0x000000ffLL, }, /* roli8 */
  { 0x000000ffLL, }, /* roli16 */
  { 0x000000ffLL, }, /* roli32 */
  { 0x000000ffLL, }, /* roli64 */
  { 0x000000ffLL, }, /* prefetch */
  { 0x000000ffLL, }, /* prefetchw */
  { 0x000000ffLL, }, /* prefetcht0 */
  { 0x000000ffLL, }, /* prefetcht1 */
  { 0x000000ffLL, }, /* prefetchnta */
  { 0x000000ffLL, }, /* prefetchx */
  { 0x000000ffLL, }, /* prefetchxx */
  { 0x000000ffLL, }, /* prefetchwx */
  { 0x000000ffLL, }, /* prefetchwxx */
  { 0x000000ffLL, }, /* prefetcht0x */
  { 0x000000ffLL, }, /* prefetcht0xx */
  { 0x000000ffLL, }, /* prefetcht1x */
  { 0x000000ffLL, }, /* prefetcht1xx */
  { 0x000000ffLL, }, /* prefetchntax */
  { 0x000000ffLL, }, /* prefetchntaxx */
  { 0x000000ffLL, }, /* setb */
  { 0x000000ffLL, }, /* setae */
  { 0x000000ffLL, }, /* setp */
  { 0x000000ffLL, }, /* setnp */
  { 0x000000ffLL, }, /* sete */
  { 0x000000ffLL, }, /* setne */
  { 0x000000ffLL, }, /* setbe */
  { 0x000000ffLL, }, /* seta */
  { 0x000000ffLL, }, /* setl */
  { 0x000000ffLL, }, /* setge */
  { 0x000000ffLL, }, /* setle */
  { 0x000000ffLL, }, /* setg */
  { 0x000000ffLL, }, /* setc */
  { 0x000000ffLL, }, /* seto */
  { 0x000000ffLL, }, /* sets */
  { 0x000000ffLL, }, /* setz */
  { 0x000000ffLL, }, /* store8 */
  { 0x000000ffLL, }, /* storex8 */
  { 0x000000ffLL, }, /* storexx8 */
  { 0x000000ffLL, }, /* store16 */
  { 0x000000ffLL, }, /* storex16 */
  { 0x000000ffLL, }, /* storexx16 */
  { 0x000000ffLL, }, /* store32 */
  { 0x000000ffLL, }, /* storex32 */
  { 0x000000ffLL, }, /* storexx32 */
  { 0x000000ffLL, }, /* store64 */
  { 0x000000ffLL, }, /* storex64 */
  { 0x000000ffLL, }, /* storexx64 */
  { 0x000000ffLL, }, /* store64_fm */
  { 0x000000ffLL, }, /* store64_fsse */
  { 0x000000ffLL, }, /* storenti32 */
  { 0x000000ffLL, }, /* storentix32 */
  { 0x000000ffLL, }, /* storentixx32 */
  { 0x000000ffLL, }, /* storenti64 */
  { 0x000000ffLL, }, /* storentix64 */
  { 0x000000ffLL, }, /* storentixx64 */
  { 0x000000ffLL, }, /* storenti128 */
  { 0x000000ffLL, }, /* sar32 */
  { 0x000000ffLL, }, /* sar64 */
  { 0x000000ffLL, }, /* sari32 */
  { 0x000000ffLL, }, /* sari64 */
  { 0x000000ffLL, }, /* shl32 */
  { 0x000000ffLL, }, /* shld32 */
  { 0x000000ffLL, }, /* shldi32 */
  { 0x000000ffLL, }, /* shrd32 */
  { 0x000000ffLL, }, /* shrdi32 */
  { 0x000000ffLL, }, /* shl64 */
  { 0x000000ffLL, }, /* shli32 */
  { 0x000000ffLL, }, /* shli64 */
  { 0x000000ffLL, }, /* shr32 */
  { 0x000000ffLL, }, /* shr64 */
  { 0x000000ffLL, }, /* shri32 */
  { 0x000000ffLL, }, /* shri64 */
  { 0x000000ffLL, }, /* sub32 */
  { 0x000000ffLL, }, /* sbb32 */
  { 0x000000ffLL, }, /* sub64 */
  { 0x000000ffLL, }, /* subx32 */
  { 0x000000ffLL, }, /* subx64 */
  { 0x000000ffLL, }, /* subxx32 */
  { 0x000000ffLL, }, /* subxxx32 */
  { 0x000000ffLL, }, /* subxx64 */
  { 0x000000ffLL, }, /* subxxx64 */
  { 0x000000ffLL, }, /* subi32 */
  { 0x000000ffLL, }, /* sbbi32 */
  { 0x000000ffLL, }, /* subi64 */
  { 0x000000ffLL, }, /* sub128v8 */
  { 0x000000ffLL, }, /* subx128v8 */
  { 0x000000ffLL, }, /* subxx128v8 */
  { 0x000000ffLL, }, /* subxxx128v8 */
  { 0x000000ffLL, }, /* sub128v16 */
  { 0x000000ffLL, }, /* subx128v16 */
  { 0x000000ffLL, }, /* subxx128v16 */
  { 0x000000ffLL, }, /* subxxx128v16 */
  { 0x000000ffLL, }, /* sub128v32 */
  { 0x000000ffLL, }, /* subx128v32 */
  { 0x000000ffLL, }, /* subxx128v32 */
  { 0x000000ffLL, }, /* subxxx128v32 */
  { 0x000000ffLL, }, /* sub128v64 */
  { 0x000000ffLL, }, /* subx128v64 */
  { 0x000000ffLL, }, /* subxx128v64 */
  { 0x000000ffLL, }, /* subxxx128v64 */
  { 0x000000ffLL, }, /* sub64v8 */
  { 0x000000ffLL, }, /* sub64v16 */
  { 0x000000ffLL, }, /* sub64v32 */
  { 0x000000ffLL, }, /* test32 */
  { 0x000000ffLL, }, /* testx32 */
  { 0x000000ffLL, }, /* testxx32 */
  { 0x000000ffLL, }, /* testxxx32 */
  { 0x000000ffLL, }, /* test64 */
  { 0x000000ffLL, }, /* testx64 */
  { 0x000000ffLL, }, /* testxx64 */
  { 0x000000ffLL, }, /* testxxx64 */
  { 0x000000ffLL, }, /* testi32 */
  { 0x000000ffLL, }, /* testi64 */
  { 0x000000ffLL, }, /* xor8 */
  { 0x000000ffLL, }, /* xor16 */
  { 0x000000ffLL, }, /* xor32 */
  { 0x000000ffLL, }, /* xorx32 */
  { 0x000000ffLL, }, /* xorxx32 */
  { 0x000000ffLL, }, /* xorxxx32 */
  { 0x000000ffLL, }, /* xor64 */
  { 0x000000ffLL, }, /* xorx64 */
  { 0x000000ffLL, }, /* xorxx64 */
  { 0x000000ffLL, }, /* xorxxx64 */
  { 0x000000ffLL, }, /* xorx8 */
  { 0x000000ffLL, }, /* xorx16 */
  { 0x000000ffLL, }, /* xorxx8 */
  { 0x000000ffLL, }, /* xorxxx8 */
  { 0x000000ffLL, }, /* xorxx16 */
  { 0x000000ffLL, }, /* xorxxx16 */
  { 0x000000ffLL, }, /* xor128v8 */
  { 0x000000ffLL, }, /* xorx128v8 */
  { 0x000000ffLL, }, /* xorxx128v8 */
  { 0x000000ffLL, }, /* xorxxx128v8 */
  { 0x000000ffLL, }, /* xor128v16 */
  { 0x000000ffLL, }, /* xorx128v16 */
  { 0x000000ffLL, }, /* xorxx128v16 */
  { 0x000000ffLL, }, /* xorxxx128v16 */
  { 0x000000ffLL, }, /* xor128v32 */
  { 0x000000ffLL, }, /* xorx128v32 */
  { 0x000000ffLL, }, /* xorxx128v32 */
  { 0x000000ffLL, }, /* xorxxx128v32 */
  { 0x000000ffLL, }, /* xor128v64 */
  { 0x000000ffLL, }, /* xorx128v64 */
  { 0x000000ffLL, }, /* xorxx128v64 */
  { 0x000000ffLL, }, /* xorxxx128v64 */
  { 0x000000ffLL, }, /* xori32 */
  { 0x000000ffLL, }, /* xori64 */
  { 0x000000ffLL, }, /* fxor128v32 */
  { 0x000000ffLL, }, /* fxorx128v32 */
  { 0x000000ffLL, }, /* fxorxx128v32 */
  { 0x000000ffLL, }, /* fxorxxx128v32 */
  { 0x000000ffLL, }, /* fxor128v64 */
  { 0x000000ffLL, }, /* fxorx128v64 */
  { 0x000000ffLL, }, /* fxorxx128v64 */
  { 0x000000ffLL, }, /* fxorxxx128v64 */
  { 0x000000ffLL, }, /* xorps */
  { 0x000000ffLL, }, /* xorpd */
  { 0x000000ffLL, }, /* addsd */
  { 0x000000ffLL, }, /* addss */
  { 0x000000ffLL, }, /* addxsd */
  { 0x000000ffLL, }, /* addxss */
  { 0x000000ffLL, }, /* addxxsd */
  { 0x000000ffLL, }, /* addxxxsd */
  { 0x000000ffLL, }, /* addxxss */
  { 0x000000ffLL, }, /* addxxxss */
  { 0x000000ffLL, }, /* faddsub128v32 */
  { 0x000000ffLL, }, /* faddsubx128v32 */
  { 0x000000ffLL, }, /* faddsubxx128v32 */
  { 0x000000ffLL, }, /* faddsubxxx128v32 */
  { 0x000000ffLL, }, /* faddsub128v64 */
  { 0x000000ffLL, }, /* faddsubx128v64 */
  { 0x000000ffLL, }, /* faddsubxx128v64 */
  { 0x000000ffLL, }, /* faddsubxxx128v64 */
  { 0x000000ffLL, }, /* fadd128v32 */
  { 0x000000ffLL, }, /* faddx128v32 */
  { 0x000000ffLL, }, /* faddxx128v32 */
  { 0x000000ffLL, }, /* faddxxx128v32 */
  { 0x000000ffLL, }, /* fadd128v64 */
  { 0x000000ffLL, }, /* faddx128v64 */
  { 0x000000ffLL, }, /* faddxx128v64 */
  { 0x000000ffLL, }, /* faddxxx128v64 */
  { 0x000000ffLL, }, /* fhadd128v32 */
  { 0x000000ffLL, }, /* fhaddx128v32 */
  { 0x000000ffLL, }, /* fhaddxx128v32 */
  { 0x000000ffLL, }, /* fhaddxxx128v32 */
  { 0x000000ffLL, }, /* fhadd128v64 */
  { 0x000000ffLL, }, /* fhaddx128v64 */
  { 0x000000ffLL, }, /* fhaddxx128v64 */
  { 0x000000ffLL, }, /* fhaddxxx128v64 */
  { 0x000000ffLL, }, /* fand128v32 */
  { 0x000000ffLL, }, /* fandx128v32 */
  { 0x000000ffLL, }, /* fandxx128v32 */
  { 0x000000ffLL, }, /* fandxxx128v32 */
  { 0x000000ffLL, }, /* fand128v64 */
  { 0x000000ffLL, }, /* fandx128v64 */
  { 0x000000ffLL, }, /* fandxx128v64 */
  { 0x000000ffLL, }, /* fandxxx128v64 */
  { 0x000000ffLL, }, /* andps */
  { 0x000000ffLL, }, /* andpd */
  { 0x000000ffLL, }, /* andnps */
  { 0x000000ffLL, }, /* andnpd */
  { 0x000000ffLL, }, /* for128v32 */
  { 0x000000ffLL, }, /* forx128v32 */
  { 0x000000ffLL, }, /* forxx128v32 */
  { 0x000000ffLL, }, /* forxxx128v32 */
  { 0x000000ffLL, }, /* for128v64 */
  { 0x000000ffLL, }, /* forx128v64 */
  { 0x000000ffLL, }, /* forxx128v64 */
  { 0x000000ffLL, }, /* forxxx128v64 */
  { 0x000000ffLL, }, /* orps */
  { 0x000000ffLL, }, /* orpd */
  { 0x000000ffLL, }, /* comisd */
  { 0x000000ffLL, }, /* comixsd */
  { 0x000000ffLL, }, /* comixxsd */
  { 0x000000ffLL, }, /* comixxxsd */
  { 0x000000ffLL, }, /* comiss */
  { 0x000000ffLL, }, /* comixss */
  { 0x000000ffLL, }, /* comixxss */
  { 0x000000ffLL, }, /* comixxxss */
  { 0x000000ffLL, }, /* cmpss */
  { 0x000000ffLL, }, /* cmpsd */
  { 0x000000ffLL, }, /* cmpps */
  { 0x000000ffLL, }, /* cmppd */
  { 0x000000ffLL, }, /* cmpeq128v8 */
  { 0x000000ffLL, }, /* cmpeq128v16 */
  { 0x000000ffLL, }, /* cmpeq128v32 */
  { 0x000000ffLL, }, /* cmpeqx128v8 */
  { 0x000000ffLL, }, /* cmpeqx128v16 */
  { 0x000000ffLL, }, /* cmpeqx128v32 */
  { 0x000000ffLL, }, /* cmpeqxx128v8 */
  { 0x000000ffLL, }, /* cmpeqxx128v16 */
  { 0x000000ffLL, }, /* cmpeqxx128v32 */
  { 0x000000ffLL, }, /* cmpeqxxx128v8 */
  { 0x000000ffLL, }, /* cmpeqxxx128v16 */
  { 0x000000ffLL, }, /* cmpeqxxx128v32 */
  { 0x000000ffLL, }, /* cmpgt128v8 */
  { 0x000000ffLL, }, /* cmpgt128v16 */
  { 0x000000ffLL, }, /* cmpgt128v32 */
  { 0x000000ffLL, }, /* cmpgtx128v8 */
  { 0x000000ffLL, }, /* cmpgtx128v16 */
  { 0x000000ffLL, }, /* cmpgtx128v32 */
  { 0x000000ffLL, }, /* cmpgtxx128v8 */
  { 0x000000ffLL, }, /* cmpgtxx128v16 */
  { 0x000000ffLL, }, /* cmpgtxx128v32 */
  { 0x000000ffLL, }, /* cmpgtxxx128v8 */
  { 0x000000ffLL, }, /* cmpgtxxx128v16 */
  { 0x000000ffLL, }, /* cmpgtxxx128v32 */
  { 0x000000ffLL, }, /* pcmpeqb */
  { 0x000000ffLL, }, /* pcmpeqw */
  { 0x000000ffLL, }, /* pcmpeqd */
  { 0x000000ffLL, }, /* pcmpgtb */
  { 0x000000ffLL, }, /* pcmpgtw */
  { 0x000000ffLL, }, /* pcmpgtd */
  { 0x000000ffLL, }, /* fmovsldup */
  { 0x000000ffLL, }, /* fmovshdup */
  { 0x000000ffLL, }, /* fmovddup */
  { 0x000000ffLL, }, /* fmovsldupx */
  { 0x000000ffLL, }, /* fmovshdupx */
  { 0x000000ffLL, }, /* fmovddupx */
  { 0x000000ffLL, }, /* fmovsldupxx */
  { 0x000000ffLL, }, /* fmovshdupxx */
  { 0x000000ffLL, }, /* fmovddupxx */
  { 0x000000ffLL, }, /* fmovsldupxxx */
  { 0x000000ffLL, }, /* fmovshdupxxx */
  { 0x000000ffLL, }, /* fmovddupxxx */
  { 0x000000ffLL, }, /* cltd */
  { 0x000000ffLL, }, /* cqto */
  { 0x000000ffLL, }, /* cvtss2sd */
  { 0x000000ffLL, }, /* cvtsd2ss */
  { 0x000000ffLL, }, /* cvtsd2ss_x */
  { 0x000000ffLL, }, /* cvtsd2ss_xx */
  { 0x000000ffLL, }, /* cvtsd2ss_xxx */
  { 0x000000ffLL, }, /* cvtsi2sd */
  { 0x000000ffLL, }, /* cvtsi2sd_x */
  { 0x000000ffLL, }, /* cvtsi2sd_xx */
  { 0x000000ffLL, }, /* cvtsi2sd_xxx */
  { 0x000000ffLL, }, /* cvtsi2ss */
  { 0x000000ffLL, }, /* cvtsi2ss_x */
  { 0x000000ffLL, }, /* cvtsi2ss_xx */
  { 0x000000ffLL, }, /* cvtsi2ss_xxx */
  { 0x000000ffLL, }, /* cvtsi2sdq */
  { 0x000000ffLL, }, /* cvtsi2sdq_x */
  { 0x000000ffLL, }, /* cvtsi2sdq_xx */
  { 0x000000ffLL, }, /* cvtsi2sdq_xxx */
  { 0x000000ffLL, }, /* cvtsi2ssq */
  { 0x000000ffLL, }, /* cvtsi2ssq_x */
  { 0x000000ffLL, }, /* cvtsi2ssq_xx */
  { 0x000000ffLL, }, /* cvtsi2ssq_xxx */
  { 0x000000ffLL, }, /* cvtss2si */
  { 0x000000ffLL, }, /* cvtsd2si */
  { 0x000000ffLL, }, /* cvtss2siq */
  { 0x000000ffLL, }, /* cvtsd2siq */
  { 0x000000ffLL, }, /* cvttss2si */
  { 0x000000ffLL, }, /* cvttsd2si */
  { 0x000000ffLL, }, /* cvttss2siq */
  { 0x000000ffLL, }, /* cvttsd2siq */
  { 0x000000ffLL, }, /* cvtdq2pd */
  { 0x000000ffLL, }, /* cvtdq2ps */
  { 0x000000ffLL, }, /* cvtps2pd */
  { 0x000000ffLL, }, /* cvtpd2ps */
  { 0x000000ffLL, }, /* cvtps2dq */
  { 0x000000ffLL, }, /* cvttps2dq */
  { 0x000000ffLL, }, /* cvtpd2dq */
  { 0x000000ffLL, }, /* cvttpd2dq */
  { 0x000000ffLL, }, /* cvtdq2pd_x */
  { 0x000000ffLL, }, /* cvtdq2ps_x */
  { 0x000000ffLL, }, /* cvtps2pd_x */
  { 0x000000ffLL, }, /* cvtpd2ps_x */
  { 0x000000ffLL, }, /* cvtps2dq_x */
  { 0x000000ffLL, }, /* cvtpd2dq_x */
  { 0x000000ffLL, }, /* cvttps2dq_x */
  { 0x000000ffLL, }, /* cvttpd2dq_x */
  { 0x000000ffLL, }, /* cvtdq2pd_xx */
  { 0x000000ffLL, }, /* cvtdq2ps_xx */
  { 0x000000ffLL, }, /* cvtps2pd_xx */
  { 0x000000ffLL, }, /* cvtpd2ps_xx */
  { 0x000000ffLL, }, /* cvtps2dq_xx */
  { 0x000000ffLL, }, /* cvtpd2dq_xx */
  { 0x000000ffLL, }, /* cvttps2dq_xx */
  { 0x000000ffLL, }, /* cvttpd2dq_xx */
  { 0x000000ffLL, }, /* cvtdq2pd_xxx */
  { 0x000000ffLL, }, /* cvtdq2ps_xxx */
  { 0x000000ffLL, }, /* cvtps2pd_xxx */
  { 0x000000ffLL, }, /* cvtpd2ps_xxx */
  { 0x000000ffLL, }, /* cvtps2dq_xxx */
  { 0x000000ffLL, }, /* cvtpd2dq_xxx */
  { 0x000000ffLL, }, /* cvttps2dq_xxx */
  { 0x000000ffLL, }, /* cvttpd2dq_xxx */
  { 0x000000ffLL, }, /* cvtpi2ps */
  { 0x000000ffLL, }, /* cvtps2pi */
  { 0x000000ffLL, }, /* cvttps2pi */
  { 0x000000ffLL, }, /* cvtpi2pd */
  { 0x000000ffLL, }, /* cvtpd2pi */
  { 0x000000ffLL, }, /* cvttpd2pi */
  { 0x000000ffLL, }, /* ldsd */
  { 0x000000ffLL, }, /* ldsdx */
  { 0x000000ffLL, }, /* ldsdxx */
  { 0x000000ffLL, }, /* ldss */
  { 0x000000ffLL, }, /* ldssx */
  { 0x000000ffLL, }, /* ldssxx */
  { 0x000000ffLL, }, /* lddqa */
  { 0x000000ffLL, }, /* lddqu */
  { 0x000000ffLL, }, /* ldlps */
  { 0x000000ffLL, }, /* ldhps */
  { 0x000000ffLL, }, /* ldlpd */
  { 0x000000ffLL, }, /* ldhpd */
  { 0x000000ffLL, }, /* stdqa */
  { 0x000000ffLL, }, /* stdqu */
  { 0x000000ffLL, }, /* stlps */
  { 0x000000ffLL, }, /* sthps */
  { 0x000000ffLL, }, /* stlpd */
  { 0x000000ffLL, }, /* storelpd */
  { 0x000000ffLL, }, /* sthpd */
  { 0x000000ffLL, }, /* stntpd */
  { 0x000000ffLL, }, /* stntps */
  { 0x000000ffLL, }, /* storent64_fm */
  { 0x000000ffLL, }, /* lddqax */
  { 0x000000ffLL, }, /* lddqux */
  { 0x000000ffLL, }, /* ldlpsx */
  { 0x000000ffLL, }, /* ldhpsx */
  { 0x000000ffLL, }, /* ldlpdx */
  { 0x000000ffLL, }, /* ldhpdx */
  { 0x000000ffLL, }, /* stdqax */
  { 0x000000ffLL, }, /* stntpdx */
  { 0x000000ffLL, }, /* stntpsx */
  { 0x000000ffLL, }, /* stdqux */
  { 0x000000ffLL, }, /* stlpsx */
  { 0x000000ffLL, }, /* sthpsx */
  { 0x000000ffLL, }, /* stlpdx */
  { 0x000000ffLL, }, /* sthpdx */
  { 0x000000ffLL, }, /* lddqaxx */
  { 0x000000ffLL, }, /* lddquxx */
  { 0x000000ffLL, }, /* ldlpsxx */
  { 0x000000ffLL, }, /* ldhpsxx */
  { 0x000000ffLL, }, /* ldlpdxx */
  { 0x000000ffLL, }, /* ldhpdxx */
  { 0x000000ffLL, }, /* ldaps */
  { 0x000000ffLL, }, /* ldapsx */
  { 0x000000ffLL, }, /* ldapsxx */
  { 0x000000ffLL, }, /* ldapd */
  { 0x000000ffLL, }, /* ldapdx */
  { 0x000000ffLL, }, /* ldapdxx */
  { 0x000000ffLL, }, /* ldups */
  { 0x000000ffLL, }, /* ldupd */
  { 0x000000ffLL, }, /* ldupdx */
  { 0x000000ffLL, }, /* ldupdxx */
  { 0x000000ffLL, }, /* stdqaxx */
  { 0x000000ffLL, }, /* stntpdxx */
  { 0x000000ffLL, }, /* stntpsxx */
  { 0x000000ffLL, }, /* stdquxx */
  { 0x000000ffLL, }, /* stlpsxx */
  { 0x000000ffLL, }, /* sthpsxx */
  { 0x000000ffLL, }, /* stlpdxx */
  { 0x000000ffLL, }, /* sthpdxx */
  { 0x000000ffLL, }, /* staps */
  { 0x000000ffLL, }, /* stapsx */
  { 0x000000ffLL, }, /* stapsxx */
  { 0x000000ffLL, }, /* stapd */
  { 0x000000ffLL, }, /* stapdx */
  { 0x000000ffLL, }, /* stapdxx */
  { 0x000000ffLL, }, /* stups */
  { 0x000000ffLL, }, /* stupd */
  { 0x000000ffLL, }, /* maxsd */
  { 0x000000ffLL, }, /* maxss */
  { 0x000000ffLL, }, /* fmax128v32 */
  { 0x000000ffLL, }, /* fmaxx128v32 */
  { 0x000000ffLL, }, /* fmaxxx128v32 */
  { 0x000000ffLL, }, /* fmaxxxx128v32 */
  { 0x000000ffLL, }, /* fmax128v64 */
  { 0x000000ffLL, }, /* fmaxx128v64 */
  { 0x000000ffLL, }, /* fmaxxx128v64 */
  { 0x000000ffLL, }, /* fmaxxxx128v64 */
  { 0x000000ffLL, }, /* max128v16 */
  { 0x000000ffLL, }, /* max128v8 */
  { 0x000000ffLL, }, /* maxx128v16 */
  { 0x000000ffLL, }, /* maxx128v8 */
  { 0x000000ffLL, }, /* maxxx128v16 */
  { 0x000000ffLL, }, /* maxxx128v8 */
  { 0x000000ffLL, }, /* maxxxx128v16 */
  { 0x000000ffLL, }, /* maxxxx128v8 */
  { 0x000000ffLL, }, /* max64v8 */
  { 0x000000ffLL, }, /* max64v16 */
  { 0x000000ffLL, }, /* min128v16 */
  { 0x000000ffLL, }, /* min128v8 */
  { 0x000000ffLL, }, /* minx128v16 */
  { 0x000000ffLL, }, /* minx128v8 */
  { 0x000000ffLL, }, /* minxx128v16 */
  { 0x000000ffLL, }, /* minxx128v8 */
  { 0x000000ffLL, }, /* minxxx128v16 */
  { 0x000000ffLL, }, /* minxxx128v8 */
  { 0x000000ffLL, }, /* min64v8 */
  { 0x000000ffLL, }, /* min64v16 */
  { 0x000000ffLL, }, /* minsd */
  { 0x000000ffLL, }, /* minss */
  { 0x000000ffLL, }, /* fmin128v32 */
  { 0x000000ffLL, }, /* fminx128v32 */
  { 0x000000ffLL, }, /* fminxx128v32 */
  { 0x000000ffLL, }, /* fminxxx128v32 */
  { 0x000000ffLL, }, /* fmin128v64 */
  { 0x000000ffLL, }, /* fminx128v64 */
  { 0x000000ffLL, }, /* fminxx128v64 */
  { 0x000000ffLL, }, /* fminxxx128v64 */
  { 0x000000ffLL, }, /* movx2g64 */
  { 0x000000ffLL, }, /* movx2g */
  { 0x000000ffLL, }, /* movg2x64 */
  { 0x000000ffLL, }, /* movg2x */
  { 0x000000ffLL, }, /* movsd */
  { 0x000000ffLL, }, /* movss */
  { 0x000000ffLL, }, /* movdq */
  { 0x000000ffLL, }, /* movapd */
  { 0x000000ffLL, }, /* movaps */
  { 0x000000ffLL, }, /* movq2dq */
  { 0x000000ffLL, }, /* movdq2q */
  { 0x000000ffLL, }, /* divsd */
  { 0x000000ffLL, }, /* divxsd */
  { 0x000000ffLL, }, /* divxxsd */
  { 0x000000ffLL, }, /* divxxxsd */
  { 0x000000ffLL, }, /* divss */
  { 0x000000ffLL, }, /* divxss */
  { 0x000000ffLL, }, /* divxxss */
  { 0x000000ffLL, }, /* divxxxss */
  { 0x000000ffLL, }, /* fdiv128v32 */
  { 0x000000ffLL, }, /* fdivx128v32 */
  { 0x000000ffLL, }, /* fdivxx128v32 */
  { 0x000000ffLL, }, /* fdivxxx128v32 */
  { 0x000000ffLL, }, /* fdiv128v64 */
  { 0x000000ffLL, }, /* fdivx128v64 */
  { 0x000000ffLL, }, /* fdivxx128v64 */
  { 0x000000ffLL, }, /* fdivxxx128v64 */
  { 0x000000ffLL, }, /* mulsd */
  { 0x000000ffLL, }, /* mulss */
  { 0x000000ffLL, }, /* fmul128v32 */
  { 0x000000ffLL, }, /* fmulx128v32 */
  { 0x000000ffLL, }, /* fmulxx128v32 */
  { 0x000000ffLL, }, /* fmulxxx128v32 */
  { 0x000000ffLL, }, /* fmul128v64 */
  { 0x000000ffLL, }, /* fmulx128v64 */
  { 0x000000ffLL, }, /* fmulxx128v64 */
  { 0x000000ffLL, }, /* fmulxxx128v64 */
  { 0x000000ffLL, }, /* mulxsd */
  { 0x000000ffLL, }, /* mulxss */
  { 0x000000ffLL, }, /* mulxxsd */
  { 0x000000ffLL, }, /* mulxxxsd */
  { 0x000000ffLL, }, /* mulxxss */
  { 0x000000ffLL, }, /* mulxxxss */
  { 0x000000ffLL, }, /* subsd */
  { 0x000000ffLL, }, /* subss */
  { 0x000000ffLL, }, /* subxsd */
  { 0x000000ffLL, }, /* subxss */
  { 0x000000ffLL, }, /* subxxsd */
  { 0x000000ffLL, }, /* subxxxsd */
  { 0x000000ffLL, }, /* subxxss */
  { 0x000000ffLL, }, /* subxxxss */
  { 0x000000ffLL, }, /* fsub128v32 */
  { 0x000000ffLL, }, /* fsubx128v32 */
  { 0x000000ffLL, }, /* fsubxx128v32 */
  { 0x000000ffLL, }, /* fsubxxx128v32 */
  { 0x000000ffLL, }, /* fsub128v64 */
  { 0x000000ffLL, }, /* fsubx128v64 */
  { 0x000000ffLL, }, /* fsubxx128v64 */
  { 0x000000ffLL, }, /* fsubxxx128v64 */
  { 0x000000ffLL, }, /* fhsub128v32 */
  { 0x000000ffLL, }, /* fhsubx128v32 */
  { 0x000000ffLL, }, /* fhsubxx128v32 */
  { 0x000000ffLL, }, /* fhsubxxx128v32 */
  { 0x000000ffLL, }, /* fhsub128v64 */
  { 0x000000ffLL, }, /* fhsubx128v64 */
  { 0x000000ffLL, }, /* fhsubxx128v64 */
  { 0x000000ffLL, }, /* fhsubxxx128v64 */
  { 0x000000ffLL, }, /* stss */
  { 0x000000ffLL, }, /* stntss */
  { 0x000000ffLL, }, /* stssx */
  { 0x000000ffLL, }, /* stntssx */
  { 0x000000ffLL, }, /* stssxx */
  { 0x000000ffLL, }, /* stntssxx */
  { 0x000000ffLL, }, /* stsd */
  { 0x000000ffLL, }, /* stntsd */
  { 0x000000ffLL, }, /* stsdx */
  { 0x000000ffLL, }, /* stntsdx */
  { 0x000000ffLL, }, /* stsdxx */
  { 0x000000ffLL, }, /* stntsdxx */
  { 0x000000ffLL, }, /* rcpss */
  { 0x000000ffLL, }, /* frcp128v32 */
  { 0x000000ffLL, }, /* sqrtsd */
  { 0x000000ffLL, }, /* sqrtss */
  { 0x000000ffLL, }, /* rsqrtss */
  { 0x000000ffLL, }, /* fsqrt128v32 */
  { 0x000000ffLL, }, /* frsqrt128v32 */
  { 0x000000ffLL, }, /* fsqrt128v64 */
  { 0x000000ffLL, }, /* punpcklwd */
  { 0x000000ffLL, }, /* punpcklbw */
  { 0x000000ffLL, }, /* punpckldq */
  { 0x000000ffLL, }, /* punpcklbw128 */
  { 0x000000ffLL, }, /* punpcklwd128 */
  { 0x000000ffLL, }, /* punpckldq128 */
  { 0x000000ffLL, }, /* punpckhbw */
  { 0x000000ffLL, }, /* punpckhwd */
  { 0x000000ffLL, }, /* punpckhdq */
  { 0x000000ffLL, }, /* punpckhbw128 */
  { 0x000000ffLL, }, /* punpckhwd128 */
  { 0x000000ffLL, }, /* punpckhdq128 */
  { 0x000000ffLL, }, /* punpcklqdq */
  { 0x000000ffLL, }, /* punpckhqdq */
  { 0x000000ffLL, }, /* packsswb */
  { 0x000000ffLL, }, /* packssdw */
  { 0x000000ffLL, }, /* packuswb */
  { 0x000000ffLL, }, /* packsswb128 */
  { 0x000000ffLL, }, /* packssdw128 */
  { 0x000000ffLL, }, /* packuswb128 */
  { 0x000000ffLL, }, /* pshufd */
  { 0x000000ffLL, }, /* pshufw */
  { 0x000000ffLL, }, /* pshuflw */
  { 0x000000ffLL, }, /* pshufhw */
  { 0x000000ffLL, }, /* pslldq */
  { 0x000000ffLL, }, /* psllw */
  { 0x000000ffLL, }, /* psllwi */
  { 0x000000ffLL, }, /* pslld */
  { 0x000000ffLL, }, /* pslldi */
  { 0x000000ffLL, }, /* psllq */
  { 0x000000ffLL, }, /* psllqi */
  { 0x000000ffLL, }, /* psrlw */
  { 0x000000ffLL, }, /* psrlwi */
  { 0x000000ffLL, }, /* psrld */
  { 0x000000ffLL, }, /* psrldi */
  { 0x000000ffLL, }, /* psrlq */
  { 0x000000ffLL, }, /* psrlqi */
  { 0x000000ffLL, }, /* psraw */
  { 0x000000ffLL, }, /* psrawi */
  { 0x000000ffLL, }, /* psrad */
  { 0x000000ffLL, }, /* psradi */
  { 0x000000ffLL, }, /* psllw_mmx */
  { 0x000000ffLL, }, /* psllwi_mmx */
  { 0x000000ffLL, }, /* pslld_mmx */
  { 0x000000ffLL, }, /* pslldi_mmx */
  { 0x000000ffLL, }, /* psllq_mmx */
  { 0x000000ffLL, }, /* psllqi_mmx */
  { 0x000000ffLL, }, /* psrlw_mmx */
  { 0x000000ffLL, }, /* psrlwi_mmx */
  { 0x000000ffLL, }, /* psrld_mmx */
  { 0x000000ffLL, }, /* psrldi_mmx */
  { 0x000000ffLL, }, /* psrlq_mmx */
  { 0x000000ffLL, }, /* psrlqi_mmx */
  { 0x000000ffLL, }, /* psraw_mmx */
  { 0x000000ffLL, }, /* psrawi_mmx */
  { 0x000000ffLL, }, /* psrad_mmx */
  { 0x000000ffLL, }, /* psradi_mmx */
  { 0x000000ffLL, }, /* pand_mmx */
  { 0x000000ffLL, }, /* pandn_mmx */
  { 0x000000ffLL, }, /* por_mmx */
  { 0x000000ffLL, }, /* pxor_mmx */
  { 0x000000ffLL, }, /* pand */
  { 0x000000ffLL, }, /* pandn */
  { 0x000000ffLL, }, /* por */
  { 0x000000ffLL, }, /* pxor */
  { 0x000000ffLL, }, /* unpckhpd */
  { 0x000000ffLL, }, /* unpckhps */
  { 0x000000ffLL, }, /* unpcklpd */
  { 0x000000ffLL, }, /* unpcklps */
  { 0x000000ffLL, }, /* shufpd */
  { 0x000000ffLL, }, /* shufps */
  { 0x000000ffLL, }, /* movhlps */
  { 0x000000ffLL, }, /* movlhps */
  { 0x000000ffLL, }, /* psrldq */
  { 0x000000ffLL, }, /* psrlq128v64 */
  { 0x000000ffLL, }, /* subus128v16 */
  { 0x000000ffLL, }, /* pavgb */
  { 0x000000ffLL, }, /* pavgw */
  { 0x000000ffLL, }, /* psadbw */
  { 0x000000ffLL, }, /* pavgb128 */
  { 0x000000ffLL, }, /* pavgw128 */
  { 0x000000ffLL, }, /* psadbw128 */
  { 0x000000ffLL, }, /* pextrw */
  { 0x000000ffLL, }, /* pinsrw */
  { 0x000000ffLL, }, /* pmovmskb */
  { 0x000000ffLL, }, /* pmovmskb128 */
  { 0x000000ffLL, }, /* movi32_2m */
  { 0x000000ffLL, }, /* movi64_2m */
  { 0x000000ffLL, }, /* movm_2i32 */
  { 0x000000ffLL, }, /* movm_2i64 */
  { 0x000000ffLL, }, /* pshufw64v16 */
  { 0x000000ffLL, }, /* movmskps */
  { 0x000000ffLL, }, /* movmskpd */
  { 0x000000ffLL, }, /* maskmovdqu */
  { 0x000000ffLL, }, /* maskmovq */
  { 0x000000ffLL, }, /* extrq */
  { 0x000000ffLL, }, /* insertq */
  { 0x000000ffLL, }, /* vfmaddss */
  { 0x000000ffLL, }, /* vfmaddxss */
  { 0x000000ffLL, }, /* vfmaddxxss */
  { 0x000000ffLL, }, /* vfmaddxxxss */
  { 0x000000ffLL, }, /* vfmaddxrss */
  { 0x000000ffLL, }, /* vfmaddxxrss */
  { 0x000000ffLL, }, /* vfmaddxxxrss */
  { 0x000000ffLL, }, /* vfmaddsd */
  { 0x000000ffLL, }, /* vfmaddxsd */
  { 0x000000ffLL, }, /* vfmaddxxsd */
  { 0x000000ffLL, }, /* vfmaddxxxsd */
  { 0x000000ffLL, }, /* vfmaddxrsd */
  { 0x000000ffLL, }, /* vfmaddxxrsd */
  { 0x000000ffLL, }, /* vfmaddxxxrsd */
  { 0x000000ffLL, }, /* vfnmaddss */
  { 0x000000ffLL, }, /* vfnmaddxss */
  { 0x000000ffLL, }, /* vfnmaddxxss */
  { 0x000000ffLL, }, /* vfnmaddxxxss */
  { 0x000000ffLL, }, /* vfnmaddxrss */
  { 0x000000ffLL, }, /* vfnmaddxxrss */
  { 0x000000ffLL, }, /* vfnmaddxxxrss */
  { 0x000000ffLL, }, /* vfnmaddsd */
  { 0x000000ffLL, }, /* vfnmaddxsd */
  { 0x000000ffLL, }, /* vfnmaddxxsd */
  { 0x000000ffLL, }, /* vfnmaddxxxsd */
  { 0x000000ffLL, }, /* vfnmaddxrsd */
  { 0x000000ffLL, }, /* vfnmaddxxrsd */
  { 0x000000ffLL, }, /* vfnmaddxxxrsd */
  { 0x000000ffLL, }, /* vfmaddps */
  { 0x000000ffLL, }, /* vfmaddxps */
  { 0x000000ffLL, }, /* vfmaddxxps */
  { 0x000000ffLL, }, /* vfmaddxxxps */
  { 0x000000ffLL, }, /* vfmaddxrps */
  { 0x000000ffLL, }, /* vfmaddxxrps */
  { 0x000000ffLL, }, /* vfmaddxxxrps */
  { 0x000000ffLL, }, /* vfmaddpd */
  { 0x000000ffLL, }, /* vfmaddxpd */
  { 0x000000ffLL, }, /* vfmaddxxpd */
  { 0x000000ffLL, }, /* vfmaddxxxpd */
  { 0x000000ffLL, }, /* vfmaddxrpd */
  { 0x000000ffLL, }, /* vfmaddxxrpd */
  { 0x000000ffLL, }, /* vfmaddxxxrpd */
  { 0x000000ffLL, }, /* vfmaddsubps */
  { 0x000000ffLL, }, /* vfmaddsubxps */
  { 0x000000ffLL, }, /* vfmaddsubxxps */
  { 0x000000ffLL, }, /* vfmaddsubxxxps */
  { 0x000000ffLL, }, /* vfmaddsubxrps */
  { 0x000000ffLL, }, /* vfmaddsubxxrps */
  { 0x000000ffLL, }, /* vfmaddsubxxxrps */
  { 0x000000ffLL, }, /* vfmaddsubpd */
  { 0x000000ffLL, }, /* vfmaddsubxpd */
  { 0x000000ffLL, }, /* vfmaddsubxxpd */
  { 0x000000ffLL, }, /* vfmaddsubxxxpd */
  { 0x000000ffLL, }, /* vfmaddsubxrpd */
  { 0x000000ffLL, }, /* vfmaddsubxxrpd */
  { 0x000000ffLL, }, /* vfmaddsubxxxrpd */
  { 0x000000ffLL, }, /* vfnmaddps */
  { 0x000000ffLL, }, /* vfnmaddxps */
  { 0x000000ffLL, }, /* vfnmaddxxps */
  { 0x000000ffLL, }, /* vfnmaddxxxps */
  { 0x000000ffLL, }, /* vfnmaddxrps */
  { 0x000000ffLL, }, /* vfnmaddxxrps */
  { 0x000000ffLL, }, /* vfnmaddxxxrps */
  { 0x000000ffLL, }, /* vfnmaddpd */
  { 0x000000ffLL, }, /* vfnmaddxpd */
  { 0x000000ffLL, }, /* vfnmaddxxpd */
  { 0x000000ffLL, }, /* vfnmaddxxxpd */
  { 0x000000ffLL, }, /* vfnmaddxrpd */
  { 0x000000ffLL, }, /* vfnmaddxxrpd */
  { 0x000000ffLL, }, /* vfnmaddxxxrpd */
  { 0x000000ffLL, }, /* vfmsubss */
  { 0x000000ffLL, }, /* vfmsubxss */
  { 0x000000ffLL, }, /* vfmsubxxss */
  { 0x000000ffLL, }, /* vfmsubxxxss */
  { 0x000000ffLL, }, /* vfmsubxrss */
  { 0x000000ffLL, }, /* vfmsubxxrss */
  { 0x000000ffLL, }, /* vfmsubxxxrss */
  { 0x000000ffLL, }, /* vfmsubsd */
  { 0x000000ffLL, }, /* vfmsubxsd */
  { 0x000000ffLL, }, /* vfmsubxxsd */
  { 0x000000ffLL, }, /* vfmsubxxxsd */
  { 0x000000ffLL, }, /* vfmsubxrsd */
  { 0x000000ffLL, }, /* vfmsubxxrsd */
  { 0x000000ffLL, }, /* vfmsubxxxrsd */
  { 0x000000ffLL, }, /* vfnmsubss */
  { 0x000000ffLL, }, /* vfnmsubxss */
  { 0x000000ffLL, }, /* vfnmsubxxss */
  { 0x000000ffLL, }, /* vfnmsubxxxss */
  { 0x000000ffLL, }, /* vfnmsubxrss */
  { 0x000000ffLL, }, /* vfnmsubxxrss */
  { 0x000000ffLL, }, /* vfnmsubxxxrss */
  { 0x000000ffLL, }, /* vfnmsubsd */
  { 0x000000ffLL, }, /* vfnmsubxsd */
  { 0x000000ffLL, }, /* vfnmsubxxsd */
  { 0x000000ffLL, }, /* vfnmsubxxxsd */
  { 0x000000ffLL, }, /* vfnmsubxrsd */
  { 0x000000ffLL, }, /* vfnmsubxxrsd */
  { 0x000000ffLL, }, /* vfnmsubxxxrsd */
  { 0x000000ffLL, }, /* vfmsubps */
  { 0x000000ffLL, }, /* vfmsubxps */
  { 0x000000ffLL, }, /* vfmsubxxps */
  { 0x000000ffLL, }, /* vfmsubxxxps */
  { 0x000000ffLL, }, /* vfmsubxrps */
  { 0x000000ffLL, }, /* vfmsubxxrps */
  { 0x000000ffLL, }, /* vfmsubxxxrps */
  { 0x000000ffLL, }, /* vfmsubpd */
  { 0x000000ffLL, }, /* vfmsubxpd */
  { 0x000000ffLL, }, /* vfmsubxxpd */
  { 0x000000ffLL, }, /* vfmsubxxxpd */
  { 0x000000ffLL, }, /* vfmsubxrpd */
  { 0x000000ffLL, }, /* vfmsubxxrpd */
  { 0x000000ffLL, }, /* vfmsubxxxrpd */
  { 0x000000ffLL, }, /* vfmsubaddps */
  { 0x000000ffLL, }, /* vfmsubaddxps */
  { 0x000000ffLL, }, /* vfmsubaddxxps */
  { 0x000000ffLL, }, /* vfmsubaddxxxps */
  { 0x000000ffLL, }, /* vfmsubaddxrps */
  { 0x000000ffLL, }, /* vfmsubaddxxrps */
  { 0x000000ffLL, }, /* vfmsubaddxxxrps */
  { 0x000000ffLL, }, /* vfmsubaddpd */
  { 0x000000ffLL, }, /* vfmsubaddxpd */
  { 0x000000ffLL, }, /* vfmsubaddxxpd */
  { 0x000000ffLL, }, /* vfmsubaddxxxpd */
  { 0x000000ffLL, }, /* vfmsubaddxrpd */
  { 0x000000ffLL, }, /* vfmsubaddxxrpd */
  { 0x000000ffLL, }, /* vfmsubaddxxxrpd */
  { 0x000000ffLL, }, /* vfnmsubps */
  { 0x000000ffLL, }, /* vfnmsubxps */
  { 0x000000ffLL, }, /* vfnmsubxxps */
  { 0x000000ffLL, }, /* vfnmsubxxxps */
  { 0x000000ffLL, }, /* vfnmsubxrps */
  { 0x000000ffLL, }, /* vfnmsubxxrps */
  { 0x000000ffLL, }, /* vfnmsubxxxrps */
  { 0x000000ffLL, }, /* vfnmsubpd */
  { 0x000000ffLL, }, /* vfnmsubxpd */
  { 0x000000ffLL, }, /* vfnmsubxxpd */
  { 0x000000ffLL, }, /* vfnmsubxxxpd */
  { 0x000000ffLL, }, /* vfnmsubxrpd */
  { 0x000000ffLL, }, /* vfnmsubxxrpd */
  { 0x000000ffLL, }, /* vfnmsubxxxrpd */
  { 0x000000ffLL, }, /* vzeroupper */
  { 0x000000ffLL, }, /* mfence */
  { 0x000000ffLL, }, /* lfence */
  { 0x000000ffLL, }, /* sfence */
  { 0x000000ffLL, }, /* monitor */
  { 0x000000ffLL, }, /* mwait */
  { 0x00000000LL, }, /* asm */
  { 0x00000000LL, }, /* intrncall */
  { 0x00000000LL, }, /* spadjust */
  { 0x00000000LL, }, /* savexmms */
  { 0x000000ffLL, }, /* zero32 */
  { 0x000000ffLL, }, /* zero64 */
  { 0x000000ffLL, }, /* xzero32 */
  { 0x000000ffLL, }, /* xzero64 */
  { 0x000000ffLL, }, /* xzero128v32 */
  { 0x000000ffLL, }, /* xzero128v64 */
  { 0x000000ffLL, }, /* fadd */
  { 0x000000ffLL, }, /* faddp */
  { 0x000000ffLL, }, /* flds */
  { 0x000000ffLL, }, /* flds_n32 */
  { 0x000000ffLL, }, /* fldl */
  { 0x000000ffLL, }, /* fldl_n32 */
  { 0x000000ffLL, }, /* fldt */
  { 0x000000ffLL, }, /* fldt_n32 */
  { 0x000000ffLL, }, /* fld */
  { 0x000000ffLL, }, /* fst */
  { 0x000000ffLL, }, /* fstp */
  { 0x000000ffLL, }, /* fstps */
  { 0x000000ffLL, }, /* fstps_n32 */
  { 0x000000ffLL, }, /* fstpl */
  { 0x000000ffLL, }, /* fstpl_n32 */
  { 0x000000ffLL, }, /* fstpt */
  { 0x000000ffLL, }, /* fstpt_n32 */
  { 0x000000ffLL, }, /* fsts */
  { 0x000000ffLL, }, /* fsts_n32 */
  { 0x000000ffLL, }, /* fstl */
  { 0x000000ffLL, }, /* fstl_n32 */
  { 0x000000ffLL, }, /* fxch */
  { 0x000000ffLL, }, /* fmov */
  { 0x000000ffLL, }, /* fsub */
  { 0x000000ffLL, }, /* fsubr */
  { 0x000000ffLL, }, /* fsubp */
  { 0x000000ffLL, }, /* fsubrp */
  { 0x000000ffLL, }, /* fmul */
  { 0x000000ffLL, }, /* fmulp */
  { 0x000000ffLL, }, /* fdiv */
  { 0x000000ffLL, }, /* fdivp */
  { 0x000000ffLL, }, /* fdivr */
  { 0x000000ffLL, }, /* fdivrp */
  { 0x000000ffLL, }, /* fucomi */
  { 0x000000ffLL, }, /* fucomip */
  { 0x000000ffLL, }, /* fchs */
  { 0x000000ffLL, }, /* frndint */
  { 0x000000ffLL, }, /* fnstcw */
  { 0x000000ffLL, }, /* fldcw */
  { 0x000000ffLL, }, /* fistps */
  { 0x000000ffLL, }, /* fistpl */
  { 0x000000ffLL, }, /* fists */
  { 0x000000ffLL, }, /* fistl */
  { 0x000000ffLL, }, /* fistpll */
  { 0x000000ffLL, }, /* filds */
  { 0x000000ffLL, }, /* fildl */
  { 0x000000ffLL, }, /* fildll */
  { 0x000000ffLL, }, /* fldz */
  { 0x000000ffLL, }, /* fabs */
  { 0x000000ffLL, }, /* fsqrt */
  { 0x000000ffLL, }, /* fcmovb */
  { 0x000000ffLL, }, /* fcmovbe */
  { 0x000000ffLL, }, /* fcmovnb */
  { 0x000000ffLL, }, /* fcmovnbe */
  { 0x000000ffLL, }, /* fcmove */
  { 0x000000ffLL, }, /* fcmovne */
  { 0x000000ffLL, }, /* fcmovu */
  { 0x000000ffLL, }, /* fcmovnu */
  { 0x000000ffLL, }, /* fcos */
  { 0x000000ffLL, }, /* fsin */
  { 0x000000ffLL, }, /* cmpeqpd */
  { 0x000000ffLL, }, /* cmpltpd */
  { 0x000000ffLL, }, /* cmplepd */
  { 0x000000ffLL, }, /* cmpunordpd */
  { 0x000000ffLL, }, /* cmpneqpd */
  { 0x000000ffLL, }, /* cmpnltpd */
  { 0x000000ffLL, }, /* cmpnlepd */
  { 0x000000ffLL, }, /* cmpordpd */
  { 0x000000ffLL, }, /* cmpeqps */
  { 0x000000ffLL, }, /* cmpltps */
  { 0x000000ffLL, }, /* cmpleps */
  { 0x000000ffLL, }, /* cmpunordps */
  { 0x000000ffLL, }, /* cmpneqps */
  { 0x000000ffLL, }, /* cmpnltps */
  { 0x000000ffLL, }, /* cmpnleps */
  { 0x000000ffLL, }, /* cmpordps */
  { 0x000000ffLL, }, /* cmpeqsd */
  { 0x000000ffLL, }, /* cmpltsd */
  { 0x000000ffLL, }, /* cmplesd */
  { 0x000000ffLL, }, /* cmpunordsd */
  { 0x000000ffLL, }, /* cmpneqsd */
  { 0x000000ffLL, }, /* cmpnltsd */
  { 0x000000ffLL, }, /* cmpnlesd */
  { 0x000000ffLL, }, /* cmpordsd */
  { 0x000000ffLL, }, /* cmpeqss */
  { 0x000000ffLL, }, /* cmpltss */
  { 0x000000ffLL, }, /* cmpless */
  { 0x000000ffLL, }, /* cmpunordss */
  { 0x000000ffLL, }, /* cmpneqss */
  { 0x000000ffLL, }, /* cmpnltss */
  { 0x000000ffLL, }, /* cmpnless */
  { 0x000000ffLL, }, /* cmpordss */
  { 0x000000ffLL, }, /* emms */
  { 0x000000ffLL, }, /* stmxcsr */
  { 0x000000ffLL, }, /* ldmxcsr */
  { 0x000000ffLL, }, /* clflush */
  { 0x000000ffLL, }, /* fisttps */
  { 0x000000ffLL, }, /* fisttpl */
  { 0x000000ffLL, }, /* fisttpll */
  { 0x000000ffLL, }, /* pabs128v8 */
  { 0x000000ffLL, }, /* pabsx128v8 */
  { 0x000000ffLL, }, /* pabsxx128v8 */
  { 0x000000ffLL, }, /* pabsxxx128v8 */
  { 0x000000ffLL, }, /* pabs128v16 */
  { 0x000000ffLL, }, /* pabsx128v16 */
  { 0x000000ffLL, }, /* pabsxx128v16 */
  { 0x000000ffLL, }, /* pabsxxx128v16 */
  { 0x000000ffLL, }, /* pabs128v32 */
  { 0x000000ffLL, }, /* pabsx128v32 */
  { 0x000000ffLL, }, /* pabsxx128v32 */
  { 0x000000ffLL, }, /* pabsxxx128v32 */
  { 0x000000ffLL, }, /* psign128v8 */
  { 0x000000ffLL, }, /* psignx128v8 */
  { 0x000000ffLL, }, /* psignxx128v8 */
  { 0x000000ffLL, }, /* psignxxx128v8 */
  { 0x000000ffLL, }, /* psign128v16 */
  { 0x000000ffLL, }, /* psignx128v16 */
  { 0x000000ffLL, }, /* psignxx128v16 */
  { 0x000000ffLL, }, /* psignxxx128v16 */
  { 0x000000ffLL, }, /* psign128v32 */
  { 0x000000ffLL, }, /* psignx128v32 */
  { 0x000000ffLL, }, /* psignxx128v32 */
  { 0x000000ffLL, }, /* psignxxx128v32 */
  { 0x000000ffLL, }, /* pshuf128v8 */
  { 0x000000ffLL, }, /* pshufx128v8 */
  { 0x000000ffLL, }, /* pshufxx128v8 */
  { 0x000000ffLL, }, /* pshufxxx128v8 */
  { 0x000000ffLL, }, /* phsub128v16 */
  { 0x000000ffLL, }, /* phsubx128v16 */
  { 0x000000ffLL, }, /* phsubxx128v16 */
  { 0x000000ffLL, }, /* phsubxxx128v16 */
  { 0x000000ffLL, }, /* phsub128v32 */
  { 0x000000ffLL, }, /* phsubx128v32 */
  { 0x000000ffLL, }, /* phsubxx128v32 */
  { 0x000000ffLL, }, /* phsubxxx128v32 */
  { 0x000000ffLL, }, /* phsubs128v16 */
  { 0x000000ffLL, }, /* phsubsx128v16 */
  { 0x000000ffLL, }, /* phsubsxx128v16 */
  { 0x000000ffLL, }, /* phsubsxxx128v16 */
  { 0x000000ffLL, }, /* phadd128v16 */
  { 0x000000ffLL, }, /* phaddx128v16 */
  { 0x000000ffLL, }, /* phaddxx128v16 */
  { 0x000000ffLL, }, /* phaddxxx128v16 */
  { 0x000000ffLL, }, /* phadd128v32 */
  { 0x000000ffLL, }, /* phaddx128v32 */
  { 0x000000ffLL, }, /* phaddxx128v32 */
  { 0x000000ffLL, }, /* phaddxxx128v32 */
  { 0x000000ffLL, }, /* phadds128v16 */
  { 0x000000ffLL, }, /* phaddsx128v16 */
  { 0x000000ffLL, }, /* phaddsxx128v16 */
  { 0x000000ffLL, }, /* phaddsxxx128v16 */
  { 0x000000ffLL, }, /* pmulhrsw128 */
  { 0x000000ffLL, }, /* pmulhrswx128 */
  { 0x000000ffLL, }, /* pmulhrswxx128 */
  { 0x000000ffLL, }, /* pmulhrswxxx128 */
  { 0x000000ffLL, }, /* pmaddubsw128 */
  { 0x000000ffLL, }, /* pmaddubswx128 */
  { 0x000000ffLL, }, /* pmaddubswxx128 */
  { 0x000000ffLL, }, /* pmaddubswxxx128 */
  { 0x000000ffLL, }, /* palignr128 */
  { 0x000000ffLL, }, /* palignrx128 */
  { 0x000000ffLL, }, /* palignrxx128 */
  { 0x000000ffLL, }, /* palignrxxx128 */
  { 0x000000ffLL, }, /* muldq */
  { 0x000000ffLL, }, /* muldqx */
  { 0x000000ffLL, }, /* muldqxx */
  { 0x000000ffLL, }, /* muldqxxx */
  { 0x000000ffLL, }, /* ldntdqa */
  { 0x000000ffLL, }, /* ldntdqax */
  { 0x000000ffLL, }, /* ldntdqaxx */
  { 0x000000ffLL, }, /* stntdq */
  { 0x000000ffLL, }, /* stntdqx */
  { 0x000000ffLL, }, /* stntdqxx */
  { 0x000000ffLL, }, /* mins128v8 */
  { 0x000000ffLL, }, /* minsx128v8 */
  { 0x000000ffLL, }, /* minsxx128v8 */
  { 0x000000ffLL, }, /* minsxxx128v8 */
  { 0x000000ffLL, }, /* maxs128v8 */
  { 0x000000ffLL, }, /* maxsx128v8 */
  { 0x000000ffLL, }, /* maxsxx128v8 */
  { 0x000000ffLL, }, /* maxsxxx128v8 */
  { 0x000000ffLL, }, /* minu128v16 */
  { 0x000000ffLL, }, /* minux128v16 */
  { 0x000000ffLL, }, /* minuxx128v16 */
  { 0x000000ffLL, }, /* minuxxx128v16 */
  { 0x000000ffLL, }, /* maxu128v16 */
  { 0x000000ffLL, }, /* maxux128v16 */
  { 0x000000ffLL, }, /* maxuxx128v16 */
  { 0x000000ffLL, }, /* maxuxxx128v16 */
  { 0x000000ffLL, }, /* minu128v32 */
  { 0x000000ffLL, }, /* minux128v32 */
  { 0x000000ffLL, }, /* minuxx128v32 */
  { 0x000000ffLL, }, /* minuxxx128v32 */
  { 0x000000ffLL, }, /* maxu128v32 */
  { 0x000000ffLL, }, /* maxux128v32 */
  { 0x000000ffLL, }, /* maxuxx128v32 */
  { 0x000000ffLL, }, /* maxuxxx128v32 */
  { 0x000000ffLL, }, /* mins128v32 */
  { 0x000000ffLL, }, /* minsx128v32 */
  { 0x000000ffLL, }, /* minsxx128v32 */
  { 0x000000ffLL, }, /* minsxxx128v32 */
  { 0x000000ffLL, }, /* maxs128v32 */
  { 0x000000ffLL, }, /* maxsx128v32 */
  { 0x000000ffLL, }, /* maxsxx128v32 */
  { 0x000000ffLL, }, /* maxsxxx128v32 */
  { 0x000000ffLL, }, /* pmovsxbw */
  { 0x000000ffLL, }, /* pmovsxbwx */
  { 0x000000ffLL, }, /* pmovsxbwxx */
  { 0x000000ffLL, }, /* pmovsxbwxxx */
  { 0x000000ffLL, }, /* pmovzxbw */
  { 0x000000ffLL, }, /* pmovzxbwx */
  { 0x000000ffLL, }, /* pmovzxbwxx */
  { 0x000000ffLL, }, /* pmovzxbwxxx */
  { 0x000000ffLL, }, /* pmovsxbd */
  { 0x000000ffLL, }, /* pmovsxbdx */
  { 0x000000ffLL, }, /* pmovsxbdxx */
  { 0x000000ffLL, }, /* pmovsxbdxxx */
  { 0x000000ffLL, }, /* pmovzxbd */
  { 0x000000ffLL, }, /* pmovzxbdx */
  { 0x000000ffLL, }, /* pmovzxbdxx */
  { 0x000000ffLL, }, /* pmovzxbdxxx */
  { 0x000000ffLL, }, /* pmovsxbq */
  { 0x000000ffLL, }, /* pmovsxbqx */
  { 0x000000ffLL, }, /* pmovsxbqxx */
  { 0x000000ffLL, }, /* pmovsxbqxxx */
  { 0x000000ffLL, }, /* pmovzxbq */
  { 0x000000ffLL, }, /* pmovzxbqx */
  { 0x000000ffLL, }, /* pmovzxbqxx */
  { 0x000000ffLL, }, /* pmovzxbqxxx */
  { 0x000000ffLL, }, /* pmovsxwd */
  { 0x000000ffLL, }, /* pmovsxwdx */
  { 0x000000ffLL, }, /* pmovsxwdxx */
  { 0x000000ffLL, }, /* pmovsxwdxxx */
  { 0x000000ffLL, }, /* pmovzxwd */
  { 0x000000ffLL, }, /* pmovzxwdx */
  { 0x000000ffLL, }, /* pmovzxwdxx */
  { 0x000000ffLL, }, /* pmovzxwdxxx */
  { 0x000000ffLL, }, /* pmovsxwq */
  { 0x000000ffLL, }, /* pmovsxwqx */
  { 0x000000ffLL, }, /* pmovsxwqxx */
  { 0x000000ffLL, }, /* pmovsxwqxxx */
  { 0x000000ffLL, }, /* pmovzxwq */
  { 0x000000ffLL, }, /* pmovzxwqx */
  { 0x000000ffLL, }, /* pmovzxwqxx */
  { 0x000000ffLL, }, /* pmovzxwqxxx */
  { 0x000000ffLL, }, /* pmovsxdq */
  { 0x000000ffLL, }, /* pmovsxdqx */
  { 0x000000ffLL, }, /* pmovsxdqxx */
  { 0x000000ffLL, }, /* pmovsxdqxxx */
  { 0x000000ffLL, }, /* pmovzxdq */
  { 0x000000ffLL, }, /* pmovzxdqx */
  { 0x000000ffLL, }, /* pmovzxdqxx */
  { 0x000000ffLL, }, /* pmovzxdqxxx */
  { 0x000000ffLL, }, /* mul128v32 */
  { 0x000000ffLL, }, /* mulx128v32 */
  { 0x000000ffLL, }, /* mulxx128v32 */
  { 0x000000ffLL, }, /* mulxxx128v32 */
  { 0x000000ffLL, }, /* cmpeq128v64 */
  { 0x000000ffLL, }, /* cmpeqx128v64 */
  { 0x000000ffLL, }, /* cmpeqxx128v64 */
  { 0x000000ffLL, }, /* cmpeqxxx128v64 */
  { 0x000000ffLL, }, /* packusdw */
  { 0x000000ffLL, }, /* packusdwx */
  { 0x000000ffLL, }, /* packusdwxx */
  { 0x000000ffLL, }, /* packusdwxxx */
  { 0x000000ffLL, }, /* phminposuw */
  { 0x000000ffLL, }, /* phminposuwx */
  { 0x000000ffLL, }, /* phminposuwxx */
  { 0x000000ffLL, }, /* phminposuwxxx */
  { 0x000000ffLL, }, /* ptest128 */
  { 0x000000ffLL, }, /* ptestx128 */
  { 0x000000ffLL, }, /* ptestxx128 */
  { 0x000000ffLL, }, /* ptestxxx128 */
  { 0x000000ffLL, }, /* roundsd */
  { 0x000000ffLL, }, /* roundxsd */
  { 0x000000ffLL, }, /* roundxxsd */
  { 0x000000ffLL, }, /* roundxxxsd */
  { 0x000000ffLL, }, /* mpsadbw */
  { 0x000000ffLL, }, /* mpsadbwx */
  { 0x000000ffLL, }, /* mpsadbwxx */
  { 0x000000ffLL, }, /* mpsadbwxxx */
  { 0x000000ffLL, }, /* insr128v8 */
  { 0x000000ffLL, }, /* insrx128v8 */
  { 0x000000ffLL, }, /* insrxx128v8 */
  { 0x000000ffLL, }, /* insrxxx128v8 */
  { 0x000000ffLL, }, /* insr128v16 */
  { 0x000000ffLL, }, /* insrx128v16 */
  { 0x000000ffLL, }, /* insrxx128v16 */
  { 0x000000ffLL, }, /* insrxxx128v16 */
  { 0x000000ffLL, }, /* insr128v32 */
  { 0x000000ffLL, }, /* insrx128v32 */
  { 0x000000ffLL, }, /* insrxx128v32 */
  { 0x000000ffLL, }, /* insrxxx128v32 */
  { 0x000000ffLL, }, /* insr128v64 */
  { 0x000000ffLL, }, /* insrx128v64 */
  { 0x000000ffLL, }, /* insrxx128v64 */
  { 0x000000ffLL, }, /* insrxxx128v64 */
  { 0x000000ffLL, }, /* extr128v8 */
  { 0x000000ffLL, }, /* extrx128v8 */
  { 0x000000ffLL, }, /* extrxx128v8 */
  { 0x000000ffLL, }, /* extrxxx128v8 */
  { 0x000000ffLL, }, /* extr128v16 */
  { 0x000000ffLL, }, /* extrx128v16 */
  { 0x000000ffLL, }, /* extrxx128v16 */
  { 0x000000ffLL, }, /* extrxxx128v16 */
  { 0x000000ffLL, }, /* extr128v32 */
  { 0x000000ffLL, }, /* extrx128v32 */
  { 0x000000ffLL, }, /* extrxx128v32 */
  { 0x000000ffLL, }, /* extrxxx128v32 */
  { 0x000000ffLL, }, /* extr128v64 */
  { 0x000000ffLL, }, /* extrx128v64 */
  { 0x000000ffLL, }, /* extrxx128v64 */
  { 0x000000ffLL, }, /* extrxxx128v64 */
  { 0x000000ffLL, }, /* finsr128v32 */
  { 0x000000ffLL, }, /* finsrx128v32 */
  { 0x000000ffLL, }, /* finsrxx128v32 */
  { 0x000000ffLL, }, /* finsrxxx128v32 */
  { 0x000000ffLL, }, /* fextr128v32 */
  { 0x000000ffLL, }, /* fextrx128v32 */
  { 0x000000ffLL, }, /* fextrxx128v32 */
  { 0x000000ffLL, }, /* fextrxxx128v32 */
  { 0x000000ffLL, }, /* fblendv128v32 */
  { 0x000000ffLL, }, /* fblendvx128v32 */
  { 0x000000ffLL, }, /* fblendvxx128v32 */
  { 0x000000ffLL, }, /* fblendvxxx128v32 */
  { 0x000000ffLL, }, /* fblendv128v64 */
  { 0x000000ffLL, }, /* fblendvx128v64 */
  { 0x000000ffLL, }, /* fblendvxx128v64 */
  { 0x000000ffLL, }, /* fblendvxxx128v64 */
  { 0x000000ffLL, }, /* blendv128v8 */
  { 0x000000ffLL, }, /* blendvx128v8 */
  { 0x000000ffLL, }, /* blendvxx128v8 */
  { 0x000000ffLL, }, /* blendvxxx128v8 */
  { 0x000000ffLL, }, /* round128v32 */
  { 0x000000ffLL, }, /* roundx128v32 */
  { 0x000000ffLL, }, /* roundxx128v32 */
  { 0x000000ffLL, }, /* roundxxx128v32 */
  { 0x000000ffLL, }, /* roundss */
  { 0x000000ffLL, }, /* roundxss */
  { 0x000000ffLL, }, /* roundxxss */
  { 0x000000ffLL, }, /* roundxxxss */
  { 0x000000ffLL, }, /* fblend128v64 */
  { 0x000000ffLL, }, /* fblendx128v64 */
  { 0x000000ffLL, }, /* fblendxx128v64 */
  { 0x000000ffLL, }, /* fblendxxx128v64 */
  { 0x000000ffLL, }, /* blend128v16 */
  { 0x000000ffLL, }, /* blendx128v16 */
  { 0x000000ffLL, }, /* blendxx128v16 */
  { 0x000000ffLL, }, /* blendxxx128v16 */
  { 0x000000ffLL, }, /* fdp128v32 */
  { 0x000000ffLL, }, /* fdpx128v32 */
  { 0x000000ffLL, }, /* fdpxx128v32 */
  { 0x000000ffLL, }, /* fdpxxx128v32 */
  { 0x000000ffLL, }, /* fdp128v64 */
  { 0x000000ffLL, }, /* fdpx128v64 */
  { 0x000000ffLL, }, /* fdpxx128v64 */
  { 0x000000ffLL, }, /* fdpxxx128v64 */
  { 0x000000ffLL, }, /* round128v64 */
  { 0x000000ffLL, }, /* roundx128v64 */
  { 0x000000ffLL, }, /* roundxx128v64 */
  { 0x000000ffLL, }, /* roundxxx128v64 */
  { 0x000000ffLL, }, /* fblend128v32 */
  { 0x000000ffLL, }, /* fblendx128v32 */
  { 0x000000ffLL, }, /* fblendxx128v32 */
  { 0x000000ffLL, }, /* fblendxxx128v32 */
  { 0x000000ffLL, }, /* cmpgt128v64 */
  { 0x000000ffLL, }, /* cmpgtx128v64 */
  { 0x000000ffLL, }, /* cmpgtxx128v64 */
  { 0x000000ffLL, }, /* cmpgtxxx128v64 */
  { 0x000000ffLL, }, /* crc32w */
  { 0x000000ffLL, }, /* crc32wx */
  { 0x000000ffLL, }, /* crc32wxx */
  { 0x000000ffLL, }, /* crc32wxxx */
  { 0x000000ffLL, }, /* crc32d */
  { 0x000000ffLL, }, /* crc32dx */
  { 0x000000ffLL, }, /* crc32dxx */
  { 0x000000ffLL, }, /* crc32dxxx */
  { 0x000000ffLL, }, /* crc32q */
  { 0x000000ffLL, }, /* crc32qx */
  { 0x000000ffLL, }, /* crc32qxx */
  { 0x000000ffLL, }, /* crc32qxxx */
  { 0x000000ffLL, }, /* crc32b */
  { 0x000000ffLL, }, /* crc32bx */
  { 0x000000ffLL, }, /* crc32bxx */
  { 0x000000ffLL, }, /* crc32bxxx */
  { 0x000000ffLL, }, /* cmpestrm */
  { 0x000000ffLL, }, /* cmpestrmx */
  { 0x000000ffLL, }, /* cmpestrmxx */
  { 0x000000ffLL, }, /* cmpestrmxxx */
  { 0x000000ffLL, }, /* cmpestri */
  { 0x000000ffLL, }, /* cmpestrix */
  { 0x000000ffLL, }, /* cmpestrixx */
  { 0x000000ffLL, }, /* cmpestrixxx */
  { 0x000000ffLL, }, /* cmpistrm */
  { 0x000000ffLL, }, /* cmpistrmx */
  { 0x000000ffLL, }, /* cmpistrmxx */
  { 0x000000ffLL, }, /* cmpistrmxxx */
  { 0x000000ffLL, }, /* cmpistri */
  { 0x000000ffLL, }, /* cmpistrix */
  { 0x000000ffLL, }, /* cmpistrixx */
  { 0x000000ffLL, }, /* cmpistrixxx */
  { 0x000000ffLL, }, /* popcnt16 */
  { 0x000000ffLL, }, /* popcntx16 */
  { 0x000000ffLL, }, /* popcntxx16 */
  { 0x000000ffLL, }, /* popcntxxx16 */
  { 0x000000ffLL, }, /* popcnt32 */
  { 0x000000ffLL, }, /* popcntx32 */
  { 0x000000ffLL, }, /* popcntxx32 */
  { 0x000000ffLL, }, /* popcntxxx32 */
  { 0x000000ffLL, }, /* popcnt64 */
  { 0x000000ffLL, }, /* popcntx64 */
  { 0x000000ffLL, }, /* popcntxx64 */
  { 0x000000ffLL, }, /* popcntxxx64 */
  { 0x000000ffLL, }, /* aesimc */
  { 0x000000ffLL, }, /* aesimcx */
  { 0x000000ffLL, }, /* aesimcxx */
  { 0x000000ffLL, }, /* aesimcxxx */
  { 0x000000ffLL, }, /* aeskeygenassist */
  { 0x000000ffLL, }, /* aeskeygenassistx */
  { 0x000000ffLL, }, /* aeskeygenassistxx */
  { 0x000000ffLL, }, /* aeskeygenassistxxx */
  { 0x000000ffLL, }, /* aesenc */
  { 0x000000ffLL, }, /* aesencx */
  { 0x000000ffLL, }, /* aesencxx */
  { 0x000000ffLL, }, /* aesencxxx */
  { 0x000000ffLL, }, /* aesenclast */
  { 0x000000ffLL, }, /* aesenclastx */
  { 0x000000ffLL, }, /* aesenclastxx */
  { 0x000000ffLL, }, /* aesenclastxxx */
  { 0x000000ffLL, }, /* aesdec */
  { 0x000000ffLL, }, /* aesdecx */
  { 0x000000ffLL, }, /* aesdecxx */
  { 0x000000ffLL, }, /* aesdecxxx */
  { 0x000000ffLL, }, /* aesdeclast */
  { 0x000000ffLL, }, /* aesdeclastx */
  { 0x000000ffLL, }, /* aesdeclastxx */
  { 0x000000ffLL, }, /* aesdeclastxxx */
  { 0x000000ffLL, }, /* pclmulqdq */
  { 0x000000ffLL, }, /* pclmulqdqx */
  { 0x000000ffLL, }, /* pclmulqdqxx */
  { 0x000000ffLL, }, /* pclmulqdqxxx */
  { 0x000000ffLL, }, /* vphaddbd */
  { 0x000000ffLL, }, /* vphaddbdx */
  { 0x000000ffLL, }, /* vphaddbdxx */
  { 0x000000ffLL, }, /* vphaddbdxxx */
  { 0x000000ffLL, }, /* vphaddbq */
  { 0x000000ffLL, }, /* vphaddbqx */
  { 0x000000ffLL, }, /* vphaddbqxx */
  { 0x000000ffLL, }, /* vphaddbqxxx */
  { 0x000000ffLL, }, /* vphaddbw */
  { 0x000000ffLL, }, /* vphaddbwx */
  { 0x000000ffLL, }, /* vphaddbwxx */
  { 0x000000ffLL, }, /* vphaddbwxxx */
  { 0x000000ffLL, }, /* vphadddq */
  { 0x000000ffLL, }, /* vphadddqx */
  { 0x000000ffLL, }, /* vphadddqxx */
  { 0x000000ffLL, }, /* vphadddqxxx */
  { 0x000000ffLL, }, /* vphaddubd */
  { 0x000000ffLL, }, /* vphaddubdx */
  { 0x000000ffLL, }, /* vphaddubdxx */
  { 0x000000ffLL, }, /* vphaddubdxxx */
  { 0x000000ffLL, }, /* vphaddubq */
  { 0x000000ffLL, }, /* vphaddubqx */
  { 0x000000ffLL, }, /* vphaddubqxx */
  { 0x000000ffLL, }, /* vphaddubqxxx */
  { 0x000000ffLL, }, /* vphaddubw */
  { 0x000000ffLL, }, /* vphaddubwx */
  { 0x000000ffLL, }, /* vphaddubwxx */
  { 0x000000ffLL, }, /* vphaddubwxxx */
  { 0x000000ffLL, }, /* vphaddudq */
  { 0x000000ffLL, }, /* vphaddudqx */
  { 0x000000ffLL, }, /* vphaddudqxx */
  { 0x000000ffLL, }, /* vphaddudqxxx */
  { 0x000000ffLL, }, /* vphadduwd */
  { 0x000000ffLL, }, /* vphadduwdx */
  { 0x000000ffLL, }, /* vphadduwdxx */
  { 0x000000ffLL, }, /* vphadduwdxxx */
  { 0x000000ffLL, }, /* vphadduwq */
  { 0x000000ffLL, }, /* vphadduwqx */
  { 0x000000ffLL, }, /* vphadduwqxx */
  { 0x000000ffLL, }, /* vphadduwqxxx */
  { 0x000000ffLL, }, /* vphaddwd */
  { 0x000000ffLL, }, /* vphaddwdx */
  { 0x000000ffLL, }, /* vphaddwdxx */
  { 0x000000ffLL, }, /* vphaddwdxxx */
  { 0x000000ffLL, }, /* vphaddwq */
  { 0x000000ffLL, }, /* vphaddwqx */
  { 0x000000ffLL, }, /* vphaddwqxx */
  { 0x000000ffLL, }, /* vphaddwqxxx */
  { 0x000000ffLL, }, /* vphsubbw */
  { 0x000000ffLL, }, /* vphsubbwx */
  { 0x000000ffLL, }, /* vphsubbwxx */
  { 0x000000ffLL, }, /* vphsubbwxxx */
  { 0x000000ffLL, }, /* vphsubdq */
  { 0x000000ffLL, }, /* vphsubdqx */
  { 0x000000ffLL, }, /* vphsubdqxx */
  { 0x000000ffLL, }, /* vphsubdqxxx */
  { 0x000000ffLL, }, /* vphsubwd */
  { 0x000000ffLL, }, /* vphsubwdx */
  { 0x000000ffLL, }, /* vphsubwdxx */
  { 0x000000ffLL, }, /* vphsubwdxxx */
  { 0x000000ffLL, }, /* vfrczpd */
  { 0x000000ffLL, }, /* vfrczpdx */
  { 0x000000ffLL, }, /* vfrczpdxx */
  { 0x000000ffLL, }, /* vfrczpdxxx */
  { 0x000000ffLL, }, /* vfrczps */
  { 0x000000ffLL, }, /* vfrczpsx */
  { 0x000000ffLL, }, /* vfrczpsxx */
  { 0x000000ffLL, }, /* vfrczpsxxx */
  { 0x000000ffLL, }, /* vfrczsd */
  { 0x000000ffLL, }, /* vfrczsdx */
  { 0x000000ffLL, }, /* vfrczsdxx */
  { 0x000000ffLL, }, /* vfrczsdxxx */
  { 0x000000ffLL, }, /* vfrczss */
  { 0x000000ffLL, }, /* vfrczssx */
  { 0x000000ffLL, }, /* vfrczssxx */
  { 0x000000ffLL, }, /* vfrczssxxx */
  { 0x000000ffLL, }, /* vprotbi */
  { 0x000000ffLL, }, /* vprotbix */
  { 0x000000ffLL, }, /* vprotbixx */
  { 0x000000ffLL, }, /* vprotbixxx */
  { 0x000000ffLL, }, /* vprotdi */
  { 0x000000ffLL, }, /* vprotdix */
  { 0x000000ffLL, }, /* vprotdixx */
  { 0x000000ffLL, }, /* vprotdixxx */
  { 0x000000ffLL, }, /* vprotqi */
  { 0x000000ffLL, }, /* vprotqix */
  { 0x000000ffLL, }, /* vprotqixx */
  { 0x000000ffLL, }, /* vprotqixxx */
  { 0x000000ffLL, }, /* vprotwi */
  { 0x000000ffLL, }, /* vprotwix */
  { 0x000000ffLL, }, /* vprotwixx */
  { 0x000000ffLL, }, /* vprotwixxx */
  { 0x000000ffLL, }, /* vpcomb */
  { 0x000000ffLL, }, /* vpcombx */
  { 0x000000ffLL, }, /* vpcombxx */
  { 0x000000ffLL, }, /* vpcombxxx */
  { 0x000000ffLL, }, /* vpcomd */
  { 0x000000ffLL, }, /* vpcomdx */
  { 0x000000ffLL, }, /* vpcomdxx */
  { 0x000000ffLL, }, /* vpcomdxxx */
  { 0x000000ffLL, }, /* vpcomq */
  { 0x000000ffLL, }, /* vpcomqx */
  { 0x000000ffLL, }, /* vpcomqxx */
  { 0x000000ffLL, }, /* vpcomqxxx */
  { 0x000000ffLL, }, /* vpcomw */
  { 0x000000ffLL, }, /* vpcomwx */
  { 0x000000ffLL, }, /* vpcomwxx */
  { 0x000000ffLL, }, /* vpcomwxxx */
  { 0x000000ffLL, }, /* vpcomub */
  { 0x000000ffLL, }, /* vpcomubx */
  { 0x000000ffLL, }, /* vpcomubxx */
  { 0x000000ffLL, }, /* vpcomubxxx */
  { 0x000000ffLL, }, /* vpcomud */
  { 0x000000ffLL, }, /* vpcomudx */
  { 0x000000ffLL, }, /* vpcomudxx */
  { 0x000000ffLL, }, /* vpcomudxxx */
  { 0x000000ffLL, }, /* vpcomuq */
  { 0x000000ffLL, }, /* vpcomuqx */
  { 0x000000ffLL, }, /* vpcomuqxx */
  { 0x000000ffLL, }, /* vpcomuqxxx */
  { 0x000000ffLL, }, /* vpcomuw */
  { 0x000000ffLL, }, /* vpcomuwx */
  { 0x000000ffLL, }, /* vpcomuwxx */
  { 0x000000ffLL, }, /* vpcomuwxxx */
  { 0x000000ffLL, }, /* vpperm */
  { 0x000000ffLL, }, /* vppermx */
  { 0x000000ffLL, }, /* vppermxx */
  { 0x000000ffLL, }, /* vppermxxx */
  { 0x000000ffLL, }, /* vppermxr */
  { 0x000000ffLL, }, /* vppermxxr */
  { 0x000000ffLL, }, /* vppermxxxr */
  { 0x000000ffLL, }, /* vprotb */
  { 0x000000ffLL, }, /* vprotbx */
  { 0x000000ffLL, }, /* vprotbxx */
  { 0x000000ffLL, }, /* vprotbxxx */
  { 0x000000ffLL, }, /* vprotbxr */
  { 0x000000ffLL, }, /* vprotbxxr */
  { 0x000000ffLL, }, /* vprotbxxxr */
  { 0x000000ffLL, }, /* vprotd */
  { 0x000000ffLL, }, /* vprotdx */
  { 0x000000ffLL, }, /* vprotdxx */
  { 0x000000ffLL, }, /* vprotdxxx */
  { 0x000000ffLL, }, /* vprotdxr */
  { 0x000000ffLL, }, /* vprotdxxr */
  { 0x000000ffLL, }, /* vprotdxxxr */
  { 0x000000ffLL, }, /* vprotq */
  { 0x000000ffLL, }, /* vprotqx */
  { 0x000000ffLL, }, /* vprotqxx */
  { 0x000000ffLL, }, /* vprotqxxx */
  { 0x000000ffLL, }, /* vprotqxr */
  { 0x000000ffLL, }, /* vprotqxxr */
  { 0x000000ffLL, }, /* vprotqxxxr */
  { 0x000000ffLL, }, /* vprotw */
  { 0x000000ffLL, }, /* vprotwx */
  { 0x000000ffLL, }, /* vprotwxx */
  { 0x000000ffLL, }, /* vprotwxxx */
  { 0x000000ffLL, }, /* vprotwxr */
  { 0x000000ffLL, }, /* vprotwxxr */
  { 0x000000ffLL, }, /* vprotwxxxr */
  { 0x000000ffLL, }, /* vpshab */
  { 0x000000ffLL, }, /* vpshabx */
  { 0x000000ffLL, }, /* vpshabxx */
  { 0x000000ffLL, }, /* vpshabxxx */
  { 0x000000ffLL, }, /* vpshabxr */
  { 0x000000ffLL, }, /* vpshabxxr */
  { 0x000000ffLL, }, /* vpshabxxxr */
  { 0x000000ffLL, }, /* vpshad */
  { 0x000000ffLL, }, /* vpshadx */
  { 0x000000ffLL, }, /* vpshadxx */
  { 0x000000ffLL, }, /* vpshadxxx */
  { 0x000000ffLL, }, /* vpshadxr */
  { 0x000000ffLL, }, /* vpshadxxr */
  { 0x000000ffLL, }, /* vpshadxxxr */
  { 0x000000ffLL, }, /* vpshaq */
  { 0x000000ffLL, }, /* vpshaqx */
  { 0x000000ffLL, }, /* vpshaqxx */
  { 0x000000ffLL, }, /* vpshaqxxx */
  { 0x000000ffLL, }, /* vpshaqxr */
  { 0x000000ffLL, }, /* vpshaqxxr */
  { 0x000000ffLL, }, /* vpshaqxxxr */
  { 0x000000ffLL, }, /* vpshaw */
  { 0x000000ffLL, }, /* vpshawx */
  { 0x000000ffLL, }, /* vpshawxx */
  { 0x000000ffLL, }, /* vpshawxxx */
  { 0x000000ffLL, }, /* vpshawxr */
  { 0x000000ffLL, }, /* vpshawxxr */
  { 0x000000ffLL, }, /* vpshawxxxr */
  { 0x000000ffLL, }, /* vpshlb */
  { 0x000000ffLL, }, /* vpshlbx */
  { 0x000000ffLL, }, /* vpshlbxx */
  { 0x000000ffLL, }, /* vpshlbxxx */
  { 0x000000ffLL, }, /* vpshlbxr */
  { 0x000000ffLL, }, /* vpshlbxxr */
  { 0x000000ffLL, }, /* vpshlbxxxr */
  { 0x000000ffLL, }, /* vpshld */
  { 0x000000ffLL, }, /* vpshldx */
  { 0x000000ffLL, }, /* vpshldxx */
  { 0x000000ffLL, }, /* vpshldxxx */
  { 0x000000ffLL, }, /* vpshldxr */
  { 0x000000ffLL, }, /* vpshldxxr */
  { 0x000000ffLL, }, /* vpshldxxxr */
  { 0x000000ffLL, }, /* vpshlq */
  { 0x000000ffLL, }, /* vpshlqx */
  { 0x000000ffLL, }, /* vpshlqxx */
  { 0x000000ffLL, }, /* vpshlqxxx */
  { 0x000000ffLL, }, /* vpshlqxr */
  { 0x000000ffLL, }, /* vpshlqxxr */
  { 0x000000ffLL, }, /* vpshlqxxxr */
  { 0x000000ffLL, }, /* vpshlw */
  { 0x000000ffLL, }, /* vpshlwx */
  { 0x000000ffLL, }, /* vpshlwxx */
  { 0x000000ffLL, }, /* vpshlwxxx */
  { 0x000000ffLL, }, /* vpshlwxr */
  { 0x000000ffLL, }, /* vpshlwxxr */
  { 0x000000ffLL, }, /* vpshlwxxxr */
  { 0x000000ffLL, }, /* vpcmov */
  { 0x000000ffLL, }, /* vpcmovx */
  { 0x000000ffLL, }, /* vpcmovxx */
  { 0x000000ffLL, }, /* vpcmovxxx */
  { 0x000000ffLL, }, /* vpcmovxr */
  { 0x000000ffLL, }, /* vpcmovxxr */
  { 0x000000ffLL, }, /* vpcmovxxxr */
  { 0x000000ffLL, }, /* vpmacsdd */
  { 0x000000ffLL, }, /* vpmacsddx */
  { 0x000000ffLL, }, /* vpmacsddxx */
  { 0x000000ffLL, }, /* vpmacsddxxx */
  { 0x000000ffLL, }, /* vpmacsdqh */
  { 0x000000ffLL, }, /* vpmacsdqhx */
  { 0x000000ffLL, }, /* vpmacsdqhxx */
  { 0x000000ffLL, }, /* vpmacsdqhxxx */
  { 0x000000ffLL, }, /* vpmacsdql */
  { 0x000000ffLL, }, /* vpmacsdqlx */
  { 0x000000ffLL, }, /* vpmacsdqlxx */
  { 0x000000ffLL, }, /* vpmacsdqlxxx */
  { 0x000000ffLL, }, /* vpmacssdd */
  { 0x000000ffLL, }, /* vpmacssddx */
  { 0x000000ffLL, }, /* vpmacssddxx */
  { 0x000000ffLL, }, /* vpmacssddxxx */
  { 0x000000ffLL, }, /* vpmacssdqh */
  { 0x000000ffLL, }, /* vpmacssdqhx */
  { 0x000000ffLL, }, /* vpmacssdqhxx */
  { 0x000000ffLL, }, /* vpmacssdqhxxx */
  { 0x000000ffLL, }, /* vpmacssdql */
  { 0x000000ffLL, }, /* vpmacssdqlx */
  { 0x000000ffLL, }, /* vpmacssdqlxx */
  { 0x000000ffLL, }, /* vpmacssdqlxxx */
  { 0x000000ffLL, }, /* vpmacsswd */
  { 0x000000ffLL, }, /* vpmacsswdx */
  { 0x000000ffLL, }, /* vpmacsswdxx */
  { 0x000000ffLL, }, /* vpmacsswdxxx */
  { 0x000000ffLL, }, /* vpmacssww */
  { 0x000000ffLL, }, /* vpmacsswwx */
  { 0x000000ffLL, }, /* vpmacsswwxx */
  { 0x000000ffLL, }, /* vpmacsswwxxx */
  { 0x000000ffLL, }, /* vpmacswd */
  { 0x000000ffLL, }, /* vpmacswdx */
  { 0x000000ffLL, }, /* vpmacswdxx */
  { 0x000000ffLL, }, /* vpmacswdxxx */
  { 0x000000ffLL, }, /* vpmacsww */
  { 0x000000ffLL, }, /* vpmacswwx */
  { 0x000000ffLL, }, /* vpmacswwxx */
  { 0x000000ffLL, }, /* vpmacswwxxx */
  { 0x000000ffLL, }, /* vpmadcsswd */
  { 0x000000ffLL, }, /* vpmadcsswdx */
  { 0x000000ffLL, }, /* vpmadcsswdxx */
  { 0x000000ffLL, }, /* vpmadcsswdxxx */
  { 0x000000ffLL, }, /* vpmadcswd */
  { 0x000000ffLL, }, /* vpmadcswdx */
  { 0x000000ffLL, }, /* vpmadcswdxx */
  { 0x000000ffLL, }, /* vpmadcswdxxx */
  { 0x000000ffLL, }, /* vfadd128v64 */
  { 0x000000ffLL, }, /* vfaddx128v64 */
  { 0x000000ffLL, }, /* vfaddxx128v64 */
  { 0x000000ffLL, }, /* vfaddxxx128v64 */
  { 0x000000ffLL, }, /* vfadd128v32 */
  { 0x000000ffLL, }, /* vfaddx128v32 */
  { 0x000000ffLL, }, /* vfaddxx128v32 */
  { 0x000000ffLL, }, /* vfaddxxx128v32 */
  { 0x000000ffLL, }, /* vfaddsd */
  { 0x000000ffLL, }, /* vfaddxsd */
  { 0x000000ffLL, }, /* vfaddxxsd */
  { 0x000000ffLL, }, /* vfaddxxxsd */
  { 0x000000ffLL, }, /* vfaddss */
  { 0x000000ffLL, }, /* vfaddxss */
  { 0x000000ffLL, }, /* vfaddxxss */
  { 0x000000ffLL, }, /* vfaddxxxss */
  { 0x000000ffLL, }, /* vfaddsub128v64 */
  { 0x000000ffLL, }, /* vfaddsubx128v64 */
  { 0x000000ffLL, }, /* vfaddsubxx128v64 */
  { 0x000000ffLL, }, /* vfaddsubxxx128v64 */
  { 0x000000ffLL, }, /* vfaddsub128v32 */
  { 0x000000ffLL, }, /* vfaddsubx128v32 */
  { 0x000000ffLL, }, /* vfaddsubxx128v32 */
  { 0x000000ffLL, }, /* vfaddsubxxx128v32 */
  { 0x000000ffLL, }, /* vaesenc */
  { 0x000000ffLL, }, /* vaesencx */
  { 0x000000ffLL, }, /* vaesencxx */
  { 0x000000ffLL, }, /* vaesencxxx */
  { 0x000000ffLL, }, /* vaesenclast */
  { 0x000000ffLL, }, /* vaesenclastx */
  { 0x000000ffLL, }, /* vaesenclastxx */
  { 0x000000ffLL, }, /* vaesenclastxxx */
  { 0x000000ffLL, }, /* vaesdec */
  { 0x000000ffLL, }, /* vaesdecx */
  { 0x000000ffLL, }, /* vaesdecxx */
  { 0x000000ffLL, }, /* vaesdecxxx */
  { 0x000000ffLL, }, /* vaesdeclast */
  { 0x000000ffLL, }, /* vaesdeclastx */
  { 0x000000ffLL, }, /* vaesdeclastxx */
  { 0x000000ffLL, }, /* vaesdeclastxxx */
  { 0x000000ffLL, }, /* vaesimc */
  { 0x000000ffLL, }, /* vaesimcx */
  { 0x000000ffLL, }, /* vaesimcxx */
  { 0x000000ffLL, }, /* vaesimcxxx */
  { 0x000000ffLL, }, /* vaeskeygenassist */
  { 0x000000ffLL, }, /* vaeskeygenassistx */
  { 0x000000ffLL, }, /* vaeskeygenassistxx */
  { 0x000000ffLL, }, /* vaeskeygenassistxxx */
  { 0x000000ffLL, }, /* vandpd */
  { 0x000000ffLL, }, /* vfand128v64 */
  { 0x000000ffLL, }, /* vfandx128v64 */
  { 0x000000ffLL, }, /* vfandxx128v64 */
  { 0x000000ffLL, }, /* vfandxxx128v64 */
  { 0x000000ffLL, }, /* vandps */
  { 0x000000ffLL, }, /* vfand128v32 */
  { 0x000000ffLL, }, /* vfandx128v32 */
  { 0x000000ffLL, }, /* vfandxx128v32 */
  { 0x000000ffLL, }, /* vfandxxx128v32 */
  { 0x000000ffLL, }, /* vandnpd */
  { 0x000000ffLL, }, /* vfandn128v64 */
  { 0x000000ffLL, }, /* vfandnx128v64 */
  { 0x000000ffLL, }, /* vfandnxx128v64 */
  { 0x000000ffLL, }, /* vfandnxxx128v64 */
  { 0x000000ffLL, }, /* vandnps */
  { 0x000000ffLL, }, /* vfandn128v32 */
  { 0x000000ffLL, }, /* vfandnx128v32 */
  { 0x000000ffLL, }, /* vfandnxx128v32 */
  { 0x000000ffLL, }, /* vfandnxxx128v32 */
  { 0x000000ffLL, }, /* vfblend128v64 */
  { 0x000000ffLL, }, /* vfblendx128v64 */
  { 0x000000ffLL, }, /* vfblendxx128v64 */
  { 0x000000ffLL, }, /* vfblendxxx128v64 */
  { 0x000000ffLL, }, /* vfblend128v32 */
  { 0x000000ffLL, }, /* vfblendx128v32 */
  { 0x000000ffLL, }, /* vfblendxx128v32 */
  { 0x000000ffLL, }, /* vfblendxxx128v32 */
  { 0x000000ffLL, }, /* vfblendv128v64 */
  { 0x000000ffLL, }, /* vfblendvx128v64 */
  { 0x000000ffLL, }, /* vfblendvxx128v64 */
  { 0x000000ffLL, }, /* vfblendvxxx128v64 */
  { 0x000000ffLL, }, /* vfblendv128v32 */
  { 0x000000ffLL, }, /* vfblendvx128v32 */
  { 0x000000ffLL, }, /* vfblendvxx128v32 */
  { 0x000000ffLL, }, /* vfblendvxxx128v32 */
  { 0x000000ffLL, }, /* vfbroadcastss */
  { 0x000000ffLL, }, /* vfbroadcastxss */
  { 0x000000ffLL, }, /* vfbroadcastxxss */
  { 0x000000ffLL, }, /* vfbroadcastsd */
  { 0x000000ffLL, }, /* vfbroadcastxsd */
  { 0x000000ffLL, }, /* vfbroadcastxxsd */
  { 0x000000ffLL, }, /* vfbroadcastf128 */
  { 0x000000ffLL, }, /* vfbroadcastxf128 */
  { 0x000000ffLL, }, /* vfbroadcastxxf128 */
  { 0x000000ffLL, }, /* vcmppd */
  { 0x000000ffLL, }, /* vfcmp128v64 */
  { 0x000000ffLL, }, /* vfcmpx128v64 */
  { 0x000000ffLL, }, /* vfcmpxx128v64 */
  { 0x000000ffLL, }, /* vfcmpxxx128v64 */
  { 0x000000ffLL, }, /* vcmpps */
  { 0x000000ffLL, }, /* vfcmp128v32 */
  { 0x000000ffLL, }, /* vfcmpx128v32 */
  { 0x000000ffLL, }, /* vfcmpxx128v32 */
  { 0x000000ffLL, }, /* vfcmpxxx128v32 */
  { 0x000000ffLL, }, /* vfcmpsd */
  { 0x000000ffLL, }, /* vfcmpxsd */
  { 0x000000ffLL, }, /* vfcmpxxsd */
  { 0x000000ffLL, }, /* vfcmpxxxsd */
  { 0x000000ffLL, }, /* vfcmpss */
  { 0x000000ffLL, }, /* vfcmpxss */
  { 0x000000ffLL, }, /* vfcmpxxss */
  { 0x000000ffLL, }, /* vfcmpxxxss */
  { 0x000000ffLL, }, /* vcomisd */
  { 0x000000ffLL, }, /* vcomixsd */
  { 0x000000ffLL, }, /* vcomixxsd */
  { 0x000000ffLL, }, /* vcomixxxsd */
  { 0x000000ffLL, }, /* vcomiss */
  { 0x000000ffLL, }, /* vcomixss */
  { 0x000000ffLL, }, /* vcomixxss */
  { 0x000000ffLL, }, /* vcomixxxss */
  { 0x000000ffLL, }, /* vcvtdq2pd */
  { 0x000000ffLL, }, /* vcvtdq2pdx */
  { 0x000000ffLL, }, /* vcvtdq2pdxx */
  { 0x000000ffLL, }, /* vcvtdq2pdxxx */
  { 0x000000ffLL, }, /* vcvtdq2ps */
  { 0x000000ffLL, }, /* vcvtdq2psx */
  { 0x000000ffLL, }, /* vcvtdq2psxx */
  { 0x000000ffLL, }, /* vcvtdq2psxxx */
  { 0x000000ffLL, }, /* vcvtpd2dq */
  { 0x000000ffLL, }, /* vcvtpd2dqx */
  { 0x000000ffLL, }, /* vcvtpd2dqxx */
  { 0x000000ffLL, }, /* vcvtpd2dqxxx */
  { 0x000000ffLL, }, /* vcvtpd2dqy */
  { 0x000000ffLL, }, /* vcvtpd2dqyx */
  { 0x000000ffLL, }, /* vcvtpd2dqyxx */
  { 0x000000ffLL, }, /* vcvtpd2dqyxxx */
  { 0x000000ffLL, }, /* vcvtpd2ps */
  { 0x000000ffLL, }, /* vcvtpd2psx */
  { 0x000000ffLL, }, /* vcvtpd2psxx */
  { 0x000000ffLL, }, /* vcvtpd2psxxx */
  { 0x000000ffLL, }, /* vcvtpd2psy */
  { 0x000000ffLL, }, /* vcvtpd2psyx */
  { 0x000000ffLL, }, /* vcvtpd2psyxx */
  { 0x000000ffLL, }, /* vcvtpd2psyxxx */
  { 0x000000ffLL, }, /* vcvtps2dq */
  { 0x000000ffLL, }, /* vcvtps2dqx */
  { 0x000000ffLL, }, /* vcvtps2dqxx */
  { 0x000000ffLL, }, /* vcvtps2dqxxx */
  { 0x000000ffLL, }, /* vcvtps2pd */
  { 0x000000ffLL, }, /* vcvtps2pdx */
  { 0x000000ffLL, }, /* vcvtps2pdxx */
  { 0x000000ffLL, }, /* vcvtps2pdxxx */
  { 0x000000ffLL, }, /* vcvtsd2si */
  { 0x000000ffLL, }, /* vcvtsd2siq */
  { 0x000000ffLL, }, /* vcvtsd2ss */
  { 0x000000ffLL, }, /* vcvtsd2ssx */
  { 0x000000ffLL, }, /* vcvtsd2ssxx */
  { 0x000000ffLL, }, /* vcvtsd2ssxxx */
  { 0x000000ffLL, }, /* vcvtsi2sd */
  { 0x000000ffLL, }, /* vcvtsi2sdx */
  { 0x000000ffLL, }, /* vcvtsi2sdxx */
  { 0x000000ffLL, }, /* vcvtsi2sdxxx */
  { 0x000000ffLL, }, /* vcvtsi2sdq */
  { 0x000000ffLL, }, /* vcvtsi2sdqx */
  { 0x000000ffLL, }, /* vcvtsi2sdqxx */
  { 0x000000ffLL, }, /* vcvtsi2sdqxxx */
  { 0x000000ffLL, }, /* vcvtsi2ss */
  { 0x000000ffLL, }, /* vcvtsi2ssx */
  { 0x000000ffLL, }, /* vcvtsi2ssxx */
  { 0x000000ffLL, }, /* vcvtsi2ssxxx */
  { 0x000000ffLL, }, /* vcvtsi2ssq */
  { 0x000000ffLL, }, /* vcvtsi2ssqx */
  { 0x000000ffLL, }, /* vcvtsi2ssqxx */
  { 0x000000ffLL, }, /* vcvtsi2ssqxxx */
  { 0x000000ffLL, }, /* vcvtss2sd */
  { 0x000000ffLL, }, /* vcvtss2sdx */
  { 0x000000ffLL, }, /* vcvtss2sdxx */
  { 0x000000ffLL, }, /* vcvtss2sdxxx */
  { 0x000000ffLL, }, /* vcvtss2si */
  { 0x000000ffLL, }, /* vcvtss2siq */
  { 0x000000ffLL, }, /* vcvttpd2dq */
  { 0x000000ffLL, }, /* vcvttpd2dqx */
  { 0x000000ffLL, }, /* vcvttpd2dqxx */
  { 0x000000ffLL, }, /* vcvttpd2dqxxx */
  { 0x000000ffLL, }, /* vcvttpd2dqy */
  { 0x000000ffLL, }, /* vcvttpd2dqyx */
  { 0x000000ffLL, }, /* vcvttpd2dqyxx */
  { 0x000000ffLL, }, /* vcvttpd2dqyxxx */
  { 0x000000ffLL, }, /* vcvttps2dq */
  { 0x000000ffLL, }, /* vcvttps2dqx */
  { 0x000000ffLL, }, /* vcvttps2dqxx */
  { 0x000000ffLL, }, /* vcvttps2dqxxx */
  { 0x000000ffLL, }, /* vcvttsd2si */
  { 0x000000ffLL, }, /* vcvttsd2siq */
  { 0x000000ffLL, }, /* vcvttss2si */
  { 0x000000ffLL, }, /* vcvttss2siq */
  { 0x000000ffLL, }, /* vfdiv128v64 */
  { 0x000000ffLL, }, /* vfdivx128v64 */
  { 0x000000ffLL, }, /* vfdivxx128v64 */
  { 0x000000ffLL, }, /* vfdivxxx128v64 */
  { 0x000000ffLL, }, /* vfdiv128v32 */
  { 0x000000ffLL, }, /* vfdivx128v32 */
  { 0x000000ffLL, }, /* vfdivxx128v32 */
  { 0x000000ffLL, }, /* vfdivxxx128v32 */
  { 0x000000ffLL, }, /* vdivsd */
  { 0x000000ffLL, }, /* vdivxsd */
  { 0x000000ffLL, }, /* vdivxxsd */
  { 0x000000ffLL, }, /* vdivxxxsd */
  { 0x000000ffLL, }, /* vdivss */
  { 0x000000ffLL, }, /* vdivxss */
  { 0x000000ffLL, }, /* vdivxxss */
  { 0x000000ffLL, }, /* vdivxxxss */
  { 0x000000ffLL, }, /* vfdp128v64 */
  { 0x000000ffLL, }, /* vfdpx128v64 */
  { 0x000000ffLL, }, /* vfdpxx128v64 */
  { 0x000000ffLL, }, /* vfdpxxx128v64 */
  { 0x000000ffLL, }, /* vfdp128v32 */
  { 0x000000ffLL, }, /* vfdpx128v32 */
  { 0x000000ffLL, }, /* vfdpxx128v32 */
  { 0x000000ffLL, }, /* vfdpxxx128v32 */
  { 0x000000ffLL, }, /* vfextrf128 */
  { 0x000000ffLL, }, /* vfextrxf128 */
  { 0x000000ffLL, }, /* vfextrxxf128 */
  { 0x000000ffLL, }, /* vfextrxxxf128 */
  { 0x000000ffLL, }, /* vfextr128v32 */
  { 0x000000ffLL, }, /* vfextrx128v32 */
  { 0x000000ffLL, }, /* vfextrxx128v32 */
  { 0x000000ffLL, }, /* vfextrxxx128v32 */
  { 0x000000ffLL, }, /* vfhadd128v64 */
  { 0x000000ffLL, }, /* vfhaddx128v64 */
  { 0x000000ffLL, }, /* vfhaddxx128v64 */
  { 0x000000ffLL, }, /* vfhaddxxx128v64 */
  { 0x000000ffLL, }, /* vfhadd128v32 */
  { 0x000000ffLL, }, /* vfhaddx128v32 */
  { 0x000000ffLL, }, /* vfhaddxx128v32 */
  { 0x000000ffLL, }, /* vfhaddxxx128v32 */
  { 0x000000ffLL, }, /* vfhsub128v64 */
  { 0x000000ffLL, }, /* vfhsubx128v64 */
  { 0x000000ffLL, }, /* vfhsubxx128v64 */
  { 0x000000ffLL, }, /* vfhsubxxx128v64 */
  { 0x000000ffLL, }, /* vfhsub128v32 */
  { 0x000000ffLL, }, /* vfhsubx128v32 */
  { 0x000000ffLL, }, /* vfhsubxx128v32 */
  { 0x000000ffLL, }, /* vfhsubxxx128v32 */
  { 0x000000ffLL, }, /* vfinsrf128 */
  { 0x000000ffLL, }, /* vfinsrxf128 */
  { 0x000000ffLL, }, /* vfinsrxxf128 */
  { 0x000000ffLL, }, /* vfinsrxxxf128 */
  { 0x000000ffLL, }, /* vfinsr128v32 */
  { 0x000000ffLL, }, /* vfinsrx128v32 */
  { 0x000000ffLL, }, /* vfinsrxx128v32 */
  { 0x000000ffLL, }, /* vfinsrxxx128v32 */
  { 0x000000ffLL, }, /* vlddqu */
  { 0x000000ffLL, }, /* vlddqux */
  { 0x000000ffLL, }, /* vlddquxx */
  { 0x000000ffLL, }, /* vlddqu_n32 */
  { 0x000000ffLL, }, /* vldmxcsr */
  { 0x000000ffLL, }, /* vmaskmovdqu */
  { 0x000000ffLL, }, /* vfmaskld128v32 */
  { 0x000000ffLL, }, /* vfmaskldx128v32 */
  { 0x000000ffLL, }, /* vfmaskldxx128v32 */
  { 0x000000ffLL, }, /* vfmaskld128v64 */
  { 0x000000ffLL, }, /* vfmaskldx128v64 */
  { 0x000000ffLL, }, /* vfmaskldxx128v64 */
  { 0x000000ffLL, }, /* vfmaskst128v32 */
  { 0x000000ffLL, }, /* vfmaskstx128v32 */
  { 0x000000ffLL, }, /* vfmaskstxx128v32 */
  { 0x000000ffLL, }, /* vfmaskst128v64 */
  { 0x000000ffLL, }, /* vfmaskstx128v64 */
  { 0x000000ffLL, }, /* vfmaskstxx128v64 */
  { 0x000000ffLL, }, /* vfmax128v64 */
  { 0x000000ffLL, }, /* vfmaxx128v64 */
  { 0x000000ffLL, }, /* vfmaxxx128v64 */
  { 0x000000ffLL, }, /* vfmaxxxx128v64 */
  { 0x000000ffLL, }, /* vfmax128v32 */
  { 0x000000ffLL, }, /* vfmaxx128v32 */
  { 0x000000ffLL, }, /* vfmaxxx128v32 */
  { 0x000000ffLL, }, /* vfmaxxxx128v32 */
  { 0x000000ffLL, }, /* vfmaxsd */
  { 0x000000ffLL, }, /* vfmaxxsd */
  { 0x000000ffLL, }, /* vfmaxxxsd */
  { 0x000000ffLL, }, /* vfmaxxxxsd */
  { 0x000000ffLL, }, /* vfmaxss */
  { 0x000000ffLL, }, /* vfmaxxss */
  { 0x000000ffLL, }, /* vfmaxxxss */
  { 0x000000ffLL, }, /* vfmaxxxxss */
  { 0x000000ffLL, }, /* vfmin128v64 */
  { 0x000000ffLL, }, /* vfminx128v64 */
  { 0x000000ffLL, }, /* vfminxx128v64 */
  { 0x000000ffLL, }, /* vfminxxx128v64 */
  { 0x000000ffLL, }, /* vfmin128v32 */
  { 0x000000ffLL, }, /* vfminx128v32 */
  { 0x000000ffLL, }, /* vfminxx128v32 */
  { 0x000000ffLL, }, /* vfminxxx128v32 */
  { 0x000000ffLL, }, /* vfminsd */
  { 0x000000ffLL, }, /* vfminxsd */
  { 0x000000ffLL, }, /* vfminxxsd */
  { 0x000000ffLL, }, /* vfminxxxsd */
  { 0x000000ffLL, }, /* vfminss */
  { 0x000000ffLL, }, /* vfminxss */
  { 0x000000ffLL, }, /* vfminxxss */
  { 0x000000ffLL, }, /* vfminxxxss */
  { 0x000000ffLL, }, /* vmovapd */
  { 0x000000ffLL, }, /* vldapd */
  { 0x000000ffLL, }, /* vldapdx */
  { 0x000000ffLL, }, /* vldapdxx */
  { 0x000000ffLL, }, /* vldapd_n32 */
  { 0x000000ffLL, }, /* vstapd */
  { 0x000000ffLL, }, /* vstapdx */
  { 0x000000ffLL, }, /* vstapdxx */
  { 0x000000ffLL, }, /* vstapd_n32 */
  { 0x000000ffLL, }, /* vmovaps */
  { 0x000000ffLL, }, /* vldaps */
  { 0x000000ffLL, }, /* vldapsx */
  { 0x000000ffLL, }, /* vldapsxx */
  { 0x000000ffLL, }, /* vldaps_n32 */
  { 0x000000ffLL, }, /* vstaps */
  { 0x000000ffLL, }, /* vstapsx */
  { 0x000000ffLL, }, /* vstapsxx */
  { 0x000000ffLL, }, /* vstaps_n32 */
  { 0x000000ffLL, }, /* vmovg2x */
  { 0x000000ffLL, }, /* vmovg2x64 */
  { 0x000000ffLL, }, /* vmovx2g */
  { 0x000000ffLL, }, /* vmovx2g64 */
  { 0x000000ffLL, }, /* vld64_2sse */
  { 0x000000ffLL, }, /* vldx64_2sse */
  { 0x000000ffLL, }, /* vldxx64_2sse */
  { 0x000000ffLL, }, /* vld64_2sse_n32 */
  { 0x000000ffLL, }, /* vst64_fsse */
  { 0x000000ffLL, }, /* vstx64_fsse */
  { 0x000000ffLL, }, /* vstxx64_fsse */
  { 0x000000ffLL, }, /* vst64_fsse_n32 */
  { 0x000000ffLL, }, /* vmovddup */
  { 0x000000ffLL, }, /* vmovddupx */
  { 0x000000ffLL, }, /* vmovddupxx */
  { 0x000000ffLL, }, /* vmovddupxxx */
  { 0x000000ffLL, }, /* vlddqa */
  { 0x000000ffLL, }, /* vlddqax */
  { 0x000000ffLL, }, /* vlddqaxx */
  { 0x000000ffLL, }, /* vlddqa_n32 */
  { 0x000000ffLL, }, /* vmovdqa */
  { 0x000000ffLL, }, /* vstdqa */
  { 0x000000ffLL, }, /* vstdqax */
  { 0x000000ffLL, }, /* vstdqaxx */
  { 0x000000ffLL, }, /* vstdqa_n32 */
  { 0x000000ffLL, }, /* vstdqu */
  { 0x000000ffLL, }, /* vstdqux */
  { 0x000000ffLL, }, /* vstdquxx */
  { 0x000000ffLL, }, /* vstdqu_n32 */
  { 0x000000ffLL, }, /* vldhpd */
  { 0x000000ffLL, }, /* vldhpdx */
  { 0x000000ffLL, }, /* vldhpdxx */
  { 0x000000ffLL, }, /* vldhpd_n32 */
  { 0x000000ffLL, }, /* vsthpd */
  { 0x000000ffLL, }, /* vsthpdx */
  { 0x000000ffLL, }, /* vsthpdxx */
  { 0x000000ffLL, }, /* vsthpd_n32 */
  { 0x000000ffLL, }, /* vldhps */
  { 0x000000ffLL, }, /* vldhpsx */
  { 0x000000ffLL, }, /* vldhpsxx */
  { 0x000000ffLL, }, /* vldhps_n32 */
  { 0x000000ffLL, }, /* vsthps */
  { 0x000000ffLL, }, /* vsthpsx */
  { 0x000000ffLL, }, /* vsthpsxx */
  { 0x000000ffLL, }, /* vsthps_n32 */
  { 0x000000ffLL, }, /* vldlpd */
  { 0x000000ffLL, }, /* vldlpdx */
  { 0x000000ffLL, }, /* vldlpdxx */
  { 0x000000ffLL, }, /* vldlpd_n32 */
  { 0x000000ffLL, }, /* vstorelpd */
  { 0x000000ffLL, }, /* vstlpd */
  { 0x000000ffLL, }, /* vstlpdx */
  { 0x000000ffLL, }, /* vstlpdxx */
  { 0x000000ffLL, }, /* vstlpd_n32 */
  { 0x000000ffLL, }, /* vldlps */
  { 0x000000ffLL, }, /* vldlpsx */
  { 0x000000ffLL, }, /* vldlpsxx */
  { 0x000000ffLL, }, /* vldlps_n32 */
  { 0x000000ffLL, }, /* vstlps */
  { 0x000000ffLL, }, /* vstlpsx */
  { 0x000000ffLL, }, /* vstlpsxx */
  { 0x000000ffLL, }, /* vstlps_n32 */
  { 0x000000ffLL, }, /* vmovmskpd */
  { 0x000000ffLL, }, /* vmovmskps */
  { 0x000000ffLL, }, /* vstorenti128 */
  { 0x000000ffLL, }, /* vstorentxi128 */
  { 0x000000ffLL, }, /* vstorentxxi128 */
  { 0x000000ffLL, }, /* vldntdqa */
  { 0x000000ffLL, }, /* vldntdqax */
  { 0x000000ffLL, }, /* vldntdqaxx */
  { 0x000000ffLL, }, /* vstntdq */
  { 0x000000ffLL, }, /* vstntdqx */
  { 0x000000ffLL, }, /* vstntdqxx */
  { 0x000000ffLL, }, /* vstntpd */
  { 0x000000ffLL, }, /* vstntpdx */
  { 0x000000ffLL, }, /* vstntpdxx */
  { 0x000000ffLL, }, /* vstntps */
  { 0x000000ffLL, }, /* vstntpsx */
  { 0x000000ffLL, }, /* vstntpsxx */
  { 0x000000ffLL, }, /* vstntsd */
  { 0x000000ffLL, }, /* vstntsdx */
  { 0x000000ffLL, }, /* vstntsdxx */
  { 0x000000ffLL, }, /* vstntss */
  { 0x000000ffLL, }, /* vstntssx */
  { 0x000000ffLL, }, /* vstntssxx */
  { 0x000000ffLL, }, /* vmovsd */
  { 0x000000ffLL, }, /* vldsd */
  { 0x000000ffLL, }, /* vldsdx */
  { 0x000000ffLL, }, /* vldsdxx */
  { 0x000000ffLL, }, /* vldsd_n32 */
  { 0x000000ffLL, }, /* vstsd */
  { 0x000000ffLL, }, /* vstsdx */
  { 0x000000ffLL, }, /* vstsdxx */
  { 0x000000ffLL, }, /* vstsd_n32 */
  { 0x000000ffLL, }, /* vmovss */
  { 0x000000ffLL, }, /* vldss */
  { 0x000000ffLL, }, /* vldssx */
  { 0x000000ffLL, }, /* vldssxx */
  { 0x000000ffLL, }, /* vldss_n32 */
  { 0x000000ffLL, }, /* vstss */
  { 0x000000ffLL, }, /* vstssx */
  { 0x000000ffLL, }, /* vstssxx */
  { 0x000000ffLL, }, /* vstss_n32 */
  { 0x000000ffLL, }, /* vmovlhps */
  { 0x000000ffLL, }, /* vmovhlps */
  { 0x000000ffLL, }, /* vmovshdup */
  { 0x000000ffLL, }, /* vmovshdupx */
  { 0x000000ffLL, }, /* vmovshdupxx */
  { 0x000000ffLL, }, /* vmovshdupxxx */
  { 0x000000ffLL, }, /* vmovsldup */
  { 0x000000ffLL, }, /* vmovsldupx */
  { 0x000000ffLL, }, /* vmovsldupxx */
  { 0x000000ffLL, }, /* vmovsldupxxx */
  { 0x000000ffLL, }, /* vldupd */
  { 0x000000ffLL, }, /* vldupdx */
  { 0x000000ffLL, }, /* vldupdxx */
  { 0x000000ffLL, }, /* vldupd_n32 */
  { 0x000000ffLL, }, /* vstupd */
  { 0x000000ffLL, }, /* vstupdx */
  { 0x000000ffLL, }, /* vstupdxx */
  { 0x000000ffLL, }, /* vstupd_n32 */
  { 0x000000ffLL, }, /* vldups */
  { 0x000000ffLL, }, /* vldupsx */
  { 0x000000ffLL, }, /* vldupsxx */
  { 0x000000ffLL, }, /* vldups_n32 */
  { 0x000000ffLL, }, /* vstups */
  { 0x000000ffLL, }, /* vstupsx */
  { 0x000000ffLL, }, /* vstupsxx */
  { 0x000000ffLL, }, /* vstups_n32 */
  { 0x000000ffLL, }, /* vmpsadbw */
  { 0x000000ffLL, }, /* vmpsadbwx */
  { 0x000000ffLL, }, /* vmpsadbwxx */
  { 0x000000ffLL, }, /* vmpsadbwxxx */
  { 0x000000ffLL, }, /* vfmul128v64 */
  { 0x000000ffLL, }, /* vfmulx128v64 */
  { 0x000000ffLL, }, /* vfmulxx128v64 */
  { 0x000000ffLL, }, /* vfmulxxx128v64 */
  { 0x000000ffLL, }, /* vfmul128v32 */
  { 0x000000ffLL, }, /* vfmulx128v32 */
  { 0x000000ffLL, }, /* vfmulxx128v32 */
  { 0x000000ffLL, }, /* vfmulxxx128v32 */
  { 0x000000ffLL, }, /* vmulsd */
  { 0x000000ffLL, }, /* vmulxsd */
  { 0x000000ffLL, }, /* vmulxxsd */
  { 0x000000ffLL, }, /* vmulxxxsd */
  { 0x000000ffLL, }, /* vmulss */
  { 0x000000ffLL, }, /* vmulxss */
  { 0x000000ffLL, }, /* vmulxxss */
  { 0x000000ffLL, }, /* vmulxxxss */
  { 0x000000ffLL, }, /* vorpd */
  { 0x000000ffLL, }, /* vfor128v64 */
  { 0x000000ffLL, }, /* vforx128v64 */
  { 0x000000ffLL, }, /* vforxx128v64 */
  { 0x000000ffLL, }, /* vforxxx128v64 */
  { 0x000000ffLL, }, /* vorps */
  { 0x000000ffLL, }, /* vfor128v32 */
  { 0x000000ffLL, }, /* vforx128v32 */
  { 0x000000ffLL, }, /* vforxx128v32 */
  { 0x000000ffLL, }, /* vforxxx128v32 */
  { 0x000000ffLL, }, /* vabs128v8 */
  { 0x000000ffLL, }, /* vabsx128v8 */
  { 0x000000ffLL, }, /* vabsxx128v8 */
  { 0x000000ffLL, }, /* vabsxxx128v8 */
  { 0x000000ffLL, }, /* vabs128v32 */
  { 0x000000ffLL, }, /* vabsx128v32 */
  { 0x000000ffLL, }, /* vabsxx128v32 */
  { 0x000000ffLL, }, /* vabsxxx128v32 */
  { 0x000000ffLL, }, /* vabs128v16 */
  { 0x000000ffLL, }, /* vabsx128v16 */
  { 0x000000ffLL, }, /* vabsxx128v16 */
  { 0x000000ffLL, }, /* vabsxxx128v16 */
  { 0x000000ffLL, }, /* vpackssdw */
  { 0x000000ffLL, }, /* vpackssdwx */
  { 0x000000ffLL, }, /* vpackssdwxx */
  { 0x000000ffLL, }, /* vpackssdwxxx */
  { 0x000000ffLL, }, /* vpacksswb */
  { 0x000000ffLL, }, /* vpacksswbx */
  { 0x000000ffLL, }, /* vpacksswbxx */
  { 0x000000ffLL, }, /* vpacksswbxxx */
  { 0x000000ffLL, }, /* vpackusdw */
  { 0x000000ffLL, }, /* vpackusdwx */
  { 0x000000ffLL, }, /* vpackusdwxx */
  { 0x000000ffLL, }, /* vpackusdwxxx */
  { 0x000000ffLL, }, /* vpackuswb */
  { 0x000000ffLL, }, /* vpackuswbx */
  { 0x000000ffLL, }, /* vpackuswbxx */
  { 0x000000ffLL, }, /* vpackuswbxxx */
  { 0x000000ffLL, }, /* vadd128v8 */
  { 0x000000ffLL, }, /* vaddx128v8 */
  { 0x000000ffLL, }, /* vaddxx128v8 */
  { 0x000000ffLL, }, /* vaddxxx128v8 */
  { 0x000000ffLL, }, /* vadd128v32 */
  { 0x000000ffLL, }, /* vaddx128v32 */
  { 0x000000ffLL, }, /* vaddxx128v32 */
  { 0x000000ffLL, }, /* vaddxxx128v32 */
  { 0x000000ffLL, }, /* vadd128v64 */
  { 0x000000ffLL, }, /* vaddx128v64 */
  { 0x000000ffLL, }, /* vaddxx128v64 */
  { 0x000000ffLL, }, /* vaddxxx128v64 */
  { 0x000000ffLL, }, /* vadd128v16 */
  { 0x000000ffLL, }, /* vaddx128v16 */
  { 0x000000ffLL, }, /* vaddxx128v16 */
  { 0x000000ffLL, }, /* vaddxxx128v16 */
  { 0x000000ffLL, }, /* vadds128v8 */
  { 0x000000ffLL, }, /* vaddsx128v8 */
  { 0x000000ffLL, }, /* vaddsxx128v8 */
  { 0x000000ffLL, }, /* vaddsxxx128v8 */
  { 0x000000ffLL, }, /* vadds128v16 */
  { 0x000000ffLL, }, /* vaddsx128v16 */
  { 0x000000ffLL, }, /* vaddsxx128v16 */
  { 0x000000ffLL, }, /* vaddsxxx128v16 */
  { 0x000000ffLL, }, /* vaddus128v8 */
  { 0x000000ffLL, }, /* vaddusx128v8 */
  { 0x000000ffLL, }, /* vaddusxx128v8 */
  { 0x000000ffLL, }, /* vaddusxxx128v8 */
  { 0x000000ffLL, }, /* vaddus128v16 */
  { 0x000000ffLL, }, /* vaddusx128v16 */
  { 0x000000ffLL, }, /* vaddusxx128v16 */
  { 0x000000ffLL, }, /* vaddusxxx128v16 */
  { 0x000000ffLL, }, /* vpalignr128 */
  { 0x000000ffLL, }, /* vpalignrx128 */
  { 0x000000ffLL, }, /* vpalignrxx128 */
  { 0x000000ffLL, }, /* vpalignrxxx128 */
  { 0x000000ffLL, }, /* vand128v8 */
  { 0x000000ffLL, }, /* vandx128v8 */
  { 0x000000ffLL, }, /* vandxx128v8 */
  { 0x000000ffLL, }, /* vandxxx128v8 */
  { 0x000000ffLL, }, /* vand128v16 */
  { 0x000000ffLL, }, /* vandx128v16 */
  { 0x000000ffLL, }, /* vandxx128v16 */
  { 0x000000ffLL, }, /* vandxxx128v16 */
  { 0x000000ffLL, }, /* vand128v32 */
  { 0x000000ffLL, }, /* vandx128v32 */
  { 0x000000ffLL, }, /* vandxx128v32 */
  { 0x000000ffLL, }, /* vandxxx128v32 */
  { 0x000000ffLL, }, /* vand128v64 */
  { 0x000000ffLL, }, /* vandx128v64 */
  { 0x000000ffLL, }, /* vandxx128v64 */
  { 0x000000ffLL, }, /* vandxxx128v64 */
  { 0x000000ffLL, }, /* vandn128v8 */
  { 0x000000ffLL, }, /* vandnx128v8 */
  { 0x000000ffLL, }, /* vandnxx128v8 */
  { 0x000000ffLL, }, /* vandnxxx128v8 */
  { 0x000000ffLL, }, /* vandn128v16 */
  { 0x000000ffLL, }, /* vandnx128v16 */
  { 0x000000ffLL, }, /* vandnxx128v16 */
  { 0x000000ffLL, }, /* vandnxxx128v16 */
  { 0x000000ffLL, }, /* vandn128v32 */
  { 0x000000ffLL, }, /* vandnx128v32 */
  { 0x000000ffLL, }, /* vandnxx128v32 */
  { 0x000000ffLL, }, /* vandnxxx128v32 */
  { 0x000000ffLL, }, /* vandn128v64 */
  { 0x000000ffLL, }, /* vandnx128v64 */
  { 0x000000ffLL, }, /* vandnxx128v64 */
  { 0x000000ffLL, }, /* vandnxxx128v64 */
  { 0x000000ffLL, }, /* vpavgb */
  { 0x000000ffLL, }, /* vpavgbx */
  { 0x000000ffLL, }, /* vpavgbxx */
  { 0x000000ffLL, }, /* vpavgbxxx */
  { 0x000000ffLL, }, /* vpavgw */
  { 0x000000ffLL, }, /* vpavgwx */
  { 0x000000ffLL, }, /* vpavgwxx */
  { 0x000000ffLL, }, /* vpavgwxxx */
  { 0x000000ffLL, }, /* vblendv128v8 */
  { 0x000000ffLL, }, /* vblendvx128v8 */
  { 0x000000ffLL, }, /* vblendvxx128v8 */
  { 0x000000ffLL, }, /* vblendvxxx128v8 */
  { 0x000000ffLL, }, /* vblend128v16 */
  { 0x000000ffLL, }, /* vblendx128v16 */
  { 0x000000ffLL, }, /* vblendxx128v16 */
  { 0x000000ffLL, }, /* vblendxxx128v16 */
  { 0x000000ffLL, }, /* vpclmulqdq */
  { 0x000000ffLL, }, /* vpclmulqdqx */
  { 0x000000ffLL, }, /* vpclmulqdqxx */
  { 0x000000ffLL, }, /* vpclmulqdqxxx */
  { 0x000000ffLL, }, /* vcmpeq128v8 */
  { 0x000000ffLL, }, /* vcmpeqx128v8 */
  { 0x000000ffLL, }, /* vcmpeqxx128v8 */
  { 0x000000ffLL, }, /* vcmpeqxxx128v8 */
  { 0x000000ffLL, }, /* vcmpeq128v32 */
  { 0x000000ffLL, }, /* vcmpeqx128v32 */
  { 0x000000ffLL, }, /* vcmpeqxx128v32 */
  { 0x000000ffLL, }, /* vcmpeqxxx128v32 */
  { 0x000000ffLL, }, /* vcmpeq128v64 */
  { 0x000000ffLL, }, /* vcmpeqx128v64 */
  { 0x000000ffLL, }, /* vcmpeqxx128v64 */
  { 0x000000ffLL, }, /* vcmpeqxxx128v64 */
  { 0x000000ffLL, }, /* vcmpeq128v16 */
  { 0x000000ffLL, }, /* vcmpeqx128v16 */
  { 0x000000ffLL, }, /* vcmpeqxx128v16 */
  { 0x000000ffLL, }, /* vcmpeqxxx128v16 */
  { 0x000000ffLL, }, /* vcmpestri */
  { 0x000000ffLL, }, /* vcmpestrix */
  { 0x000000ffLL, }, /* vcmpestrixx */
  { 0x000000ffLL, }, /* vcmpestrixxx */
  { 0x000000ffLL, }, /* vcmpestrm */
  { 0x000000ffLL, }, /* vcmpestrmx */
  { 0x000000ffLL, }, /* vcmpestrmxx */
  { 0x000000ffLL, }, /* vcmpestrmxxx */
  { 0x000000ffLL, }, /* vcmpgt128v8 */
  { 0x000000ffLL, }, /* vcmpgtx128v8 */
  { 0x000000ffLL, }, /* vcmpgtxx128v8 */
  { 0x000000ffLL, }, /* vcmpgtxxx128v8 */
  { 0x000000ffLL, }, /* vcmpgt128v32 */
  { 0x000000ffLL, }, /* vcmpgtx128v32 */
  { 0x000000ffLL, }, /* vcmpgtxx128v32 */
  { 0x000000ffLL, }, /* vcmpgtxxx128v32 */
  { 0x000000ffLL, }, /* vcmpgt128v64 */
  { 0x000000ffLL, }, /* vcmpgtx128v64 */
  { 0x000000ffLL, }, /* vcmpgtxx128v64 */
  { 0x000000ffLL, }, /* vcmpgtxxx128v64 */
  { 0x000000ffLL, }, /* vcmpgt128v16 */
  { 0x000000ffLL, }, /* vcmpgtx128v16 */
  { 0x000000ffLL, }, /* vcmpgtxx128v16 */
  { 0x000000ffLL, }, /* vcmpgtxxx128v16 */
  { 0x000000ffLL, }, /* vcmpistri */
  { 0x000000ffLL, }, /* vcmpistrix */
  { 0x000000ffLL, }, /* vcmpistrixx */
  { 0x000000ffLL, }, /* vcmpistrixxx */
  { 0x000000ffLL, }, /* vcmpistrm */
  { 0x000000ffLL, }, /* vcmpistrmx */
  { 0x000000ffLL, }, /* vcmpistrmxx */
  { 0x000000ffLL, }, /* vcmpistrmxxx */
  { 0x000000ffLL, }, /* vfperm128v64 */
  { 0x000000ffLL, }, /* vfpermx128v64 */
  { 0x000000ffLL, }, /* vfpermxx128v64 */
  { 0x000000ffLL, }, /* vfpermxxx128v64 */
  { 0x000000ffLL, }, /* vfpermi128v64 */
  { 0x000000ffLL, }, /* vfpermix128v64 */
  { 0x000000ffLL, }, /* vfpermixx128v64 */
  { 0x000000ffLL, }, /* vfpermixxx128v64 */
  { 0x000000ffLL, }, /* vfperm128v32 */
  { 0x000000ffLL, }, /* vfpermx128v32 */
  { 0x000000ffLL, }, /* vfpermxx128v32 */
  { 0x000000ffLL, }, /* vfpermxxx128v32 */
  { 0x000000ffLL, }, /* vfpermi128v32 */
  { 0x000000ffLL, }, /* vfpermix128v32 */
  { 0x000000ffLL, }, /* vfpermixx128v32 */
  { 0x000000ffLL, }, /* vfpermixxx128v32 */
  { 0x000000ffLL, }, /* vfperm2f128 */
  { 0x000000ffLL, }, /* vfperm2xf128 */
  { 0x000000ffLL, }, /* vfperm2xxf128 */
  { 0x000000ffLL, }, /* vfperm2xxxf128 */
  { 0x000000ffLL, }, /* vextr128v8 */
  { 0x000000ffLL, }, /* vextrx128v8 */
  { 0x000000ffLL, }, /* vextrxx128v8 */
  { 0x000000ffLL, }, /* vextrxxx128v8 */
  { 0x000000ffLL, }, /* vextr128v32 */
  { 0x000000ffLL, }, /* vextrx128v32 */
  { 0x000000ffLL, }, /* vextrxx128v32 */
  { 0x000000ffLL, }, /* vextrxxx128v32 */
  { 0x000000ffLL, }, /* vextr128v64 */
  { 0x000000ffLL, }, /* vextrx128v64 */
  { 0x000000ffLL, }, /* vextrxx128v64 */
  { 0x000000ffLL, }, /* vextrxxx128v64 */
  { 0x000000ffLL, }, /* vextr128v16 */
  { 0x000000ffLL, }, /* vextrx128v16 */
  { 0x000000ffLL, }, /* vextrxx128v16 */
  { 0x000000ffLL, }, /* vextrxxx128v16 */
  { 0x000000ffLL, }, /* vphadd128v32 */
  { 0x000000ffLL, }, /* vphaddx128v32 */
  { 0x000000ffLL, }, /* vphaddxx128v32 */
  { 0x000000ffLL, }, /* vphaddxxx128v32 */
  { 0x000000ffLL, }, /* vphadds128v16 */
  { 0x000000ffLL, }, /* vphaddsx128v16 */
  { 0x000000ffLL, }, /* vphaddsxx128v16 */
  { 0x000000ffLL, }, /* vphaddsxxx128v16 */
  { 0x000000ffLL, }, /* vphadd128v16 */
  { 0x000000ffLL, }, /* vphaddx128v16 */
  { 0x000000ffLL, }, /* vphaddxx128v16 */
  { 0x000000ffLL, }, /* vphaddxxx128v16 */
  { 0x000000ffLL, }, /* vphminposuw */
  { 0x000000ffLL, }, /* vphminposuwx */
  { 0x000000ffLL, }, /* vphminposuwxx */
  { 0x000000ffLL, }, /* vphminposuwxxx */
  { 0x000000ffLL, }, /* vphsub128v32 */
  { 0x000000ffLL, }, /* vphsubx128v32 */
  { 0x000000ffLL, }, /* vphsubxx128v32 */
  { 0x000000ffLL, }, /* vphsubxxx128v32 */
  { 0x000000ffLL, }, /* vphsubs128v16 */
  { 0x000000ffLL, }, /* vphsubsx128v16 */
  { 0x000000ffLL, }, /* vphsubsxx128v16 */
  { 0x000000ffLL, }, /* vphsubsxxx128v16 */
  { 0x000000ffLL, }, /* vphsub128v16 */
  { 0x000000ffLL, }, /* vphsubx128v16 */
  { 0x000000ffLL, }, /* vphsubxx128v16 */
  { 0x000000ffLL, }, /* vphsubxxx128v16 */
  { 0x000000ffLL, }, /* vinsr128v8 */
  { 0x000000ffLL, }, /* vinsrx128v8 */
  { 0x000000ffLL, }, /* vinsrxx128v8 */
  { 0x000000ffLL, }, /* vinsrxxx128v8 */
  { 0x000000ffLL, }, /* vinsr128v32 */
  { 0x000000ffLL, }, /* vinsrx128v32 */
  { 0x000000ffLL, }, /* vinsrxx128v32 */
  { 0x000000ffLL, }, /* vinsrxxx128v32 */
  { 0x000000ffLL, }, /* vinsr128v64 */
  { 0x000000ffLL, }, /* vinsrx128v64 */
  { 0x000000ffLL, }, /* vinsrxx128v64 */
  { 0x000000ffLL, }, /* vinsrxxx128v64 */
  { 0x000000ffLL, }, /* vinsr128v16 */
  { 0x000000ffLL, }, /* vinsrx128v16 */
  { 0x000000ffLL, }, /* vinsrxx128v16 */
  { 0x000000ffLL, }, /* vinsrxxx128v16 */
  { 0x000000ffLL, }, /* vpmaddwd */
  { 0x000000ffLL, }, /* vpmaddwdx */
  { 0x000000ffLL, }, /* vpmaddwdxx */
  { 0x000000ffLL, }, /* vpmaddwdxxx */
  { 0x000000ffLL, }, /* vpmaddubsw128 */
  { 0x000000ffLL, }, /* vpmaddubswx128 */
  { 0x000000ffLL, }, /* vpmaddubswxx128 */
  { 0x000000ffLL, }, /* vpmaddubswxxx128 */
  { 0x000000ffLL, }, /* vmaxs128v8 */
  { 0x000000ffLL, }, /* vmaxsx128v8 */
  { 0x000000ffLL, }, /* vmaxsxx128v8 */
  { 0x000000ffLL, }, /* vmaxsxxx128v8 */
  { 0x000000ffLL, }, /* vmaxs128v32 */
  { 0x000000ffLL, }, /* vmaxsx128v32 */
  { 0x000000ffLL, }, /* vmaxsxx128v32 */
  { 0x000000ffLL, }, /* vmaxsxxx128v32 */
  { 0x000000ffLL, }, /* vmaxs128v16 */
  { 0x000000ffLL, }, /* vmaxsx128v16 */
  { 0x000000ffLL, }, /* vmaxsxx128v16 */
  { 0x000000ffLL, }, /* vmaxsxxx128v16 */
  { 0x000000ffLL, }, /* vmaxu128v8 */
  { 0x000000ffLL, }, /* vmaxux128v8 */
  { 0x000000ffLL, }, /* vmaxuxx128v8 */
  { 0x000000ffLL, }, /* vmaxuxxx128v8 */
  { 0x000000ffLL, }, /* vmaxu128v32 */
  { 0x000000ffLL, }, /* vmaxux128v32 */
  { 0x000000ffLL, }, /* vmaxuxx128v32 */
  { 0x000000ffLL, }, /* vmaxuxxx128v32 */
  { 0x000000ffLL, }, /* vmaxu128v16 */
  { 0x000000ffLL, }, /* vmaxux128v16 */
  { 0x000000ffLL, }, /* vmaxuxx128v16 */
  { 0x000000ffLL, }, /* vmaxuxxx128v16 */
  { 0x000000ffLL, }, /* vmins128v8 */
  { 0x000000ffLL, }, /* vminsx128v8 */
  { 0x000000ffLL, }, /* vminsxx128v8 */
  { 0x000000ffLL, }, /* vminsxxx128v8 */
  { 0x000000ffLL, }, /* vmins128v32 */
  { 0x000000ffLL, }, /* vminsx128v32 */
  { 0x000000ffLL, }, /* vminsxx128v32 */
  { 0x000000ffLL, }, /* vminsxxx128v32 */
  { 0x000000ffLL, }, /* vmins128v16 */
  { 0x000000ffLL, }, /* vminsx128v16 */
  { 0x000000ffLL, }, /* vminsxx128v16 */
  { 0x000000ffLL, }, /* vminsxxx128v16 */
  { 0x000000ffLL, }, /* vminu128v8 */
  { 0x000000ffLL, }, /* vminux128v8 */
  { 0x000000ffLL, }, /* vminuxx128v8 */
  { 0x000000ffLL, }, /* vminuxxx128v8 */
  { 0x000000ffLL, }, /* vminu128v32 */
  { 0x000000ffLL, }, /* vminux128v32 */
  { 0x000000ffLL, }, /* vminuxx128v32 */
  { 0x000000ffLL, }, /* vminuxxx128v32 */
  { 0x000000ffLL, }, /* vminu128v16 */
  { 0x000000ffLL, }, /* vminux128v16 */
  { 0x000000ffLL, }, /* vminuxx128v16 */
  { 0x000000ffLL, }, /* vminuxxx128v16 */
  { 0x000000ffLL, }, /* vpmovmskb128 */
  { 0x000000ffLL, }, /* vpmovsxbd */
  { 0x000000ffLL, }, /* vpmovsxbdx */
  { 0x000000ffLL, }, /* vpmovsxbdxx */
  { 0x000000ffLL, }, /* vpmovsxbdxxx */
  { 0x000000ffLL, }, /* vpmovsxbq */
  { 0x000000ffLL, }, /* vpmovsxbqx */
  { 0x000000ffLL, }, /* vpmovsxbqxx */
  { 0x000000ffLL, }, /* vpmovsxbqxxx */
  { 0x000000ffLL, }, /* vpmovsxbw */
  { 0x000000ffLL, }, /* vpmovsxbwx */
  { 0x000000ffLL, }, /* vpmovsxbwxx */
  { 0x000000ffLL, }, /* vpmovsxbwxxx */
  { 0x000000ffLL, }, /* vpmovsxdq */
  { 0x000000ffLL, }, /* vpmovsxdqx */
  { 0x000000ffLL, }, /* vpmovsxdqxx */
  { 0x000000ffLL, }, /* vpmovsxdqxxx */
  { 0x000000ffLL, }, /* vpmovsxwd */
  { 0x000000ffLL, }, /* vpmovsxwdx */
  { 0x000000ffLL, }, /* vpmovsxwdxx */
  { 0x000000ffLL, }, /* vpmovsxwdxxx */
  { 0x000000ffLL, }, /* vpmovsxwq */
  { 0x000000ffLL, }, /* vpmovsxwqx */
  { 0x000000ffLL, }, /* vpmovsxwqxx */
  { 0x000000ffLL, }, /* vpmovsxwqxxx */
  { 0x000000ffLL, }, /* vpmovzxbd */
  { 0x000000ffLL, }, /* vpmovzxbdx */
  { 0x000000ffLL, }, /* vpmovzxbdxx */
  { 0x000000ffLL, }, /* vpmovzxbdxxx */
  { 0x000000ffLL, }, /* vpmovzxbq */
  { 0x000000ffLL, }, /* vpmovzxbqx */
  { 0x000000ffLL, }, /* vpmovzxbqxx */
  { 0x000000ffLL, }, /* vpmovzxbqxxx */
  { 0x000000ffLL, }, /* vpmovzxbw */
  { 0x000000ffLL, }, /* vpmovzxbwx */
  { 0x000000ffLL, }, /* vpmovzxbwxx */
  { 0x000000ffLL, }, /* vpmovzxbwxxx */
  { 0x000000ffLL, }, /* vpmovzxdq */
  { 0x000000ffLL, }, /* vpmovzxdqx */
  { 0x000000ffLL, }, /* vpmovzxdqxx */
  { 0x000000ffLL, }, /* vpmovzxdqxxx */
  { 0x000000ffLL, }, /* vpmovzxwd */
  { 0x000000ffLL, }, /* vpmovzxwdx */
  { 0x000000ffLL, }, /* vpmovzxwdxx */
  { 0x000000ffLL, }, /* vpmovzxwdxxx */
  { 0x000000ffLL, }, /* vpmovzxwq */
  { 0x000000ffLL, }, /* vpmovzxwqx */
  { 0x000000ffLL, }, /* vpmovzxwqxx */
  { 0x000000ffLL, }, /* vpmovzxwqxxx */
  { 0x000000ffLL, }, /* vmulhuw */
  { 0x000000ffLL, }, /* vmulhuwx */
  { 0x000000ffLL, }, /* vmulhuwxx */
  { 0x000000ffLL, }, /* vmulhuwxxx */
  { 0x000000ffLL, }, /* vmulhrsw */
  { 0x000000ffLL, }, /* vmulhrswx */
  { 0x000000ffLL, }, /* vmulhrswxx */
  { 0x000000ffLL, }, /* vmulhrswxxx */
  { 0x000000ffLL, }, /* vmulhw */
  { 0x000000ffLL, }, /* vmulhwx */
  { 0x000000ffLL, }, /* vmulhwxx */
  { 0x000000ffLL, }, /* vmulhwxxx */
  { 0x000000ffLL, }, /* vmulld */
  { 0x000000ffLL, }, /* vmulldx */
  { 0x000000ffLL, }, /* vmulldxx */
  { 0x000000ffLL, }, /* vmulldxxx */
  { 0x000000ffLL, }, /* vmul128v16 */
  { 0x000000ffLL, }, /* vmulx128v16 */
  { 0x000000ffLL, }, /* vmulxx128v16 */
  { 0x000000ffLL, }, /* vmulxxx128v16 */
  { 0x000000ffLL, }, /* vmul128v32 */
  { 0x000000ffLL, }, /* vmulx128v32 */
  { 0x000000ffLL, }, /* vmulxx128v32 */
  { 0x000000ffLL, }, /* vmulxxx128v32 */
  { 0x000000ffLL, }, /* vmuludq */
  { 0x000000ffLL, }, /* vmuludqx */
  { 0x000000ffLL, }, /* vmuludqxx */
  { 0x000000ffLL, }, /* vmuludqxxx */
  { 0x000000ffLL, }, /* vmuldq */
  { 0x000000ffLL, }, /* vmuldqx */
  { 0x000000ffLL, }, /* vmuldqxx */
  { 0x000000ffLL, }, /* vmuldqxxx */
  { 0x000000ffLL, }, /* vor128v8 */
  { 0x000000ffLL, }, /* vorx128v8 */
  { 0x000000ffLL, }, /* vorxx128v8 */
  { 0x000000ffLL, }, /* vorxxx128v8 */
  { 0x000000ffLL, }, /* vor128v16 */
  { 0x000000ffLL, }, /* vorx128v16 */
  { 0x000000ffLL, }, /* vorxx128v16 */
  { 0x000000ffLL, }, /* vorxxx128v16 */
  { 0x000000ffLL, }, /* vor128v32 */
  { 0x000000ffLL, }, /* vorx128v32 */
  { 0x000000ffLL, }, /* vorxx128v32 */
  { 0x000000ffLL, }, /* vorxxx128v32 */
  { 0x000000ffLL, }, /* vor128v64 */
  { 0x000000ffLL, }, /* vorx128v64 */
  { 0x000000ffLL, }, /* vorxx128v64 */
  { 0x000000ffLL, }, /* vorxxx128v64 */
  { 0x000000ffLL, }, /* vpsadbw */
  { 0x000000ffLL, }, /* vpsadbwx */
  { 0x000000ffLL, }, /* vpsadbwxx */
  { 0x000000ffLL, }, /* vpsadbwxxx */
  { 0x000000ffLL, }, /* vpshuf128v8 */
  { 0x000000ffLL, }, /* vpshufx128v8 */
  { 0x000000ffLL, }, /* vpshufxx128v8 */
  { 0x000000ffLL, }, /* vpshufxxx128v8 */
  { 0x000000ffLL, }, /* vpshuf128v32 */
  { 0x000000ffLL, }, /* vpshufx128v32 */
  { 0x000000ffLL, }, /* vpshufxx128v32 */
  { 0x000000ffLL, }, /* vpshufxxx128v32 */
  { 0x000000ffLL, }, /* vpshufw64v16 */
  { 0x000000ffLL, }, /* vpshufwx64v16 */
  { 0x000000ffLL, }, /* vpshufwxx64v16 */
  { 0x000000ffLL, }, /* vpshufwxxx64v16 */
  { 0x000000ffLL, }, /* vpshufhw */
  { 0x000000ffLL, }, /* vpshufhwx */
  { 0x000000ffLL, }, /* vpshufhwxx */
  { 0x000000ffLL, }, /* vpshufhwxxx */
  { 0x000000ffLL, }, /* vpshuflw */
  { 0x000000ffLL, }, /* vpshuflwx */
  { 0x000000ffLL, }, /* vpshuflwxx */
  { 0x000000ffLL, }, /* vpshuflwxxx */
  { 0x000000ffLL, }, /* vpsign128v8 */
  { 0x000000ffLL, }, /* vpsignx128v8 */
  { 0x000000ffLL, }, /* vpsignxx128v8 */
  { 0x000000ffLL, }, /* vpsignxxx128v8 */
  { 0x000000ffLL, }, /* vpsign128v32 */
  { 0x000000ffLL, }, /* vpsignx128v32 */
  { 0x000000ffLL, }, /* vpsignxx128v32 */
  { 0x000000ffLL, }, /* vpsignxxx128v32 */
  { 0x000000ffLL, }, /* vpsign128v16 */
  { 0x000000ffLL, }, /* vpsignx128v16 */
  { 0x000000ffLL, }, /* vpsignxx128v16 */
  { 0x000000ffLL, }, /* vpsignxxx128v16 */
  { 0x000000ffLL, }, /* vpslldq */
  { 0x000000ffLL, }, /* vpsrldq */
  { 0x000000ffLL, }, /* vpslld */
  { 0x000000ffLL, }, /* vpslldx */
  { 0x000000ffLL, }, /* vpslldxx */
  { 0x000000ffLL, }, /* vpslldxxx */
  { 0x000000ffLL, }, /* vpslldi */
  { 0x000000ffLL, }, /* vpsllq */
  { 0x000000ffLL, }, /* vpsllqx */
  { 0x000000ffLL, }, /* vpsllqxx */
  { 0x000000ffLL, }, /* vpsllqxxx */
  { 0x000000ffLL, }, /* vpsllqi */
  { 0x000000ffLL, }, /* vpsllw */
  { 0x000000ffLL, }, /* vpsllwx */
  { 0x000000ffLL, }, /* vpsllwxx */
  { 0x000000ffLL, }, /* vpsllwxxx */
  { 0x000000ffLL, }, /* vpsllwi */
  { 0x000000ffLL, }, /* vpsrad */
  { 0x000000ffLL, }, /* vpsradx */
  { 0x000000ffLL, }, /* vpsradxx */
  { 0x000000ffLL, }, /* vpsradxxx */
  { 0x000000ffLL, }, /* vpsradi */
  { 0x000000ffLL, }, /* vpsraw */
  { 0x000000ffLL, }, /* vpsrawx */
  { 0x000000ffLL, }, /* vpsrawxx */
  { 0x000000ffLL, }, /* vpsrawxxx */
  { 0x000000ffLL, }, /* vpsrawi */
  { 0x000000ffLL, }, /* vpsrld */
  { 0x000000ffLL, }, /* vpsrldx */
  { 0x000000ffLL, }, /* vpsrldxx */
  { 0x000000ffLL, }, /* vpsrldxxx */
  { 0x000000ffLL, }, /* vpsrldi */
  { 0x000000ffLL, }, /* vpsrlq */
  { 0x000000ffLL, }, /* vpsrlqx */
  { 0x000000ffLL, }, /* vpsrlqxx */
  { 0x000000ffLL, }, /* vpsrlqxxx */
  { 0x000000ffLL, }, /* vpsrlqi */
  { 0x000000ffLL, }, /* vpsrlw */
  { 0x000000ffLL, }, /* vpsrlwx */
  { 0x000000ffLL, }, /* vpsrlwxx */
  { 0x000000ffLL, }, /* vpsrlwxxx */
  { 0x000000ffLL, }, /* vpsrlwi */
  { 0x000000ffLL, }, /* vsub128v8 */
  { 0x000000ffLL, }, /* vsubx128v8 */
  { 0x000000ffLL, }, /* vsubxx128v8 */
  { 0x000000ffLL, }, /* vsubxxx128v8 */
  { 0x000000ffLL, }, /* vsub128v32 */
  { 0x000000ffLL, }, /* vsubx128v32 */
  { 0x000000ffLL, }, /* vsubxx128v32 */
  { 0x000000ffLL, }, /* vsubxxx128v32 */
  { 0x000000ffLL, }, /* vsub128v64 */
  { 0x000000ffLL, }, /* vsubx128v64 */
  { 0x000000ffLL, }, /* vsubxx128v64 */
  { 0x000000ffLL, }, /* vsubxxx128v64 */
  { 0x000000ffLL, }, /* vsub128v16 */
  { 0x000000ffLL, }, /* vsubx128v16 */
  { 0x000000ffLL, }, /* vsubxx128v16 */
  { 0x000000ffLL, }, /* vsubxxx128v16 */
  { 0x000000ffLL, }, /* vsubs128v8 */
  { 0x000000ffLL, }, /* vsubsx128v8 */
  { 0x000000ffLL, }, /* vsubsxx128v8 */
  { 0x000000ffLL, }, /* vsubsxxx128v8 */
  { 0x000000ffLL, }, /* vsubs128v16 */
  { 0x000000ffLL, }, /* vsubsx128v16 */
  { 0x000000ffLL, }, /* vsubsxx128v16 */
  { 0x000000ffLL, }, /* vsubsxxx128v16 */
  { 0x000000ffLL, }, /* vsubus128v8 */
  { 0x000000ffLL, }, /* vsubusx128v8 */
  { 0x000000ffLL, }, /* vsubusxx128v8 */
  { 0x000000ffLL, }, /* vsubusxxx128v8 */
  { 0x000000ffLL, }, /* vsubus128v16 */
  { 0x000000ffLL, }, /* vsubusx128v16 */
  { 0x000000ffLL, }, /* vsubusxx128v16 */
  { 0x000000ffLL, }, /* vsubusxxx128v16 */
  { 0x000000ffLL, }, /* vptest128 */
  { 0x000000ffLL, }, /* vptestx128 */
  { 0x000000ffLL, }, /* vptestxx128 */
  { 0x000000ffLL, }, /* vptestxxx128 */
  { 0x000000ffLL, }, /* vtestpd */
  { 0x000000ffLL, }, /* vtestxpd */
  { 0x000000ffLL, }, /* vtestxxpd */
  { 0x000000ffLL, }, /* vtestxxxpd */
  { 0x000000ffLL, }, /* vtestps */
  { 0x000000ffLL, }, /* vtestxps */
  { 0x000000ffLL, }, /* vtestxxps */
  { 0x000000ffLL, }, /* vtestxxxps */
  { 0x000000ffLL, }, /* vpunpckh64v8 */
  { 0x000000ffLL, }, /* vpunpckhx64v8 */
  { 0x000000ffLL, }, /* vpunpckhxx64v8 */
  { 0x000000ffLL, }, /* vpunpckhxxx64v8 */
  { 0x000000ffLL, }, /* vpunpckh64v32 */
  { 0x000000ffLL, }, /* vpunpckhx64v32 */
  { 0x000000ffLL, }, /* vpunpckhxx64v32 */
  { 0x000000ffLL, }, /* vpunpckhxxx64v32 */
  { 0x000000ffLL, }, /* vpunpckh64v16 */
  { 0x000000ffLL, }, /* vpunpckhx64v16 */
  { 0x000000ffLL, }, /* vpunpckhxx64v16 */
  { 0x000000ffLL, }, /* vpunpckhxxx64v16 */
  { 0x000000ffLL, }, /* vpunpckh64v64 */
  { 0x000000ffLL, }, /* vpunpckhx64v64 */
  { 0x000000ffLL, }, /* vpunpckhxx64v64 */
  { 0x000000ffLL, }, /* vpunpckhxxx64v64 */
  { 0x000000ffLL, }, /* vpunpckl64v8 */
  { 0x000000ffLL, }, /* vpunpcklx64v8 */
  { 0x000000ffLL, }, /* vpunpcklxx64v8 */
  { 0x000000ffLL, }, /* vpunpcklxxx64v8 */
  { 0x000000ffLL, }, /* vpunpckl64v32 */
  { 0x000000ffLL, }, /* vpunpcklx64v32 */
  { 0x000000ffLL, }, /* vpunpcklxx64v32 */
  { 0x000000ffLL, }, /* vpunpcklxxx64v32 */
  { 0x000000ffLL, }, /* vpunpckl64v16 */
  { 0x000000ffLL, }, /* vpunpcklx64v16 */
  { 0x000000ffLL, }, /* vpunpcklxx64v16 */
  { 0x000000ffLL, }, /* vpunpcklxxx64v16 */
  { 0x000000ffLL, }, /* vpunpckl64v64 */
  { 0x000000ffLL, }, /* vpunpcklx64v64 */
  { 0x000000ffLL, }, /* vpunpcklxx64v64 */
  { 0x000000ffLL, }, /* vpunpcklxxx64v64 */
  { 0x000000ffLL, }, /* vxor128v8 */
  { 0x000000ffLL, }, /* vxorx128v8 */
  { 0x000000ffLL, }, /* vxorxx128v8 */
  { 0x000000ffLL, }, /* vxorxxx128v8 */
  { 0x000000ffLL, }, /* vxor128v16 */
  { 0x000000ffLL, }, /* vxorx128v16 */
  { 0x000000ffLL, }, /* vxorxx128v16 */
  { 0x000000ffLL, }, /* vxorxxx128v16 */
  { 0x000000ffLL, }, /* vxor128v32 */
  { 0x000000ffLL, }, /* vxorx128v32 */
  { 0x000000ffLL, }, /* vxorxx128v32 */
  { 0x000000ffLL, }, /* vxorxxx128v32 */
  { 0x000000ffLL, }, /* vxor128v64 */
  { 0x000000ffLL, }, /* vxorx128v64 */
  { 0x000000ffLL, }, /* vxorxx128v64 */
  { 0x000000ffLL, }, /* vxorxxx128v64 */
  { 0x000000ffLL, }, /* vfrcp128v32 */
  { 0x000000ffLL, }, /* vfrcpx128v32 */
  { 0x000000ffLL, }, /* vfrcpxx128v32 */
  { 0x000000ffLL, }, /* vfrcpxxx128v32 */
  { 0x000000ffLL, }, /* vfrcpss */
  { 0x000000ffLL, }, /* vfrcpxss */
  { 0x000000ffLL, }, /* vfrcpxxss */
  { 0x000000ffLL, }, /* vfrcpxxxss */
  { 0x000000ffLL, }, /* vround128v64 */
  { 0x000000ffLL, }, /* vroundx128v64 */
  { 0x000000ffLL, }, /* vroundxx128v64 */
  { 0x000000ffLL, }, /* vroundxxx128v64 */
  { 0x000000ffLL, }, /* vround128v32 */
  { 0x000000ffLL, }, /* vroundx128v32 */
  { 0x000000ffLL, }, /* vroundxx128v32 */
  { 0x000000ffLL, }, /* vroundxxx128v32 */
  { 0x000000ffLL, }, /* vroundsd */
  { 0x000000ffLL, }, /* vroundxsd */
  { 0x000000ffLL, }, /* vroundxxsd */
  { 0x000000ffLL, }, /* vroundxxxsd */
  { 0x000000ffLL, }, /* vroundss */
  { 0x000000ffLL, }, /* vroundxss */
  { 0x000000ffLL, }, /* vroundxxss */
  { 0x000000ffLL, }, /* vroundxxxss */
  { 0x000000ffLL, }, /* vfrsqrt128v32 */
  { 0x000000ffLL, }, /* vfrsqrtx128v32 */
  { 0x000000ffLL, }, /* vfrsqrtxx128v32 */
  { 0x000000ffLL, }, /* vfrsqrtxxx128v32 */
  { 0x000000ffLL, }, /* vfrsqrtss */
  { 0x000000ffLL, }, /* vfrsqrtxss */
  { 0x000000ffLL, }, /* vfrsqrtxxss */
  { 0x000000ffLL, }, /* vfrsqrtxxxss */
  { 0x000000ffLL, }, /* vshufpd */
  { 0x000000ffLL, }, /* vfshuf128v64 */
  { 0x000000ffLL, }, /* vfshufx128v64 */
  { 0x000000ffLL, }, /* vfshufxx128v64 */
  { 0x000000ffLL, }, /* vfshufxxx128v64 */
  { 0x000000ffLL, }, /* vshufps */
  { 0x000000ffLL, }, /* vfshuf128v32 */
  { 0x000000ffLL, }, /* vfshufx128v32 */
  { 0x000000ffLL, }, /* vfshufxx128v32 */
  { 0x000000ffLL, }, /* vfshufxxx128v32 */
  { 0x000000ffLL, }, /* vfsqrt128v64 */
  { 0x000000ffLL, }, /* vfsqrtx128v64 */
  { 0x000000ffLL, }, /* vfsqrtxx128v64 */
  { 0x000000ffLL, }, /* vfsqrtxxx128v64 */
  { 0x000000ffLL, }, /* vfsqrt128v32 */
  { 0x000000ffLL, }, /* vfsqrtx128v32 */
  { 0x000000ffLL, }, /* vfsqrtxx128v32 */
  { 0x000000ffLL, }, /* vfsqrtxxx128v32 */
  { 0x000000ffLL, }, /* vfsqrtsd */
  { 0x000000ffLL, }, /* vfsqrtxsd */
  { 0x000000ffLL, }, /* vfsqrtxxsd */
  { 0x000000ffLL, }, /* vfsqrtxxxsd */
  { 0x000000ffLL, }, /* vfsqrtss */
  { 0x000000ffLL, }, /* vfsqrtxss */
  { 0x000000ffLL, }, /* vfsqrtxxss */
  { 0x000000ffLL, }, /* vfsqrtxxxss */
  { 0x000000ffLL, }, /* vstmxcsr */
  { 0x000000ffLL, }, /* vfsub128v64 */
  { 0x000000ffLL, }, /* vfsubx128v64 */
  { 0x000000ffLL, }, /* vfsubxx128v64 */
  { 0x000000ffLL, }, /* vfsubxxx128v64 */
  { 0x000000ffLL, }, /* vfsub128v32 */
  { 0x000000ffLL, }, /* vfsubx128v32 */
  { 0x000000ffLL, }, /* vfsubxx128v32 */
  { 0x000000ffLL, }, /* vfsubxxx128v32 */
  { 0x000000ffLL, }, /* vsubsd */
  { 0x000000ffLL, }, /* vsubxsd */
  { 0x000000ffLL, }, /* vsubxxsd */
  { 0x000000ffLL, }, /* vsubxxxsd */
  { 0x000000ffLL, }, /* vsubss */
  { 0x000000ffLL, }, /* vsubxss */
  { 0x000000ffLL, }, /* vsubxxss */
  { 0x000000ffLL, }, /* vsubxxxss */
  { 0x000000ffLL, }, /* vucomisd */
  { 0x000000ffLL, }, /* vucomixsd */
  { 0x000000ffLL, }, /* vucomixxsd */
  { 0x000000ffLL, }, /* vucomixxxsd */
  { 0x000000ffLL, }, /* vucomiss */
  { 0x000000ffLL, }, /* vucomixss */
  { 0x000000ffLL, }, /* vucomixxss */
  { 0x000000ffLL, }, /* vucomixxxss */
  { 0x000000ffLL, }, /* vunpckh128v64 */
  { 0x000000ffLL, }, /* vunpckhx128v64 */
  { 0x000000ffLL, }, /* vunpckhxx128v64 */
  { 0x000000ffLL, }, /* vunpckhxxx128v64 */
  { 0x000000ffLL, }, /* vunpckh128v32 */
  { 0x000000ffLL, }, /* vunpckhx128v32 */
  { 0x000000ffLL, }, /* vunpckhxx128v32 */
  { 0x000000ffLL, }, /* vunpckhxxx128v32 */
  { 0x000000ffLL, }, /* vunpckl128v64 */
  { 0x000000ffLL, }, /* vunpcklx128v64 */
  { 0x000000ffLL, }, /* vunpcklxx128v64 */
  { 0x000000ffLL, }, /* vunpcklxxx128v64 */
  { 0x000000ffLL, }, /* vunpckl128v32 */
  { 0x000000ffLL, }, /* vunpcklx128v32 */
  { 0x000000ffLL, }, /* vunpcklxx128v32 */
  { 0x000000ffLL, }, /* vunpcklxxx128v32 */
  { 0x000000ffLL, }, /* vxorpd */
  { 0x000000ffLL, }, /* vfxor128v64 */
  { 0x000000ffLL, }, /* vfxorx128v64 */
  { 0x000000ffLL, }, /* vfxorxx128v64 */
  { 0x000000ffLL, }, /* vfxorxxx128v64 */
  { 0x000000ffLL, }, /* vxzero128v64 */
  { 0x000000ffLL, }, /* vxzero64 */
  { 0x000000ffLL, }, /* vxorps */
  { 0x000000ffLL, }, /* vfxor128v32 */
  { 0x000000ffLL, }, /* vfxorx128v32 */
  { 0x000000ffLL, }, /* vfxorxx128v32 */
  { 0x000000ffLL, }, /* vfxorxxx128v32 */
  { 0x000000ffLL, }, /* vxzero128v32 */
  { 0x000000ffLL, }, /* vxzero32 */
  { 0x000000ffLL, }, /* vzeroall */
  { 0x000000ffLL, }, /* xfmadd132pd */
  { 0x000000ffLL, }, /* xfmadd132xpd */
  { 0x000000ffLL, }, /* xfmadd132xxpd */
  { 0x000000ffLL, }, /* xfmadd132xxxpd */
  { 0x000000ffLL, }, /* xfmadd213pd */
  { 0x000000ffLL, }, /* xfmadd213xpd */
  { 0x000000ffLL, }, /* xfmadd213xxpd */
  { 0x000000ffLL, }, /* xfmadd213xxxpd */
  { 0x000000ffLL, }, /* xfmadd231pd */
  { 0x000000ffLL, }, /* xfmadd231xpd */
  { 0x000000ffLL, }, /* xfmadd231xxpd */
  { 0x000000ffLL, }, /* xfmadd231xxxpd */
  { 0x000000ffLL, }, /* xfmadd132ps */
  { 0x000000ffLL, }, /* xfmadd132xps */
  { 0x000000ffLL, }, /* xfmadd132xxps */
  { 0x000000ffLL, }, /* xfmadd132xxxps */
  { 0x000000ffLL, }, /* xfmadd213ps */
  { 0x000000ffLL, }, /* xfmadd213xps */
  { 0x000000ffLL, }, /* xfmadd213xxps */
  { 0x000000ffLL, }, /* xfmadd213xxxps */
  { 0x000000ffLL, }, /* xfmadd231ps */
  { 0x000000ffLL, }, /* xfmadd231xps */
  { 0x000000ffLL, }, /* xfmadd231xxps */
  { 0x000000ffLL, }, /* xfmadd231xxxps */
  { 0x000000ffLL, }, /* xfmadd132sd */
  { 0x000000ffLL, }, /* xfmadd132xsd */
  { 0x000000ffLL, }, /* xfmadd132xxsd */
  { 0x000000ffLL, }, /* xfmadd132xxxsd */
  { 0x000000ffLL, }, /* xfmadd213sd */
  { 0x000000ffLL, }, /* xfmadd213xsd */
  { 0x000000ffLL, }, /* xfmadd213xxsd */
  { 0x000000ffLL, }, /* xfmadd213xxxsd */
  { 0x000000ffLL, }, /* xfmadd231sd */
  { 0x000000ffLL, }, /* xfmadd231xsd */
  { 0x000000ffLL, }, /* xfmadd231xxsd */
  { 0x000000ffLL, }, /* xfmadd231xxxsd */
  { 0x000000ffLL, }, /* xfmadd132ss */
  { 0x000000ffLL, }, /* xfmadd132xss */
  { 0x000000ffLL, }, /* xfmadd132xxss */
  { 0x000000ffLL, }, /* xfmadd132xxxss */
  { 0x000000ffLL, }, /* xfmadd213ss */
  { 0x000000ffLL, }, /* xfmadd213xss */
  { 0x000000ffLL, }, /* xfmadd213xxss */
  { 0x000000ffLL, }, /* xfmadd213xxxss */
  { 0x000000ffLL, }, /* xfmadd231ss */
  { 0x000000ffLL, }, /* xfmadd231xss */
  { 0x000000ffLL, }, /* xfmadd231xxss */
  { 0x000000ffLL, }, /* xfmadd231xxxss */
  { 0x000000ffLL, }, /* xfmaddsub132pd */
  { 0x000000ffLL, }, /* xfmaddsub132xpd */
  { 0x000000ffLL, }, /* xfmaddsub132xxpd */
  { 0x000000ffLL, }, /* xfmaddsub132xxxpd */
  { 0x000000ffLL, }, /* xfmaddsub213pd */
  { 0x000000ffLL, }, /* xfmaddsub213xpd */
  { 0x000000ffLL, }, /* xfmaddsub213xxpd */
  { 0x000000ffLL, }, /* xfmaddsub213xxxpd */
  { 0x000000ffLL, }, /* xfmaddsub231pd */
  { 0x000000ffLL, }, /* xfmaddsub231xpd */
  { 0x000000ffLL, }, /* xfmaddsub231xxpd */
  { 0x000000ffLL, }, /* xfmaddsub231xxxpd */
  { 0x000000ffLL, }, /* xfmaddsub132ps */
  { 0x000000ffLL, }, /* xfmaddsub132xps */
  { 0x000000ffLL, }, /* xfmaddsub132xxps */
  { 0x000000ffLL, }, /* xfmaddsub132xxxps */
  { 0x000000ffLL, }, /* xfmaddsub213ps */
  { 0x000000ffLL, }, /* xfmaddsub213xps */
  { 0x000000ffLL, }, /* xfmaddsub213xxps */
  { 0x000000ffLL, }, /* xfmaddsub213xxxps */
  { 0x000000ffLL, }, /* xfmaddsub231ps */
  { 0x000000ffLL, }, /* xfmaddsub231xps */
  { 0x000000ffLL, }, /* xfmaddsub231xxps */
  { 0x000000ffLL, }, /* xfmaddsub231xxxps */
  { 0x000000ffLL, }, /* xfmsubadd132pd */
  { 0x000000ffLL, }, /* xfmsubadd132xpd */
  { 0x000000ffLL, }, /* xfmsubadd132xxpd */
  { 0x000000ffLL, }, /* xfmsubadd132xxxpd */
  { 0x000000ffLL, }, /* xfmsubadd213pd */
  { 0x000000ffLL, }, /* xfmsubadd213xpd */
  { 0x000000ffLL, }, /* xfmsubadd213xxpd */
  { 0x000000ffLL, }, /* xfmsubadd213xxxpd */
  { 0x000000ffLL, }, /* xfmsubadd231pd */
  { 0x000000ffLL, }, /* xfmsubadd231xpd */
  { 0x000000ffLL, }, /* xfmsubadd231xxpd */
  { 0x000000ffLL, }, /* xfmsubadd231xxxpd */
  { 0x000000ffLL, }, /* xfmsubadd132ps */
  { 0x000000ffLL, }, /* xfmsubadd132xps */
  { 0x000000ffLL, }, /* xfmsubadd132xxps */
  { 0x000000ffLL, }, /* xfmsubadd132xxxps */
  { 0x000000ffLL, }, /* xfmsubadd213ps */
  { 0x000000ffLL, }, /* xfmsubadd213xps */
  { 0x000000ffLL, }, /* xfmsubadd213xxps */
  { 0x000000ffLL, }, /* xfmsubadd213xxxps */
  { 0x000000ffLL, }, /* xfmsubadd231ps */
  { 0x000000ffLL, }, /* xfmsubadd231xps */
  { 0x000000ffLL, }, /* xfmsubadd231xxps */
  { 0x000000ffLL, }, /* xfmsubadd231xxxps */
  { 0x000000ffLL, }, /* xfmsub132pd */
  { 0x000000ffLL, }, /* xfmsub132xpd */
  { 0x000000ffLL, }, /* xfmsub132xxpd */
  { 0x000000ffLL, }, /* xfmsub132xxxpd */
  { 0x000000ffLL, }, /* xfmsub213pd */
  { 0x000000ffLL, }, /* xfmsub213xpd */
  { 0x000000ffLL, }, /* xfmsub213xxpd */
  { 0x000000ffLL, }, /* xfmsub213xxxpd */
  { 0x000000ffLL, }, /* xfmsub231pd */
  { 0x000000ffLL, }, /* xfmsub231xpd */
  { 0x000000ffLL, }, /* xfmsub231xxpd */
  { 0x000000ffLL, }, /* xfmsub231xxxpd */
  { 0x000000ffLL, }, /* xfmsub132ps */
  { 0x000000ffLL, }, /* xfmsub132xps */
  { 0x000000ffLL, }, /* xfmsub132xxps */
  { 0x000000ffLL, }, /* xfmsub132xxxps */
  { 0x000000ffLL, }, /* xfmsub213ps */
  { 0x000000ffLL, }, /* xfmsub213xps */
  { 0x000000ffLL, }, /* xfmsub213xxps */
  { 0x000000ffLL, }, /* xfmsub213xxxps */
  { 0x000000ffLL, }, /* xfmsub231ps */
  { 0x000000ffLL, }, /* xfmsub231xps */
  { 0x000000ffLL, }, /* xfmsub231xxps */
  { 0x000000ffLL, }, /* xfmsub231xxxps */
  { 0x000000ffLL, }, /* xfmsub132sd */
  { 0x000000ffLL, }, /* xfmsub132xsd */
  { 0x000000ffLL, }, /* xfmsub132xxsd */
  { 0x000000ffLL, }, /* xfmsub132xxxsd */
  { 0x000000ffLL, }, /* xfmsub213sd */
  { 0x000000ffLL, }, /* xfmsub213xsd */
  { 0x000000ffLL, }, /* xfmsub213xxsd */
  { 0x000000ffLL, }, /* xfmsub213xxxsd */
  { 0x000000ffLL, }, /* xfmsub231sd */
  { 0x000000ffLL, }, /* xfmsub231xsd */
  { 0x000000ffLL, }, /* xfmsub231xxsd */
  { 0x000000ffLL, }, /* xfmsub231xxxsd */
  { 0x000000ffLL, }, /* xfmsub132ss */
  { 0x000000ffLL, }, /* xfmsub132xss */
  { 0x000000ffLL, }, /* xfmsub132xxss */
  { 0x000000ffLL, }, /* xfmsub132xxxss */
  { 0x000000ffLL, }, /* xfmsub213ss */
  { 0x000000ffLL, }, /* xfmsub213xss */
  { 0x000000ffLL, }, /* xfmsub213xxss */
  { 0x000000ffLL, }, /* xfmsub213xxxss */
  { 0x000000ffLL, }, /* xfmsub231ss */
  { 0x000000ffLL, }, /* xfmsub231xss */
  { 0x000000ffLL, }, /* xfmsub231xxss */
  { 0x000000ffLL, }, /* xfmsub231xxxss */
  { 0x000000ffLL, }, /* xfnmadd132pd */
  { 0x000000ffLL, }, /* xfnmadd132xpd */
  { 0x000000ffLL, }, /* xfnmadd132xxpd */
  { 0x000000ffLL, }, /* xfnmadd132xxxpd */
  { 0x000000ffLL, }, /* xfnmadd213pd */
  { 0x000000ffLL, }, /* xfnmadd213xpd */
  { 0x000000ffLL, }, /* xfnmadd213xxpd */
  { 0x000000ffLL, }, /* xfnmadd213xxxpd */
  { 0x000000ffLL, }, /* xfnmadd231pd */
  { 0x000000ffLL, }, /* xfnmadd231xpd */
  { 0x000000ffLL, }, /* xfnmadd231xxpd */
  { 0x000000ffLL, }, /* xfnmadd231xxxpd */
  { 0x000000ffLL, }, /* xfnmadd132ps */
  { 0x000000ffLL, }, /* xfnmadd132xps */
  { 0x000000ffLL, }, /* xfnmadd132xxps */
  { 0x000000ffLL, }, /* xfnmadd132xxxps */
  { 0x000000ffLL, }, /* xfnmadd213ps */
  { 0x000000ffLL, }, /* xfnmadd213xps */
  { 0x000000ffLL, }, /* xfnmadd213xxps */
  { 0x000000ffLL, }, /* xfnmadd213xxxps */
  { 0x000000ffLL, }, /* xfnmadd231ps */
  { 0x000000ffLL, }, /* xfnmadd231xps */
  { 0x000000ffLL, }, /* xfnmadd231xxps */
  { 0x000000ffLL, }, /* xfnmadd231xxxps */
  { 0x000000ffLL, }, /* xfnmadd132sd */
  { 0x000000ffLL, }, /* xfnmadd132xsd */
  { 0x000000ffLL, }, /* xfnmadd132xxsd */
  { 0x000000ffLL, }, /* xfnmadd132xxxsd */
  { 0x000000ffLL, }, /* xfnmadd213sd */
  { 0x000000ffLL, }, /* xfnmadd213xsd */
  { 0x000000ffLL, }, /* xfnmadd213xxsd */
  { 0x000000ffLL, }, /* xfnmadd213xxxsd */
  { 0x000000ffLL, }, /* xfnmadd231sd */
  { 0x000000ffLL, }, /* xfnmadd231xsd */
  { 0x000000ffLL, }, /* xfnmadd231xxsd */
  { 0x000000ffLL, }, /* xfnmadd231xxxsd */
  { 0x000000ffLL, }, /* xfnmadd132ss */
  { 0x000000ffLL, }, /* xfnmadd132xss */
  { 0x000000ffLL, }, /* xfnmadd132xxss */
  { 0x000000ffLL, }, /* xfnmadd132xxxss */
  { 0x000000ffLL, }, /* xfnmadd213ss */
  { 0x000000ffLL, }, /* xfnmadd213xss */
  { 0x000000ffLL, }, /* xfnmadd213xxss */
  { 0x000000ffLL, }, /* xfnmadd213xxxss */
  { 0x000000ffLL, }, /* xfnmadd231ss */
  { 0x000000ffLL, }, /* xfnmadd231xss */
  { 0x000000ffLL, }, /* xfnmadd231xxss */
  { 0x000000ffLL, }, /* xfnmadd231xxxss */
  { 0x000000ffLL, }, /* xfnmsub132pd */
  { 0x000000ffLL, }, /* xfnmsub132xpd */
  { 0x000000ffLL, }, /* xfnmsub132xxpd */
  { 0x000000ffLL, }, /* xfnmsub132xxxpd */
  { 0x000000ffLL, }, /* xfnmsub213pd */
  { 0x000000ffLL, }, /* xfnmsub213xpd */
  { 0x000000ffLL, }, /* xfnmsub213xxpd */
  { 0x000000ffLL, }, /* xfnmsub213xxxpd */
  { 0x000000ffLL, }, /* xfnmsub231pd */
  { 0x000000ffLL, }, /* xfnmsub231xpd */
  { 0x000000ffLL, }, /* xfnmsub231xxpd */
  { 0x000000ffLL, }, /* xfnmsub231xxxpd */
  { 0x000000ffLL, }, /* xfnmsub132ps */
  { 0x000000ffLL, }, /* xfnmsub132xps */
  { 0x000000ffLL, }, /* xfnmsub132xxps */
  { 0x000000ffLL, }, /* xfnmsub132xxxps */
  { 0x000000ffLL, }, /* xfnmsub213ps */
  { 0x000000ffLL, }, /* xfnmsub213xps */
  { 0x000000ffLL, }, /* xfnmsub213xxps */
  { 0x000000ffLL, }, /* xfnmsub213xxxps */
  { 0x000000ffLL, }, /* xfnmsub231ps */
  { 0x000000ffLL, }, /* xfnmsub231xps */
  { 0x000000ffLL, }, /* xfnmsub231xxps */
  { 0x000000ffLL, }, /* xfnmsub231xxxps */
  { 0x000000ffLL, }, /* xfnmsub132sd */
  { 0x000000ffLL, }, /* xfnmsub132xsd */
  { 0x000000ffLL, }, /* xfnmsub132xxsd */
  { 0x000000ffLL, }, /* xfnmsub132xxxsd */
  { 0x000000ffLL, }, /* xfnmsub213sd */
  { 0x000000ffLL, }, /* xfnmsub213xsd */
  { 0x000000ffLL, }, /* xfnmsub213xxsd */
  { 0x000000ffLL, }, /* xfnmsub213xxxsd */
  { 0x000000ffLL, }, /* xfnmsub231sd */
  { 0x000000ffLL, }, /* xfnmsub231xsd */
  { 0x000000ffLL, }, /* xfnmsub231xxsd */
  { 0x000000ffLL, }, /* xfnmsub231xxxsd */
  { 0x000000ffLL, }, /* xfnmsub132ss */
  { 0x000000ffLL, }, /* xfnmsub132xss */
  { 0x000000ffLL, }, /* xfnmsub132xxss */
  { 0x000000ffLL, }, /* xfnmsub132xxxss */
  { 0x000000ffLL, }, /* xfnmsub213ss */
  { 0x000000ffLL, }, /* xfnmsub213xss */
  { 0x000000ffLL, }, /* xfnmsub213xxss */
  { 0x000000ffLL, }, /* xfnmsub213xxxss */
  { 0x000000ffLL, }, /* xfnmsub231ss */
  { 0x000000ffLL, }, /* xfnmsub231xss */
  { 0x000000ffLL, }, /* xfnmsub231xxss */
  { 0x000000ffLL, }, /* xfnmsub231xxxss */
  { 0x000000ffLL, }, /* movabsq */
  { 0x000000ffLL, }, /* store8_abs */
  { 0x000000ffLL, }, /* store16_abs */
  { 0x000000ffLL, }, /* store32_abs */
  { 0x000000ffLL, }, /* store64_abs */
  { 0x000000ffLL, }, /* ld8_abs */
  { 0x000000ffLL, }, /* ld16_abs */
  { 0x000000ffLL, }, /* ld32_abs */
  { 0x000000ffLL, }, /* ld64_abs */
  { 0x000000ffLL, }, /* lock_add32 */
  { 0x000000ffLL, }, /* lock_adc32 */
  { 0x000000ffLL, }, /* lock_add64 */
  { 0x000000ffLL, }, /* lock_xchg32 */
  { 0x000000ffLL, }, /* lock_xchg64 */
  { 0x000000ffLL, }, /* lock_cmpxchg32 */
  { 0x000000ffLL, }, /* lock_cmpxchg64 */
  { 0x000000ffLL, }, /* lock_and32 */
  { 0x000000ffLL, }, /* lock_and64 */
  { 0x000000ffLL, }, /* lock_or32 */
  { 0x000000ffLL, }, /* lock_or64 */
  { 0x000000ffLL, }, /* lock_xor32 */
  { 0x000000ffLL, }, /* lock_xor64 */
  { 0x000000ffLL, }, /* lock_sub32 */
  { 0x000000ffLL, }, /* lock_sub64 */
  { 0x000000ffLL, }, /* lock_add8 */
  { 0x000000ffLL, }, /* lock_add16 */
  { 0x000000ffLL, }, /* lock_xchg8 */
  { 0x000000ffLL, }, /* lock_xchg16 */
  { 0x000000ffLL, }, /* lock_cmpxchg8 */
  { 0x000000ffLL, }, /* lock_cmpxchg16 */
  { 0x000000ffLL, }, /* lock_and8 */
  { 0x000000ffLL, }, /* lock_and16 */
  { 0x000000ffLL, }, /* lock_or8 */
  { 0x000000ffLL, }, /* lock_or16 */
  { 0x000000ffLL, }, /* lock_xor8 */
  { 0x000000ffLL, }, /* lock_xor16 */
  { 0x000000ffLL, }, /* lock_sub8 */
  { 0x000000ffLL, }, /* lock_sub16 */
  { 0x000000ffLL, }, /* lock_xadd8 */
  { 0x000000ffLL, }, /* lock_xadd16 */
  { 0x000000ffLL, }, /* lock_xadd32 */
  { 0x000000ffLL, }, /* lock_xadd64 */
  { 0x000000ffLL, }, /* bsf32 */
  { 0x000000ffLL, }, /* bsf64 */
  { 0x000000ffLL, }, /* bsr32 */
  { 0x000000ffLL, }, /* bsr64 */
  { 0x000000ffLL, }, /* tls_global_dynamic_64 */
  { 0x000000ffLL, }, /* tls_global_dynamic_32 */
  { 0x000000ffLL, }, /* tls_local_dynamic_64 */
  { 0x000000ffLL, }, /* tls_local_dynamic_32 */
  { 0x00000000LL, }, /* begin_pregtn */
  { 0x00000000LL, }, /* end_pregtn */
  { 0x00000000LL, }, /* bwd_bar */
  { 0x00000000LL, }, /* fwd_bar */
  { 0x00000000LL, }, /* label */
  { 0x000000ffLL, }, /* nop */
  { 0x00000000LL, }, /* noop */
};

const ISA_PACK_ADJ_INFO ISA_PACK_adj_info[] = {
  { {  0,  0 }, -1 },  /* [ 0]: ISA_PACK_ADJ_END */
};

const mUINT8 ISA_PACK_adj_info_index[] = {
   0,  /* add32 */
   0,  /* adc32 */
   0,  /* add64 */
   0,  /* addx32 */
   0,  /* addxx32 */
   0,  /* addxxx32 */
   0,  /* addx64 */
   0,  /* addxx64 */
   0,  /* addxxx64 */
   0,  /* addi32 */
   0,  /* adci32 */
   0,  /* addi64 */
   0,  /* add128v8 */
   0,  /* addx128v8 */
   0,  /* addxx128v8 */
   0,  /* addxxx128v8 */
   0,  /* add128v16 */
   0,  /* addx128v16 */
   0,  /* addxx128v16 */
   0,  /* addxxx128v16 */
   0,  /* add128v32 */
   0,  /* addx128v32 */
   0,  /* addxx128v32 */
   0,  /* addxxx128v32 */
   0,  /* add128v64 */
   0,  /* addx128v64 */
   0,  /* addxx128v64 */
   0,  /* addxxx128v64 */
   0,  /* add64v8 */
   0,  /* add64v16 */
   0,  /* add64v32 */
   0,  /* paddsb */
   0,  /* paddsw */
   0,  /* paddq */
   0,  /* psubsb */
   0,  /* psubsw */
   0,  /* psubq */
   0,  /* paddusb */
   0,  /* paddusw */
   0,  /* psubusb */
   0,  /* psubusw */
   0,  /* pmullw */
   0,  /* pmulhw */
   0,  /* pmulhuw */
   0,  /* pmuludq */
   0,  /* pmaddwd */
   0,  /* paddsb128 */
   0,  /* paddsw128 */
   0,  /* paddq128 */
   0,  /* psubsb128 */
   0,  /* psubsw128 */
   0,  /* psubq128 */
   0,  /* paddusb128 */
   0,  /* paddusw128 */
   0,  /* psubusb128 */
   0,  /* psubusw128 */
   0,  /* pmullw128 */
   0,  /* pmulhw128 */
   0,  /* pmulhuw128 */
   0,  /* pmuludq128 */
   0,  /* pmaddwd128 */
   0,  /* and8 */
   0,  /* and16 */
   0,  /* and32 */
   0,  /* andx32 */
   0,  /* andxx32 */
   0,  /* andxxx32 */
   0,  /* and64 */
   0,  /* andx64 */
   0,  /* andxx64 */
   0,  /* andxxx64 */
   0,  /* andx8 */
   0,  /* andx16 */
   0,  /* andxx8 */
   0,  /* andxxx8 */
   0,  /* andxx16 */
   0,  /* andxxx16 */
   0,  /* and128v8 */
   0,  /* andx128v8 */
   0,  /* andxx128v8 */
   0,  /* andxxx128v8 */
   0,  /* and128v16 */
   0,  /* andx128v16 */
   0,  /* andxx128v16 */
   0,  /* andxxx128v16 */
   0,  /* and128v32 */
   0,  /* andx128v32 */
   0,  /* andxx128v32 */
   0,  /* andxxx128v32 */
   0,  /* and128v64 */
   0,  /* andx128v64 */
   0,  /* andxx128v64 */
   0,  /* andxxx128v64 */
   0,  /* andi32 */
   0,  /* andi64 */
   0,  /* call */
   0,  /* icall */
   0,  /* icallx */
   0,  /* icallxx */
   0,  /* icallxxx */
   0,  /* cmp8 */
   0,  /* cmpx8 */
   0,  /* cmpxx8 */
   0,  /* cmpxxx8 */
   0,  /* cmp16 */
   0,  /* cmpx16 */
   0,  /* cmpxx16 */
   0,  /* cmpxxx16 */
   0,  /* cmp32 */
   0,  /* cmpx32 */
   0,  /* cmpxx32 */
   0,  /* cmpxxx32 */
   0,  /* cmp64 */
   0,  /* cmpx64 */
   0,  /* cmpxx64 */
   0,  /* cmpxxx64 */
   0,  /* cmpi8 */
   0,  /* cmpxr8 */
   0,  /* cmpxi8 */
   0,  /* cmpxxr8 */
   0,  /* cmpxxi8 */
   0,  /* cmpxxxr8 */
   0,  /* cmpxxxi8 */
   0,  /* cmpi16 */
   0,  /* cmpxr16 */
   0,  /* cmpxi16 */
   0,  /* cmpxxr16 */
   0,  /* cmpxxi16 */
   0,  /* cmpxxxr16 */
   0,  /* cmpxxxi16 */
   0,  /* cmpi32 */
   0,  /* cmpxr32 */
   0,  /* cmpxi32 */
   0,  /* cmpxxr32 */
   0,  /* cmpxxi32 */
   0,  /* cmpxxxr32 */
   0,  /* cmpxxxi32 */
   0,  /* cmpi64 */
   0,  /* cmpxr64 */
   0,  /* cmpxi64 */
   0,  /* cmpxxr64 */
   0,  /* cmpxxi64 */
   0,  /* cmpxxxr64 */
   0,  /* cmpxxxi64 */
   0,  /* cmovb */
   0,  /* cmovae */
   0,  /* cmovp */
   0,  /* cmovnp */
   0,  /* cmove */
   0,  /* cmovne */
   0,  /* cmovbe */
   0,  /* cmova */
   0,  /* cmovl */
   0,  /* cmovge */
   0,  /* cmovle */
   0,  /* cmovg */
   0,  /* cmovs */
   0,  /* cmovns */
   0,  /* div32 */
   0,  /* div64 */
   0,  /* enter */
   0,  /* idiv32 */
   0,  /* idiv64 */
   0,  /* imul32 */
   0,  /* imulx32 */
   0,  /* imul64 */
   0,  /* imuli32 */
   0,  /* imuli64 */
   0,  /* imulx64 */
   0,  /* mul128v16 */
   0,  /* inc8 */
   0,  /* dec8 */
   0,  /* inc16 */
   0,  /* dec16 */
   0,  /* inc32 */
   0,  /* dec32 */
   0,  /* inc64 */
   0,  /* dec64 */
   0,  /* jb */
   0,  /* jae */
   0,  /* jp */
   0,  /* jnp */
   0,  /* je */
   0,  /* jne */
   0,  /* jbe */
   0,  /* ja */
   0,  /* jl */
   0,  /* jge */
   0,  /* jle */
   0,  /* jg */
   0,  /* jcxz */
   0,  /* jecxz */
   0,  /* jrcxz */
   0,  /* js */
   0,  /* jns */
   0,  /* jmp */
   0,  /* ijmp */
   0,  /* ijmpx */
   0,  /* ijmpxx */
   0,  /* ijmpxxx */
   0,  /* ld64 */
   0,  /* ldx64 */
   0,  /* ldxx64 */
   0,  /* ld64_2m */
   0,  /* ld64_2sse */
   0,  /* lea32 */
   0,  /* lea64 */
   0,  /* leax32 */
   0,  /* leax64 */
   0,  /* leaxx32 */
   0,  /* leaxx64 */
   0,  /* leave */
   0,  /* ldc32 */
   0,  /* ldc64 */
   0,  /* mul32 */
   0,  /* mulx64 */
   0,  /* mov32 */
   0,  /* mov64 */
   0,  /* mov64_m */
   0,  /* ld32_64_off */
   0,  /* ld64_off */
   0,  /* store64_off */
   0,  /* ld8_32_n32 */
   0,  /* ldu8_32_n32 */
   0,  /* ld16_32_n32 */
   0,  /* ldu16_32_n32 */
   0,  /* ld32_n32 */
   0,  /* ldss_n32 */
   0,  /* ldsd_n32 */
   0,  /* ldaps_n32 */
   0,  /* ldapd_n32 */
   0,  /* ldups_n32 */
   0,  /* ldupd_n32 */
   0,  /* lddqa_n32 */
   0,  /* lddqu_n32 */
   0,  /* ldlps_n32 */
   0,  /* ldlpd_n32 */
   0,  /* ldhps_n32 */
   0,  /* ldhpd_n32 */
   0,  /* ld64_2m_n32 */
   0,  /* ld64_2sse_n32 */
   0,  /* store8_n32 */
   0,  /* store16_n32 */
   0,  /* store32_n32 */
   0,  /* stss_n32 */
   0,  /* stsd_n32 */
   0,  /* staps_n32 */
   0,  /* stapd_n32 */
   0,  /* stdqa_n32 */
   0,  /* stdqu_n32 */
   0,  /* stlps_n32 */
   0,  /* sthps_n32 */
   0,  /* stlpd_n32 */
   0,  /* sthpd_n32 */
   0,  /* store64_fm_n32 */
   0,  /* store64_fsse_n32 */
   0,  /* ld32_gs_seg_off */
   0,  /* ld64_fs_seg_off */
   0,  /* movsbl */
   0,  /* ld8_32 */
   0,  /* ldx8_32 */
   0,  /* ldxx8_32 */
   0,  /* movzbl */
   0,  /* ldu8_32 */
   0,  /* ldxu8_32 */
   0,  /* ldxxu8_32 */
   0,  /* movswl */
   0,  /* ld16_32 */
   0,  /* ldx16_32 */
   0,  /* ldxx16_32 */
   0,  /* movzwl */
   0,  /* ldu16_32 */
   0,  /* ldxu16_32 */
   0,  /* ldxxu16_32 */
   0,  /* movsbq */
   0,  /* ld8_64 */
   0,  /* ldx8_64 */
   0,  /* ldxx8_64 */
   0,  /* ld8_64_off */
   0,  /* movzbq */
   0,  /* ldu8_64 */
   0,  /* ldxu8_64 */
   0,  /* ldxxu8_64 */
   0,  /* ldu8_64_off */
   0,  /* movswq */
   0,  /* ld16_64 */
   0,  /* ldx16_64 */
   0,  /* ldxx16_64 */
   0,  /* ld16_64_off */
   0,  /* movzwq */
   0,  /* ldu16_64 */
   0,  /* ldxu16_64 */
   0,  /* ldxxu16_64 */
   0,  /* ldu16_64_off */
   0,  /* movslq */
   0,  /* ld32_64 */
   0,  /* ldx32_64 */
   0,  /* ldxx32_64 */
   0,  /* ld32 */
   0,  /* ldx32 */
   0,  /* ldxx32 */
   0,  /* movzlq */
   0,  /* neg8 */
   0,  /* neg16 */
   0,  /* neg32 */
   0,  /* neg64 */
   0,  /* not8 */
   0,  /* not16 */
   0,  /* not32 */
   0,  /* not64 */
   0,  /* or8 */
   0,  /* or16 */
   0,  /* or32 */
   0,  /* orx32 */
   0,  /* orxx32 */
   0,  /* orxxx32 */
   0,  /* or64 */
   0,  /* orx64 */
   0,  /* orxx64 */
   0,  /* orxxx64 */
   0,  /* orx8 */
   0,  /* orx16 */
   0,  /* orxx8 */
   0,  /* orxxx8 */
   0,  /* orxx16 */
   0,  /* orxxx16 */
   0,  /* or128v8 */
   0,  /* orx128v8 */
   0,  /* orxx128v8 */
   0,  /* orxxx128v8 */
   0,  /* or128v16 */
   0,  /* orx128v16 */
   0,  /* orxx128v16 */
   0,  /* orxxx128v16 */
   0,  /* or128v32 */
   0,  /* orx128v32 */
   0,  /* orxx128v32 */
   0,  /* orxxx128v32 */
   0,  /* or128v64 */
   0,  /* orx128v64 */
   0,  /* orxx128v64 */
   0,  /* orxxx128v64 */
   0,  /* ori32 */
   0,  /* ori64 */
   0,  /* popl */
   0,  /* popq */
   0,  /* pushl */
   0,  /* pushq */
   0,  /* ret */
   0,  /* reti */
   0,  /* ror8 */
   0,  /* ror16 */
   0,  /* ror32 */
   0,  /* ror64 */
   0,  /* rori8 */
   0,  /* rori16 */
   0,  /* rori32 */
   0,  /* rori64 */
   0,  /* rol8 */
   0,  /* rol16 */
   0,  /* rol32 */
   0,  /* rol64 */
   0,  /* roli8 */
   0,  /* roli16 */
   0,  /* roli32 */
   0,  /* roli64 */
   0,  /* prefetch */
   0,  /* prefetchw */
   0,  /* prefetcht0 */
   0,  /* prefetcht1 */
   0,  /* prefetchnta */
   0,  /* prefetchx */
   0,  /* prefetchxx */
   0,  /* prefetchwx */
   0,  /* prefetchwxx */
   0,  /* prefetcht0x */
   0,  /* prefetcht0xx */
   0,  /* prefetcht1x */
   0,  /* prefetcht1xx */
   0,  /* prefetchntax */
   0,  /* prefetchntaxx */
   0,  /* setb */
   0,  /* setae */
   0,  /* setp */
   0,  /* setnp */
   0,  /* sete */
   0,  /* setne */
   0,  /* setbe */
   0,  /* seta */
   0,  /* setl */
   0,  /* setge */
   0,  /* setle */
   0,  /* setg */
   0,  /* setc */
   0,  /* seto */
   0,  /* sets */
   0,  /* setz */
   0,  /* store8 */
   0,  /* storex8 */
   0,  /* storexx8 */
   0,  /* store16 */
   0,  /* storex16 */
   0,  /* storexx16 */
   0,  /* store32 */
   0,  /* storex32 */
   0,  /* storexx32 */
   0,  /* store64 */
   0,  /* storex64 */
   0,  /* storexx64 */
   0,  /* store64_fm */
   0,  /* store64_fsse */
   0,  /* storenti32 */
   0,  /* storentix32 */
   0,  /* storentixx32 */
   0,  /* storenti64 */
   0,  /* storentix64 */
   0,  /* storentixx64 */
   0,  /* storenti128 */
   0,  /* sar32 */
   0,  /* sar64 */
   0,  /* sari32 */
   0,  /* sari64 */
   0,  /* shl32 */
   0,  /* shld32 */
   0,  /* shldi32 */
   0,  /* shrd32 */
   0,  /* shrdi32 */
   0,  /* shl64 */
   0,  /* shli32 */
   0,  /* shli64 */
   0,  /* shr32 */
   0,  /* shr64 */
   0,  /* shri32 */
   0,  /* shri64 */
   0,  /* sub32 */
   0,  /* sbb32 */
   0,  /* sub64 */
   0,  /* subx32 */
   0,  /* subx64 */
   0,  /* subxx32 */
   0,  /* subxxx32 */
   0,  /* subxx64 */
   0,  /* subxxx64 */
   0,  /* subi32 */
   0,  /* sbbi32 */
   0,  /* subi64 */
   0,  /* sub128v8 */
   0,  /* subx128v8 */
   0,  /* subxx128v8 */
   0,  /* subxxx128v8 */
   0,  /* sub128v16 */
   0,  /* subx128v16 */
   0,  /* subxx128v16 */
   0,  /* subxxx128v16 */
   0,  /* sub128v32 */
   0,  /* subx128v32 */
   0,  /* subxx128v32 */
   0,  /* subxxx128v32 */
   0,  /* sub128v64 */
   0,  /* subx128v64 */
   0,  /* subxx128v64 */
   0,  /* subxxx128v64 */
   0,  /* sub64v8 */
   0,  /* sub64v16 */
   0,  /* sub64v32 */
   0,  /* test32 */
   0,  /* testx32 */
   0,  /* testxx32 */
   0,  /* testxxx32 */
   0,  /* test64 */
   0,  /* testx64 */
   0,  /* testxx64 */
   0,  /* testxxx64 */
   0,  /* testi32 */
   0,  /* testi64 */
   0,  /* xor8 */
   0,  /* xor16 */
   0,  /* xor32 */
   0,  /* xorx32 */
   0,  /* xorxx32 */
   0,  /* xorxxx32 */
   0,  /* xor64 */
   0,  /* xorx64 */
   0,  /* xorxx64 */
   0,  /* xorxxx64 */
   0,  /* xorx8 */
   0,  /* xorx16 */
   0,  /* xorxx8 */
   0,  /* xorxxx8 */
   0,  /* xorxx16 */
   0,  /* xorxxx16 */
   0,  /* xor128v8 */
   0,  /* xorx128v8 */
   0,  /* xorxx128v8 */
   0,  /* xorxxx128v8 */
   0,  /* xor128v16 */
   0,  /* xorx128v16 */
   0,  /* xorxx128v16 */
   0,  /* xorxxx128v16 */
   0,  /* xor128v32 */
   0,  /* xorx128v32 */
   0,  /* xorxx128v32 */
   0,  /* xorxxx128v32 */
   0,  /* xor128v64 */
   0,  /* xorx128v64 */
   0,  /* xorxx128v64 */
   0,  /* xorxxx128v64 */
   0,  /* xori32 */
   0,  /* xori64 */
   0,  /* fxor128v32 */
   0,  /* fxorx128v32 */
   0,  /* fxorxx128v32 */
   0,  /* fxorxxx128v32 */
   0,  /* fxor128v64 */
   0,  /* fxorx128v64 */
   0,  /* fxorxx128v64 */
   0,  /* fxorxxx128v64 */
   0,  /* xorps */
   0,  /* xorpd */
   0,  /* addsd */
   0,  /* addss */
   0,  /* addxsd */
   0,  /* addxss */
   0,  /* addxxsd */
   0,  /* addxxxsd */
   0,  /* addxxss */
   0,  /* addxxxss */
   0,  /* faddsub128v32 */
   0,  /* faddsubx128v32 */
   0,  /* faddsubxx128v32 */
   0,  /* faddsubxxx128v32 */
   0,  /* faddsub128v64 */
   0,  /* faddsubx128v64 */
   0,  /* faddsubxx128v64 */
   0,  /* faddsubxxx128v64 */
   0,  /* fadd128v32 */
   0,  /* faddx128v32 */
   0,  /* faddxx128v32 */
   0,  /* faddxxx128v32 */
   0,  /* fadd128v64 */
   0,  /* faddx128v64 */
   0,  /* faddxx128v64 */
   0,  /* faddxxx128v64 */
   0,  /* fhadd128v32 */
   0,  /* fhaddx128v32 */
   0,  /* fhaddxx128v32 */
   0,  /* fhaddxxx128v32 */
   0,  /* fhadd128v64 */
   0,  /* fhaddx128v64 */
   0,  /* fhaddxx128v64 */
   0,  /* fhaddxxx128v64 */
   0,  /* fand128v32 */
   0,  /* fandx128v32 */
   0,  /* fandxx128v32 */
   0,  /* fandxxx128v32 */
   0,  /* fand128v64 */
   0,  /* fandx128v64 */
   0,  /* fandxx128v64 */
   0,  /* fandxxx128v64 */
   0,  /* andps */
   0,  /* andpd */
   0,  /* andnps */
   0,  /* andnpd */
   0,  /* for128v32 */
   0,  /* forx128v32 */
   0,  /* forxx128v32 */
   0,  /* forxxx128v32 */
   0,  /* for128v64 */
   0,  /* forx128v64 */
   0,  /* forxx128v64 */
   0,  /* forxxx128v64 */
   0,  /* orps */
   0,  /* orpd */
   0,  /* comisd */
   0,  /* comixsd */
   0,  /* comixxsd */
   0,  /* comixxxsd */
   0,  /* comiss */
   0,  /* comixss */
   0,  /* comixxss */
   0,  /* comixxxss */
   0,  /* cmpss */
   0,  /* cmpsd */
   0,  /* cmpps */
   0,  /* cmppd */
   0,  /* cmpeq128v8 */
   0,  /* cmpeq128v16 */
   0,  /* cmpeq128v32 */
   0,  /* cmpeqx128v8 */
   0,  /* cmpeqx128v16 */
   0,  /* cmpeqx128v32 */
   0,  /* cmpeqxx128v8 */
   0,  /* cmpeqxx128v16 */
   0,  /* cmpeqxx128v32 */
   0,  /* cmpeqxxx128v8 */
   0,  /* cmpeqxxx128v16 */
   0,  /* cmpeqxxx128v32 */
   0,  /* cmpgt128v8 */
   0,  /* cmpgt128v16 */
   0,  /* cmpgt128v32 */
   0,  /* cmpgtx128v8 */
   0,  /* cmpgtx128v16 */
   0,  /* cmpgtx128v32 */
   0,  /* cmpgtxx128v8 */
   0,  /* cmpgtxx128v16 */
   0,  /* cmpgtxx128v32 */
   0,  /* cmpgtxxx128v8 */
   0,  /* cmpgtxxx128v16 */
   0,  /* cmpgtxxx128v32 */
   0,  /* pcmpeqb */
   0,  /* pcmpeqw */
   0,  /* pcmpeqd */
   0,  /* pcmpgtb */
   0,  /* pcmpgtw */
   0,  /* pcmpgtd */
   0,  /* fmovsldup */
   0,  /* fmovshdup */
   0,  /* fmovddup */
   0,  /* fmovsldupx */
   0,  /* fmovshdupx */
   0,  /* fmovddupx */
   0,  /* fmovsldupxx */
   0,  /* fmovshdupxx */
   0,  /* fmovddupxx */
   0,  /* fmovsldupxxx */
   0,  /* fmovshdupxxx */
   0,  /* fmovddupxxx */
   0,  /* cltd */
   0,  /* cqto */
   0,  /* cvtss2sd */
   0,  /* cvtsd2ss */
   0,  /* cvtsd2ss_x */
   0,  /* cvtsd2ss_xx */
   0,  /* cvtsd2ss_xxx */
   0,  /* cvtsi2sd */
   0,  /* cvtsi2sd_x */
   0,  /* cvtsi2sd_xx */
   0,  /* cvtsi2sd_xxx */
   0,  /* cvtsi2ss */
   0,  /* cvtsi2ss_x */
   0,  /* cvtsi2ss_xx */
   0,  /* cvtsi2ss_xxx */
   0,  /* cvtsi2sdq */
   0,  /* cvtsi2sdq_x */
   0,  /* cvtsi2sdq_xx */
   0,  /* cvtsi2sdq_xxx */
   0,  /* cvtsi2ssq */
   0,  /* cvtsi2ssq_x */
   0,  /* cvtsi2ssq_xx */
   0,  /* cvtsi2ssq_xxx */
   0,  /* cvtss2si */
   0,  /* cvtsd2si */
   0,  /* cvtss2siq */
   0,  /* cvtsd2siq */
   0,  /* cvttss2si */
   0,  /* cvttsd2si */
   0,  /* cvttss2siq */
   0,  /* cvttsd2siq */
   0,  /* cvtdq2pd */
   0,  /* cvtdq2ps */
   0,  /* cvtps2pd */
   0,  /* cvtpd2ps */
   0,  /* cvtps2dq */
   0,  /* cvttps2dq */
   0,  /* cvtpd2dq */
   0,  /* cvttpd2dq */
   0,  /* cvtdq2pd_x */
   0,  /* cvtdq2ps_x */
   0,  /* cvtps2pd_x */
   0,  /* cvtpd2ps_x */
   0,  /* cvtps2dq_x */
   0,  /* cvtpd2dq_x */
   0,  /* cvttps2dq_x */
   0,  /* cvttpd2dq_x */
   0,  /* cvtdq2pd_xx */
   0,  /* cvtdq2ps_xx */
   0,  /* cvtps2pd_xx */
   0,  /* cvtpd2ps_xx */
   0,  /* cvtps2dq_xx */
   0,  /* cvtpd2dq_xx */
   0,  /* cvttps2dq_xx */
   0,  /* cvttpd2dq_xx */
   0,  /* cvtdq2pd_xxx */
   0,  /* cvtdq2ps_xxx */
   0,  /* cvtps2pd_xxx */
   0,  /* cvtpd2ps_xxx */
   0,  /* cvtps2dq_xxx */
   0,  /* cvtpd2dq_xxx */
   0,  /* cvttps2dq_xxx */
   0,  /* cvttpd2dq_xxx */
   0,  /* cvtpi2ps */
   0,  /* cvtps2pi */
   0,  /* cvttps2pi */
   0,  /* cvtpi2pd */
   0,  /* cvtpd2pi */
   0,  /* cvttpd2pi */
   0,  /* ldsd */
   0,  /* ldsdx */
   0,  /* ldsdxx */
   0,  /* ldss */
   0,  /* ldssx */
   0,  /* ldssxx */
   0,  /* lddqa */
   0,  /* lddqu */
   0,  /* ldlps */
   0,  /* ldhps */
   0,  /* ldlpd */
   0,  /* ldhpd */
   0,  /* stdqa */
   0,  /* stdqu */
   0,  /* stlps */
   0,  /* sthps */
   0,  /* stlpd */
   0,  /* storelpd */
   0,  /* sthpd */
   0,  /* stntpd */
   0,  /* stntps */
   0,  /* storent64_fm */
   0,  /* lddqax */
   0,  /* lddqux */
   0,  /* ldlpsx */
   0,  /* ldhpsx */
   0,  /* ldlpdx */
   0,  /* ldhpdx */
   0,  /* stdqax */
   0,  /* stntpdx */
   0,  /* stntpsx */
   0,  /* stdqux */
   0,  /* stlpsx */
   0,  /* sthpsx */
   0,  /* stlpdx */
   0,  /* sthpdx */
   0,  /* lddqaxx */
   0,  /* lddquxx */
   0,  /* ldlpsxx */
   0,  /* ldhpsxx */
   0,  /* ldlpdxx */
   0,  /* ldhpdxx */
   0,  /* ldaps */
   0,  /* ldapsx */
   0,  /* ldapsxx */
   0,  /* ldapd */
   0,  /* ldapdx */
   0,  /* ldapdxx */
   0,  /* ldups */
   0,  /* ldupd */
   0,  /* ldupdx */
   0,  /* ldupdxx */
   0,  /* stdqaxx */
   0,  /* stntpdxx */
   0,  /* stntpsxx */
   0,  /* stdquxx */
   0,  /* stlpsxx */
   0,  /* sthpsxx */
   0,  /* stlpdxx */
   0,  /* sthpdxx */
   0,  /* staps */
   0,  /* stapsx */
   0,  /* stapsxx */
   0,  /* stapd */
   0,  /* stapdx */
   0,  /* stapdxx */
   0,  /* stups */
   0,  /* stupd */
   0,  /* maxsd */
   0,  /* maxss */
   0,  /* fmax128v32 */
   0,  /* fmaxx128v32 */
   0,  /* fmaxxx128v32 */
   0,  /* fmaxxxx128v32 */
   0,  /* fmax128v64 */
   0,  /* fmaxx128v64 */
   0,  /* fmaxxx128v64 */
   0,  /* fmaxxxx128v64 */
   0,  /* max128v16 */
   0,  /* max128v8 */
   0,  /* maxx128v16 */
   0,  /* maxx128v8 */
   0,  /* maxxx128v16 */
   0,  /* maxxx128v8 */
   0,  /* maxxxx128v16 */
   0,  /* maxxxx128v8 */
   0,  /* max64v8 */
   0,  /* max64v16 */
   0,  /* min128v16 */
   0,  /* min128v8 */
   0,  /* minx128v16 */
   0,  /* minx128v8 */
   0,  /* minxx128v16 */
   0,  /* minxx128v8 */
   0,  /* minxxx128v16 */
   0,  /* minxxx128v8 */
   0,  /* min64v8 */
   0,  /* min64v16 */
   0,  /* minsd */
   0,  /* minss */
   0,  /* fmin128v32 */
   0,  /* fminx128v32 */
   0,  /* fminxx128v32 */
   0,  /* fminxxx128v32 */
   0,  /* fmin128v64 */
   0,  /* fminx128v64 */
   0,  /* fminxx128v64 */
   0,  /* fminxxx128v64 */
   0,  /* movx2g64 */
   0,  /* movx2g */
   0,  /* movg2x64 */
   0,  /* movg2x */
   0,  /* movsd */
   0,  /* movss */
   0,  /* movdq */
   0,  /* movapd */
   0,  /* movaps */
   0,  /* movq2dq */
   0,  /* movdq2q */
   0,  /* divsd */
   0,  /* divxsd */
   0,  /* divxxsd */
   0,  /* divxxxsd */
   0,  /* divss */
   0,  /* divxss */
   0,  /* divxxss */
   0,  /* divxxxss */
   0,  /* fdiv128v32 */
   0,  /* fdivx128v32 */
   0,  /* fdivxx128v32 */
   0,  /* fdivxxx128v32 */
   0,  /* fdiv128v64 */
   0,  /* fdivx128v64 */
   0,  /* fdivxx128v64 */
   0,  /* fdivxxx128v64 */
   0,  /* mulsd */
   0,  /* mulss */
   0,  /* fmul128v32 */
   0,  /* fmulx128v32 */
   0,  /* fmulxx128v32 */
   0,  /* fmulxxx128v32 */
   0,  /* fmul128v64 */
   0,  /* fmulx128v64 */
   0,  /* fmulxx128v64 */
   0,  /* fmulxxx128v64 */
   0,  /* mulxsd */
   0,  /* mulxss */
   0,  /* mulxxsd */
   0,  /* mulxxxsd */
   0,  /* mulxxss */
   0,  /* mulxxxss */
   0,  /* subsd */
   0,  /* subss */
   0,  /* subxsd */
   0,  /* subxss */
   0,  /* subxxsd */
   0,  /* subxxxsd */
   0,  /* subxxss */
   0,  /* subxxxss */
   0,  /* fsub128v32 */
   0,  /* fsubx128v32 */
   0,  /* fsubxx128v32 */
   0,  /* fsubxxx128v32 */
   0,  /* fsub128v64 */
   0,  /* fsubx128v64 */
   0,  /* fsubxx128v64 */
   0,  /* fsubxxx128v64 */
   0,  /* fhsub128v32 */
   0,  /* fhsubx128v32 */
   0,  /* fhsubxx128v32 */
   0,  /* fhsubxxx128v32 */
   0,  /* fhsub128v64 */
   0,  /* fhsubx128v64 */
   0,  /* fhsubxx128v64 */
   0,  /* fhsubxxx128v64 */
   0,  /* stss */
   0,  /* stntss */
   0,  /* stssx */
   0,  /* stntssx */
   0,  /* stssxx */
   0,  /* stntssxx */
   0,  /* stsd */
   0,  /* stntsd */
   0,  /* stsdx */
   0,  /* stntsdx */
   0,  /* stsdxx */
   0,  /* stntsdxx */
   0,  /* rcpss */
   0,  /* frcp128v32 */
   0,  /* sqrtsd */
   0,  /* sqrtss */
   0,  /* rsqrtss */
   0,  /* fsqrt128v32 */
   0,  /* frsqrt128v32 */
   0,  /* fsqrt128v64 */
   0,  /* punpcklwd */
   0,  /* punpcklbw */
   0,  /* punpckldq */
   0,  /* punpcklbw128 */
   0,  /* punpcklwd128 */
   0,  /* punpckldq128 */
   0,  /* punpckhbw */
   0,  /* punpckhwd */
   0,  /* punpckhdq */
   0,  /* punpckhbw128 */
   0,  /* punpckhwd128 */
   0,  /* punpckhdq128 */
   0,  /* punpcklqdq */
   0,  /* punpckhqdq */
   0,  /* packsswb */
   0,  /* packssdw */
   0,  /* packuswb */
   0,  /* packsswb128 */
   0,  /* packssdw128 */
   0,  /* packuswb128 */
   0,  /* pshufd */
   0,  /* pshufw */
   0,  /* pshuflw */
   0,  /* pshufhw */
   0,  /* pslldq */
   0,  /* psllw */
   0,  /* psllwi */
   0,  /* pslld */
   0,  /* pslldi */
   0,  /* psllq */
   0,  /* psllqi */
   0,  /* psrlw */
   0,  /* psrlwi */
   0,  /* psrld */
   0,  /* psrldi */
   0,  /* psrlq */
   0,  /* psrlqi */
   0,  /* psraw */
   0,  /* psrawi */
   0,  /* psrad */
   0,  /* psradi */
   0,  /* psllw_mmx */
   0,  /* psllwi_mmx */
   0,  /* pslld_mmx */
   0,  /* pslldi_mmx */
   0,  /* psllq_mmx */
   0,  /* psllqi_mmx */
   0,  /* psrlw_mmx */
   0,  /* psrlwi_mmx */
   0,  /* psrld_mmx */
   0,  /* psrldi_mmx */
   0,  /* psrlq_mmx */
   0,  /* psrlqi_mmx */
   0,  /* psraw_mmx */
   0,  /* psrawi_mmx */
   0,  /* psrad_mmx */
   0,  /* psradi_mmx */
   0,  /* pand_mmx */
   0,  /* pandn_mmx */
   0,  /* por_mmx */
   0,  /* pxor_mmx */
   0,  /* pand */
   0,  /* pandn */
   0,  /* por */
   0,  /* pxor */
   0,  /* unpckhpd */
   0,  /* unpckhps */
   0,  /* unpcklpd */
   0,  /* unpcklps */
   0,  /* shufpd */
   0,  /* shufps */
   0,  /* movhlps */
   0,  /* movlhps */
   0,  /* psrldq */
   0,  /* psrlq128v64 */
   0,  /* subus128v16 */
   0,  /* pavgb */
   0,  /* pavgw */
   0,  /* psadbw */
   0,  /* pavgb128 */
   0,  /* pavgw128 */
   0,  /* psadbw128 */
   0,  /* pextrw */
   0,  /* pinsrw */
   0,  /* pmovmskb */
   0,  /* pmovmskb128 */
   0,  /* movi32_2m */
   0,  /* movi64_2m */
   0,  /* movm_2i32 */
   0,  /* movm_2i64 */
   0,  /* pshufw64v16 */
   0,  /* movmskps */
   0,  /* movmskpd */
   0,  /* maskmovdqu */
   0,  /* maskmovq */
   0,  /* extrq */
   0,  /* insertq */
   0,  /* vfmaddss */
   0,  /* vfmaddxss */
   0,  /* vfmaddxxss */
   0,  /* vfmaddxxxss */
   0,  /* vfmaddxrss */
   0,  /* vfmaddxxrss */
   0,  /* vfmaddxxxrss */
   0,  /* vfmaddsd */
   0,  /* vfmaddxsd */
   0,  /* vfmaddxxsd */
   0,  /* vfmaddxxxsd */
   0,  /* vfmaddxrsd */
   0,  /* vfmaddxxrsd */
   0,  /* vfmaddxxxrsd */
   0,  /* vfnmaddss */
   0,  /* vfnmaddxss */
   0,  /* vfnmaddxxss */
   0,  /* vfnmaddxxxss */
   0,  /* vfnmaddxrss */
   0,  /* vfnmaddxxrss */
   0,  /* vfnmaddxxxrss */
   0,  /* vfnmaddsd */
   0,  /* vfnmaddxsd */
   0,  /* vfnmaddxxsd */
   0,  /* vfnmaddxxxsd */
   0,  /* vfnmaddxrsd */
   0,  /* vfnmaddxxrsd */
   0,  /* vfnmaddxxxrsd */
   0,  /* vfmaddps */
   0,  /* vfmaddxps */
   0,  /* vfmaddxxps */
   0,  /* vfmaddxxxps */
   0,  /* vfmaddxrps */
   0,  /* vfmaddxxrps */
   0,  /* vfmaddxxxrps */
   0,  /* vfmaddpd */
   0,  /* vfmaddxpd */
   0,  /* vfmaddxxpd */
   0,  /* vfmaddxxxpd */
   0,  /* vfmaddxrpd */
   0,  /* vfmaddxxrpd */
   0,  /* vfmaddxxxrpd */
   0,  /* vfmaddsubps */
   0,  /* vfmaddsubxps */
   0,  /* vfmaddsubxxps */
   0,  /* vfmaddsubxxxps */
   0,  /* vfmaddsubxrps */
   0,  /* vfmaddsubxxrps */
   0,  /* vfmaddsubxxxrps */
   0,  /* vfmaddsubpd */
   0,  /* vfmaddsubxpd */
   0,  /* vfmaddsubxxpd */
   0,  /* vfmaddsubxxxpd */
   0,  /* vfmaddsubxrpd */
   0,  /* vfmaddsubxxrpd */
   0,  /* vfmaddsubxxxrpd */
   0,  /* vfnmaddps */
   0,  /* vfnmaddxps */
   0,  /* vfnmaddxxps */
   0,  /* vfnmaddxxxps */
   0,  /* vfnmaddxrps */
   0,  /* vfnmaddxxrps */
   0,  /* vfnmaddxxxrps */
   0,  /* vfnmaddpd */
   0,  /* vfnmaddxpd */
   0,  /* vfnmaddxxpd */
   0,  /* vfnmaddxxxpd */
   0,  /* vfnmaddxrpd */
   0,  /* vfnmaddxxrpd */
   0,  /* vfnmaddxxxrpd */
   0,  /* vfmsubss */
   0,  /* vfmsubxss */
   0,  /* vfmsubxxss */
   0,  /* vfmsubxxxss */
   0,  /* vfmsubxrss */
   0,  /* vfmsubxxrss */
   0,  /* vfmsubxxxrss */
   0,  /* vfmsubsd */
   0,  /* vfmsubxsd */
   0,  /* vfmsubxxsd */
   0,  /* vfmsubxxxsd */
   0,  /* vfmsubxrsd */
   0,  /* vfmsubxxrsd */
   0,  /* vfmsubxxxrsd */
   0,  /* vfnmsubss */
   0,  /* vfnmsubxss */
   0,  /* vfnmsubxxss */
   0,  /* vfnmsubxxxss */
   0,  /* vfnmsubxrss */
   0,  /* vfnmsubxxrss */
   0,  /* vfnmsubxxxrss */
   0,  /* vfnmsubsd */
   0,  /* vfnmsubxsd */
   0,  /* vfnmsubxxsd */
   0,  /* vfnmsubxxxsd */
   0,  /* vfnmsubxrsd */
   0,  /* vfnmsubxxrsd */
   0,  /* vfnmsubxxxrsd */
   0,  /* vfmsubps */
   0,  /* vfmsubxps */
   0,  /* vfmsubxxps */
   0,  /* vfmsubxxxps */
   0,  /* vfmsubxrps */
   0,  /* vfmsubxxrps */
   0,  /* vfmsubxxxrps */
   0,  /* vfmsubpd */
   0,  /* vfmsubxpd */
   0,  /* vfmsubxxpd */
   0,  /* vfmsubxxxpd */
   0,  /* vfmsubxrpd */
   0,  /* vfmsubxxrpd */
   0,  /* vfmsubxxxrpd */
   0,  /* vfmsubaddps */
   0,  /* vfmsubaddxps */
   0,  /* vfmsubaddxxps */
   0,  /* vfmsubaddxxxps */
   0,  /* vfmsubaddxrps */
   0,  /* vfmsubaddxxrps */
   0,  /* vfmsubaddxxxrps */
   0,  /* vfmsubaddpd */
   0,  /* vfmsubaddxpd */
   0,  /* vfmsubaddxxpd */
   0,  /* vfmsubaddxxxpd */
   0,  /* vfmsubaddxrpd */
   0,  /* vfmsubaddxxrpd */
   0,  /* vfmsubaddxxxrpd */
   0,  /* vfnmsubps */
   0,  /* vfnmsubxps */
   0,  /* vfnmsubxxps */
   0,  /* vfnmsubxxxps */
   0,  /* vfnmsubxrps */
   0,  /* vfnmsubxxrps */
   0,  /* vfnmsubxxxrps */
   0,  /* vfnmsubpd */
   0,  /* vfnmsubxpd */
   0,  /* vfnmsubxxpd */
   0,  /* vfnmsubxxxpd */
   0,  /* vfnmsubxrpd */
   0,  /* vfnmsubxxrpd */
   0,  /* vfnmsubxxxrpd */
   0,  /* vzeroupper */
   0,  /* mfence */
   0,  /* lfence */
   0,  /* sfence */
   0,  /* monitor */
   0,  /* mwait */
   0,  /* asm */
   0,  /* intrncall */
   0,  /* spadjust */
   0,  /* savexmms */
   0,  /* zero32 */
   0,  /* zero64 */
   0,  /* xzero32 */
   0,  /* xzero64 */
   0,  /* xzero128v32 */
   0,  /* xzero128v64 */
   0,  /* fadd */
   0,  /* faddp */
   0,  /* flds */
   0,  /* flds_n32 */
   0,  /* fldl */
   0,  /* fldl_n32 */
   0,  /* fldt */
   0,  /* fldt_n32 */
   0,  /* fld */
   0,  /* fst */
   0,  /* fstp */
   0,  /* fstps */
   0,  /* fstps_n32 */
   0,  /* fstpl */
   0,  /* fstpl_n32 */
   0,  /* fstpt */
   0,  /* fstpt_n32 */
   0,  /* fsts */
   0,  /* fsts_n32 */
   0,  /* fstl */
   0,  /* fstl_n32 */
   0,  /* fxch */
   0,  /* fmov */
   0,  /* fsub */
   0,  /* fsubr */
   0,  /* fsubp */
   0,  /* fsubrp */
   0,  /* fmul */
   0,  /* fmulp */
   0,  /* fdiv */
   0,  /* fdivp */
   0,  /* fdivr */
   0,  /* fdivrp */
   0,  /* fucomi */
   0,  /* fucomip */
   0,  /* fchs */
   0,  /* frndint */
   0,  /* fnstcw */
   0,  /* fldcw */
   0,  /* fistps */
   0,  /* fistpl */
   0,  /* fists */
   0,  /* fistl */
   0,  /* fistpll */
   0,  /* filds */
   0,  /* fildl */
   0,  /* fildll */
   0,  /* fldz */
   0,  /* fabs */
   0,  /* fsqrt */
   0,  /* fcmovb */
   0,  /* fcmovbe */
   0,  /* fcmovnb */
   0,  /* fcmovnbe */
   0,  /* fcmove */
   0,  /* fcmovne */
   0,  /* fcmovu */
   0,  /* fcmovnu */
   0,  /* fcos */
   0,  /* fsin */
   0,  /* cmpeqpd */
   0,  /* cmpltpd */
   0,  /* cmplepd */
   0,  /* cmpunordpd */
   0,  /* cmpneqpd */
   0,  /* cmpnltpd */
   0,  /* cmpnlepd */
   0,  /* cmpordpd */
   0,  /* cmpeqps */
   0,  /* cmpltps */
   0,  /* cmpleps */
   0,  /* cmpunordps */
   0,  /* cmpneqps */
   0,  /* cmpnltps */
   0,  /* cmpnleps */
   0,  /* cmpordps */
   0,  /* cmpeqsd */
   0,  /* cmpltsd */
   0,  /* cmplesd */
   0,  /* cmpunordsd */
   0,  /* cmpneqsd */
   0,  /* cmpnltsd */
   0,  /* cmpnlesd */
   0,  /* cmpordsd */
   0,  /* cmpeqss */
   0,  /* cmpltss */
   0,  /* cmpless */
   0,  /* cmpunordss */
   0,  /* cmpneqss */
   0,  /* cmpnltss */
   0,  /* cmpnless */
   0,  /* cmpordss */
   0,  /* emms */
   0,  /* stmxcsr */
   0,  /* ldmxcsr */
   0,  /* clflush */
   0,  /* fisttps */
   0,  /* fisttpl */
   0,  /* fisttpll */
   0,  /* pabs128v8 */
   0,  /* pabsx128v8 */
   0,  /* pabsxx128v8 */
   0,  /* pabsxxx128v8 */
   0,  /* pabs128v16 */
   0,  /* pabsx128v16 */
   0,  /* pabsxx128v16 */
   0,  /* pabsxxx128v16 */
   0,  /* pabs128v32 */
   0,  /* pabsx128v32 */
   0,  /* pabsxx128v32 */
   0,  /* pabsxxx128v32 */
   0,  /* psign128v8 */
   0,  /* psignx128v8 */
   0,  /* psignxx128v8 */
   0,  /* psignxxx128v8 */
   0,  /* psign128v16 */
   0,  /* psignx128v16 */
   0,  /* psignxx128v16 */
   0,  /* psignxxx128v16 */
   0,  /* psign128v32 */
   0,  /* psignx128v32 */
   0,  /* psignxx128v32 */
   0,  /* psignxxx128v32 */
   0,  /* pshuf128v8 */
   0,  /* pshufx128v8 */
   0,  /* pshufxx128v8 */
   0,  /* pshufxxx128v8 */
   0,  /* phsub128v16 */
   0,  /* phsubx128v16 */
   0,  /* phsubxx128v16 */
   0,  /* phsubxxx128v16 */
   0,  /* phsub128v32 */
   0,  /* phsubx128v32 */
   0,  /* phsubxx128v32 */
   0,  /* phsubxxx128v32 */
   0,  /* phsubs128v16 */
   0,  /* phsubsx128v16 */
   0,  /* phsubsxx128v16 */
   0,  /* phsubsxxx128v16 */
   0,  /* phadd128v16 */
   0,  /* phaddx128v16 */
   0,  /* phaddxx128v16 */
   0,  /* phaddxxx128v16 */
   0,  /* phadd128v32 */
   0,  /* phaddx128v32 */
   0,  /* phaddxx128v32 */
   0,  /* phaddxxx128v32 */
   0,  /* phadds128v16 */
   0,  /* phaddsx128v16 */
   0,  /* phaddsxx128v16 */
   0,  /* phaddsxxx128v16 */
   0,  /* pmulhrsw128 */
   0,  /* pmulhrswx128 */
   0,  /* pmulhrswxx128 */
   0,  /* pmulhrswxxx128 */
   0,  /* pmaddubsw128 */
   0,  /* pmaddubswx128 */
   0,  /* pmaddubswxx128 */
   0,  /* pmaddubswxxx128 */
   0,  /* palignr128 */
   0,  /* palignrx128 */
   0,  /* palignrxx128 */
   0,  /* palignrxxx128 */
   0,  /* muldq */
   0,  /* muldqx */
   0,  /* muldqxx */
   0,  /* muldqxxx */
   0,  /* ldntdqa */
   0,  /* ldntdqax */
   0,  /* ldntdqaxx */
   0,  /* stntdq */
   0,  /* stntdqx */
   0,  /* stntdqxx */
   0,  /* mins128v8 */
   0,  /* minsx128v8 */
   0,  /* minsxx128v8 */
   0,  /* minsxxx128v8 */
   0,  /* maxs128v8 */
   0,  /* maxsx128v8 */
   0,  /* maxsxx128v8 */
   0,  /* maxsxxx128v8 */
   0,  /* minu128v16 */
   0,  /* minux128v16 */
   0,  /* minuxx128v16 */
   0,  /* minuxxx128v16 */
   0,  /* maxu128v16 */
   0,  /* maxux128v16 */
   0,  /* maxuxx128v16 */
   0,  /* maxuxxx128v16 */
   0,  /* minu128v32 */
   0,  /* minux128v32 */
   0,  /* minuxx128v32 */
   0,  /* minuxxx128v32 */
   0,  /* maxu128v32 */
   0,  /* maxux128v32 */
   0,  /* maxuxx128v32 */
   0,  /* maxuxxx128v32 */
   0,  /* mins128v32 */
   0,  /* minsx128v32 */
   0,  /* minsxx128v32 */
   0,  /* minsxxx128v32 */
   0,  /* maxs128v32 */
   0,  /* maxsx128v32 */
   0,  /* maxsxx128v32 */
   0,  /* maxsxxx128v32 */
   0,  /* pmovsxbw */
   0,  /* pmovsxbwx */
   0,  /* pmovsxbwxx */
   0,  /* pmovsxbwxxx */
   0,  /* pmovzxbw */
   0,  /* pmovzxbwx */
   0,  /* pmovzxbwxx */
   0,  /* pmovzxbwxxx */
   0,  /* pmovsxbd */
   0,  /* pmovsxbdx */
   0,  /* pmovsxbdxx */
   0,  /* pmovsxbdxxx */
   0,  /* pmovzxbd */
   0,  /* pmovzxbdx */
   0,  /* pmovzxbdxx */
   0,  /* pmovzxbdxxx */
   0,  /* pmovsxbq */
   0,  /* pmovsxbqx */
   0,  /* pmovsxbqxx */
   0,  /* pmovsxbqxxx */
   0,  /* pmovzxbq */
   0,  /* pmovzxbqx */
   0,  /* pmovzxbqxx */
   0,  /* pmovzxbqxxx */
   0,  /* pmovsxwd */
   0,  /* pmovsxwdx */
   0,  /* pmovsxwdxx */
   0,  /* pmovsxwdxxx */
   0,  /* pmovzxwd */
   0,  /* pmovzxwdx */
   0,  /* pmovzxwdxx */
   0,  /* pmovzxwdxxx */
   0,  /* pmovsxwq */
   0,  /* pmovsxwqx */
   0,  /* pmovsxwqxx */
   0,  /* pmovsxwqxxx */
   0,  /* pmovzxwq */
   0,  /* pmovzxwqx */
   0,  /* pmovzxwqxx */
   0,  /* pmovzxwqxxx */
   0,  /* pmovsxdq */
   0,  /* pmovsxdqx */
   0,  /* pmovsxdqxx */
   0,  /* pmovsxdqxxx */
   0,  /* pmovzxdq */
   0,  /* pmovzxdqx */
   0,  /* pmovzxdqxx */
   0,  /* pmovzxdqxxx */
   0,  /* mul128v32 */
   0,  /* mulx128v32 */
   0,  /* mulxx128v32 */
   0,  /* mulxxx128v32 */
   0,  /* cmpeq128v64 */
   0,  /* cmpeqx128v64 */
   0,  /* cmpeqxx128v64 */
   0,  /* cmpeqxxx128v64 */
   0,  /* packusdw */
   0,  /* packusdwx */
   0,  /* packusdwxx */
   0,  /* packusdwxxx */
   0,  /* phminposuw */
   0,  /* phminposuwx */
   0,  /* phminposuwxx */
   0,  /* phminposuwxxx */
   0,  /* ptest128 */
   0,  /* ptestx128 */
   0,  /* ptestxx128 */
   0,  /* ptestxxx128 */
   0,  /* roundsd */
   0,  /* roundxsd */
   0,  /* roundxxsd */
   0,  /* roundxxxsd */
   0,  /* mpsadbw */
   0,  /* mpsadbwx */
   0,  /* mpsadbwxx */
   0,  /* mpsadbwxxx */
   0,  /* insr128v8 */
   0,  /* insrx128v8 */
   0,  /* insrxx128v8 */
   0,  /* insrxxx128v8 */
   0,  /* insr128v16 */
   0,  /* insrx128v16 */
   0,  /* insrxx128v16 */
   0,  /* insrxxx128v16 */
   0,  /* insr128v32 */
   0,  /* insrx128v32 */
   0,  /* insrxx128v32 */
   0,  /* insrxxx128v32 */
   0,  /* insr128v64 */
   0,  /* insrx128v64 */
   0,  /* insrxx128v64 */
   0,  /* insrxxx128v64 */
   0,  /* extr128v8 */
   0,  /* extrx128v8 */
   0,  /* extrxx128v8 */
   0,  /* extrxxx128v8 */
   0,  /* extr128v16 */
   0,  /* extrx128v16 */
   0,  /* extrxx128v16 */
   0,  /* extrxxx128v16 */
   0,  /* extr128v32 */
   0,  /* extrx128v32 */
   0,  /* extrxx128v32 */
   0,  /* extrxxx128v32 */
   0,  /* extr128v64 */
   0,  /* extrx128v64 */
   0,  /* extrxx128v64 */
   0,  /* extrxxx128v64 */
   0,  /* finsr128v32 */
   0,  /* finsrx128v32 */
   0,  /* finsrxx128v32 */
   0,  /* finsrxxx128v32 */
   0,  /* fextr128v32 */
   0,  /* fextrx128v32 */
   0,  /* fextrxx128v32 */
   0,  /* fextrxxx128v32 */
   0,  /* fblendv128v32 */
   0,  /* fblendvx128v32 */
   0,  /* fblendvxx128v32 */
   0,  /* fblendvxxx128v32 */
   0,  /* fblendv128v64 */
   0,  /* fblendvx128v64 */
   0,  /* fblendvxx128v64 */
   0,  /* fblendvxxx128v64 */
   0,  /* blendv128v8 */
   0,  /* blendvx128v8 */
   0,  /* blendvxx128v8 */
   0,  /* blendvxxx128v8 */
   0,  /* round128v32 */
   0,  /* roundx128v32 */
   0,  /* roundxx128v32 */
   0,  /* roundxxx128v32 */
   0,  /* roundss */
   0,  /* roundxss */
   0,  /* roundxxss */
   0,  /* roundxxxss */
   0,  /* fblend128v64 */
   0,  /* fblendx128v64 */
   0,  /* fblendxx128v64 */
   0,  /* fblendxxx128v64 */
   0,  /* blend128v16 */
   0,  /* blendx128v16 */
   0,  /* blendxx128v16 */
   0,  /* blendxxx128v16 */
   0,  /* fdp128v32 */
   0,  /* fdpx128v32 */
   0,  /* fdpxx128v32 */
   0,  /* fdpxxx128v32 */
   0,  /* fdp128v64 */
   0,  /* fdpx128v64 */
   0,  /* fdpxx128v64 */
   0,  /* fdpxxx128v64 */
   0,  /* round128v64 */
   0,  /* roundx128v64 */
   0,  /* roundxx128v64 */
   0,  /* roundxxx128v64 */
   0,  /* fblend128v32 */
   0,  /* fblendx128v32 */
   0,  /* fblendxx128v32 */
   0,  /* fblendxxx128v32 */
   0,  /* cmpgt128v64 */
   0,  /* cmpgtx128v64 */
   0,  /* cmpgtxx128v64 */
   0,  /* cmpgtxxx128v64 */
   0,  /* crc32w */
   0,  /* crc32wx */
   0,  /* crc32wxx */
   0,  /* crc32wxxx */
   0,  /* crc32d */
   0,  /* crc32dx */
   0,  /* crc32dxx */
   0,  /* crc32dxxx */
   0,  /* crc32q */
   0,  /* crc32qx */
   0,  /* crc32qxx */
   0,  /* crc32qxxx */
   0,  /* crc32b */
   0,  /* crc32bx */
   0,  /* crc32bxx */
   0,  /* crc32bxxx */
   0,  /* cmpestrm */
   0,  /* cmpestrmx */
   0,  /* cmpestrmxx */
   0,  /* cmpestrmxxx */
   0,  /* cmpestri */
   0,  /* cmpestrix */
   0,  /* cmpestrixx */
   0,  /* cmpestrixxx */
   0,  /* cmpistrm */
   0,  /* cmpistrmx */
   0,  /* cmpistrmxx */
   0,  /* cmpistrmxxx */
   0,  /* cmpistri */
   0,  /* cmpistrix */
   0,  /* cmpistrixx */
   0,  /* cmpistrixxx */
   0,  /* popcnt16 */
   0,  /* popcntx16 */
   0,  /* popcntxx16 */
   0,  /* popcntxxx16 */
   0,  /* popcnt32 */
   0,  /* popcntx32 */
   0,  /* popcntxx32 */
   0,  /* popcntxxx32 */
   0,  /* popcnt64 */
   0,  /* popcntx64 */
   0,  /* popcntxx64 */
   0,  /* popcntxxx64 */
   0,  /* aesimc */
   0,  /* aesimcx */
   0,  /* aesimcxx */
   0,  /* aesimcxxx */
   0,  /* aeskeygenassist */
   0,  /* aeskeygenassistx */
   0,  /* aeskeygenassistxx */
   0,  /* aeskeygenassistxxx */
   0,  /* aesenc */
   0,  /* aesencx */
   0,  /* aesencxx */
   0,  /* aesencxxx */
   0,  /* aesenclast */
   0,  /* aesenclastx */
   0,  /* aesenclastxx */
   0,  /* aesenclastxxx */
   0,  /* aesdec */
   0,  /* aesdecx */
   0,  /* aesdecxx */
   0,  /* aesdecxxx */
   0,  /* aesdeclast */
   0,  /* aesdeclastx */
   0,  /* aesdeclastxx */
   0,  /* aesdeclastxxx */
   0,  /* pclmulqdq */
   0,  /* pclmulqdqx */
   0,  /* pclmulqdqxx */
   0,  /* pclmulqdqxxx */
   0,  /* vphaddbd */
   0,  /* vphaddbdx */
   0,  /* vphaddbdxx */
   0,  /* vphaddbdxxx */
   0,  /* vphaddbq */
   0,  /* vphaddbqx */
   0,  /* vphaddbqxx */
   0,  /* vphaddbqxxx */
   0,  /* vphaddbw */
   0,  /* vphaddbwx */
   0,  /* vphaddbwxx */
   0,  /* vphaddbwxxx */
   0,  /* vphadddq */
   0,  /* vphadddqx */
   0,  /* vphadddqxx */
   0,  /* vphadddqxxx */
   0,  /* vphaddubd */
   0,  /* vphaddubdx */
   0,  /* vphaddubdxx */
   0,  /* vphaddubdxxx */
   0,  /* vphaddubq */
   0,  /* vphaddubqx */
   0,  /* vphaddubqxx */
   0,  /* vphaddubqxxx */
   0,  /* vphaddubw */
   0,  /* vphaddubwx */
   0,  /* vphaddubwxx */
   0,  /* vphaddubwxxx */
   0,  /* vphaddudq */
   0,  /* vphaddudqx */
   0,  /* vphaddudqxx */
   0,  /* vphaddudqxxx */
   0,  /* vphadduwd */
   0,  /* vphadduwdx */
   0,  /* vphadduwdxx */
   0,  /* vphadduwdxxx */
   0,  /* vphadduwq */
   0,  /* vphadduwqx */
   0,  /* vphadduwqxx */
   0,  /* vphadduwqxxx */
   0,  /* vphaddwd */
   0,  /* vphaddwdx */
   0,  /* vphaddwdxx */
   0,  /* vphaddwdxxx */
   0,  /* vphaddwq */
   0,  /* vphaddwqx */
   0,  /* vphaddwqxx */
   0,  /* vphaddwqxxx */
   0,  /* vphsubbw */
   0,  /* vphsubbwx */
   0,  /* vphsubbwxx */
   0,  /* vphsubbwxxx */
   0,  /* vphsubdq */
   0,  /* vphsubdqx */
   0,  /* vphsubdqxx */
   0,  /* vphsubdqxxx */
   0,  /* vphsubwd */
   0,  /* vphsubwdx */
   0,  /* vphsubwdxx */
   0,  /* vphsubwdxxx */
   0,  /* vfrczpd */
   0,  /* vfrczpdx */
   0,  /* vfrczpdxx */
   0,  /* vfrczpdxxx */
   0,  /* vfrczps */
   0,  /* vfrczpsx */
   0,  /* vfrczpsxx */
   0,  /* vfrczpsxxx */
   0,  /* vfrczsd */
   0,  /* vfrczsdx */
   0,  /* vfrczsdxx */
   0,  /* vfrczsdxxx */
   0,  /* vfrczss */
   0,  /* vfrczssx */
   0,  /* vfrczssxx */
   0,  /* vfrczssxxx */
   0,  /* vprotbi */
   0,  /* vprotbix */
   0,  /* vprotbixx */
   0,  /* vprotbixxx */
   0,  /* vprotdi */
   0,  /* vprotdix */
   0,  /* vprotdixx */
   0,  /* vprotdixxx */
   0,  /* vprotqi */
   0,  /* vprotqix */
   0,  /* vprotqixx */
   0,  /* vprotqixxx */
   0,  /* vprotwi */
   0,  /* vprotwix */
   0,  /* vprotwixx */
   0,  /* vprotwixxx */
   0,  /* vpcomb */
   0,  /* vpcombx */
   0,  /* vpcombxx */
   0,  /* vpcombxxx */
   0,  /* vpcomd */
   0,  /* vpcomdx */
   0,  /* vpcomdxx */
   0,  /* vpcomdxxx */
   0,  /* vpcomq */
   0,  /* vpcomqx */
   0,  /* vpcomqxx */
   0,  /* vpcomqxxx */
   0,  /* vpcomw */
   0,  /* vpcomwx */
   0,  /* vpcomwxx */
   0,  /* vpcomwxxx */
   0,  /* vpcomub */
   0,  /* vpcomubx */
   0,  /* vpcomubxx */
   0,  /* vpcomubxxx */
   0,  /* vpcomud */
   0,  /* vpcomudx */
   0,  /* vpcomudxx */
   0,  /* vpcomudxxx */
   0,  /* vpcomuq */
   0,  /* vpcomuqx */
   0,  /* vpcomuqxx */
   0,  /* vpcomuqxxx */
   0,  /* vpcomuw */
   0,  /* vpcomuwx */
   0,  /* vpcomuwxx */
   0,  /* vpcomuwxxx */
   0,  /* vpperm */
   0,  /* vppermx */
   0,  /* vppermxx */
   0,  /* vppermxxx */
   0,  /* vppermxr */
   0,  /* vppermxxr */
   0,  /* vppermxxxr */
   0,  /* vprotb */
   0,  /* vprotbx */
   0,  /* vprotbxx */
   0,  /* vprotbxxx */
   0,  /* vprotbxr */
   0,  /* vprotbxxr */
   0,  /* vprotbxxxr */
   0,  /* vprotd */
   0,  /* vprotdx */
   0,  /* vprotdxx */
   0,  /* vprotdxxx */
   0,  /* vprotdxr */
   0,  /* vprotdxxr */
   0,  /* vprotdxxxr */
   0,  /* vprotq */
   0,  /* vprotqx */
   0,  /* vprotqxx */
   0,  /* vprotqxxx */
   0,  /* vprotqxr */
   0,  /* vprotqxxr */
   0,  /* vprotqxxxr */
   0,  /* vprotw */
   0,  /* vprotwx */
   0,  /* vprotwxx */
   0,  /* vprotwxxx */
   0,  /* vprotwxr */
   0,  /* vprotwxxr */
   0,  /* vprotwxxxr */
   0,  /* vpshab */
   0,  /* vpshabx */
   0,  /* vpshabxx */
   0,  /* vpshabxxx */
   0,  /* vpshabxr */
   0,  /* vpshabxxr */
   0,  /* vpshabxxxr */
   0,  /* vpshad */
   0,  /* vpshadx */
   0,  /* vpshadxx */
   0,  /* vpshadxxx */
   0,  /* vpshadxr */
   0,  /* vpshadxxr */
   0,  /* vpshadxxxr */
   0,  /* vpshaq */
   0,  /* vpshaqx */
   0,  /* vpshaqxx */
   0,  /* vpshaqxxx */
   0,  /* vpshaqxr */
   0,  /* vpshaqxxr */
   0,  /* vpshaqxxxr */
   0,  /* vpshaw */
   0,  /* vpshawx */
   0,  /* vpshawxx */
   0,  /* vpshawxxx */
   0,  /* vpshawxr */
   0,  /* vpshawxxr */
   0,  /* vpshawxxxr */
   0,  /* vpshlb */
   0,  /* vpshlbx */
   0,  /* vpshlbxx */
   0,  /* vpshlbxxx */
   0,  /* vpshlbxr */
   0,  /* vpshlbxxr */
   0,  /* vpshlbxxxr */
   0,  /* vpshld */
   0,  /* vpshldx */
   0,  /* vpshldxx */
   0,  /* vpshldxxx */
   0,  /* vpshldxr */
   0,  /* vpshldxxr */
   0,  /* vpshldxxxr */
   0,  /* vpshlq */
   0,  /* vpshlqx */
   0,  /* vpshlqxx */
   0,  /* vpshlqxxx */
   0,  /* vpshlqxr */
   0,  /* vpshlqxxr */
   0,  /* vpshlqxxxr */
   0,  /* vpshlw */
   0,  /* vpshlwx */
   0,  /* vpshlwxx */
   0,  /* vpshlwxxx */
   0,  /* vpshlwxr */
   0,  /* vpshlwxxr */
   0,  /* vpshlwxxxr */
   0,  /* vpcmov */
   0,  /* vpcmovx */
   0,  /* vpcmovxx */
   0,  /* vpcmovxxx */
   0,  /* vpcmovxr */
   0,  /* vpcmovxxr */
   0,  /* vpcmovxxxr */
   0,  /* vpmacsdd */
   0,  /* vpmacsddx */
   0,  /* vpmacsddxx */
   0,  /* vpmacsddxxx */
   0,  /* vpmacsdqh */
   0,  /* vpmacsdqhx */
   0,  /* vpmacsdqhxx */
   0,  /* vpmacsdqhxxx */
   0,  /* vpmacsdql */
   0,  /* vpmacsdqlx */
   0,  /* vpmacsdqlxx */
   0,  /* vpmacsdqlxxx */
   0,  /* vpmacssdd */
   0,  /* vpmacssddx */
   0,  /* vpmacssddxx */
   0,  /* vpmacssddxxx */
   0,  /* vpmacssdqh */
   0,  /* vpmacssdqhx */
   0,  /* vpmacssdqhxx */
   0,  /* vpmacssdqhxxx */
   0,  /* vpmacssdql */
   0,  /* vpmacssdqlx */
   0,  /* vpmacssdqlxx */
   0,  /* vpmacssdqlxxx */
   0,  /* vpmacsswd */
   0,  /* vpmacsswdx */
   0,  /* vpmacsswdxx */
   0,  /* vpmacsswdxxx */
   0,  /* vpmacssww */
   0,  /* vpmacsswwx */
   0,  /* vpmacsswwxx */
   0,  /* vpmacsswwxxx */
   0,  /* vpmacswd */
   0,  /* vpmacswdx */
   0,  /* vpmacswdxx */
   0,  /* vpmacswdxxx */
   0,  /* vpmacsww */
   0,  /* vpmacswwx */
   0,  /* vpmacswwxx */
   0,  /* vpmacswwxxx */
   0,  /* vpmadcsswd */
   0,  /* vpmadcsswdx */
   0,  /* vpmadcsswdxx */
   0,  /* vpmadcsswdxxx */
   0,  /* vpmadcswd */
   0,  /* vpmadcswdx */
   0,  /* vpmadcswdxx */
   0,  /* vpmadcswdxxx */
   0,  /* vfadd128v64 */
   0,  /* vfaddx128v64 */
   0,  /* vfaddxx128v64 */
   0,  /* vfaddxxx128v64 */
   0,  /* vfadd128v32 */
   0,  /* vfaddx128v32 */
   0,  /* vfaddxx128v32 */
   0,  /* vfaddxxx128v32 */
   0,  /* vfaddsd */
   0,  /* vfaddxsd */
   0,  /* vfaddxxsd */
   0,  /* vfaddxxxsd */
   0,  /* vfaddss */
   0,  /* vfaddxss */
   0,  /* vfaddxxss */
   0,  /* vfaddxxxss */
   0,  /* vfaddsub128v64 */
   0,  /* vfaddsubx128v64 */
   0,  /* vfaddsubxx128v64 */
   0,  /* vfaddsubxxx128v64 */
   0,  /* vfaddsub128v32 */
   0,  /* vfaddsubx128v32 */
   0,  /* vfaddsubxx128v32 */
   0,  /* vfaddsubxxx128v32 */
   0,  /* vaesenc */
   0,  /* vaesencx */
   0,  /* vaesencxx */
   0,  /* vaesencxxx */
   0,  /* vaesenclast */
   0,  /* vaesenclastx */
   0,  /* vaesenclastxx */
   0,  /* vaesenclastxxx */
   0,  /* vaesdec */
   0,  /* vaesdecx */
   0,  /* vaesdecxx */
   0,  /* vaesdecxxx */
   0,  /* vaesdeclast */
   0,  /* vaesdeclastx */
   0,  /* vaesdeclastxx */
   0,  /* vaesdeclastxxx */
   0,  /* vaesimc */
   0,  /* vaesimcx */
   0,  /* vaesimcxx */
   0,  /* vaesimcxxx */
   0,  /* vaeskeygenassist */
   0,  /* vaeskeygenassistx */
   0,  /* vaeskeygenassistxx */
   0,  /* vaeskeygenassistxxx */
   0,  /* vandpd */
   0,  /* vfand128v64 */
   0,  /* vfandx128v64 */
   0,  /* vfandxx128v64 */
   0,  /* vfandxxx128v64 */
   0,  /* vandps */
   0,  /* vfand128v32 */
   0,  /* vfandx128v32 */
   0,  /* vfandxx128v32 */
   0,  /* vfandxxx128v32 */
   0,  /* vandnpd */
   0,  /* vfandn128v64 */
   0,  /* vfandnx128v64 */
   0,  /* vfandnxx128v64 */
   0,  /* vfandnxxx128v64 */
   0,  /* vandnps */
   0,  /* vfandn128v32 */
   0,  /* vfandnx128v32 */
   0,  /* vfandnxx128v32 */
   0,  /* vfandnxxx128v32 */
   0,  /* vfblend128v64 */
   0,  /* vfblendx128v64 */
   0,  /* vfblendxx128v64 */
   0,  /* vfblendxxx128v64 */
   0,  /* vfblend128v32 */
   0,  /* vfblendx128v32 */
   0,  /* vfblendxx128v32 */
   0,  /* vfblendxxx128v32 */
   0,  /* vfblendv128v64 */
   0,  /* vfblendvx128v64 */
   0,  /* vfblendvxx128v64 */
   0,  /* vfblendvxxx128v64 */
   0,  /* vfblendv128v32 */
   0,  /* vfblendvx128v32 */
   0,  /* vfblendvxx128v32 */
   0,  /* vfblendvxxx128v32 */
   0,  /* vfbroadcastss */
   0,  /* vfbroadcastxss */
   0,  /* vfbroadcastxxss */
   0,  /* vfbroadcastsd */
   0,  /* vfbroadcastxsd */
   0,  /* vfbroadcastxxsd */
   0,  /* vfbroadcastf128 */
   0,  /* vfbroadcastxf128 */
   0,  /* vfbroadcastxxf128 */
   0,  /* vcmppd */
   0,  /* vfcmp128v64 */
   0,  /* vfcmpx128v64 */
   0,  /* vfcmpxx128v64 */
   0,  /* vfcmpxxx128v64 */
   0,  /* vcmpps */
   0,  /* vfcmp128v32 */
   0,  /* vfcmpx128v32 */
   0,  /* vfcmpxx128v32 */
   0,  /* vfcmpxxx128v32 */
   0,  /* vfcmpsd */
   0,  /* vfcmpxsd */
   0,  /* vfcmpxxsd */
   0,  /* vfcmpxxxsd */
   0,  /* vfcmpss */
   0,  /* vfcmpxss */
   0,  /* vfcmpxxss */
   0,  /* vfcmpxxxss */
   0,  /* vcomisd */
   0,  /* vcomixsd */
   0,  /* vcomixxsd */
   0,  /* vcomixxxsd */
   0,  /* vcomiss */
   0,  /* vcomixss */
   0,  /* vcomixxss */
   0,  /* vcomixxxss */
   0,  /* vcvtdq2pd */
   0,  /* vcvtdq2pdx */
   0,  /* vcvtdq2pdxx */
   0,  /* vcvtdq2pdxxx */
   0,  /* vcvtdq2ps */
   0,  /* vcvtdq2psx */
   0,  /* vcvtdq2psxx */
   0,  /* vcvtdq2psxxx */
   0,  /* vcvtpd2dq */
   0,  /* vcvtpd2dqx */
   0,  /* vcvtpd2dqxx */
   0,  /* vcvtpd2dqxxx */
   0,  /* vcvtpd2dqy */
   0,  /* vcvtpd2dqyx */
   0,  /* vcvtpd2dqyxx */
   0,  /* vcvtpd2dqyxxx */
   0,  /* vcvtpd2ps */
   0,  /* vcvtpd2psx */
   0,  /* vcvtpd2psxx */
   0,  /* vcvtpd2psxxx */
   0,  /* vcvtpd2psy */
   0,  /* vcvtpd2psyx */
   0,  /* vcvtpd2psyxx */
   0,  /* vcvtpd2psyxxx */
   0,  /* vcvtps2dq */
   0,  /* vcvtps2dqx */
   0,  /* vcvtps2dqxx */
   0,  /* vcvtps2dqxxx */
   0,  /* vcvtps2pd */
   0,  /* vcvtps2pdx */
   0,  /* vcvtps2pdxx */
   0,  /* vcvtps2pdxxx */
   0,  /* vcvtsd2si */
   0,  /* vcvtsd2siq */
   0,  /* vcvtsd2ss */
   0,  /* vcvtsd2ssx */
   0,  /* vcvtsd2ssxx */
   0,  /* vcvtsd2ssxxx */
   0,  /* vcvtsi2sd */
   0,  /* vcvtsi2sdx */
   0,  /* vcvtsi2sdxx */
   0,  /* vcvtsi2sdxxx */
   0,  /* vcvtsi2sdq */
   0,  /* vcvtsi2sdqx */
   0,  /* vcvtsi2sdqxx */
   0,  /* vcvtsi2sdqxxx */
   0,  /* vcvtsi2ss */
   0,  /* vcvtsi2ssx */
   0,  /* vcvtsi2ssxx */
   0,  /* vcvtsi2ssxxx */
   0,  /* vcvtsi2ssq */
   0,  /* vcvtsi2ssqx */
   0,  /* vcvtsi2ssqxx */
   0,  /* vcvtsi2ssqxxx */
   0,  /* vcvtss2sd */
   0,  /* vcvtss2sdx */
   0,  /* vcvtss2sdxx */
   0,  /* vcvtss2sdxxx */
   0,  /* vcvtss2si */
   0,  /* vcvtss2siq */
   0,  /* vcvttpd2dq */
   0,  /* vcvttpd2dqx */
   0,  /* vcvttpd2dqxx */
   0,  /* vcvttpd2dqxxx */
   0,  /* vcvttpd2dqy */
   0,  /* vcvttpd2dqyx */
   0,  /* vcvttpd2dqyxx */
   0,  /* vcvttpd2dqyxxx */
   0,  /* vcvttps2dq */
   0,  /* vcvttps2dqx */
   0,  /* vcvttps2dqxx */
   0,  /* vcvttps2dqxxx */
   0,  /* vcvttsd2si */
   0,  /* vcvttsd2siq */
   0,  /* vcvttss2si */
   0,  /* vcvttss2siq */
   0,  /* vfdiv128v64 */
   0,  /* vfdivx128v64 */
   0,  /* vfdivxx128v64 */
   0,  /* vfdivxxx128v64 */
   0,  /* vfdiv128v32 */
   0,  /* vfdivx128v32 */
   0,  /* vfdivxx128v32 */
   0,  /* vfdivxxx128v32 */
   0,  /* vdivsd */
   0,  /* vdivxsd */
   0,  /* vdivxxsd */
   0,  /* vdivxxxsd */
   0,  /* vdivss */
   0,  /* vdivxss */
   0,  /* vdivxxss */
   0,  /* vdivxxxss */
   0,  /* vfdp128v64 */
   0,  /* vfdpx128v64 */
   0,  /* vfdpxx128v64 */
   0,  /* vfdpxxx128v64 */
   0,  /* vfdp128v32 */
   0,  /* vfdpx128v32 */
   0,  /* vfdpxx128v32 */
   0,  /* vfdpxxx128v32 */
   0,  /* vfextrf128 */
   0,  /* vfextrxf128 */
   0,  /* vfextrxxf128 */
   0,  /* vfextrxxxf128 */
   0,  /* vfextr128v32 */
   0,  /* vfextrx128v32 */
   0,  /* vfextrxx128v32 */
   0,  /* vfextrxxx128v32 */
   0,  /* vfhadd128v64 */
   0,  /* vfhaddx128v64 */
   0,  /* vfhaddxx128v64 */
   0,  /* vfhaddxxx128v64 */
   0,  /* vfhadd128v32 */
   0,  /* vfhaddx128v32 */
   0,  /* vfhaddxx128v32 */
   0,  /* vfhaddxxx128v32 */
   0,  /* vfhsub128v64 */
   0,  /* vfhsubx128v64 */
   0,  /* vfhsubxx128v64 */
   0,  /* vfhsubxxx128v64 */
   0,  /* vfhsub128v32 */
   0,  /* vfhsubx128v32 */
   0,  /* vfhsubxx128v32 */
   0,  /* vfhsubxxx128v32 */
   0,  /* vfinsrf128 */
   0,  /* vfinsrxf128 */
   0,  /* vfinsrxxf128 */
   0,  /* vfinsrxxxf128 */
   0,  /* vfinsr128v32 */
   0,  /* vfinsrx128v32 */
   0,  /* vfinsrxx128v32 */
   0,  /* vfinsrxxx128v32 */
   0,  /* vlddqu */
   0,  /* vlddqux */
   0,  /* vlddquxx */
   0,  /* vlddqu_n32 */
   0,  /* vldmxcsr */
   0,  /* vmaskmovdqu */
   0,  /* vfmaskld128v32 */
   0,  /* vfmaskldx128v32 */
   0,  /* vfmaskldxx128v32 */
   0,  /* vfmaskld128v64 */
   0,  /* vfmaskldx128v64 */
   0,  /* vfmaskldxx128v64 */
   0,  /* vfmaskst128v32 */
   0,  /* vfmaskstx128v32 */
   0,  /* vfmaskstxx128v32 */
   0,  /* vfmaskst128v64 */
   0,  /* vfmaskstx128v64 */
   0,  /* vfmaskstxx128v64 */
   0,  /* vfmax128v64 */
   0,  /* vfmaxx128v64 */
   0,  /* vfmaxxx128v64 */
   0,  /* vfmaxxxx128v64 */
   0,  /* vfmax128v32 */
   0,  /* vfmaxx128v32 */
   0,  /* vfmaxxx128v32 */
   0,  /* vfmaxxxx128v32 */
   0,  /* vfmaxsd */
   0,  /* vfmaxxsd */
   0,  /* vfmaxxxsd */
   0,  /* vfmaxxxxsd */
   0,  /* vfmaxss */
   0,  /* vfmaxxss */
   0,  /* vfmaxxxss */
   0,  /* vfmaxxxxss */
   0,  /* vfmin128v64 */
   0,  /* vfminx128v64 */
   0,  /* vfminxx128v64 */
   0,  /* vfminxxx128v64 */
   0,  /* vfmin128v32 */
   0,  /* vfminx128v32 */
   0,  /* vfminxx128v32 */
   0,  /* vfminxxx128v32 */
   0,  /* vfminsd */
   0,  /* vfminxsd */
   0,  /* vfminxxsd */
   0,  /* vfminxxxsd */
   0,  /* vfminss */
   0,  /* vfminxss */
   0,  /* vfminxxss */
   0,  /* vfminxxxss */
   0,  /* vmovapd */
   0,  /* vldapd */
   0,  /* vldapdx */
   0,  /* vldapdxx */
   0,  /* vldapd_n32 */
   0,  /* vstapd */
   0,  /* vstapdx */
   0,  /* vstapdxx */
   0,  /* vstapd_n32 */
   0,  /* vmovaps */
   0,  /* vldaps */
   0,  /* vldapsx */
   0,  /* vldapsxx */
   0,  /* vldaps_n32 */
   0,  /* vstaps */
   0,  /* vstapsx */
   0,  /* vstapsxx */
   0,  /* vstaps_n32 */
   0,  /* vmovg2x */
   0,  /* vmovg2x64 */
   0,  /* vmovx2g */
   0,  /* vmovx2g64 */
   0,  /* vld64_2sse */
   0,  /* vldx64_2sse */
   0,  /* vldxx64_2sse */
   0,  /* vld64_2sse_n32 */
   0,  /* vst64_fsse */
   0,  /* vstx64_fsse */
   0,  /* vstxx64_fsse */
   0,  /* vst64_fsse_n32 */
   0,  /* vmovddup */
   0,  /* vmovddupx */
   0,  /* vmovddupxx */
   0,  /* vmovddupxxx */
   0,  /* vlddqa */
   0,  /* vlddqax */
   0,  /* vlddqaxx */
   0,  /* vlddqa_n32 */
   0,  /* vmovdqa */
   0,  /* vstdqa */
   0,  /* vstdqax */
   0,  /* vstdqaxx */
   0,  /* vstdqa_n32 */
   0,  /* vstdqu */
   0,  /* vstdqux */
   0,  /* vstdquxx */
   0,  /* vstdqu_n32 */
   0,  /* vldhpd */
   0,  /* vldhpdx */
   0,  /* vldhpdxx */
   0,  /* vldhpd_n32 */
   0,  /* vsthpd */
   0,  /* vsthpdx */
   0,  /* vsthpdxx */
   0,  /* vsthpd_n32 */
   0,  /* vldhps */
   0,  /* vldhpsx */
   0,  /* vldhpsxx */
   0,  /* vldhps_n32 */
   0,  /* vsthps */
   0,  /* vsthpsx */
   0,  /* vsthpsxx */
   0,  /* vsthps_n32 */
   0,  /* vldlpd */
   0,  /* vldlpdx */
   0,  /* vldlpdxx */
   0,  /* vldlpd_n32 */
   0,  /* vstorelpd */
   0,  /* vstlpd */
   0,  /* vstlpdx */
   0,  /* vstlpdxx */
   0,  /* vstlpd_n32 */
   0,  /* vldlps */
   0,  /* vldlpsx */
   0,  /* vldlpsxx */
   0,  /* vldlps_n32 */
   0,  /* vstlps */
   0,  /* vstlpsx */
   0,  /* vstlpsxx */
   0,  /* vstlps_n32 */
   0,  /* vmovmskpd */
   0,  /* vmovmskps */
   0,  /* vstorenti128 */
   0,  /* vstorentxi128 */
   0,  /* vstorentxxi128 */
   0,  /* vldntdqa */
   0,  /* vldntdqax */
   0,  /* vldntdqaxx */
   0,  /* vstntdq */
   0,  /* vstntdqx */
   0,  /* vstntdqxx */
   0,  /* vstntpd */
   0,  /* vstntpdx */
   0,  /* vstntpdxx */
   0,  /* vstntps */
   0,  /* vstntpsx */
   0,  /* vstntpsxx */
   0,  /* vstntsd */
   0,  /* vstntsdx */
   0,  /* vstntsdxx */
   0,  /* vstntss */
   0,  /* vstntssx */
   0,  /* vstntssxx */
   0,  /* vmovsd */
   0,  /* vldsd */
   0,  /* vldsdx */
   0,  /* vldsdxx */
   0,  /* vldsd_n32 */
   0,  /* vstsd */
   0,  /* vstsdx */
   0,  /* vstsdxx */
   0,  /* vstsd_n32 */
   0,  /* vmovss */
   0,  /* vldss */
   0,  /* vldssx */
   0,  /* vldssxx */
   0,  /* vldss_n32 */
   0,  /* vstss */
   0,  /* vstssx */
   0,  /* vstssxx */
   0,  /* vstss_n32 */
   0,  /* vmovlhps */
   0,  /* vmovhlps */
   0,  /* vmovshdup */
   0,  /* vmovshdupx */
   0,  /* vmovshdupxx */
   0,  /* vmovshdupxxx */
   0,  /* vmovsldup */
   0,  /* vmovsldupx */
   0,  /* vmovsldupxx */
   0,  /* vmovsldupxxx */
   0,  /* vldupd */
   0,  /* vldupdx */
   0,  /* vldupdxx */
   0,  /* vldupd_n32 */
   0,  /* vstupd */
   0,  /* vstupdx */
   0,  /* vstupdxx */
   0,  /* vstupd_n32 */
   0,  /* vldups */
   0,  /* vldupsx */
   0,  /* vldupsxx */
   0,  /* vldups_n32 */
   0,  /* vstups */
   0,  /* vstupsx */
   0,  /* vstupsxx */
   0,  /* vstups_n32 */
   0,  /* vmpsadbw */
   0,  /* vmpsadbwx */
   0,  /* vmpsadbwxx */
   0,  /* vmpsadbwxxx */
   0,  /* vfmul128v64 */
   0,  /* vfmulx128v64 */
   0,  /* vfmulxx128v64 */
   0,  /* vfmulxxx128v64 */
   0,  /* vfmul128v32 */
   0,  /* vfmulx128v32 */
   0,  /* vfmulxx128v32 */
   0,  /* vfmulxxx128v32 */
   0,  /* vmulsd */
   0,  /* vmulxsd */
   0,  /* vmulxxsd */
   0,  /* vmulxxxsd */
   0,  /* vmulss */
   0,  /* vmulxss */
   0,  /* vmulxxss */
   0,  /* vmulxxxss */
   0,  /* vorpd */
   0,  /* vfor128v64 */
   0,  /* vforx128v64 */
   0,  /* vforxx128v64 */
   0,  /* vforxxx128v64 */
   0,  /* vorps */
   0,  /* vfor128v32 */
   0,  /* vforx128v32 */
   0,  /* vforxx128v32 */
   0,  /* vforxxx128v32 */
   0,  /* vabs128v8 */
   0,  /* vabsx128v8 */
   0,  /* vabsxx128v8 */
   0,  /* vabsxxx128v8 */
   0,  /* vabs128v32 */
   0,  /* vabsx128v32 */
   0,  /* vabsxx128v32 */
   0,  /* vabsxxx128v32 */
   0,  /* vabs128v16 */
   0,  /* vabsx128v16 */
   0,  /* vabsxx128v16 */
   0,  /* vabsxxx128v16 */
   0,  /* vpackssdw */
   0,  /* vpackssdwx */
   0,  /* vpackssdwxx */
   0,  /* vpackssdwxxx */
   0,  /* vpacksswb */
   0,  /* vpacksswbx */
   0,  /* vpacksswbxx */
   0,  /* vpacksswbxxx */
   0,  /* vpackusdw */
   0,  /* vpackusdwx */
   0,  /* vpackusdwxx */
   0,  /* vpackusdwxxx */
   0,  /* vpackuswb */
   0,  /* vpackuswbx */
   0,  /* vpackuswbxx */
   0,  /* vpackuswbxxx */
   0,  /* vadd128v8 */
   0,  /* vaddx128v8 */
   0,  /* vaddxx128v8 */
   0,  /* vaddxxx128v8 */
   0,  /* vadd128v32 */
   0,  /* vaddx128v32 */
   0,  /* vaddxx128v32 */
   0,  /* vaddxxx128v32 */
   0,  /* vadd128v64 */
   0,  /* vaddx128v64 */
   0,  /* vaddxx128v64 */
   0,  /* vaddxxx128v64 */
   0,  /* vadd128v16 */
   0,  /* vaddx128v16 */
   0,  /* vaddxx128v16 */
   0,  /* vaddxxx128v16 */
   0,  /* vadds128v8 */
   0,  /* vaddsx128v8 */
   0,  /* vaddsxx128v8 */
   0,  /* vaddsxxx128v8 */
   0,  /* vadds128v16 */
   0,  /* vaddsx128v16 */
   0,  /* vaddsxx128v16 */
   0,  /* vaddsxxx128v16 */
   0,  /* vaddus128v8 */
   0,  /* vaddusx128v8 */
   0,  /* vaddusxx128v8 */
   0,  /* vaddusxxx128v8 */
   0,  /* vaddus128v16 */
   0,  /* vaddusx128v16 */
   0,  /* vaddusxx128v16 */
   0,  /* vaddusxxx128v16 */
   0,  /* vpalignr128 */
   0,  /* vpalignrx128 */
   0,  /* vpalignrxx128 */
   0,  /* vpalignrxxx128 */
   0,  /* vand128v8 */
   0,  /* vandx128v8 */
   0,  /* vandxx128v8 */
   0,  /* vandxxx128v8 */
   0,  /* vand128v16 */
   0,  /* vandx128v16 */
   0,  /* vandxx128v16 */
   0,  /* vandxxx128v16 */
   0,  /* vand128v32 */
   0,  /* vandx128v32 */
   0,  /* vandxx128v32 */
   0,  /* vandxxx128v32 */
   0,  /* vand128v64 */
   0,  /* vandx128v64 */
   0,  /* vandxx128v64 */
   0,  /* vandxxx128v64 */
   0,  /* vandn128v8 */
   0,  /* vandnx128v8 */
   0,  /* vandnxx128v8 */
   0,  /* vandnxxx128v8 */
   0,  /* vandn128v16 */
   0,  /* vandnx128v16 */
   0,  /* vandnxx128v16 */
   0,  /* vandnxxx128v16 */
   0,  /* vandn128v32 */
   0,  /* vandnx128v32 */
   0,  /* vandnxx128v32 */
   0,  /* vandnxxx128v32 */
   0,  /* vandn128v64 */
   0,  /* vandnx128v64 */
   0,  /* vandnxx128v64 */
   0,  /* vandnxxx128v64 */
   0,  /* vpavgb */
   0,  /* vpavgbx */
   0,  /* vpavgbxx */
   0,  /* vpavgbxxx */
   0,  /* vpavgw */
   0,  /* vpavgwx */
   0,  /* vpavgwxx */
   0,  /* vpavgwxxx */
   0,  /* vblendv128v8 */
   0,  /* vblendvx128v8 */
   0,  /* vblendvxx128v8 */
   0,  /* vblendvxxx128v8 */
   0,  /* vblend128v16 */
   0,  /* vblendx128v16 */
   0,  /* vblendxx128v16 */
   0,  /* vblendxxx128v16 */
   0,  /* vpclmulqdq */
   0,  /* vpclmulqdqx */
   0,  /* vpclmulqdqxx */
   0,  /* vpclmulqdqxxx */
   0,  /* vcmpeq128v8 */
   0,  /* vcmpeqx128v8 */
   0,  /* vcmpeqxx128v8 */
   0,  /* vcmpeqxxx128v8 */
   0,  /* vcmpeq128v32 */
   0,  /* vcmpeqx128v32 */
   0,  /* vcmpeqxx128v32 */
   0,  /* vcmpeqxxx128v32 */
   0,  /* vcmpeq128v64 */
   0,  /* vcmpeqx128v64 */
   0,  /* vcmpeqxx128v64 */
   0,  /* vcmpeqxxx128v64 */
   0,  /* vcmpeq128v16 */
   0,  /* vcmpeqx128v16 */
   0,  /* vcmpeqxx128v16 */
   0,  /* vcmpeqxxx128v16 */
   0,  /* vcmpestri */
   0,  /* vcmpestrix */
   0,  /* vcmpestrixx */
   0,  /* vcmpestrixxx */
   0,  /* vcmpestrm */
   0,  /* vcmpestrmx */
   0,  /* vcmpestrmxx */
   0,  /* vcmpestrmxxx */
   0,  /* vcmpgt128v8 */
   0,  /* vcmpgtx128v8 */
   0,  /* vcmpgtxx128v8 */
   0,  /* vcmpgtxxx128v8 */
   0,  /* vcmpgt128v32 */
   0,  /* vcmpgtx128v32 */
   0,  /* vcmpgtxx128v32 */
   0,  /* vcmpgtxxx128v32 */
   0,  /* vcmpgt128v64 */
   0,  /* vcmpgtx128v64 */
   0,  /* vcmpgtxx128v64 */
   0,  /* vcmpgtxxx128v64 */
   0,  /* vcmpgt128v16 */
   0,  /* vcmpgtx128v16 */
   0,  /* vcmpgtxx128v16 */
   0,  /* vcmpgtxxx128v16 */
   0,  /* vcmpistri */
   0,  /* vcmpistrix */
   0,  /* vcmpistrixx */
   0,  /* vcmpistrixxx */
   0,  /* vcmpistrm */
   0,  /* vcmpistrmx */
   0,  /* vcmpistrmxx */
   0,  /* vcmpistrmxxx */
   0,  /* vfperm128v64 */
   0,  /* vfpermx128v64 */
   0,  /* vfpermxx128v64 */
   0,  /* vfpermxxx128v64 */
   0,  /* vfpermi128v64 */
   0,  /* vfpermix128v64 */
   0,  /* vfpermixx128v64 */
   0,  /* vfpermixxx128v64 */
   0,  /* vfperm128v32 */
   0,  /* vfpermx128v32 */
   0,  /* vfpermxx128v32 */
   0,  /* vfpermxxx128v32 */
   0,  /* vfpermi128v32 */
   0,  /* vfpermix128v32 */
   0,  /* vfpermixx128v32 */
   0,  /* vfpermixxx128v32 */
   0,  /* vfperm2f128 */
   0,  /* vfperm2xf128 */
   0,  /* vfperm2xxf128 */
   0,  /* vfperm2xxxf128 */
   0,  /* vextr128v8 */
   0,  /* vextrx128v8 */
   0,  /* vextrxx128v8 */
   0,  /* vextrxxx128v8 */
   0,  /* vextr128v32 */
   0,  /* vextrx128v32 */
   0,  /* vextrxx128v32 */
   0,  /* vextrxxx128v32 */
   0,  /* vextr128v64 */
   0,  /* vextrx128v64 */
   0,  /* vextrxx128v64 */
   0,  /* vextrxxx128v64 */
   0,  /* vextr128v16 */
   0,  /* vextrx128v16 */
   0,  /* vextrxx128v16 */
   0,  /* vextrxxx128v16 */
   0,  /* vphadd128v32 */
   0,  /* vphaddx128v32 */
   0,  /* vphaddxx128v32 */
   0,  /* vphaddxxx128v32 */
   0,  /* vphadds128v16 */
   0,  /* vphaddsx128v16 */
   0,  /* vphaddsxx128v16 */
   0,  /* vphaddsxxx128v16 */
   0,  /* vphadd128v16 */
   0,  /* vphaddx128v16 */
   0,  /* vphaddxx128v16 */
   0,  /* vphaddxxx128v16 */
   0,  /* vphminposuw */
   0,  /* vphminposuwx */
   0,  /* vphminposuwxx */
   0,  /* vphminposuwxxx */
   0,  /* vphsub128v32 */
   0,  /* vphsubx128v32 */
   0,  /* vphsubxx128v32 */
   0,  /* vphsubxxx128v32 */
   0,  /* vphsubs128v16 */
   0,  /* vphsubsx128v16 */
   0,  /* vphsubsxx128v16 */
   0,  /* vphsubsxxx128v16 */
   0,  /* vphsub128v16 */
   0,  /* vphsubx128v16 */
   0,  /* vphsubxx128v16 */
   0,  /* vphsubxxx128v16 */
   0,  /* vinsr128v8 */
   0,  /* vinsrx128v8 */
   0,  /* vinsrxx128v8 */
   0,  /* vinsrxxx128v8 */
   0,  /* vinsr128v32 */
   0,  /* vinsrx128v32 */
   0,  /* vinsrxx128v32 */
   0,  /* vinsrxxx128v32 */
   0,  /* vinsr128v64 */
   0,  /* vinsrx128v64 */
   0,  /* vinsrxx128v64 */
   0,  /* vinsrxxx128v64 */
   0,  /* vinsr128v16 */
   0,  /* vinsrx128v16 */
   0,  /* vinsrxx128v16 */
   0,  /* vinsrxxx128v16 */
   0,  /* vpmaddwd */
   0,  /* vpmaddwdx */
   0,  /* vpmaddwdxx */
   0,  /* vpmaddwdxxx */
   0,  /* vpmaddubsw128 */
   0,  /* vpmaddubswx128 */
   0,  /* vpmaddubswxx128 */
   0,  /* vpmaddubswxxx128 */
   0,  /* vmaxs128v8 */
   0,  /* vmaxsx128v8 */
   0,  /* vmaxsxx128v8 */
   0,  /* vmaxsxxx128v8 */
   0,  /* vmaxs128v32 */
   0,  /* vmaxsx128v32 */
   0,  /* vmaxsxx128v32 */
   0,  /* vmaxsxxx128v32 */
   0,  /* vmaxs128v16 */
   0,  /* vmaxsx128v16 */
   0,  /* vmaxsxx128v16 */
   0,  /* vmaxsxxx128v16 */
   0,  /* vmaxu128v8 */
   0,  /* vmaxux128v8 */
   0,  /* vmaxuxx128v8 */
   0,  /* vmaxuxxx128v8 */
   0,  /* vmaxu128v32 */
   0,  /* vmaxux128v32 */
   0,  /* vmaxuxx128v32 */
   0,  /* vmaxuxxx128v32 */
   0,  /* vmaxu128v16 */
   0,  /* vmaxux128v16 */
   0,  /* vmaxuxx128v16 */
   0,  /* vmaxuxxx128v16 */
   0,  /* vmins128v8 */
   0,  /* vminsx128v8 */
   0,  /* vminsxx128v8 */
   0,  /* vminsxxx128v8 */
   0,  /* vmins128v32 */
   0,  /* vminsx128v32 */
   0,  /* vminsxx128v32 */
   0,  /* vminsxxx128v32 */
   0,  /* vmins128v16 */
   0,  /* vminsx128v16 */
   0,  /* vminsxx128v16 */
   0,  /* vminsxxx128v16 */
   0,  /* vminu128v8 */
   0,  /* vminux128v8 */
   0,  /* vminuxx128v8 */
   0,  /* vminuxxx128v8 */
   0,  /* vminu128v32 */
   0,  /* vminux128v32 */
   0,  /* vminuxx128v32 */
   0,  /* vminuxxx128v32 */
   0,  /* vminu128v16 */
   0,  /* vminux128v16 */
   0,  /* vminuxx128v16 */
   0,  /* vminuxxx128v16 */
   0,  /* vpmovmskb128 */
   0,  /* vpmovsxbd */
   0,  /* vpmovsxbdx */
   0,  /* vpmovsxbdxx */
   0,  /* vpmovsxbdxxx */
   0,  /* vpmovsxbq */
   0,  /* vpmovsxbqx */
   0,  /* vpmovsxbqxx */
   0,  /* vpmovsxbqxxx */
   0,  /* vpmovsxbw */
   0,  /* vpmovsxbwx */
   0,  /* vpmovsxbwxx */
   0,  /* vpmovsxbwxxx */
   0,  /* vpmovsxdq */
   0,  /* vpmovsxdqx */
   0,  /* vpmovsxdqxx */
   0,  /* vpmovsxdqxxx */
   0,  /* vpmovsxwd */
   0,  /* vpmovsxwdx */
   0,  /* vpmovsxwdxx */
   0,  /* vpmovsxwdxxx */
   0,  /* vpmovsxwq */
   0,  /* vpmovsxwqx */
   0,  /* vpmovsxwqxx */
   0,  /* vpmovsxwqxxx */
   0,  /* vpmovzxbd */
   0,  /* vpmovzxbdx */
   0,  /* vpmovzxbdxx */
   0,  /* vpmovzxbdxxx */
   0,  /* vpmovzxbq */
   0,  /* vpmovzxbqx */
   0,  /* vpmovzxbqxx */
   0,  /* vpmovzxbqxxx */
   0,  /* vpmovzxbw */
   0,  /* vpmovzxbwx */
   0,  /* vpmovzxbwxx */
   0,  /* vpmovzxbwxxx */
   0,  /* vpmovzxdq */
   0,  /* vpmovzxdqx */
   0,  /* vpmovzxdqxx */
   0,  /* vpmovzxdqxxx */
   0,  /* vpmovzxwd */
   0,  /* vpmovzxwdx */
   0,  /* vpmovzxwdxx */
   0,  /* vpmovzxwdxxx */
   0,  /* vpmovzxwq */
   0,  /* vpmovzxwqx */
   0,  /* vpmovzxwqxx */
   0,  /* vpmovzxwqxxx */
   0,  /* vmulhuw */
   0,  /* vmulhuwx */
   0,  /* vmulhuwxx */
   0,  /* vmulhuwxxx */
   0,  /* vmulhrsw */
   0,  /* vmulhrswx */
   0,  /* vmulhrswxx */
   0,  /* vmulhrswxxx */
   0,  /* vmulhw */
   0,  /* vmulhwx */
   0,  /* vmulhwxx */
   0,  /* vmulhwxxx */
   0,  /* vmulld */
   0,  /* vmulldx */
   0,  /* vmulldxx */
   0,  /* vmulldxxx */
   0,  /* vmul128v16 */
   0,  /* vmulx128v16 */
   0,  /* vmulxx128v16 */
   0,  /* vmulxxx128v16 */
   0,  /* vmul128v32 */
   0,  /* vmulx128v32 */
   0,  /* vmulxx128v32 */
   0,  /* vmulxxx128v32 */
   0,  /* vmuludq */
   0,  /* vmuludqx */
   0,  /* vmuludqxx */
   0,  /* vmuludqxxx */
   0,  /* vmuldq */
   0,  /* vmuldqx */
   0,  /* vmuldqxx */
   0,  /* vmuldqxxx */
   0,  /* vor128v8 */
   0,  /* vorx128v8 */
   0,  /* vorxx128v8 */
   0,  /* vorxxx128v8 */
   0,  /* vor128v16 */
   0,  /* vorx128v16 */
   0,  /* vorxx128v16 */
   0,  /* vorxxx128v16 */
   0,  /* vor128v32 */
   0,  /* vorx128v32 */
   0,  /* vorxx128v32 */
   0,  /* vorxxx128v32 */
   0,  /* vor128v64 */
   0,  /* vorx128v64 */
   0,  /* vorxx128v64 */
   0,  /* vorxxx128v64 */
   0,  /* vpsadbw */
   0,  /* vpsadbwx */
   0,  /* vpsadbwxx */
   0,  /* vpsadbwxxx */
   0,  /* vpshuf128v8 */
   0,  /* vpshufx128v8 */
   0,  /* vpshufxx128v8 */
   0,  /* vpshufxxx128v8 */
   0,  /* vpshuf128v32 */
   0,  /* vpshufx128v32 */
   0,  /* vpshufxx128v32 */
   0,  /* vpshufxxx128v32 */
   0,  /* vpshufw64v16 */
   0,  /* vpshufwx64v16 */
   0,  /* vpshufwxx64v16 */
   0,  /* vpshufwxxx64v16 */
   0,  /* vpshufhw */
   0,  /* vpshufhwx */
   0,  /* vpshufhwxx */
   0,  /* vpshufhwxxx */
   0,  /* vpshuflw */
   0,  /* vpshuflwx */
   0,  /* vpshuflwxx */
   0,  /* vpshuflwxxx */
   0,  /* vpsign128v8 */
   0,  /* vpsignx128v8 */
   0,  /* vpsignxx128v8 */
   0,  /* vpsignxxx128v8 */
   0,  /* vpsign128v32 */
   0,  /* vpsignx128v32 */
   0,  /* vpsignxx128v32 */
   0,  /* vpsignxxx128v32 */
   0,  /* vpsign128v16 */
   0,  /* vpsignx128v16 */
   0,  /* vpsignxx128v16 */
   0,  /* vpsignxxx128v16 */
   0,  /* vpslldq */
   0,  /* vpsrldq */
   0,  /* vpslld */
   0,  /* vpslldx */
   0,  /* vpslldxx */
   0,  /* vpslldxxx */
   0,  /* vpslldi */
   0,  /* vpsllq */
   0,  /* vpsllqx */
   0,  /* vpsllqxx */
   0,  /* vpsllqxxx */
   0,  /* vpsllqi */
   0,  /* vpsllw */
   0,  /* vpsllwx */
   0,  /* vpsllwxx */
   0,  /* vpsllwxxx */
   0,  /* vpsllwi */
   0,  /* vpsrad */
   0,  /* vpsradx */
   0,  /* vpsradxx */
   0,  /* vpsradxxx */
   0,  /* vpsradi */
   0,  /* vpsraw */
   0,  /* vpsrawx */
   0,  /* vpsrawxx */
   0,  /* vpsrawxxx */
   0,  /* vpsrawi */
   0,  /* vpsrld */
   0,  /* vpsrldx */
   0,  /* vpsrldxx */
   0,  /* vpsrldxxx */
   0,  /* vpsrldi */
   0,  /* vpsrlq */
   0,  /* vpsrlqx */
   0,  /* vpsrlqxx */
   0,  /* vpsrlqxxx */
   0,  /* vpsrlqi */
   0,  /* vpsrlw */
   0,  /* vpsrlwx */
   0,  /* vpsrlwxx */
   0,  /* vpsrlwxxx */
   0,  /* vpsrlwi */
   0,  /* vsub128v8 */
   0,  /* vsubx128v8 */
   0,  /* vsubxx128v8 */
   0,  /* vsubxxx128v8 */
   0,  /* vsub128v32 */
   0,  /* vsubx128v32 */
   0,  /* vsubxx128v32 */
   0,  /* vsubxxx128v32 */
   0,  /* vsub128v64 */
   0,  /* vsubx128v64 */
   0,  /* vsubxx128v64 */
   0,  /* vsubxxx128v64 */
   0,  /* vsub128v16 */
   0,  /* vsubx128v16 */
   0,  /* vsubxx128v16 */
   0,  /* vsubxxx128v16 */
   0,  /* vsubs128v8 */
   0,  /* vsubsx128v8 */
   0,  /* vsubsxx128v8 */
   0,  /* vsubsxxx128v8 */
   0,  /* vsubs128v16 */
   0,  /* vsubsx128v16 */
   0,  /* vsubsxx128v16 */
   0,  /* vsubsxxx128v16 */
   0,  /* vsubus128v8 */
   0,  /* vsubusx128v8 */
   0,  /* vsubusxx128v8 */
   0,  /* vsubusxxx128v8 */
   0,  /* vsubus128v16 */
   0,  /* vsubusx128v16 */
   0,  /* vsubusxx128v16 */
   0,  /* vsubusxxx128v16 */
   0,  /* vptest128 */
   0,  /* vptestx128 */
   0,  /* vptestxx128 */
   0,  /* vptestxxx128 */
   0,  /* vtestpd */
   0,  /* vtestxpd */
   0,  /* vtestxxpd */
   0,  /* vtestxxxpd */
   0,  /* vtestps */
   0,  /* vtestxps */
   0,  /* vtestxxps */
   0,  /* vtestxxxps */
   0,  /* vpunpckh64v8 */
   0,  /* vpunpckhx64v8 */
   0,  /* vpunpckhxx64v8 */
   0,  /* vpunpckhxxx64v8 */
   0,  /* vpunpckh64v32 */
   0,  /* vpunpckhx64v32 */
   0,  /* vpunpckhxx64v32 */
   0,  /* vpunpckhxxx64v32 */
   0,  /* vpunpckh64v16 */
   0,  /* vpunpckhx64v16 */
   0,  /* vpunpckhxx64v16 */
   0,  /* vpunpckhxxx64v16 */
   0,  /* vpunpckh64v64 */
   0,  /* vpunpckhx64v64 */
   0,  /* vpunpckhxx64v64 */
   0,  /* vpunpckhxxx64v64 */
   0,  /* vpunpckl64v8 */
   0,  /* vpunpcklx64v8 */
   0,  /* vpunpcklxx64v8 */
   0,  /* vpunpcklxxx64v8 */
   0,  /* vpunpckl64v32 */
   0,  /* vpunpcklx64v32 */
   0,  /* vpunpcklxx64v32 */
   0,  /* vpunpcklxxx64v32 */
   0,  /* vpunpckl64v16 */
   0,  /* vpunpcklx64v16 */
   0,  /* vpunpcklxx64v16 */
   0,  /* vpunpcklxxx64v16 */
   0,  /* vpunpckl64v64 */
   0,  /* vpunpcklx64v64 */
   0,  /* vpunpcklxx64v64 */
   0,  /* vpunpcklxxx64v64 */
   0,  /* vxor128v8 */
   0,  /* vxorx128v8 */
   0,  /* vxorxx128v8 */
   0,  /* vxorxxx128v8 */
   0,  /* vxor128v16 */
   0,  /* vxorx128v16 */
   0,  /* vxorxx128v16 */
   0,  /* vxorxxx128v16 */
   0,  /* vxor128v32 */
   0,  /* vxorx128v32 */
   0,  /* vxorxx128v32 */
   0,  /* vxorxxx128v32 */
   0,  /* vxor128v64 */
   0,  /* vxorx128v64 */
   0,  /* vxorxx128v64 */
   0,  /* vxorxxx128v64 */
   0,  /* vfrcp128v32 */
   0,  /* vfrcpx128v32 */
   0,  /* vfrcpxx128v32 */
   0,  /* vfrcpxxx128v32 */
   0,  /* vfrcpss */
   0,  /* vfrcpxss */
   0,  /* vfrcpxxss */
   0,  /* vfrcpxxxss */
   0,  /* vround128v64 */
   0,  /* vroundx128v64 */
   0,  /* vroundxx128v64 */
   0,  /* vroundxxx128v64 */
   0,  /* vround128v32 */
   0,  /* vroundx128v32 */
   0,  /* vroundxx128v32 */
   0,  /* vroundxxx128v32 */
   0,  /* vroundsd */
   0,  /* vroundxsd */
   0,  /* vroundxxsd */
   0,  /* vroundxxxsd */
   0,  /* vroundss */
   0,  /* vroundxss */
   0,  /* vroundxxss */
   0,  /* vroundxxxss */
   0,  /* vfrsqrt128v32 */
   0,  /* vfrsqrtx128v32 */
   0,  /* vfrsqrtxx128v32 */
   0,  /* vfrsqrtxxx128v32 */
   0,  /* vfrsqrtss */
   0,  /* vfrsqrtxss */
   0,  /* vfrsqrtxxss */
   0,  /* vfrsqrtxxxss */
   0,  /* vshufpd */
   0,  /* vfshuf128v64 */
   0,  /* vfshufx128v64 */
   0,  /* vfshufxx128v64 */
   0,  /* vfshufxxx128v64 */
   0,  /* vshufps */
   0,  /* vfshuf128v32 */
   0,  /* vfshufx128v32 */
   0,  /* vfshufxx128v32 */
   0,  /* vfshufxxx128v32 */
   0,  /* vfsqrt128v64 */
   0,  /* vfsqrtx128v64 */
   0,  /* vfsqrtxx128v64 */
   0,  /* vfsqrtxxx128v64 */
   0,  /* vfsqrt128v32 */
   0,  /* vfsqrtx128v32 */
   0,  /* vfsqrtxx128v32 */
   0,  /* vfsqrtxxx128v32 */
   0,  /* vfsqrtsd */
   0,  /* vfsqrtxsd */
   0,  /* vfsqrtxxsd */
   0,  /* vfsqrtxxxsd */
   0,  /* vfsqrtss */
   0,  /* vfsqrtxss */
   0,  /* vfsqrtxxss */
   0,  /* vfsqrtxxxss */
   0,  /* vstmxcsr */
   0,  /* vfsub128v64 */
   0,  /* vfsubx128v64 */
   0,  /* vfsubxx128v64 */
   0,  /* vfsubxxx128v64 */
   0,  /* vfsub128v32 */
   0,  /* vfsubx128v32 */
   0,  /* vfsubxx128v32 */
   0,  /* vfsubxxx128v32 */
   0,  /* vsubsd */
   0,  /* vsubxsd */
   0,  /* vsubxxsd */
   0,  /* vsubxxxsd */
   0,  /* vsubss */
   0,  /* vsubxss */
   0,  /* vsubxxss */
   0,  /* vsubxxxss */
   0,  /* vucomisd */
   0,  /* vucomixsd */
   0,  /* vucomixxsd */
   0,  /* vucomixxxsd */
   0,  /* vucomiss */
   0,  /* vucomixss */
   0,  /* vucomixxss */
   0,  /* vucomixxxss */
   0,  /* vunpckh128v64 */
   0,  /* vunpckhx128v64 */
   0,  /* vunpckhxx128v64 */
   0,  /* vunpckhxxx128v64 */
   0,  /* vunpckh128v32 */
   0,  /* vunpckhx128v32 */
   0,  /* vunpckhxx128v32 */
   0,  /* vunpckhxxx128v32 */
   0,  /* vunpckl128v64 */
   0,  /* vunpcklx128v64 */
   0,  /* vunpcklxx128v64 */
   0,  /* vunpcklxxx128v64 */
   0,  /* vunpckl128v32 */
   0,  /* vunpcklx128v32 */
   0,  /* vunpcklxx128v32 */
   0,  /* vunpcklxxx128v32 */
   0,  /* vxorpd */
   0,  /* vfxor128v64 */
   0,  /* vfxorx128v64 */
   0,  /* vfxorxx128v64 */
   0,  /* vfxorxxx128v64 */
   0,  /* vxzero128v64 */
   0,  /* vxzero64 */
   0,  /* vxorps */
   0,  /* vfxor128v32 */
   0,  /* vfxorx128v32 */
   0,  /* vfxorxx128v32 */
   0,  /* vfxorxxx128v32 */
   0,  /* vxzero128v32 */
   0,  /* vxzero32 */
   0,  /* vzeroall */
   0,  /* xfmadd132pd */
   0,  /* xfmadd132xpd */
   0,  /* xfmadd132xxpd */
   0,  /* xfmadd132xxxpd */
   0,  /* xfmadd213pd */
   0,  /* xfmadd213xpd */
   0,  /* xfmadd213xxpd */
   0,  /* xfmadd213xxxpd */
   0,  /* xfmadd231pd */
   0,  /* xfmadd231xpd */
   0,  /* xfmadd231xxpd */
   0,  /* xfmadd231xxxpd */
   0,  /* xfmadd132ps */
   0,  /* xfmadd132xps */
   0,  /* xfmadd132xxps */
   0,  /* xfmadd132xxxps */
   0,  /* xfmadd213ps */
   0,  /* xfmadd213xps */
   0,  /* xfmadd213xxps */
   0,  /* xfmadd213xxxps */
   0,  /* xfmadd231ps */
   0,  /* xfmadd231xps */
   0,  /* xfmadd231xxps */
   0,  /* xfmadd231xxxps */
   0,  /* xfmadd132sd */
   0,  /* xfmadd132xsd */
   0,  /* xfmadd132xxsd */
   0,  /* xfmadd132xxxsd */
   0,  /* xfmadd213sd */
   0,  /* xfmadd213xsd */
   0,  /* xfmadd213xxsd */
   0,  /* xfmadd213xxxsd */
   0,  /* xfmadd231sd */
   0,  /* xfmadd231xsd */
   0,  /* xfmadd231xxsd */
   0,  /* xfmadd231xxxsd */
   0,  /* xfmadd132ss */
   0,  /* xfmadd132xss */
   0,  /* xfmadd132xxss */
   0,  /* xfmadd132xxxss */
   0,  /* xfmadd213ss */
   0,  /* xfmadd213xss */
   0,  /* xfmadd213xxss */
   0,  /* xfmadd213xxxss */
   0,  /* xfmadd231ss */
   0,  /* xfmadd231xss */
   0,  /* xfmadd231xxss */
   0,  /* xfmadd231xxxss */
   0,  /* xfmaddsub132pd */
   0,  /* xfmaddsub132xpd */
   0,  /* xfmaddsub132xxpd */
   0,  /* xfmaddsub132xxxpd */
   0,  /* xfmaddsub213pd */
   0,  /* xfmaddsub213xpd */
   0,  /* xfmaddsub213xxpd */
   0,  /* xfmaddsub213xxxpd */
   0,  /* xfmaddsub231pd */
   0,  /* xfmaddsub231xpd */
   0,  /* xfmaddsub231xxpd */
   0,  /* xfmaddsub231xxxpd */
   0,  /* xfmaddsub132ps */
   0,  /* xfmaddsub132xps */
   0,  /* xfmaddsub132xxps */
   0,  /* xfmaddsub132xxxps */
   0,  /* xfmaddsub213ps */
   0,  /* xfmaddsub213xps */
   0,  /* xfmaddsub213xxps */
   0,  /* xfmaddsub213xxxps */
   0,  /* xfmaddsub231ps */
   0,  /* xfmaddsub231xps */
   0,  /* xfmaddsub231xxps */
   0,  /* xfmaddsub231xxxps */
   0,  /* xfmsubadd132pd */
   0,  /* xfmsubadd132xpd */
   0,  /* xfmsubadd132xxpd */
   0,  /* xfmsubadd132xxxpd */
   0,  /* xfmsubadd213pd */
   0,  /* xfmsubadd213xpd */
   0,  /* xfmsubadd213xxpd */
   0,  /* xfmsubadd213xxxpd */
   0,  /* xfmsubadd231pd */
   0,  /* xfmsubadd231xpd */
   0,  /* xfmsubadd231xxpd */
   0,  /* xfmsubadd231xxxpd */
   0,  /* xfmsubadd132ps */
   0,  /* xfmsubadd132xps */
   0,  /* xfmsubadd132xxps */
   0,  /* xfmsubadd132xxxps */
   0,  /* xfmsubadd213ps */
   0,  /* xfmsubadd213xps */
   0,  /* xfmsubadd213xxps */
   0,  /* xfmsubadd213xxxps */
   0,  /* xfmsubadd231ps */
   0,  /* xfmsubadd231xps */
   0,  /* xfmsubadd231xxps */
   0,  /* xfmsubadd231xxxps */
   0,  /* xfmsub132pd */
   0,  /* xfmsub132xpd */
   0,  /* xfmsub132xxpd */
   0,  /* xfmsub132xxxpd */
   0,  /* xfmsub213pd */
   0,  /* xfmsub213xpd */
   0,  /* xfmsub213xxpd */
   0,  /* xfmsub213xxxpd */
   0,  /* xfmsub231pd */
   0,  /* xfmsub231xpd */
   0,  /* xfmsub231xxpd */
   0,  /* xfmsub231xxxpd */
   0,  /* xfmsub132ps */
   0,  /* xfmsub132xps */
   0,  /* xfmsub132xxps */
   0,  /* xfmsub132xxxps */
   0,  /* xfmsub213ps */
   0,  /* xfmsub213xps */
   0,  /* xfmsub213xxps */
   0,  /* xfmsub213xxxps */
   0,  /* xfmsub231ps */
   0,  /* xfmsub231xps */
   0,  /* xfmsub231xxps */
   0,  /* xfmsub231xxxps */
   0,  /* xfmsub132sd */
   0,  /* xfmsub132xsd */
   0,  /* xfmsub132xxsd */
   0,  /* xfmsub132xxxsd */
   0,  /* xfmsub213sd */
   0,  /* xfmsub213xsd */
   0,  /* xfmsub213xxsd */
   0,  /* xfmsub213xxxsd */
   0,  /* xfmsub231sd */
   0,  /* xfmsub231xsd */
   0,  /* xfmsub231xxsd */
   0,  /* xfmsub231xxxsd */
   0,  /* xfmsub132ss */
   0,  /* xfmsub132xss */
   0,  /* xfmsub132xxss */
   0,  /* xfmsub132xxxss */
   0,  /* xfmsub213ss */
   0,  /* xfmsub213xss */
   0,  /* xfmsub213xxss */
   0,  /* xfmsub213xxxss */
   0,  /* xfmsub231ss */
   0,  /* xfmsub231xss */
   0,  /* xfmsub231xxss */
   0,  /* xfmsub231xxxss */
   0,  /* xfnmadd132pd */
   0,  /* xfnmadd132xpd */
   0,  /* xfnmadd132xxpd */
   0,  /* xfnmadd132xxxpd */
   0,  /* xfnmadd213pd */
   0,  /* xfnmadd213xpd */
   0,  /* xfnmadd213xxpd */
   0,  /* xfnmadd213xxxpd */
   0,  /* xfnmadd231pd */
   0,  /* xfnmadd231xpd */
   0,  /* xfnmadd231xxpd */
   0,  /* xfnmadd231xxxpd */
   0,  /* xfnmadd132ps */
   0,  /* xfnmadd132xps */
   0,  /* xfnmadd132xxps */
   0,  /* xfnmadd132xxxps */
   0,  /* xfnmadd213ps */
   0,  /* xfnmadd213xps */
   0,  /* xfnmadd213xxps */
   0,  /* xfnmadd213xxxps */
   0,  /* xfnmadd231ps */
   0,  /* xfnmadd231xps */
   0,  /* xfnmadd231xxps */
   0,  /* xfnmadd231xxxps */
   0,  /* xfnmadd132sd */
   0,  /* xfnmadd132xsd */
   0,  /* xfnmadd132xxsd */
   0,  /* xfnmadd132xxxsd */
   0,  /* xfnmadd213sd */
   0,  /* xfnmadd213xsd */
   0,  /* xfnmadd213xxsd */
   0,  /* xfnmadd213xxxsd */
   0,  /* xfnmadd231sd */
   0,  /* xfnmadd231xsd */
   0,  /* xfnmadd231xxsd */
   0,  /* xfnmadd231xxxsd */
   0,  /* xfnmadd132ss */
   0,  /* xfnmadd132xss */
   0,  /* xfnmadd132xxss */
   0,  /* xfnmadd132xxxss */
   0,  /* xfnmadd213ss */
   0,  /* xfnmadd213xss */
   0,  /* xfnmadd213xxss */
   0,  /* xfnmadd213xxxss */
   0,  /* xfnmadd231ss */
   0,  /* xfnmadd231xss */
   0,  /* xfnmadd231xxss */
   0,  /* xfnmadd231xxxss */
   0,  /* xfnmsub132pd */
   0,  /* xfnmsub132xpd */
   0,  /* xfnmsub132xxpd */
   0,  /* xfnmsub132xxxpd */
   0,  /* xfnmsub213pd */
   0,  /* xfnmsub213xpd */
   0,  /* xfnmsub213xxpd */
   0,  /* xfnmsub213xxxpd */
   0,  /* xfnmsub231pd */
   0,  /* xfnmsub231xpd */
   0,  /* xfnmsub231xxpd */
   0,  /* xfnmsub231xxxpd */
   0,  /* xfnmsub132ps */
   0,  /* xfnmsub132xps */
   0,  /* xfnmsub132xxps */
   0,  /* xfnmsub132xxxps */
   0,  /* xfnmsub213ps */
   0,  /* xfnmsub213xps */
   0,  /* xfnmsub213xxps */
   0,  /* xfnmsub213xxxps */
   0,  /* xfnmsub231ps */
   0,  /* xfnmsub231xps */
   0,  /* xfnmsub231xxps */
   0,  /* xfnmsub231xxxps */
   0,  /* xfnmsub132sd */
   0,  /* xfnmsub132xsd */
   0,  /* xfnmsub132xxsd */
   0,  /* xfnmsub132xxxsd */
   0,  /* xfnmsub213sd */
   0,  /* xfnmsub213xsd */
   0,  /* xfnmsub213xxsd */
   0,  /* xfnmsub213xxxsd */
   0,  /* xfnmsub231sd */
   0,  /* xfnmsub231xsd */
   0,  /* xfnmsub231xxsd */
   0,  /* xfnmsub231xxxsd */
   0,  /* xfnmsub132ss */
   0,  /* xfnmsub132xss */
   0,  /* xfnmsub132xxss */
   0,  /* xfnmsub132xxxss */
   0,  /* xfnmsub213ss */
   0,  /* xfnmsub213xss */
   0,  /* xfnmsub213xxss */
   0,  /* xfnmsub213xxxss */
   0,  /* xfnmsub231ss */
   0,  /* xfnmsub231xss */
   0,  /* xfnmsub231xxss */
   0,  /* xfnmsub231xxxss */
   0,  /* movabsq */
   0,  /* store8_abs */
   0,  /* store16_abs */
   0,  /* store32_abs */
   0,  /* store64_abs */
   0,  /* ld8_abs */
   0,  /* ld16_abs */
   0,  /* ld32_abs */
   0,  /* ld64_abs */
   0,  /* lock_add32 */
   0,  /* lock_adc32 */
   0,  /* lock_add64 */
   0,  /* lock_xchg32 */
   0,  /* lock_xchg64 */
   0,  /* lock_cmpxchg32 */
   0,  /* lock_cmpxchg64 */
   0,  /* lock_and32 */
   0,  /* lock_and64 */
   0,  /* lock_or32 */
   0,  /* lock_or64 */
   0,  /* lock_xor32 */
   0,  /* lock_xor64 */
   0,  /* lock_sub32 */
   0,  /* lock_sub64 */
   0,  /* lock_add8 */
   0,  /* lock_add16 */
   0,  /* lock_xchg8 */
   0,  /* lock_xchg16 */
   0,  /* lock_cmpxchg8 */
   0,  /* lock_cmpxchg16 */
   0,  /* lock_and8 */
   0,  /* lock_and16 */
   0,  /* lock_or8 */
   0,  /* lock_or16 */
   0,  /* lock_xor8 */
   0,  /* lock_xor16 */
   0,  /* lock_sub8 */
   0,  /* lock_sub16 */
   0,  /* lock_xadd8 */
   0,  /* lock_xadd16 */
   0,  /* lock_xadd32 */
   0,  /* lock_xadd64 */
   0,  /* bsf32 */
   0,  /* bsf64 */
   0,  /* bsr32 */
   0,  /* bsr64 */
   0,  /* tls_global_dynamic_64 */
   0,  /* tls_global_dynamic_32 */
   0,  /* tls_local_dynamic_64 */
   0,  /* tls_local_dynamic_32 */
   0,  /* begin_pregtn */
   0,  /* end_pregtn */
   0,  /* bwd_bar */
   0,  /* fwd_bar */
   0,  /* label */
   0,  /* nop */
   0,  /* noop */
};

void ISA_PACK_Adjust_Operands(const ISA_PACK_ADJ_INFO *info,
                              INT64 *opnd,
                              BOOL invert)
{
  INT code;

  for (; (code = ISA_PACK_ADJ_INFO_Code(info, invert)) != ISA_PACK_ADJ_END; ++info) {
    INT index = ISA_PACK_ADJ_INFO_OpndIdx(info);
    INT64 O_VAL = opnd[index];
    switch (code) {
    }
    opnd[index] = O_VAL;
  }
}
