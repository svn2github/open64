#include "targ_isa_properties.h"

const mUINT64 ISA_PROPERTIES_flags[] = {
  0x0000280001000004ULL, /* add32: change_rflags iadd commutative x86_style */
  0x0000680000000004ULL, /* adc32: change_rflags commutative x86_style read_rflags */
  0x0000280001000004ULL, /* add64: change_rflags iadd commutative x86_style */
  0x0000200001000204ULL, /* addx32: change_rflags load_exe iadd x86_style */
  0x0000200001000204ULL, /* addxx32: change_rflags load_exe iadd x86_style */
  0x0000200001000204ULL, /* addxxx32: change_rflags load_exe iadd x86_style */
  0x0000200001000204ULL, /* addx64: change_rflags load_exe iadd x86_style */
  0x0000200001000204ULL, /* addxx64: change_rflags load_exe iadd x86_style */
  0x0000200001000204ULL, /* addxxx64: change_rflags load_exe iadd x86_style */
  0x0000200001000004ULL, /* addi32: change_rflags iadd x86_style */
  0x0000600000000004ULL, /* adci32: change_rflags x86_style read_rflags */
  0x0000200001000004ULL, /* addi64: change_rflags iadd x86_style */
  0x0000380030000000ULL, /* add128v8: flop fadd commutative vector_op x86_style */
  0x0000300030000200ULL, /* addx128v8: load_exe flop fadd vector_op x86_style */
  0x0000300030000200ULL, /* addxx128v8: load_exe flop fadd vector_op x86_style */
  0x0000300030000200ULL, /* addxxx128v8: load_exe flop fadd vector_op x86_style */
  0x0000380030000000ULL, /* add128v16: flop fadd commutative vector_op x86_style */
  0x0000300030000200ULL, /* addx128v16: load_exe flop fadd vector_op x86_style */
  0x0000300030000200ULL, /* addxx128v16: load_exe flop fadd vector_op x86_style */
  0x0000300030000200ULL, /* addxxx128v16: load_exe flop fadd vector_op x86_style */
  0x0000380030000000ULL, /* add128v32: flop fadd commutative vector_op x86_style */
  0x0000300030000200ULL, /* addx128v32: load_exe flop fadd vector_op x86_style */
  0x0000300030000200ULL, /* addxx128v32: load_exe flop fadd vector_op x86_style */
  0x0000300030000200ULL, /* addxxx128v32: load_exe flop fadd vector_op x86_style */
  0x0000380030000000ULL, /* add128v64: flop fadd commutative vector_op x86_style */
  0x0000300030000200ULL, /* addx128v64: load_exe flop fadd vector_op x86_style */
  0x0000300030000200ULL, /* addxx128v64: load_exe flop fadd vector_op x86_style */
  0x0000300030000200ULL, /* addxxx128v64: load_exe flop fadd vector_op x86_style */
  0x0000380030000100ULL, /* add64v8: mmx flop fadd commutative vector_op x86_style */
  0x0000380030000100ULL, /* add64v16: mmx flop fadd commutative vector_op x86_style */
  0x0000380030000100ULL, /* add64v32: mmx flop fadd commutative vector_op x86_style */
  0x0000380001000100ULL, /* paddsb: mmx iadd commutative vector_op x86_style */
  0x0000380001000100ULL, /* paddsw: mmx iadd commutative vector_op x86_style */
  0x0000280001000100ULL, /* paddq: mmx iadd commutative x86_style */
  0x0000300002000100ULL, /* psubsb: mmx isub vector_op x86_style */
  0x0000300002000100ULL, /* psubsw: mmx isub vector_op x86_style */
  0x0000200002000100ULL, /* psubq: mmx isub x86_style */
  0x0000380001000100ULL, /* paddusb: mmx iadd commutative vector_op x86_style */
  0x0000380001000100ULL, /* paddusw: mmx iadd commutative vector_op x86_style */
  0x0000300002000100ULL, /* psubusb: mmx isub vector_op x86_style */
  0x0000300002000100ULL, /* psubusw: mmx isub vector_op x86_style */
  0x0000380004000100ULL, /* pmullw: mmx imul commutative vector_op x86_style */
  0x0000380004000100ULL, /* pmulhw: mmx imul commutative vector_op x86_style */
  0x0000380004000100ULL, /* pmulhuw: mmx imul commutative vector_op x86_style */
  0x0000380004000100ULL, /* pmuludq: mmx imul commutative vector_op x86_style */
  0x0000180000000100ULL, /* pmaddwd: mmx commutative vector_op */
  0x0000380001000000ULL, /* paddsb128: iadd commutative vector_op x86_style */
  0x0000380001000000ULL, /* paddsw128: iadd commutative vector_op x86_style */
  0x0000280001000000ULL, /* paddq128: iadd commutative x86_style */
  0x0000300002000000ULL, /* psubsb128: isub vector_op x86_style */
  0x0000300002000000ULL, /* psubsw128: isub vector_op x86_style */
  0x0000200002000000ULL, /* psubq128: isub x86_style */
  0x0000380001000000ULL, /* paddusb128: iadd commutative vector_op x86_style */
  0x0000380001000000ULL, /* paddusw128: iadd commutative vector_op x86_style */
  0x0000300002000000ULL, /* psubusb128: isub vector_op x86_style */
  0x0000300002000000ULL, /* psubusw128: isub vector_op x86_style */
  0x0000380004000000ULL, /* pmullw128: imul commutative vector_op x86_style */
  0x0000380004000000ULL, /* pmulhw128: imul commutative vector_op x86_style */
  0x0000380004000000ULL, /* pmulhuw128: imul commutative vector_op x86_style */
  0x0000380004000000ULL, /* pmuludq128: imul commutative vector_op x86_style */
  0x0000180000000000ULL, /* pmaddwd128: commutative vector_op */
  0x0000290000000004ULL, /* and8: change_rflags iand commutative x86_style */
  0x0000290000000004ULL, /* and16: change_rflags iand commutative x86_style */
  0x0000290000000004ULL, /* and32: change_rflags iand commutative x86_style */
  0x0000210000000204ULL, /* andx32: change_rflags load_exe iand x86_style */
  0x0000210000000204ULL, /* andxx32: change_rflags load_exe iand x86_style */
  0x0000210000000204ULL, /* andxxx32: change_rflags load_exe iand x86_style */
  0x0000290000000004ULL, /* and64: change_rflags iand commutative x86_style */
  0x0000210000000204ULL, /* andx64: change_rflags load_exe iand x86_style */
  0x0000210000000204ULL, /* andxx64: change_rflags load_exe iand x86_style */
  0x0000210000000204ULL, /* andxxx64: change_rflags load_exe iand x86_style */
  0x0000210000000204ULL, /* andx8: change_rflags load_exe iand x86_style */
  0x0000210000000204ULL, /* andx16: change_rflags load_exe iand x86_style */
  0x0000210000000204ULL, /* andxx8: change_rflags load_exe iand x86_style */
  0x0000210000000204ULL, /* andxxx8: change_rflags load_exe iand x86_style */
  0x0000210000000204ULL, /* andxx16: change_rflags load_exe iand x86_style */
  0x0000210000000204ULL, /* andxxx16: change_rflags load_exe iand x86_style */
  0x0000380010000000ULL, /* and128v8: flop commutative vector_op x86_style */
  0x0000300010000200ULL, /* andx128v8: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* andxx128v8: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* andxxx128v8: load_exe flop vector_op x86_style */
  0x0000380010000000ULL, /* and128v16: flop commutative vector_op x86_style */
  0x0000300010000200ULL, /* andx128v16: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* andxx128v16: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* andxxx128v16: load_exe flop vector_op x86_style */
  0x0000380010000000ULL, /* and128v32: flop commutative vector_op x86_style */
  0x0000300010000200ULL, /* andx128v32: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* andxx128v32: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* andxxx128v32: load_exe flop vector_op x86_style */
  0x0000380010000000ULL, /* and128v64: flop commutative vector_op x86_style */
  0x0000300010000200ULL, /* andx128v64: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* andxx128v64: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* andxxx128v64: load_exe flop vector_op x86_style */
  0x0000210000000004ULL, /* andi32: change_rflags iand x86_style */
  0x0000210000000004ULL, /* andi64: change_rflags iand x86_style */
  0x000000200000c000ULL, /* call: xfer call jump */
  0x000000400000c000ULL, /* icall: xfer call ijump */
  0x000000400000c200ULL, /* icallx: load_exe xfer call ijump */
  0x000000400000c200ULL, /* icallxx: load_exe xfer call ijump */
  0x000000400000c200ULL, /* icallxxx: load_exe xfer call ijump */
  0x0000020000000004ULL, /* cmp8: change_rflags icmp */
  0x0000020000000204ULL, /* cmpx8: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxx8: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxx8: change_rflags load_exe icmp */
  0x0000020000000004ULL, /* cmp16: change_rflags icmp */
  0x0000020000000204ULL, /* cmpx16: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxx16: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxx16: change_rflags load_exe icmp */
  0x0000020000000004ULL, /* cmp32: change_rflags icmp */
  0x0000020000000204ULL, /* cmpx32: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxx32: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxx32: change_rflags load_exe icmp */
  0x0000020000000004ULL, /* cmp64: change_rflags icmp */
  0x0000020000000204ULL, /* cmpx64: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxx64: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxx64: change_rflags load_exe icmp */
  0x0000020000000004ULL, /* cmpi8: change_rflags icmp */
  0x0000020000000204ULL, /* cmpxr8: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxi8: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxr8: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxi8: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxxr8: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxxi8: change_rflags load_exe icmp */
  0x0000020000000004ULL, /* cmpi16: change_rflags icmp */
  0x0000020000000204ULL, /* cmpxr16: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxi16: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxr16: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxi16: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxxr16: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxxi16: change_rflags load_exe icmp */
  0x0000020000000004ULL, /* cmpi32: change_rflags icmp */
  0x0000020000000204ULL, /* cmpxr32: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxi32: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxr32: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxi32: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxxr32: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxxi32: change_rflags load_exe icmp */
  0x0000020000000004ULL, /* cmpi64: change_rflags icmp */
  0x0000020000000204ULL, /* cmpxr64: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxi64: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxr64: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxi64: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxxr64: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* cmpxxxi64: change_rflags load_exe icmp */
  0x0000400000040000ULL, /* cmovb: cond_move read_rflags */
  0x0000400000040000ULL, /* cmovae: cond_move read_rflags */
  0x0000400000040000ULL, /* cmovp: cond_move read_rflags */
  0x0000400000040000ULL, /* cmovnp: cond_move read_rflags */
  0x0000400000040000ULL, /* cmove: cond_move read_rflags */
  0x0000400000040000ULL, /* cmovne: cond_move read_rflags */
  0x0000400000040000ULL, /* cmovbe: cond_move read_rflags */
  0x0000400000040000ULL, /* cmova: cond_move read_rflags */
  0x0000400000040000ULL, /* cmovl: cond_move read_rflags */
  0x0000400000040000ULL, /* cmovge: cond_move read_rflags */
  0x0000400000040000ULL, /* cmovle: cond_move read_rflags */
  0x0000400000040000ULL, /* cmovg: cond_move read_rflags */
  0x0000400000040000ULL, /* cmovs: cond_move read_rflags */
  0x0000400000040000ULL, /* cmovns: cond_move read_rflags */
  0x0000000008000004ULL, /* div32: change_rflags idiv */
  0x0000000008000004ULL, /* div64: change_rflags idiv */
  0x0000000000000000ULL, /* enter: */
  0x0000000008000004ULL, /* idiv32: change_rflags idiv */
  0x0000000008000004ULL, /* idiv64: change_rflags idiv */
  0x0000280004000004ULL, /* imul32: change_rflags imul commutative x86_style */
  0x0000000004000004ULL, /* imulx32: change_rflags imul */
  0x0000280004000004ULL, /* imul64: change_rflags imul commutative x86_style */
  0x0000200004000004ULL, /* imuli32: change_rflags imul x86_style */
  0x0000200004000004ULL, /* imuli64: change_rflags imul x86_style */
  0x0000000004000004ULL, /* imulx64: change_rflags imul */
  0x0000380090000000ULL, /* mul128v16: flop fmul commutative vector_op x86_style */
  0x0000200001000004ULL, /* inc8: change_rflags iadd x86_style */
  0x0000200002000004ULL, /* dec8: change_rflags isub x86_style */
  0x0000200001000004ULL, /* inc16: change_rflags iadd x86_style */
  0x0000200002000004ULL, /* dec16: change_rflags isub x86_style */
  0x0000200001000004ULL, /* inc32: change_rflags iadd x86_style */
  0x0000200002000004ULL, /* dec32: change_rflags isub x86_style */
  0x0000200001000004ULL, /* inc64: change_rflags iadd x86_style */
  0x0000200002000004ULL, /* dec64: change_rflags isub x86_style */
  0x0000400000014000ULL, /* jb: xfer cond read_rflags */
  0x0000400000014000ULL, /* jae: xfer cond read_rflags */
  0x0000400000014000ULL, /* jp: xfer cond read_rflags */
  0x0000400000014000ULL, /* jnp: xfer cond read_rflags */
  0x0000400000014000ULL, /* je: xfer cond read_rflags */
  0x0000400000014000ULL, /* jne: xfer cond read_rflags */
  0x0000400000014000ULL, /* jbe: xfer cond read_rflags */
  0x0000400000014000ULL, /* ja: xfer cond read_rflags */
  0x0000400000014000ULL, /* jl: xfer cond read_rflags */
  0x0000400000014000ULL, /* jge: xfer cond read_rflags */
  0x0000400000014000ULL, /* jle: xfer cond read_rflags */
  0x0000400000014000ULL, /* jg: xfer cond read_rflags */
  0x0000400000014000ULL, /* jcxz: xfer cond read_rflags */
  0x0000400000014000ULL, /* jecxz: xfer cond read_rflags */
  0x0000400000014000ULL, /* jrcxz: xfer cond read_rflags */
  0x0000400000014000ULL, /* js: xfer cond read_rflags */
  0x0000400000014000ULL, /* jns: xfer cond read_rflags */
  0x0000002000004000ULL, /* jmp: xfer jump */
  0x0000004000004000ULL, /* ijmp: xfer ijump */
  0x0000004000004200ULL, /* ijmpx: load_exe xfer ijump */
  0x0000004000004200ULL, /* ijmpxx: load_exe xfer ijump */
  0x0000004000004200ULL, /* ijmpxxx: load_exe xfer ijump */
  0x0000000000000020ULL, /* ld64: load */
  0x0000000000000020ULL, /* ldx64: load */
  0x0000000000000020ULL, /* ldxx64: load */
  0x0000000000000120ULL, /* ld64_2m: load mmx */
  0x0000100000000020ULL, /* ld64_2sse: load vector_op */
  0x0000000001000000ULL, /* lea32: iadd */
  0x0000000001000000ULL, /* lea64: iadd */
  0x0000000000000000ULL, /* leax32: */
  0x0000000000000000ULL, /* leax64: */
  0x0000000000000000ULL, /* leaxx32: */
  0x0000000000000000ULL, /* leaxx64: */
  0x0000000000000000ULL, /* leave: */
  0x0000000000000008ULL, /* ldc32: move */
  0x0000000000000008ULL, /* ldc64: move */
  0x0000000004000004ULL, /* mul32: change_rflags imul */
  0x0000000004000004ULL, /* mulx64: change_rflags imul */
  0x0000000000000008ULL, /* mov32: move */
  0x0000000000000008ULL, /* mov64: move */
  0x0000000000000108ULL, /* mov64_m: move mmx */
  0x0000000000000020ULL, /* ld32_64_off: load */
  0x0000000000000020ULL, /* ld64_off: load */
  0x0000000000001000ULL, /* store64_off: store */
  0x0000000000000060ULL, /* ld8_32_n32: load load_ext */
  0x0000000000000060ULL, /* ldu8_32_n32: load load_ext */
  0x0000000000000060ULL, /* ld16_32_n32: load load_ext */
  0x0000000000000060ULL, /* ldu16_32_n32: load load_ext */
  0x0000000000000020ULL, /* ld32_n32: load */
  0x0000000010000020ULL, /* ldss_n32: load flop */
  0x0000000010000020ULL, /* ldsd_n32: load flop */
  0x0008100010000020ULL, /* ldaps_n32: load flop vector_op vector_packed_single */
  0x0010100010000020ULL, /* ldapd_n32: load flop vector_op vector_packed_double */
  0x0008100010000020ULL, /* ldups_n32: load flop vector_op vector_packed_single */
  0x0010100010000020ULL, /* ldupd_n32: load flop vector_op vector_packed_double */
  0x0000100010000020ULL, /* lddqa_n32: load flop vector_op */
  0x0000100010100020ULL, /* lddqu_n32: load unalign_ld flop vector_op */
  0x0008100010000020ULL, /* ldlps_n32: load flop vector_op vector_packed_single */
  0x0010100010000020ULL, /* ldlpd_n32: load flop vector_op vector_packed_double */
  0x0008100010000020ULL, /* ldhps_n32: load flop vector_op vector_packed_single */
  0x0010100010000020ULL, /* ldhpd_n32: load flop vector_op vector_packed_double */
  0x0000000000000120ULL, /* ld64_2m_n32: load mmx */
  0x0000100000000020ULL, /* ld64_2sse_n32: load vector_op */
  0x0000000000001000ULL, /* store8_n32: store */
  0x0000000000001000ULL, /* store16_n32: store */
  0x0000000000001000ULL, /* store32_n32: store */
  0x0000000010001000ULL, /* stss_n32: store flop */
  0x0000000010001000ULL, /* stsd_n32: store flop */
  0x0000100010001000ULL, /* staps_n32: store flop vector_op */
  0x0000100010001000ULL, /* stapd_n32: store flop vector_op */
  0x0000100010001000ULL, /* stdqa_n32: store flop vector_op */
  0x0000100010201000ULL, /* stdqu_n32: store unalign_store flop vector_op */
  0x0000100010001000ULL, /* stlps_n32: store flop vector_op */
  0x0000100010001000ULL, /* sthps_n32: store flop vector_op */
  0x0000100010001000ULL, /* stlpd_n32: store flop vector_op */
  0x0000100010001000ULL, /* sthpd_n32: store flop vector_op */
  0x0000000000001100ULL, /* store64_fm_n32: mmx store */
  0x0000100000001000ULL, /* store64_fsse_n32: store vector_op */
  0x0000000000000000ULL, /* ld32_gs_seg_off: */
  0x0000000000000000ULL, /* ld64_fs_seg_off: */
  0x0000000000000010ULL, /* movsbl: move_ext */
  0x0000000000000060ULL, /* ld8_32: load load_ext */
  0x0000000000000060ULL, /* ldx8_32: load load_ext */
  0x0000000000000060ULL, /* ldxx8_32: load load_ext */
  0x0000000000000010ULL, /* movzbl: move_ext */
  0x0000000000000060ULL, /* ldu8_32: load load_ext */
  0x0000000000000060ULL, /* ldxu8_32: load load_ext */
  0x0000000000000060ULL, /* ldxxu8_32: load load_ext */
  0x0000000000000010ULL, /* movswl: move_ext */
  0x0000000000000060ULL, /* ld16_32: load load_ext */
  0x0000000000000060ULL, /* ldx16_32: load load_ext */
  0x0000000000000060ULL, /* ldxx16_32: load load_ext */
  0x0000000000000010ULL, /* movzwl: move_ext */
  0x0000000000000060ULL, /* ldu16_32: load load_ext */
  0x0000000000000060ULL, /* ldxu16_32: load load_ext */
  0x0000000000000060ULL, /* ldxxu16_32: load load_ext */
  0x0000000000000010ULL, /* movsbq: move_ext */
  0x0000000000000060ULL, /* ld8_64: load load_ext */
  0x0000000000000060ULL, /* ldx8_64: load load_ext */
  0x0000000000000060ULL, /* ldxx8_64: load load_ext */
  0x0000000000000020ULL, /* ld8_64_off: load */
  0x0000000000000010ULL, /* movzbq: move_ext */
  0x0000000000000060ULL, /* ldu8_64: load load_ext */
  0x0000000000000060ULL, /* ldxu8_64: load load_ext */
  0x0000000000000060ULL, /* ldxxu8_64: load load_ext */
  0x0000000000000020ULL, /* ldu8_64_off: load */
  0x0000000000000010ULL, /* movswq: move_ext */
  0x0000000000000060ULL, /* ld16_64: load load_ext */
  0x0000000000000060ULL, /* ldx16_64: load load_ext */
  0x0000000000000060ULL, /* ldxx16_64: load load_ext */
  0x0000000000000020ULL, /* ld16_64_off: load */
  0x0000000000000010ULL, /* movzwq: move_ext */
  0x0000000000000060ULL, /* ldu16_64: load load_ext */
  0x0000000000000060ULL, /* ldxu16_64: load load_ext */
  0x0000000000000060ULL, /* ldxxu16_64: load load_ext */
  0x0000000000000020ULL, /* ldu16_64_off: load */
  0x0000000000000010ULL, /* movslq: move_ext */
  0x0000000000000060ULL, /* ld32_64: load load_ext */
  0x0000000000000060ULL, /* ldx32_64: load load_ext */
  0x0000000000000060ULL, /* ldxx32_64: load load_ext */
  0x0000000000000020ULL, /* ld32: load */
  0x0000000000000020ULL, /* ldx32: load */
  0x0000000000000020ULL, /* ldxx32: load */
  0x0000000000000010ULL, /* movzlq: move_ext */
  0x0000000000000000ULL, /* neg8: */
  0x0000000000000000ULL, /* neg16: */
  0x0000200000000004ULL, /* neg32: change_rflags x86_style */
  0x0000200000000004ULL, /* neg64: change_rflags x86_style */
  0x0000000000000000ULL, /* not8: */
  0x0000000000000000ULL, /* not16: */
  0x0000200000000000ULL, /* not32: x86_style */
  0x0000200000000000ULL, /* not64: x86_style */
  0x0000281000000004ULL, /* or8: change_rflags ior commutative x86_style */
  0x0000281000000004ULL, /* or16: change_rflags ior commutative x86_style */
  0x0000281000000004ULL, /* or32: change_rflags ior commutative x86_style */
  0x0000201000000204ULL, /* orx32: change_rflags load_exe ior x86_style */
  0x0000201000000204ULL, /* orxx32: change_rflags load_exe ior x86_style */
  0x0000201000000204ULL, /* orxxx32: change_rflags load_exe ior x86_style */
  0x0000281000000004ULL, /* or64: change_rflags ior commutative x86_style */
  0x0000201000000204ULL, /* orx64: change_rflags load_exe ior x86_style */
  0x0000201000000204ULL, /* orxx64: change_rflags load_exe ior x86_style */
  0x0000201000000204ULL, /* orxxx64: change_rflags load_exe ior x86_style */
  0x0000201000000204ULL, /* orx8: change_rflags load_exe ior x86_style */
  0x0000201000000204ULL, /* orx16: change_rflags load_exe ior x86_style */
  0x0000201000000204ULL, /* orxx8: change_rflags load_exe ior x86_style */
  0x0000201000000204ULL, /* orxxx8: change_rflags load_exe ior x86_style */
  0x0000201000000204ULL, /* orxx16: change_rflags load_exe ior x86_style */
  0x0000201000000204ULL, /* orxxx16: change_rflags load_exe ior x86_style */
  0x0000380010000000ULL, /* or128v8: flop commutative vector_op x86_style */
  0x0000300010000200ULL, /* orx128v8: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* orxx128v8: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* orxxx128v8: load_exe flop vector_op x86_style */
  0x0000380010000000ULL, /* or128v16: flop commutative vector_op x86_style */
  0x0000300010000200ULL, /* orx128v16: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* orxx128v16: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* orxxx128v16: load_exe flop vector_op x86_style */
  0x0000380010000000ULL, /* or128v32: flop commutative vector_op x86_style */
  0x0000300010000200ULL, /* orx128v32: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* orxx128v32: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* orxxx128v32: load_exe flop vector_op x86_style */
  0x0000380010000000ULL, /* or128v64: flop commutative vector_op x86_style */
  0x0000300010000200ULL, /* orx128v64: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* orxx128v64: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* orxxx128v64: load_exe flop vector_op x86_style */
  0x0000201000000004ULL, /* ori32: change_rflags ior x86_style */
  0x0000201000000004ULL, /* ori64: change_rflags ior x86_style */
  0x0000800000000000ULL, /* popl: side_effects */
  0x0000800000000000ULL, /* popq: side_effects */
  0x0000000000000000ULL, /* pushl: */
  0x0000000000000000ULL, /* pushq: */
  0x0000004000004000ULL, /* ret: xfer ijump */
  0x0000004000004000ULL, /* reti: xfer ijump */
  0x0000200000000004ULL, /* ror8: change_rflags x86_style */
  0x0000200000000004ULL, /* ror16: change_rflags x86_style */
  0x0000200000000004ULL, /* ror32: change_rflags x86_style */
  0x0000200000000004ULL, /* ror64: change_rflags x86_style */
  0x0000200000000004ULL, /* rori8: change_rflags x86_style */
  0x0000200000000004ULL, /* rori16: change_rflags x86_style */
  0x0000200000000004ULL, /* rori32: change_rflags x86_style */
  0x0000200000000004ULL, /* rori64: change_rflags x86_style */
  0x0000200000000004ULL, /* rol8: change_rflags x86_style */
  0x0000200000000004ULL, /* rol16: change_rflags x86_style */
  0x0000200000000004ULL, /* rol32: change_rflags x86_style */
  0x0000200000000004ULL, /* rol64: change_rflags x86_style */
  0x0000200000000004ULL, /* roli8: change_rflags x86_style */
  0x0000200000000004ULL, /* roli16: change_rflags x86_style */
  0x0000200000000004ULL, /* roli32: change_rflags x86_style */
  0x0000200000000004ULL, /* roli64: change_rflags x86_style */
  0x0000000000002000ULL, /* prefetch: prefetch */
  0x0000000000002000ULL, /* prefetchw: prefetch */
  0x0000000000002000ULL, /* prefetcht0: prefetch */
  0x0000000000002000ULL, /* prefetcht1: prefetch */
  0x0000000000002000ULL, /* prefetchnta: prefetch */
  0x0000000000002000ULL, /* prefetchx: prefetch */
  0x0000000000002000ULL, /* prefetchxx: prefetch */
  0x0000000000002000ULL, /* prefetchwx: prefetch */
  0x0000000000002000ULL, /* prefetchwxx: prefetch */
  0x0000000000002000ULL, /* prefetcht0x: prefetch */
  0x0000000000002000ULL, /* prefetcht0xx: prefetch */
  0x0000000000002000ULL, /* prefetcht1x: prefetch */
  0x0000000000002000ULL, /* prefetcht1xx: prefetch */
  0x0000000000002000ULL, /* prefetchntax: prefetch */
  0x0000000000002000ULL, /* prefetchntaxx: prefetch */
  0x0000400000020000ULL, /* setb: cond_set read_rflags */
  0x0000400000020000ULL, /* setae: cond_set read_rflags */
  0x0000400000020000ULL, /* setp: cond_set read_rflags */
  0x0000400000020000ULL, /* setnp: cond_set read_rflags */
  0x0000400000020000ULL, /* sete: cond_set read_rflags */
  0x0000400000020000ULL, /* setne: cond_set read_rflags */
  0x0000400000020000ULL, /* setbe: cond_set read_rflags */
  0x0000400000020000ULL, /* seta: cond_set read_rflags */
  0x0000400000020000ULL, /* setl: cond_set read_rflags */
  0x0000400000020000ULL, /* setge: cond_set read_rflags */
  0x0000400000020000ULL, /* setle: cond_set read_rflags */
  0x0000400000020000ULL, /* setg: cond_set read_rflags */
  0x0000400000020000ULL, /* setc: cond_set read_rflags */
  0x0000400000020000ULL, /* seto: cond_set read_rflags */
  0x0000400000020000ULL, /* sets: cond_set read_rflags */
  0x0000400000020000ULL, /* setz: cond_set read_rflags */
  0x0000000000001000ULL, /* store8: store */
  0x0000000000001000ULL, /* storex8: store */
  0x0000000000001000ULL, /* storexx8: store */
  0x0000000000001000ULL, /* store16: store */
  0x0000000000001000ULL, /* storex16: store */
  0x0000000000001000ULL, /* storexx16: store */
  0x0000000000001000ULL, /* store32: store */
  0x0000000000001000ULL, /* storex32: store */
  0x0000000000001000ULL, /* storexx32: store */
  0x0000000000001000ULL, /* store64: store */
  0x0000000000001000ULL, /* storex64: store */
  0x0000000000001000ULL, /* storexx64: store */
  0x0000000000001100ULL, /* store64_fm: mmx store */
  0x0000100000001000ULL, /* store64_fsse: store vector_op */
  0x0000000000001800ULL, /* storenti32: nt_store store */
  0x0000000000001800ULL, /* storentix32: nt_store store */
  0x0000000000001800ULL, /* storentixx32: nt_store store */
  0x0000000000001800ULL, /* storenti64: nt_store store */
  0x0000000000001800ULL, /* storentix64: nt_store store */
  0x0000000000001800ULL, /* storentixx64: nt_store store */
  0x0000100010001800ULL, /* storenti128: nt_store store flop vector_op */
  0x0000200000000004ULL, /* sar32: change_rflags x86_style */
  0x0000200000000004ULL, /* sar64: change_rflags x86_style */
  0x0000200000000004ULL, /* sari32: change_rflags x86_style */
  0x0000200000000004ULL, /* sari64: change_rflags x86_style */
  0x0000200000000004ULL, /* shl32: change_rflags x86_style */
  0x0000200000000004ULL, /* shld32: change_rflags x86_style */
  0x0000200000000004ULL, /* shldi32: change_rflags x86_style */
  0x0000200000000004ULL, /* shrd32: change_rflags x86_style */
  0x0000200000000004ULL, /* shrdi32: change_rflags x86_style */
  0x0000200000000004ULL, /* shl64: change_rflags x86_style */
  0x0000200000000004ULL, /* shli32: change_rflags x86_style */
  0x0000200000000004ULL, /* shli64: change_rflags x86_style */
  0x0000200000000004ULL, /* shr32: change_rflags x86_style */
  0x0000200000000004ULL, /* shr64: change_rflags x86_style */
  0x0000200000000004ULL, /* shri32: change_rflags x86_style */
  0x0000200000000004ULL, /* shri64: change_rflags x86_style */
  0x0000200002000004ULL, /* sub32: change_rflags isub x86_style */
  0x0000600000000004ULL, /* sbb32: change_rflags x86_style read_rflags */
  0x0000200002000004ULL, /* sub64: change_rflags isub x86_style */
  0x0000200002000204ULL, /* subx32: change_rflags load_exe isub x86_style */
  0x0000200002000204ULL, /* subx64: change_rflags load_exe isub x86_style */
  0x0000200002000204ULL, /* subxx32: change_rflags load_exe isub x86_style */
  0x0000200002000204ULL, /* subxxx32: change_rflags load_exe isub x86_style */
  0x0000200002000204ULL, /* subxx64: change_rflags load_exe isub x86_style */
  0x0000200002000204ULL, /* subxxx64: change_rflags load_exe isub x86_style */
  0x0000200002000004ULL, /* subi32: change_rflags isub x86_style */
  0x0000600000000004ULL, /* sbbi32: change_rflags x86_style read_rflags */
  0x0000200002000004ULL, /* subi64: change_rflags isub x86_style */
  0x0000300050000000ULL, /* sub128v8: flop fsub vector_op x86_style */
  0x0000300050000200ULL, /* subx128v8: load_exe flop fsub vector_op x86_style */
  0x0000300050000200ULL, /* subxx128v8: load_exe flop fsub vector_op x86_style */
  0x0000300050000200ULL, /* subxxx128v8: load_exe flop fsub vector_op x86_style */
  0x0000300050000000ULL, /* sub128v16: flop fsub vector_op x86_style */
  0x0000300050000200ULL, /* subx128v16: load_exe flop fsub vector_op x86_style */
  0x0000300050000200ULL, /* subxx128v16: load_exe flop fsub vector_op x86_style */
  0x0000300050000200ULL, /* subxxx128v16: load_exe flop fsub vector_op x86_style */
  0x0000300050000000ULL, /* sub128v32: flop fsub vector_op x86_style */
  0x0000300050000200ULL, /* subx128v32: load_exe flop fsub vector_op x86_style */
  0x0000300050000200ULL, /* subxx128v32: load_exe flop fsub vector_op x86_style */
  0x0000300050000200ULL, /* subxxx128v32: load_exe flop fsub vector_op x86_style */
  0x0000300050000000ULL, /* sub128v64: flop fsub vector_op x86_style */
  0x0000300050000200ULL, /* subx128v64: load_exe flop fsub vector_op x86_style */
  0x0000300050000200ULL, /* subxx128v64: load_exe flop fsub vector_op x86_style */
  0x0000300050000200ULL, /* subxxx128v64: load_exe flop fsub vector_op x86_style */
  0x0000300050000100ULL, /* sub64v8: mmx flop fsub vector_op x86_style */
  0x0000300050000100ULL, /* sub64v16: mmx flop fsub vector_op x86_style */
  0x0000300050000100ULL, /* sub64v32: mmx flop fsub vector_op x86_style */
  0x00000a0000000004ULL, /* test32: change_rflags icmp commutative */
  0x0000020000000204ULL, /* testx32: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* testxx32: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* testxxx32: change_rflags load_exe icmp */
  0x00000a0000000004ULL, /* test64: change_rflags icmp commutative */
  0x0000020000000204ULL, /* testx64: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* testxx64: change_rflags load_exe icmp */
  0x0000020000000204ULL, /* testxxx64: change_rflags load_exe icmp */
  0x0000020000000004ULL, /* testi32: change_rflags icmp */
  0x0000020000000004ULL, /* testi64: change_rflags icmp */
  0x0000288000000004ULL, /* xor8: change_rflags ixor commutative x86_style */
  0x0000288000000004ULL, /* xor16: change_rflags ixor commutative x86_style */
  0x0000288000000004ULL, /* xor32: change_rflags ixor commutative x86_style */
  0x0000208000000204ULL, /* xorx32: change_rflags load_exe ixor x86_style */
  0x0000208000000204ULL, /* xorxx32: change_rflags load_exe ixor x86_style */
  0x0000208000000204ULL, /* xorxxx32: change_rflags load_exe ixor x86_style */
  0x0000288000000004ULL, /* xor64: change_rflags ixor commutative x86_style */
  0x0000208000000204ULL, /* xorx64: change_rflags load_exe ixor x86_style */
  0x0000208000000204ULL, /* xorxx64: change_rflags load_exe ixor x86_style */
  0x0000208000000204ULL, /* xorxxx64: change_rflags load_exe ixor x86_style */
  0x0000208000000204ULL, /* xorx8: change_rflags load_exe ixor x86_style */
  0x0000208000000204ULL, /* xorx16: change_rflags load_exe ixor x86_style */
  0x0000208000000204ULL, /* xorxx8: change_rflags load_exe ixor x86_style */
  0x0000208000000204ULL, /* xorxxx8: change_rflags load_exe ixor x86_style */
  0x0000208000000204ULL, /* xorxx16: change_rflags load_exe ixor x86_style */
  0x0000208000000204ULL, /* xorxxx16: change_rflags load_exe ixor x86_style */
  0x0000380010000000ULL, /* xor128v8: flop commutative vector_op x86_style */
  0x0000300010000200ULL, /* xorx128v8: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xorxx128v8: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xorxxx128v8: load_exe flop vector_op x86_style */
  0x0000380010000000ULL, /* xor128v16: flop commutative vector_op x86_style */
  0x0000300010000200ULL, /* xorx128v16: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xorxx128v16: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xorxxx128v16: load_exe flop vector_op x86_style */
  0x0000380010000000ULL, /* xor128v32: flop commutative vector_op x86_style */
  0x0000300010000200ULL, /* xorx128v32: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xorxx128v32: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xorxxx128v32: load_exe flop vector_op x86_style */
  0x0000380010000000ULL, /* xor128v64: flop commutative vector_op x86_style */
  0x0000300010000200ULL, /* xorx128v64: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xorxx128v64: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xorxxx128v64: load_exe flop vector_op x86_style */
  0x0000208000000004ULL, /* xori32: change_rflags ixor x86_style */
  0x0000208000000004ULL, /* xori64: change_rflags ixor x86_style */
  0x0008380010000000ULL, /* fxor128v32: flop commutative vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* fxorx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* fxorxx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* fxorxxx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0010380010000000ULL, /* fxor128v64: flop commutative vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* fxorx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* fxorxx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* fxorxxx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0008380010000000ULL, /* xorps: flop commutative vector_op x86_style vector_packed_single */
  0x0010380010000000ULL, /* xorpd: flop commutative vector_op x86_style vector_packed_double */
  0x0000280030000000ULL, /* addsd: flop fadd commutative x86_style */
  0x0000280030000000ULL, /* addss: flop fadd commutative x86_style */
  0x0000200030000200ULL, /* addxsd: load_exe flop fadd x86_style */
  0x0000200030000200ULL, /* addxss: load_exe flop fadd x86_style */
  0x0000200030000200ULL, /* addxxsd: load_exe flop fadd x86_style */
  0x0000200010000200ULL, /* addxxxsd: load_exe flop x86_style */
  0x0000200030000200ULL, /* addxxss: load_exe flop fadd x86_style */
  0x0000200010000200ULL, /* addxxxss: load_exe flop x86_style */
  0x0008300010000000ULL, /* faddsub128v32: flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* faddsubx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* faddsubxx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* faddsubxxx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0010300010000000ULL, /* faddsub128v64: flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* faddsubx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* faddsubxx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* faddsubxxx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0008380030000000ULL, /* fadd128v32: flop fadd commutative vector_op x86_style vector_packed_single */
  0x0008300030000200ULL, /* faddx128v32: load_exe flop fadd vector_op x86_style vector_packed_single */
  0x0008300030000200ULL, /* faddxx128v32: load_exe flop fadd vector_op x86_style vector_packed_single */
  0x0008300030000200ULL, /* faddxxx128v32: load_exe flop fadd vector_op x86_style vector_packed_single */
  0x0010380030000000ULL, /* fadd128v64: flop fadd commutative vector_op x86_style vector_packed_double */
  0x0010300030000200ULL, /* faddx128v64: load_exe flop fadd vector_op x86_style vector_packed_double */
  0x0010300030000200ULL, /* faddxx128v64: load_exe flop fadd vector_op x86_style vector_packed_double */
  0x0010300030000200ULL, /* faddxxx128v64: load_exe flop fadd vector_op x86_style vector_packed_double */
  0x0008300010000000ULL, /* fhadd128v32: flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* fhaddx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* fhaddxx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* fhaddxxx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0010300010000000ULL, /* fhadd128v64: flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* fhaddx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* fhaddxx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* fhaddxxx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0008380010000000ULL, /* fand128v32: flop commutative vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* fandx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* fandxx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* fandxxx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0010380010000000ULL, /* fand128v64: flop commutative vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* fandx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* fandxx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* fandxxx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0008380010000000ULL, /* andps: flop commutative vector_op x86_style vector_packed_single */
  0x0010380010000000ULL, /* andpd: flop commutative vector_op x86_style vector_packed_double */
  0x0008200010000000ULL, /* andnps: flop x86_style vector_packed_single */
  0x0010200010000000ULL, /* andnpd: flop x86_style vector_packed_double */
  0x0008380010000000ULL, /* for128v32: flop commutative vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* forx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* forxx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* forxxx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0010380010000000ULL, /* for128v64: flop commutative vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* forx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* forxx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* forxxx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0008380010000000ULL, /* orps: flop commutative vector_op x86_style vector_packed_single */
  0x0010380010000000ULL, /* orpd: flop commutative vector_op x86_style vector_packed_double */
  0x0000020010000004ULL, /* comisd: change_rflags flop icmp */
  0x0000020010000204ULL, /* comixsd: change_rflags load_exe flop icmp */
  0x0000020010000204ULL, /* comixxsd: change_rflags load_exe flop icmp */
  0x0000020010000204ULL, /* comixxxsd: change_rflags load_exe flop icmp */
  0x0000020010000004ULL, /* comiss: change_rflags flop icmp */
  0x0000020010000204ULL, /* comixss: change_rflags load_exe flop icmp */
  0x0000020010000204ULL, /* comixxss: change_rflags load_exe flop icmp */
  0x0000020010000204ULL, /* comixxxss: change_rflags load_exe flop icmp */
  0x0000200010000000ULL, /* cmpss: flop x86_style */
  0x0000200010000000ULL, /* cmpsd: flop x86_style */
  0x0008300010000000ULL, /* cmpps: flop vector_op x86_style vector_packed_single */
  0x0010300010000000ULL, /* cmppd: flop vector_op x86_style vector_packed_double */
  0x0000300010000000ULL, /* cmpeq128v8: flop vector_op x86_style */
  0x0000300010000000ULL, /* cmpeq128v16: flop vector_op x86_style */
  0x0008300010000000ULL, /* cmpeq128v32: flop vector_op x86_style vector_packed_single */
  0x0000300010000200ULL, /* cmpeqx128v8: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* cmpeqx128v16: load_exe flop vector_op x86_style */
  0x0008300010000200ULL, /* cmpeqx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0000100010000200ULL, /* cmpeqxx128v8: load_exe flop vector_op */
  0x0000100010000200ULL, /* cmpeqxx128v16: load_exe flop vector_op */
  0x0008100010000200ULL, /* cmpeqxx128v32: load_exe flop vector_op vector_packed_single */
  0x0000100010000200ULL, /* cmpeqxxx128v8: load_exe flop vector_op */
  0x0000100010000200ULL, /* cmpeqxxx128v16: load_exe flop vector_op */
  0x0008100010000200ULL, /* cmpeqxxx128v32: load_exe flop vector_op vector_packed_single */
  0x0000300010000000ULL, /* cmpgt128v8: flop vector_op x86_style */
  0x0000300010000000ULL, /* cmpgt128v16: flop vector_op x86_style */
  0x0008300010000000ULL, /* cmpgt128v32: flop vector_op x86_style vector_packed_single */
  0x0000300010000200ULL, /* cmpgtx128v8: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* cmpgtx128v16: load_exe flop vector_op x86_style */
  0x0008300010000200ULL, /* cmpgtx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0000100010000200ULL, /* cmpgtxx128v8: load_exe flop vector_op */
  0x0000100010000200ULL, /* cmpgtxx128v16: load_exe flop vector_op */
  0x0008100010000200ULL, /* cmpgtxx128v32: load_exe flop vector_op vector_packed_single */
  0x0000100010000200ULL, /* cmpgtxxx128v8: load_exe flop vector_op */
  0x0000100010000200ULL, /* cmpgtxxx128v16: load_exe flop vector_op */
  0x0008100010000200ULL, /* cmpgtxxx128v32: load_exe flop vector_op vector_packed_single */
  0x0000300010000100ULL, /* pcmpeqb: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* pcmpeqw: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* pcmpeqd: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* pcmpgtb: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* pcmpgtw: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* pcmpgtd: mmx flop vector_op x86_style */
  0x0000000000000000ULL, /* fmovsldup: */
  0x0000000000000000ULL, /* fmovshdup: */
  0x0000000000000000ULL, /* fmovddup: */
  0x0000000000000060ULL, /* fmovsldupx: load load_ext */
  0x0000000000000060ULL, /* fmovshdupx: load load_ext */
  0x0000000000000060ULL, /* fmovddupx: load load_ext */
  0x0000000000000060ULL, /* fmovsldupxx: load load_ext */
  0x0000000000000060ULL, /* fmovshdupxx: load load_ext */
  0x0000000000000060ULL, /* fmovddupxx: load load_ext */
  0x0000000000000060ULL, /* fmovsldupxxx: load load_ext */
  0x0000000000000060ULL, /* fmovshdupxxx: load load_ext */
  0x0000000000000060ULL, /* fmovddupxxx: load load_ext */
  0x0000000000000000ULL, /* cltd: */
  0x0000000000000000ULL, /* cqto: */
  0x0000000010000000ULL, /* cvtss2sd: flop */
  0x0000000010000000ULL, /* cvtsd2ss: flop */
  0x0000000010000200ULL, /* cvtsd2ss_x: load_exe flop */
  0x0000000010000200ULL, /* cvtsd2ss_xx: load_exe flop */
  0x0000000010000200ULL, /* cvtsd2ss_xxx: load_exe flop */
  0x0000000010000000ULL, /* cvtsi2sd: flop */
  0x0000000010000200ULL, /* cvtsi2sd_x: load_exe flop */
  0x0000000010000200ULL, /* cvtsi2sd_xx: load_exe flop */
  0x0000000010000200ULL, /* cvtsi2sd_xxx: load_exe flop */
  0x0000000010000000ULL, /* cvtsi2ss: flop */
  0x0000000010000200ULL, /* cvtsi2ss_x: load_exe flop */
  0x0000000010000200ULL, /* cvtsi2ss_xx: load_exe flop */
  0x0000000010000200ULL, /* cvtsi2ss_xxx: load_exe flop */
  0x0000000010000000ULL, /* cvtsi2sdq: flop */
  0x0000000010000200ULL, /* cvtsi2sdq_x: load_exe flop */
  0x0000000010000200ULL, /* cvtsi2sdq_xx: load_exe flop */
  0x0000000010000200ULL, /* cvtsi2sdq_xxx: load_exe flop */
  0x0000000010000000ULL, /* cvtsi2ssq: flop */
  0x0000000010000200ULL, /* cvtsi2ssq_x: load_exe flop */
  0x0000000010000200ULL, /* cvtsi2ssq_xx: load_exe flop */
  0x0000000010000200ULL, /* cvtsi2ssq_xxx: load_exe flop */
  0x0000000010000000ULL, /* cvtss2si: flop */
  0x0000000010000000ULL, /* cvtsd2si: flop */
  0x0000000010000000ULL, /* cvtss2siq: flop */
  0x0000000010000000ULL, /* cvtsd2siq: flop */
  0x0000000010000000ULL, /* cvttss2si: flop */
  0x0000000010000000ULL, /* cvttsd2si: flop */
  0x0000000010000000ULL, /* cvttss2siq: flop */
  0x0000000010000000ULL, /* cvttsd2siq: flop */
  0x0010100010000000ULL, /* cvtdq2pd: flop vector_op vector_packed_double */
  0x0008100010000000ULL, /* cvtdq2ps: flop vector_op vector_packed_single */
  0x0000100010000000ULL, /* cvtps2pd: flop vector_op */
  0x0000100010000000ULL, /* cvtpd2ps: flop vector_op */
  0x0008000010000000ULL, /* cvtps2dq: flop vector_packed_single */
  0x0008000010000000ULL, /* cvttps2dq: flop vector_packed_single */
  0x0010000010000000ULL, /* cvtpd2dq: flop vector_packed_double */
  0x0010000010000000ULL, /* cvttpd2dq: flop vector_packed_double */
  0x0010100010000200ULL, /* cvtdq2pd_x: load_exe flop vector_op vector_packed_double */
  0x0008100010000200ULL, /* cvtdq2ps_x: load_exe flop vector_op vector_packed_single */
  0x0000100010000200ULL, /* cvtps2pd_x: load_exe flop vector_op */
  0x0000100010000200ULL, /* cvtpd2ps_x: load_exe flop vector_op */
  0x0008100010000200ULL, /* cvtps2dq_x: load_exe flop vector_op vector_packed_single */
  0x0000100010000200ULL, /* cvtpd2dq_x: load_exe flop vector_op */
  0x0008100010000200ULL, /* cvttps2dq_x: load_exe flop vector_op vector_packed_single */
  0x0010100010000200ULL, /* cvttpd2dq_x: load_exe flop vector_op vector_packed_double */
  0x0010100010000200ULL, /* cvtdq2pd_xx: load_exe flop vector_op vector_packed_double */
  0x0008100010000200ULL, /* cvtdq2ps_xx: load_exe flop vector_op vector_packed_single */
  0x0000100010000200ULL, /* cvtps2pd_xx: load_exe flop vector_op */
  0x0000100010000200ULL, /* cvtpd2ps_xx: load_exe flop vector_op */
  0x0008100010000200ULL, /* cvtps2dq_xx: load_exe flop vector_op vector_packed_single */
  0x0000100010000200ULL, /* cvtpd2dq_xx: load_exe flop vector_op */
  0x0008100010000200ULL, /* cvttps2dq_xx: load_exe flop vector_op vector_packed_single */
  0x0010100010000200ULL, /* cvttpd2dq_xx: load_exe flop vector_op vector_packed_double */
  0x0010100010000200ULL, /* cvtdq2pd_xxx: load_exe flop vector_op vector_packed_double */
  0x0008100010000200ULL, /* cvtdq2ps_xxx: load_exe flop vector_op vector_packed_single */
  0x0000100010000200ULL, /* cvtps2pd_xxx: load_exe flop vector_op */
  0x0000100010000200ULL, /* cvtpd2ps_xxx: load_exe flop vector_op */
  0x0008100010000200ULL, /* cvtps2dq_xxx: load_exe flop vector_op vector_packed_single */
  0x0000100010000200ULL, /* cvtpd2dq_xxx: load_exe flop vector_op */
  0x0008100010000200ULL, /* cvttps2dq_xxx: load_exe flop vector_op vector_packed_single */
  0x0010100010000200ULL, /* cvttpd2dq_xxx: load_exe flop vector_op vector_packed_double */
  0x0008100010000000ULL, /* cvtpi2ps: flop vector_op vector_packed_single */
  0x0008100010000000ULL, /* cvtps2pi: flop vector_op vector_packed_single */
  0x0008100010000000ULL, /* cvttps2pi: flop vector_op vector_packed_single */
  0x0010100010000000ULL, /* cvtpi2pd: flop vector_op vector_packed_double */
  0x0010100010000000ULL, /* cvtpd2pi: flop vector_op vector_packed_double */
  0x0010100010000000ULL, /* cvttpd2pi: flop vector_op vector_packed_double */
  0x0000000010000020ULL, /* ldsd: load flop */
  0x0000000010000020ULL, /* ldsdx: load flop */
  0x0000000010000020ULL, /* ldsdxx: load flop */
  0x0000000010000020ULL, /* ldss: load flop */
  0x0000000010000020ULL, /* ldssx: load flop */
  0x0000000010000020ULL, /* ldssxx: load flop */
  0x0000100010000020ULL, /* lddqa: load flop vector_op */
  0x0000100010100020ULL, /* lddqu: load unalign_ld flop vector_op */
  0x000a100010100020ULL, /* ldlps: load unalign_ld flop vector_op vector_lo_loadstore vector_packed_single */
  0x000c100010100020ULL, /* ldhps: load unalign_ld flop vector_op vector_high_loadstore vector_packed_single */
  0x0012100010100020ULL, /* ldlpd: load unalign_ld flop vector_op vector_lo_loadstore vector_packed_double */
  0x0014100010100020ULL, /* ldhpd: load unalign_ld flop vector_op vector_high_loadstore vector_packed_double */
  0x0000100010001000ULL, /* stdqa: store flop vector_op */
  0x0000100010201000ULL, /* stdqu: store unalign_store flop vector_op */
  0x0002100010201000ULL, /* stlps: store unalign_store flop vector_op vector_lo_loadstore */
  0x0004100010201000ULL, /* sthps: store unalign_store flop vector_op vector_high_loadstore */
  0x0002100010201000ULL, /* stlpd: store unalign_store flop vector_op vector_lo_loadstore */
  0x0002100010201000ULL, /* storelpd: store unalign_store flop vector_op vector_lo_loadstore */
  0x0004100010201000ULL, /* sthpd: store unalign_store flop vector_op vector_high_loadstore */
  0x0000100010001800ULL, /* stntpd: nt_store store flop vector_op */
  0x0000100010001800ULL, /* stntps: nt_store store flop vector_op */
  0x0000100000001900ULL, /* storent64_fm: mmx nt_store store vector_op */
  0x0000100010000020ULL, /* lddqax: load flop vector_op */
  0x0000100010100020ULL, /* lddqux: load unalign_ld flop vector_op */
  0x000a100010100020ULL, /* ldlpsx: load unalign_ld flop vector_op vector_lo_loadstore vector_packed_single */
  0x000c100010100020ULL, /* ldhpsx: load unalign_ld flop vector_op vector_high_loadstore vector_packed_single */
  0x0012100010100020ULL, /* ldlpdx: load unalign_ld flop vector_op vector_lo_loadstore vector_packed_double */
  0x0014100010100020ULL, /* ldhpdx: load unalign_ld flop vector_op vector_high_loadstore vector_packed_double */
  0x0000100010001000ULL, /* stdqax: store flop vector_op */
  0x0000100010001800ULL, /* stntpdx: nt_store store flop vector_op */
  0x0000100010001800ULL, /* stntpsx: nt_store store flop vector_op */
  0x0000100010201000ULL, /* stdqux: store unalign_store flop vector_op */
  0x0002100010201000ULL, /* stlpsx: store unalign_store flop vector_op vector_lo_loadstore */
  0x0004100010201000ULL, /* sthpsx: store unalign_store flop vector_op vector_high_loadstore */
  0x0002100010201000ULL, /* stlpdx: store unalign_store flop vector_op vector_lo_loadstore */
  0x0004100010201000ULL, /* sthpdx: store unalign_store flop vector_op vector_high_loadstore */
  0x0000100010000020ULL, /* lddqaxx: load flop vector_op */
  0x0000100010100020ULL, /* lddquxx: load unalign_ld flop vector_op */
  0x000a100010100020ULL, /* ldlpsxx: load unalign_ld flop vector_op vector_lo_loadstore vector_packed_single */
  0x000c100010100020ULL, /* ldhpsxx: load unalign_ld flop vector_op vector_high_loadstore vector_packed_single */
  0x0012100010100020ULL, /* ldlpdxx: load unalign_ld flop vector_op vector_lo_loadstore vector_packed_double */
  0x0014100010100020ULL, /* ldhpdxx: load unalign_ld flop vector_op vector_high_loadstore vector_packed_double */
  0x0008100010000020ULL, /* ldaps: load flop vector_op vector_packed_single */
  0x0008100010000020ULL, /* ldapsx: load flop vector_op vector_packed_single */
  0x0008100010000020ULL, /* ldapsxx: load flop vector_op vector_packed_single */
  0x0010100010000020ULL, /* ldapd: load flop vector_op vector_packed_double */
  0x0010100010000020ULL, /* ldapdx: load flop vector_op vector_packed_double */
  0x0010100010000020ULL, /* ldapdxx: load flop vector_op vector_packed_double */
  0x0008100010100020ULL, /* ldups: load unalign_ld flop vector_op vector_packed_single */
  0x0010100010100020ULL, /* ldupd: load unalign_ld flop vector_op vector_packed_double */
  0x0010100010100020ULL, /* ldupdx: load unalign_ld flop vector_op vector_packed_double */
  0x0010100010100020ULL, /* ldupdxx: load unalign_ld flop vector_op vector_packed_double */
  0x0000100010001000ULL, /* stdqaxx: store flop vector_op */
  0x0000100010001800ULL, /* stntpdxx: nt_store store flop vector_op */
  0x0000100010001800ULL, /* stntpsxx: nt_store store flop vector_op */
  0x0000100010201000ULL, /* stdquxx: store unalign_store flop vector_op */
  0x0002100010201000ULL, /* stlpsxx: store unalign_store flop vector_op vector_lo_loadstore */
  0x0004100010201000ULL, /* sthpsxx: store unalign_store flop vector_op vector_high_loadstore */
  0x0002100010201000ULL, /* stlpdxx: store unalign_store flop vector_op vector_lo_loadstore */
  0x0004100010201000ULL, /* sthpdxx: store unalign_store flop vector_op vector_high_loadstore */
  0x0000100010001000ULL, /* staps: store flop vector_op */
  0x0000100010001000ULL, /* stapsx: store flop vector_op */
  0x0000100010001000ULL, /* stapsxx: store flop vector_op */
  0x0000100010001000ULL, /* stapd: store flop vector_op */
  0x0000100010001000ULL, /* stapdx: store flop vector_op */
  0x0000100010001000ULL, /* stapdxx: store flop vector_op */
  0x0000100010201000ULL, /* stups: store unalign_store flop vector_op */
  0x0000100010201000ULL, /* stupd: store unalign_store flop vector_op */
  0x0000280010000000ULL, /* maxsd: flop commutative x86_style */
  0x0000280010000000ULL, /* maxss: flop commutative x86_style */
  0x0008380010000000ULL, /* fmax128v32: flop commutative vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* fmaxx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* fmaxxx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* fmaxxxx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0010380010000000ULL, /* fmax128v64: flop commutative vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* fmaxx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* fmaxxx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* fmaxxxx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0000300010000000ULL, /* max128v16: flop vector_op x86_style */
  0x0000300010000000ULL, /* max128v8: flop vector_op x86_style */
  0x0000300010000200ULL, /* maxx128v16: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* maxx128v8: load_exe flop vector_op x86_style */
  0x0000000010000200ULL, /* maxxx128v16: load_exe flop */
  0x0000000010000200ULL, /* maxxx128v8: load_exe flop */
  0x0000000010000200ULL, /* maxxxx128v16: load_exe flop */
  0x0000000010000200ULL, /* maxxxx128v8: load_exe flop */
  0x0000380010000100ULL, /* max64v8: mmx flop commutative vector_op x86_style */
  0x0000380010000100ULL, /* max64v16: mmx flop commutative vector_op x86_style */
  0x0000300010000000ULL, /* min128v16: flop vector_op x86_style */
  0x0000300010000000ULL, /* min128v8: flop vector_op x86_style */
  0x0000300010000200ULL, /* minx128v16: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* minx128v8: load_exe flop vector_op x86_style */
  0x0000000010000200ULL, /* minxx128v16: load_exe flop */
  0x0000000010000200ULL, /* minxx128v8: load_exe flop */
  0x0000000010000200ULL, /* minxxx128v16: load_exe flop */
  0x0000000010000200ULL, /* minxxx128v8: load_exe flop */
  0x0000380010000100ULL, /* min64v8: mmx flop commutative vector_op x86_style */
  0x0000380010000100ULL, /* min64v16: mmx flop commutative vector_op x86_style */
  0x0000280010000000ULL, /* minsd: flop commutative x86_style */
  0x0000280010000000ULL, /* minss: flop commutative x86_style */
  0x0008380010000000ULL, /* fmin128v32: flop commutative vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* fminx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* fminxx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* fminxxx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0010380010000000ULL, /* fmin128v64: flop commutative vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* fminx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* fminxx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* fminxxx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0000000010000008ULL, /* movx2g64: move flop */
  0x0000000010000008ULL, /* movx2g: move flop */
  0x0000000010000008ULL, /* movg2x64: move flop */
  0x0000000010000008ULL, /* movg2x: move flop */
  0x0000000010000008ULL, /* movsd: move flop */
  0x0000000010000008ULL, /* movss: move flop */
  0x0000000010000008ULL, /* movdq: move flop */
  0x0010000010000008ULL, /* movapd: move flop vector_packed_double */
  0x0008000010000008ULL, /* movaps: move flop vector_packed_single */
  0x0000100000000108ULL, /* movq2dq: move mmx vector_op */
  0x0000100000000108ULL, /* movdq2q: move mmx vector_op */
  0x0000200410000000ULL, /* divsd: flop fdiv x86_style */
  0x0000200410000200ULL, /* divxsd: load_exe flop fdiv x86_style */
  0x0000200410000200ULL, /* divxxsd: load_exe flop fdiv x86_style */
  0x0000200010000200ULL, /* divxxxsd: load_exe flop x86_style */
  0x0000200410000000ULL, /* divss: flop fdiv x86_style */
  0x0000200410000200ULL, /* divxss: load_exe flop fdiv x86_style */
  0x0000200410000200ULL, /* divxxss: load_exe flop fdiv x86_style */
  0x0000200010000200ULL, /* divxxxss: load_exe flop x86_style */
  0x0008300410000000ULL, /* fdiv128v32: flop fdiv vector_op x86_style vector_packed_single */
  0x0008300410000200ULL, /* fdivx128v32: load_exe flop fdiv vector_op x86_style vector_packed_single */
  0x0008300410000200ULL, /* fdivxx128v32: load_exe flop fdiv vector_op x86_style vector_packed_single */
  0x0008300410000200ULL, /* fdivxxx128v32: load_exe flop fdiv vector_op x86_style vector_packed_single */
  0x0010300410000000ULL, /* fdiv128v64: flop fdiv vector_op x86_style vector_packed_double */
  0x0010300410000200ULL, /* fdivx128v64: load_exe flop fdiv vector_op x86_style vector_packed_double */
  0x0010300410000200ULL, /* fdivxx128v64: load_exe flop fdiv vector_op x86_style vector_packed_double */
  0x0010300410000200ULL, /* fdivxxx128v64: load_exe flop fdiv vector_op x86_style vector_packed_double */
  0x0000280090000000ULL, /* mulsd: flop fmul commutative x86_style */
  0x0000280090000000ULL, /* mulss: flop fmul commutative x86_style */
  0x0008380090000000ULL, /* fmul128v32: flop fmul commutative vector_op x86_style vector_packed_single */
  0x0008300090000200ULL, /* fmulx128v32: load_exe flop fmul vector_op x86_style vector_packed_single */
  0x0008300090000200ULL, /* fmulxx128v32: load_exe flop fmul vector_op x86_style vector_packed_single */
  0x0008300090000200ULL, /* fmulxxx128v32: load_exe flop fmul vector_op x86_style vector_packed_single */
  0x0010380090000000ULL, /* fmul128v64: flop fmul commutative vector_op x86_style vector_packed_double */
  0x0010300090000200ULL, /* fmulx128v64: load_exe flop fmul vector_op x86_style vector_packed_double */
  0x0010300090000200ULL, /* fmulxx128v64: load_exe flop fmul vector_op x86_style vector_packed_double */
  0x0010300090000200ULL, /* fmulxxx128v64: load_exe flop fmul vector_op x86_style vector_packed_double */
  0x0000200090000200ULL, /* mulxsd: load_exe flop fmul x86_style */
  0x0000200090000200ULL, /* mulxss: load_exe flop fmul x86_style */
  0x0000200090000200ULL, /* mulxxsd: load_exe flop fmul x86_style */
  0x0000200010000200ULL, /* mulxxxsd: load_exe flop x86_style */
  0x0000200090000200ULL, /* mulxxss: load_exe flop fmul x86_style */
  0x0000200010000200ULL, /* mulxxxss: load_exe flop x86_style */
  0x0000200050000000ULL, /* subsd: flop fsub x86_style */
  0x0000200050000000ULL, /* subss: flop fsub x86_style */
  0x0000200050000200ULL, /* subxsd: load_exe flop fsub x86_style */
  0x0000200050000200ULL, /* subxss: load_exe flop fsub x86_style */
  0x0000200050000200ULL, /* subxxsd: load_exe flop fsub x86_style */
  0x0000200010000200ULL, /* subxxxsd: load_exe flop x86_style */
  0x0000200050000200ULL, /* subxxss: load_exe flop fsub x86_style */
  0x0000200010000200ULL, /* subxxxss: load_exe flop x86_style */
  0x0008300050000000ULL, /* fsub128v32: flop fsub vector_op x86_style vector_packed_single */
  0x0008300050000200ULL, /* fsubx128v32: load_exe flop fsub vector_op x86_style vector_packed_single */
  0x0008300050000200ULL, /* fsubxx128v32: load_exe flop fsub vector_op x86_style vector_packed_single */
  0x0008300050000200ULL, /* fsubxxx128v32: load_exe flop fsub vector_op x86_style vector_packed_single */
  0x0010300050000000ULL, /* fsub128v64: flop fsub vector_op x86_style vector_packed_double */
  0x0010300050000200ULL, /* fsubx128v64: load_exe flop fsub vector_op x86_style vector_packed_double */
  0x0010300050000200ULL, /* fsubxx128v64: load_exe flop fsub vector_op x86_style vector_packed_double */
  0x0010300050000200ULL, /* fsubxxx128v64: load_exe flop fsub vector_op x86_style vector_packed_double */
  0x0008300010000000ULL, /* fhsub128v32: flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* fhsubx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* fhsubxx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0008300010000200ULL, /* fhsubxxx128v32: load_exe flop vector_op x86_style vector_packed_single */
  0x0010300010000000ULL, /* fhsub128v64: flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* fhsubx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* fhsubxx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0010300010000200ULL, /* fhsubxxx128v64: load_exe flop vector_op x86_style vector_packed_double */
  0x0000000010001000ULL, /* stss: store flop */
  0x0000000010001800ULL, /* stntss: nt_store store flop */
  0x0000000010001000ULL, /* stssx: store flop */
  0x0000000010001800ULL, /* stntssx: nt_store store flop */
  0x0000000010001000ULL, /* stssxx: store flop */
  0x0000000010001800ULL, /* stntssxx: nt_store store flop */
  0x0000000010001000ULL, /* stsd: store flop */
  0x0000000010001800ULL, /* stntsd: nt_store store flop */
  0x0000000010001000ULL, /* stsdx: store flop */
  0x0000000010001800ULL, /* stntsdx: nt_store store flop */
  0x0000000010001000ULL, /* stsdxx: store flop */
  0x0000000010001800ULL, /* stntsdxx: nt_store store flop */
  0x0000000010000000ULL, /* rcpss: flop */
  0x0008100010000000ULL, /* frcp128v32: flop vector_op vector_packed_single */
  0x0000000810000000ULL, /* sqrtsd: flop sqrt */
  0x0000000810000000ULL, /* sqrtss: flop sqrt */
  0x0000000810000000ULL, /* rsqrtss: flop sqrt */
  0x0008100810000000ULL, /* fsqrt128v32: flop sqrt vector_op vector_packed_single */
  0x0008100810000000ULL, /* frsqrt128v32: flop sqrt vector_op vector_packed_single */
  0x0010100810000000ULL, /* fsqrt128v64: flop sqrt vector_op vector_packed_double */
  0x0000300010000100ULL, /* punpcklwd: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* punpcklbw: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* punpckldq: mmx flop vector_op x86_style */
  0x0000300010000000ULL, /* punpcklbw128: flop vector_op x86_style */
  0x0000300010000000ULL, /* punpcklwd128: flop vector_op x86_style */
  0x0000300010000000ULL, /* punpckldq128: flop vector_op x86_style */
  0x0000300010000100ULL, /* punpckhbw: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* punpckhwd: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* punpckhdq: mmx flop vector_op x86_style */
  0x0000300010000000ULL, /* punpckhbw128: flop vector_op x86_style */
  0x0000300010000000ULL, /* punpckhwd128: flop vector_op x86_style */
  0x0000300010000000ULL, /* punpckhdq128: flop vector_op x86_style */
  0x0000300010000000ULL, /* punpcklqdq: flop vector_op x86_style */
  0x0000300010000000ULL, /* punpckhqdq: flop vector_op x86_style */
  0x0000300010000100ULL, /* packsswb: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* packssdw: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* packuswb: mmx flop vector_op x86_style */
  0x0000300010000000ULL, /* packsswb128: flop vector_op x86_style */
  0x0000300010000000ULL, /* packssdw128: flop vector_op x86_style */
  0x0000300010000000ULL, /* packuswb128: flop vector_op x86_style */
  0x0000300010000000ULL, /* pshufd: flop vector_op x86_style */
  0x0000300010000000ULL, /* pshufw: flop vector_op x86_style */
  0x0000300010000000ULL, /* pshuflw: flop vector_op x86_style */
  0x0000300010000000ULL, /* pshufhw: flop vector_op x86_style */
  0x0000300010000000ULL, /* pslldq: flop vector_op x86_style */
  0x0000300010000000ULL, /* psllw: flop vector_op x86_style */
  0x0000300010000000ULL, /* psllwi: flop vector_op x86_style */
  0x0000300010000000ULL, /* pslld: flop vector_op x86_style */
  0x0000300010000000ULL, /* pslldi: flop vector_op x86_style */
  0x0000300010000000ULL, /* psllq: flop vector_op x86_style */
  0x0000300010000000ULL, /* psllqi: flop vector_op x86_style */
  0x0000300010000000ULL, /* psrlw: flop vector_op x86_style */
  0x0000300010000000ULL, /* psrlwi: flop vector_op x86_style */
  0x0000300010000000ULL, /* psrld: flop vector_op x86_style */
  0x0000300010000000ULL, /* psrldi: flop vector_op x86_style */
  0x0000300000000000ULL, /* psrlq: vector_op x86_style */
  0x0000300010000000ULL, /* psrlqi: flop vector_op x86_style */
  0x0000300010000000ULL, /* psraw: flop vector_op x86_style */
  0x0000300010000000ULL, /* psrawi: flop vector_op x86_style */
  0x0000300010000000ULL, /* psrad: flop vector_op x86_style */
  0x0000300010000000ULL, /* psradi: flop vector_op x86_style */
  0x0000300010000100ULL, /* psllw_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* psllwi_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* pslld_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* pslldi_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* psllq_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* psllqi_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* psrlw_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* psrlwi_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* psrld_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* psrldi_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* psrlq_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* psrlqi_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* psraw_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* psrawi_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* psrad_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* psradi_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* pand_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* pandn_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* por_mmx: mmx flop vector_op x86_style */
  0x0000300010000100ULL, /* pxor_mmx: mmx flop vector_op x86_style */
  0x0000380010000000ULL, /* pand: flop commutative vector_op x86_style */
  0x0000380010000000ULL, /* pandn: flop commutative vector_op x86_style */
  0x0000380010000000ULL, /* por: flop commutative vector_op x86_style */
  0x0000380010000000ULL, /* pxor: flop commutative vector_op x86_style */
  0x0010300010000000ULL, /* unpckhpd: flop vector_op x86_style vector_packed_double */
  0x0008300010000000ULL, /* unpckhps: flop vector_op x86_style vector_packed_single */
  0x0010300010000000ULL, /* unpcklpd: flop vector_op x86_style vector_packed_double */
  0x0008300010000000ULL, /* unpcklps: flop vector_op x86_style vector_packed_single */
  0x0010300010000000ULL, /* shufpd: flop vector_op x86_style vector_packed_double */
  0x0008300010000000ULL, /* shufps: flop vector_op x86_style vector_packed_single */
  0x0008100010000000ULL, /* movhlps: flop vector_op vector_packed_single */
  0x000c100010000000ULL, /* movlhps: flop vector_op vector_high_loadstore vector_packed_single */
  0x0000300010000000ULL, /* psrldq: flop vector_op x86_style */
  0x0000300010000000ULL, /* psrlq128v64: flop vector_op x86_style */
  0x0000300010000000ULL, /* subus128v16: flop vector_op x86_style */
  0x0000380010000100ULL, /* pavgb: mmx flop commutative vector_op x86_style */
  0x0000380010000100ULL, /* pavgw: mmx flop commutative vector_op x86_style */
  0x0000380010000100ULL, /* psadbw: mmx flop commutative vector_op x86_style */
  0x0000380010000000ULL, /* pavgb128: flop commutative vector_op x86_style */
  0x0000380010000000ULL, /* pavgw128: flop commutative vector_op x86_style */
  0x0000380010000000ULL, /* psadbw128: flop commutative vector_op x86_style */
  0x0000100000000100ULL, /* pextrw: mmx vector_op */
  0x0000100000000100ULL, /* pinsrw: mmx vector_op */
  0x0000100000000100ULL, /* pmovmskb: mmx vector_op */
  0x0000000010000000ULL, /* pmovmskb128: flop */
  0x0000100000000108ULL, /* movi32_2m: move mmx vector_op */
  0x0000100000000108ULL, /* movi64_2m: move mmx vector_op */
  0x0000100000000108ULL, /* movm_2i32: move mmx vector_op */
  0x0000100000000108ULL, /* movm_2i64: move mmx vector_op */
  0x0000100010000100ULL, /* pshufw64v16: mmx flop vector_op */
  0x0008100000000000ULL, /* movmskps: vector_op vector_packed_single */
  0x0010100000000000ULL, /* movmskpd: vector_op vector_packed_double */
  0x0000100000000000ULL, /* maskmovdqu: vector_op */
  0x0000100000000100ULL, /* maskmovq: mmx vector_op */
  0x0000100000000000ULL, /* extrq: vector_op */
  0x0000100000000000ULL, /* insertq: vector_op */
  0x0020000010000000ULL, /* vfmaddss: flop non_destructive */
  0x0020000010000200ULL, /* vfmaddxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmaddxxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmaddxxxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmaddxrss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmaddxxrss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmaddxxxrss: load_exe flop non_destructive */
  0x0020000010000000ULL, /* vfmaddsd: flop non_destructive */
  0x0020000010000200ULL, /* vfmaddxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmaddxxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmaddxxxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmaddxrsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmaddxxrsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmaddxxxrsd: load_exe flop non_destructive */
  0x0020000010000000ULL, /* vfnmaddss: flop non_destructive */
  0x0020000010000200ULL, /* vfnmaddxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmaddxxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmaddxxxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmaddxrss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmaddxxrss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmaddxxxrss: load_exe flop non_destructive */
  0x0020000010000000ULL, /* vfnmaddsd: flop non_destructive */
  0x0020000010000200ULL, /* vfnmaddxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmaddxxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmaddxxxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmaddxrsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmaddxxrsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmaddxxxrsd: load_exe flop non_destructive */
  0x0028100010000000ULL, /* vfmaddps: flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmaddxps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmaddxxps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmaddxxxps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmaddxrps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmaddxxrps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmaddxxxrps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0030100010000000ULL, /* vfmaddpd: flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmaddxpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmaddxxpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmaddxxxpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmaddxrpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmaddxxrpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmaddxxxrpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0028100010000000ULL, /* vfmaddsubps: flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmaddsubxps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmaddsubxxps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmaddsubxxxps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmaddsubxrps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmaddsubxxrps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmaddsubxxxrps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0030100010000000ULL, /* vfmaddsubpd: flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmaddsubxpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmaddsubxxpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmaddsubxxxpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmaddsubxrpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmaddsubxxrpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmaddsubxxxrpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0028100010000000ULL, /* vfnmaddps: flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfnmaddxps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfnmaddxxps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfnmaddxxxps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfnmaddxrps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfnmaddxxrps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfnmaddxxxrps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0030100010000000ULL, /* vfnmaddpd: flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfnmaddxpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfnmaddxxpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfnmaddxxxpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfnmaddxrpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfnmaddxxrpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfnmaddxxxrpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0020000010000000ULL, /* vfmsubss: flop non_destructive */
  0x0020000010000200ULL, /* vfmsubxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmsubxxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmsubxxxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmsubxrss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmsubxxrss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmsubxxxrss: load_exe flop non_destructive */
  0x0020000010000000ULL, /* vfmsubsd: flop non_destructive */
  0x0020000010000200ULL, /* vfmsubxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmsubxxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmsubxxxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmsubxrsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmsubxxrsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmsubxxxrsd: load_exe flop non_destructive */
  0x0020000010000000ULL, /* vfnmsubss: flop non_destructive */
  0x0020000010000200ULL, /* vfnmsubxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmsubxxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmsubxxxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmsubxrss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmsubxxrss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmsubxxxrss: load_exe flop non_destructive */
  0x0020000010000000ULL, /* vfnmsubsd: flop non_destructive */
  0x0020000010000200ULL, /* vfnmsubxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmsubxxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmsubxxxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmsubxrsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmsubxxrsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfnmsubxxxrsd: load_exe flop non_destructive */
  0x0028100010000000ULL, /* vfmsubps: flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmsubxps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmsubxxps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmsubxxxps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmsubxrps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmsubxxrps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmsubxxxrps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0030100010000000ULL, /* vfmsubpd: flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmsubxpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmsubxxpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmsubxxxpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmsubxrpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmsubxxrpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmsubxxxrpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0028100010000000ULL, /* vfmsubaddps: flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmsubaddxps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmsubaddxxps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmsubaddxxxps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmsubaddxrps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmsubaddxxrps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfmsubaddxxxrps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0030100010000000ULL, /* vfmsubaddpd: flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmsubaddxpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmsubaddxxpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmsubaddxxxpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmsubaddxrpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmsubaddxxrpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfmsubaddxxxrpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0028100010000000ULL, /* vfnmsubps: flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfnmsubxps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfnmsubxxps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfnmsubxxxps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfnmsubxrps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfnmsubxxrps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0028100010000200ULL, /* vfnmsubxxxrps: load_exe flop vector_op vector_packed_single non_destructive */
  0x0030100010000000ULL, /* vfnmsubpd: flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfnmsubxpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfnmsubxxpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfnmsubxxxpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfnmsubxrpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfnmsubxxrpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0030100010000200ULL, /* vfnmsubxxxrpd: load_exe flop vector_op vector_packed_double non_destructive */
  0x0000800000000000ULL, /* vzeroupper: side_effects */
  0x0000000000c00000ULL, /* mfence: unknown_memdata unknown_addr */
  0x0000000000c00000ULL, /* lfence: unknown_memdata unknown_addr */
  0x0000000000c00000ULL, /* sfence: unknown_memdata unknown_addr */
  0x0000000000000000ULL, /* monitor: */
  0x0000000000000000ULL, /* mwait: */
  0x0001840000080004ULL, /* asm: change_rflags same_res simulated side_effects var_opnds */
  0x0000040000000000ULL, /* intrncall: simulated */
  0x0000040000000004ULL, /* spadjust: change_rflags simulated */
  0x0000840000000000ULL, /* savexmms: simulated side_effects */
  0x0000000000000004ULL, /* zero32: change_rflags */
  0x0000000000000004ULL, /* zero64: change_rflags */
  0x0000000010000000ULL, /* xzero32: flop */
  0x0000000010000000ULL, /* xzero64: flop */
  0x0008100010000000ULL, /* xzero128v32: flop vector_op vector_packed_single */
  0x0010100010000000ULL, /* xzero128v64: flop vector_op vector_packed_double */
  0x0000280030000080ULL, /* fadd: x87 flop fadd commutative x86_style */
  0x0000280030000080ULL, /* faddp: x87 flop fadd commutative x86_style */
  0x00000000100000a0ULL, /* flds: load x87 flop */
  0x00000000100000a0ULL, /* flds_n32: load x87 flop */
  0x00000000100000a0ULL, /* fldl: load x87 flop */
  0x00000000100000a0ULL, /* fldl_n32: load x87 flop */
  0x00000000100000a0ULL, /* fldt: load x87 flop */
  0x00000000100000a0ULL, /* fldt_n32: load x87 flop */
  0x0000000000000080ULL, /* fld: x87 */
  0x0000000010000080ULL, /* fst: x87 flop */
  0x0000000010000080ULL, /* fstp: x87 flop */
  0x0000800010001080ULL, /* fstps: x87 store flop side_effects */
  0x0000800010001080ULL, /* fstps_n32: x87 store flop side_effects */
  0x0000800010001080ULL, /* fstpl: x87 store flop side_effects */
  0x0000800010001080ULL, /* fstpl_n32: x87 store flop side_effects */
  0x0000800010001080ULL, /* fstpt: x87 store flop side_effects */
  0x0000800010001080ULL, /* fstpt_n32: x87 store flop side_effects */
  0x0000800010001080ULL, /* fsts: x87 store flop side_effects */
  0x0000800010001080ULL, /* fsts_n32: x87 store flop side_effects */
  0x0000800010001080ULL, /* fstl: x87 store flop side_effects */
  0x0000800010001080ULL, /* fstl_n32: x87 store flop side_effects */
  0x0000000000000080ULL, /* fxch: x87 */
  0x0000000010000088ULL, /* fmov: move x87 flop */
  0x0000200050000080ULL, /* fsub: x87 flop fsub x86_style */
  0x0000200050000080ULL, /* fsubr: x87 flop fsub x86_style */
  0x0000200050000080ULL, /* fsubp: x87 flop fsub x86_style */
  0x0000200050000080ULL, /* fsubrp: x87 flop fsub x86_style */
  0x0000280090000080ULL, /* fmul: x87 flop fmul commutative x86_style */
  0x0000280090000080ULL, /* fmulp: x87 flop fmul commutative x86_style */
  0x0000200410000080ULL, /* fdiv: x87 flop fdiv x86_style */
  0x0000200410000080ULL, /* fdivp: x87 flop fdiv x86_style */
  0x0000200410000080ULL, /* fdivr: x87 flop fdiv x86_style */
  0x0000200410000080ULL, /* fdivrp: x87 flop fdiv x86_style */
  0x0000020010000084ULL, /* fucomi: change_rflags x87 flop icmp */
  0x0000020010000084ULL, /* fucomip: change_rflags x87 flop icmp */
  0x0000200010000080ULL, /* fchs: x87 flop x86_style */
  0x0000200010000082ULL, /* frndint: read_x87_cw x87 flop x86_style */
  0x0000000010001081ULL, /* fnstcw: change_x87_cw x87 store flop */
  0x00000000100000a1ULL, /* fldcw: change_x87_cw load x87 flop */
  0x0000000010001082ULL, /* fistps: read_x87_cw x87 store flop */
  0x0000000010001082ULL, /* fistpl: read_x87_cw x87 store flop */
  0x0000000010001082ULL, /* fists: read_x87_cw x87 store flop */
  0x0000000010001082ULL, /* fistl: read_x87_cw x87 store flop */
  0x0000000010001082ULL, /* fistpll: read_x87_cw x87 store flop */
  0x00000000100000a0ULL, /* filds: load x87 flop */
  0x00000000100000a0ULL, /* fildl: load x87 flop */
  0x00000000100000a0ULL, /* fildll: load x87 flop */
  0x0000000010000080ULL, /* fldz: x87 flop */
  0x0000200010000080ULL, /* fabs: x87 flop x86_style */
  0x0000200010000080ULL, /* fsqrt: x87 flop x86_style */
  0x0000400010040080ULL, /* fcmovb: x87 cond_move flop read_rflags */
  0x0000400010040080ULL, /* fcmovbe: x87 cond_move flop read_rflags */
  0x0000400010040080ULL, /* fcmovnb: x87 cond_move flop read_rflags */
  0x0000400010040080ULL, /* fcmovnbe: x87 cond_move flop read_rflags */
  0x0000400010040080ULL, /* fcmove: x87 cond_move flop read_rflags */
  0x0000400010040080ULL, /* fcmovne: x87 cond_move flop read_rflags */
  0x0000400010040080ULL, /* fcmovu: x87 cond_move flop read_rflags */
  0x0000400010040080ULL, /* fcmovnu: x87 cond_move flop read_rflags */
  0x0000200010000080ULL, /* fcos: x87 flop x86_style */
  0x0000200010000080ULL, /* fsin: x87 flop x86_style */
  0x0000000000000000ULL, /* cmpeqpd: */
  0x0000000000000000ULL, /* cmpltpd: */
  0x0000000000000000ULL, /* cmplepd: */
  0x0000000000000000ULL, /* cmpunordpd: */
  0x0000000000000000ULL, /* cmpneqpd: */
  0x0000000000000000ULL, /* cmpnltpd: */
  0x0000000000000000ULL, /* cmpnlepd: */
  0x0000000000000000ULL, /* cmpordpd: */
  0x0000200010000000ULL, /* cmpeqps: flop x86_style */
  0x0000200010000000ULL, /* cmpltps: flop x86_style */
  0x0000200010000000ULL, /* cmpleps: flop x86_style */
  0x0000200010000000ULL, /* cmpunordps: flop x86_style */
  0x0000200010000000ULL, /* cmpneqps: flop x86_style */
  0x0000200010000000ULL, /* cmpnltps: flop x86_style */
  0x0000200010000000ULL, /* cmpnleps: flop x86_style */
  0x0000200010000000ULL, /* cmpordps: flop x86_style */
  0x0000000000000000ULL, /* cmpeqsd: */
  0x0000000000000000ULL, /* cmpltsd: */
  0x0000000000000000ULL, /* cmplesd: */
  0x0000000000000000ULL, /* cmpunordsd: */
  0x0000000000000000ULL, /* cmpneqsd: */
  0x0000000000000000ULL, /* cmpnltsd: */
  0x0000000000000000ULL, /* cmpnlesd: */
  0x0000000000000000ULL, /* cmpordsd: */
  0x0000200010000000ULL, /* cmpeqss: flop x86_style */
  0x0000200010000000ULL, /* cmpltss: flop x86_style */
  0x0000200010000000ULL, /* cmpless: flop x86_style */
  0x0000200010000000ULL, /* cmpunordss: flop x86_style */
  0x0000200010000000ULL, /* cmpneqss: flop x86_style */
  0x0000200010000000ULL, /* cmpnltss: flop x86_style */
  0x0000200010000000ULL, /* cmpnless: flop x86_style */
  0x0000200010000000ULL, /* cmpordss: flop x86_style */
  0x0000000000000100ULL, /* emms: mmx */
  0x0000800000000000ULL, /* stmxcsr: side_effects */
  0x0000800000000000ULL, /* ldmxcsr: side_effects */
  0x0000000000000000ULL, /* clflush: */
  0x0000000010001080ULL, /* fisttps: x87 store flop */
  0x0000000010001080ULL, /* fisttpl: x87 store flop */
  0x0000000010001080ULL, /* fisttpll: x87 store flop */
  0x0000100000000000ULL, /* pabs128v8: vector_op */
  0x0000100000000200ULL, /* pabsx128v8: load_exe vector_op */
  0x0000100000000200ULL, /* pabsxx128v8: load_exe vector_op */
  0x0000100000000200ULL, /* pabsxxx128v8: load_exe vector_op */
  0x0000100000000000ULL, /* pabs128v16: vector_op */
  0x0000100000000200ULL, /* pabsx128v16: load_exe vector_op */
  0x0000100000000200ULL, /* pabsxx128v16: load_exe vector_op */
  0x0000100000000200ULL, /* pabsxxx128v16: load_exe vector_op */
  0x0000100000000000ULL, /* pabs128v32: vector_op */
  0x0000100000000200ULL, /* pabsx128v32: load_exe vector_op */
  0x0000100000000200ULL, /* pabsxx128v32: load_exe vector_op */
  0x0000100000000200ULL, /* pabsxxx128v32: load_exe vector_op */
  0x0000300000000000ULL, /* psign128v8: vector_op x86_style */
  0x0000300000000200ULL, /* psignx128v8: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* psignxx128v8: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* psignxxx128v8: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* psign128v16: vector_op x86_style */
  0x0000300000000200ULL, /* psignx128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* psignxx128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* psignxxx128v16: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* psign128v32: vector_op x86_style */
  0x0000300000000200ULL, /* psignx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* psignxx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* psignxxx128v32: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* pshuf128v8: vector_op x86_style */
  0x0000300000000200ULL, /* pshufx128v8: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* pshufxx128v8: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* pshufxxx128v8: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* phsub128v16: vector_op x86_style */
  0x0000300000000200ULL, /* phsubx128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* phsubxx128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* phsubxxx128v16: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* phsub128v32: vector_op x86_style */
  0x0000300000000200ULL, /* phsubx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* phsubxx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* phsubxxx128v32: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* phsubs128v16: vector_op x86_style */
  0x0000300000000200ULL, /* phsubsx128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* phsubsxx128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* phsubsxxx128v16: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* phadd128v16: vector_op x86_style */
  0x0000300000000200ULL, /* phaddx128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* phaddxx128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* phaddxxx128v16: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* phadd128v32: vector_op x86_style */
  0x0000300000000200ULL, /* phaddx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* phaddxx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* phaddxxx128v32: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* phadds128v16: vector_op x86_style */
  0x0000300000000200ULL, /* phaddsx128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* phaddsxx128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* phaddsxxx128v16: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* pmulhrsw128: vector_op x86_style */
  0x0000300000000200ULL, /* pmulhrswx128: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* pmulhrswxx128: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* pmulhrswxxx128: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* pmaddubsw128: vector_op x86_style */
  0x0000300000000200ULL, /* pmaddubswx128: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* pmaddubswxx128: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* pmaddubswxxx128: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* palignr128: vector_op x86_style */
  0x0000300000000200ULL, /* palignrx128: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* palignrxx128: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* palignrxxx128: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* muldq: vector_op x86_style */
  0x0000300000000200ULL, /* muldqx: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* muldqxx: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* muldqxxx: load_exe vector_op x86_style */
  0x0000100000000020ULL, /* ldntdqa: load vector_op */
  0x0000100000000020ULL, /* ldntdqax: load vector_op */
  0x0000100000000020ULL, /* ldntdqaxx: load vector_op */
  0x0000100000001800ULL, /* stntdq: nt_store store vector_op */
  0x0000100000001800ULL, /* stntdqx: nt_store store vector_op */
  0x0000100000001800ULL, /* stntdqxx: nt_store store vector_op */
  0x0000300000000000ULL, /* mins128v8: vector_op x86_style */
  0x0000300000000200ULL, /* minsx128v8: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* minsxx128v8: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* minsxxx128v8: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* maxs128v8: vector_op x86_style */
  0x0000300000000200ULL, /* maxsx128v8: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* maxsxx128v8: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* maxsxxx128v8: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* minu128v16: vector_op x86_style */
  0x0000300000000200ULL, /* minux128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* minuxx128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* minuxxx128v16: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* maxu128v16: vector_op x86_style */
  0x0000300000000200ULL, /* maxux128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* maxuxx128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* maxuxxx128v16: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* minu128v32: vector_op x86_style */
  0x0000300000000200ULL, /* minux128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* minuxx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* minuxxx128v32: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* maxu128v32: vector_op x86_style */
  0x0000300000000200ULL, /* maxux128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* maxuxx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* maxuxxx128v32: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* mins128v32: vector_op x86_style */
  0x0000300000000200ULL, /* minsx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* minsxx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* minsxxx128v32: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* maxs128v32: vector_op x86_style */
  0x0000300000000200ULL, /* maxsx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* maxsxx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* maxsxxx128v32: load_exe vector_op x86_style */
  0x0000100000000000ULL, /* pmovsxbw: vector_op */
  0x0000100000000200ULL, /* pmovsxbwx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovsxbwxx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovsxbwxxx: load_exe vector_op */
  0x0000100000000000ULL, /* pmovzxbw: vector_op */
  0x0000100000000200ULL, /* pmovzxbwx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovzxbwxx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovzxbwxxx: load_exe vector_op */
  0x0000100000000000ULL, /* pmovsxbd: vector_op */
  0x0000100000000200ULL, /* pmovsxbdx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovsxbdxx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovsxbdxxx: load_exe vector_op */
  0x0000100000000000ULL, /* pmovzxbd: vector_op */
  0x0000100000000200ULL, /* pmovzxbdx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovzxbdxx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovzxbdxxx: load_exe vector_op */
  0x0000100000000000ULL, /* pmovsxbq: vector_op */
  0x0000100000000200ULL, /* pmovsxbqx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovsxbqxx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovsxbqxxx: load_exe vector_op */
  0x0000100000000000ULL, /* pmovzxbq: vector_op */
  0x0000100000000200ULL, /* pmovzxbqx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovzxbqxx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovzxbqxxx: load_exe vector_op */
  0x0000100000000000ULL, /* pmovsxwd: vector_op */
  0x0000100000000200ULL, /* pmovsxwdx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovsxwdxx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovsxwdxxx: load_exe vector_op */
  0x0000100000000000ULL, /* pmovzxwd: vector_op */
  0x0000100000000200ULL, /* pmovzxwdx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovzxwdxx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovzxwdxxx: load_exe vector_op */
  0x0000100000000000ULL, /* pmovsxwq: vector_op */
  0x0000100000000200ULL, /* pmovsxwqx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovsxwqxx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovsxwqxxx: load_exe vector_op */
  0x0000100000000000ULL, /* pmovzxwq: vector_op */
  0x0000100000000200ULL, /* pmovzxwqx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovzxwqxx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovzxwqxxx: load_exe vector_op */
  0x0000100000000000ULL, /* pmovsxdq: vector_op */
  0x0000100000000200ULL, /* pmovsxdqx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovsxdqxx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovsxdqxxx: load_exe vector_op */
  0x0000100000000000ULL, /* pmovzxdq: vector_op */
  0x0000100000000200ULL, /* pmovzxdqx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovzxdqxx: load_exe vector_op */
  0x0000100000000200ULL, /* pmovzxdqxxx: load_exe vector_op */
  0x0000300000000000ULL, /* mul128v32: vector_op x86_style */
  0x0000300000000200ULL, /* mulx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* mulxx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* mulxxx128v32: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* cmpeq128v64: vector_op x86_style */
  0x0000300000000200ULL, /* cmpeqx128v64: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* cmpeqxx128v64: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* cmpeqxxx128v64: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* packusdw: vector_op x86_style */
  0x0000300000000200ULL, /* packusdwx: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* packusdwxx: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* packusdwxxx: load_exe vector_op x86_style */
  0x0000000000000000ULL, /* phminposuw: */
  0x0000000000000200ULL, /* phminposuwx: load_exe */
  0x0000000000000200ULL, /* phminposuwxx: load_exe */
  0x0000000000000200ULL, /* phminposuwxxx: load_exe */
  0x0000100000000004ULL, /* ptest128: change_rflags vector_op */
  0x0000100000000204ULL, /* ptestx128: change_rflags load_exe vector_op */
  0x0000100000000204ULL, /* ptestxx128: change_rflags load_exe vector_op */
  0x0000100000000204ULL, /* ptestxxx128: change_rflags load_exe vector_op */
  0x0000000000000000ULL, /* roundsd: */
  0x0000000000000200ULL, /* roundxsd: load_exe */
  0x0000000000000200ULL, /* roundxxsd: load_exe */
  0x0000000000000200ULL, /* roundxxxsd: load_exe */
  0x0000300000000000ULL, /* mpsadbw: vector_op x86_style */
  0x0000300000000200ULL, /* mpsadbwx: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* mpsadbwxx: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* mpsadbwxxx: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* insr128v8: vector_op x86_style */
  0x0000300000000200ULL, /* insrx128v8: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* insrxx128v8: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* insrxxx128v8: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* insr128v16: vector_op x86_style */
  0x0000300000000200ULL, /* insrx128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* insrxx128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* insrxxx128v16: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* insr128v32: vector_op x86_style */
  0x0000300000000200ULL, /* insrx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* insrxx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* insrxxx128v32: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* insr128v64: vector_op x86_style */
  0x0000300000000200ULL, /* insrx128v64: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* insrxx128v64: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* insrxxx128v64: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* extr128v8: vector_op x86_style */
  0x0000300000000200ULL, /* extrx128v8: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* extrxx128v8: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* extrxxx128v8: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* extr128v16: vector_op x86_style */
  0x0000300000000200ULL, /* extrx128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* extrxx128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* extrxxx128v16: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* extr128v32: vector_op x86_style */
  0x0000300000000200ULL, /* extrx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* extrxx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* extrxxx128v32: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* extr128v64: vector_op x86_style */
  0x0000300000000200ULL, /* extrx128v64: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* extrxx128v64: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* extrxxx128v64: load_exe vector_op x86_style */
  0x0000300010000000ULL, /* finsr128v32: flop vector_op x86_style */
  0x0000300010000200ULL, /* finsrx128v32: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* finsrxx128v32: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* finsrxxx128v32: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* fextr128v32: flop vector_op x86_style */
  0x0000300010000200ULL, /* fextrx128v32: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* fextrxx128v32: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* fextrxxx128v32: load_exe flop vector_op x86_style */
  0x0000300000000000ULL, /* fblendv128v32: vector_op x86_style */
  0x0000300000000200ULL, /* fblendvx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* fblendvxx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* fblendvxxx128v32: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* fblendv128v64: vector_op x86_style */
  0x0000300000000200ULL, /* fblendvx128v64: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* fblendvxx128v64: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* fblendvxxx128v64: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* blendv128v8: vector_op x86_style */
  0x0000300000000200ULL, /* blendvx128v8: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* blendvxx128v8: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* blendvxxx128v8: load_exe vector_op x86_style */
  0x0000100000000000ULL, /* round128v32: vector_op */
  0x0000100000000200ULL, /* roundx128v32: load_exe vector_op */
  0x0000100000000200ULL, /* roundxx128v32: load_exe vector_op */
  0x0000100000000200ULL, /* roundxxx128v32: load_exe vector_op */
  0x0000000000000000ULL, /* roundss: */
  0x0000000000000200ULL, /* roundxss: load_exe */
  0x0000000000000200ULL, /* roundxxss: load_exe */
  0x0000000000000200ULL, /* roundxxxss: load_exe */
  0x0000300000000000ULL, /* fblend128v64: vector_op x86_style */
  0x0000300000000200ULL, /* fblendx128v64: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* fblendxx128v64: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* fblendxxx128v64: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* blend128v16: vector_op x86_style */
  0x0000300000000200ULL, /* blendx128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* blendxx128v16: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* blendxxx128v16: load_exe vector_op x86_style */
  0x0000380000000000ULL, /* fdp128v32: commutative vector_op x86_style */
  0x0000300000000200ULL, /* fdpx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* fdpxx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* fdpxxx128v32: load_exe vector_op x86_style */
  0x0000380000000000ULL, /* fdp128v64: commutative vector_op x86_style */
  0x0000300000000200ULL, /* fdpx128v64: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* fdpxx128v64: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* fdpxxx128v64: load_exe vector_op x86_style */
  0x0000100000000000ULL, /* round128v64: vector_op */
  0x0000100000000200ULL, /* roundx128v64: load_exe vector_op */
  0x0000100000000200ULL, /* roundxx128v64: load_exe vector_op */
  0x0000100000000200ULL, /* roundxxx128v64: load_exe vector_op */
  0x0000300000000000ULL, /* fblend128v32: vector_op x86_style */
  0x0000300000000200ULL, /* fblendx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* fblendxx128v32: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* fblendxxx128v32: load_exe vector_op x86_style */
  0x0000000000000000ULL, /* cmpgt128v64: */
  0x0000000000000000ULL, /* cmpgtx128v64: */
  0x0000000000000000ULL, /* cmpgtxx128v64: */
  0x0000000000000000ULL, /* cmpgtxxx128v64: */
  0x0000200000000000ULL, /* crc32w: x86_style */
  0x0000200000000000ULL, /* crc32wx: x86_style */
  0x0000200000000000ULL, /* crc32wxx: x86_style */
  0x0000200000000000ULL, /* crc32wxxx: x86_style */
  0x0000200000000000ULL, /* crc32d: x86_style */
  0x0000200000000000ULL, /* crc32dx: x86_style */
  0x0000200000000000ULL, /* crc32dxx: x86_style */
  0x0000200000000000ULL, /* crc32dxxx: x86_style */
  0x0000200000000000ULL, /* crc32q: x86_style */
  0x0000200000000000ULL, /* crc32qx: x86_style */
  0x0000200000000000ULL, /* crc32qxx: x86_style */
  0x0000200000000000ULL, /* crc32qxxx: x86_style */
  0x0000200000000000ULL, /* crc32b: x86_style */
  0x0000200000000000ULL, /* crc32bx: x86_style */
  0x0000200000000000ULL, /* crc32bxx: x86_style */
  0x0000200000000000ULL, /* crc32bxxx: x86_style */
  0x0000000000000004ULL, /* cmpestrm: change_rflags */
  0x0000000000000004ULL, /* cmpestrmx: change_rflags */
  0x0000000000000004ULL, /* cmpestrmxx: change_rflags */
  0x0000000000000004ULL, /* cmpestrmxxx: change_rflags */
  0x0000000000000004ULL, /* cmpestri: change_rflags */
  0x0000000000000004ULL, /* cmpestrix: change_rflags */
  0x0000000000000004ULL, /* cmpestrixx: change_rflags */
  0x0000000000000004ULL, /* cmpestrixxx: change_rflags */
  0x0000000000000004ULL, /* cmpistrm: change_rflags */
  0x0000000000000004ULL, /* cmpistrmx: change_rflags */
  0x0000000000000004ULL, /* cmpistrmxx: change_rflags */
  0x0000000000000004ULL, /* cmpistrmxxx: change_rflags */
  0x0000000000000004ULL, /* cmpistri: change_rflags */
  0x0000000000000004ULL, /* cmpistrix: change_rflags */
  0x0000000000000004ULL, /* cmpistrixx: change_rflags */
  0x0000000000000004ULL, /* cmpistrixxx: change_rflags */
  0x0000000000000000ULL, /* popcnt16: */
  0x0000000000000000ULL, /* popcntx16: */
  0x0000000000000000ULL, /* popcntxx16: */
  0x0000000000000000ULL, /* popcntxxx16: */
  0x0000000000000000ULL, /* popcnt32: */
  0x0000000000000000ULL, /* popcntx32: */
  0x0000000000000000ULL, /* popcntxx32: */
  0x0000000000000000ULL, /* popcntxxx32: */
  0x0000000000000000ULL, /* popcnt64: */
  0x0000000000000000ULL, /* popcntx64: */
  0x0000000000000000ULL, /* popcntxx64: */
  0x0000000000000000ULL, /* popcntxxx64: */
  0x0000100000000000ULL, /* aesimc: vector_op */
  0x0000100000000200ULL, /* aesimcx: load_exe vector_op */
  0x0000100000000200ULL, /* aesimcxx: load_exe vector_op */
  0x0000100000000200ULL, /* aesimcxxx: load_exe vector_op */
  0x0000100000000000ULL, /* aeskeygenassist: vector_op */
  0x0000100000000200ULL, /* aeskeygenassistx: load_exe vector_op */
  0x0000100000000200ULL, /* aeskeygenassistxx: load_exe vector_op */
  0x0000100000000200ULL, /* aeskeygenassistxxx: load_exe vector_op */
  0x0000300000000000ULL, /* aesenc: vector_op x86_style */
  0x0000300000000200ULL, /* aesencx: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* aesencxx: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* aesencxxx: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* aesenclast: vector_op x86_style */
  0x0000300000000200ULL, /* aesenclastx: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* aesenclastxx: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* aesenclastxxx: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* aesdec: vector_op x86_style */
  0x0000300000000200ULL, /* aesdecx: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* aesdecxx: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* aesdecxxx: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* aesdeclast: vector_op x86_style */
  0x0000300000000200ULL, /* aesdeclastx: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* aesdeclastxx: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* aesdeclastxxx: load_exe vector_op x86_style */
  0x0000300000000000ULL, /* pclmulqdq: vector_op x86_style */
  0x0000300000000200ULL, /* pclmulqdqx: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* pclmulqdqxx: load_exe vector_op x86_style */
  0x0000300000000200ULL, /* pclmulqdqxxx: load_exe vector_op x86_style */
  0x0020100000000000ULL, /* vphaddbd: vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddbdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddbdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddbdxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphaddbq: vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddbqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddbqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddbqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphaddbw: vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddbwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddbwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddbwxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphadddq: vector_op non_destructive */
  0x0020100000000200ULL, /* vphadddqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphadddqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphadddqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphaddubd: vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddubdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddubdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddubdxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphaddubq: vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddubqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddubqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddubqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphaddubw: vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddubwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddubwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddubwxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphaddudq: vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddudqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddudqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddudqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphadduwd: vector_op non_destructive */
  0x0020100000000200ULL, /* vphadduwdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphadduwdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphadduwdxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphadduwq: vector_op non_destructive */
  0x0020100000000200ULL, /* vphadduwqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphadduwqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphadduwqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphaddwd: vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddwdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddwdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddwdxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphaddwq: vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddwqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddwqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddwqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphsubbw: vector_op non_destructive */
  0x0020100000000200ULL, /* vphsubbwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphsubbwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphsubbwxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphsubdq: vector_op non_destructive */
  0x0020100000000200ULL, /* vphsubdqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphsubdqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphsubdqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphsubwd: vector_op non_destructive */
  0x0020100000000200ULL, /* vphsubwdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphsubwdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphsubwdxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vfrczpd: vector_op non_destructive */
  0x0020100000000200ULL, /* vfrczpdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vfrczpdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vfrczpdxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vfrczps: vector_op non_destructive */
  0x0020100000000200ULL, /* vfrczpsx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vfrczpsxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vfrczpsxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vfrczsd: vector_op non_destructive */
  0x0020100000000200ULL, /* vfrczsdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vfrczsdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vfrczsdxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vfrczss: vector_op non_destructive */
  0x0020100000000200ULL, /* vfrczssx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vfrczssxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vfrczssxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vprotbi: vector_op non_destructive */
  0x0020100000000200ULL, /* vprotbix: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotbixx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotbixxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vprotdi: vector_op non_destructive */
  0x0020100000000200ULL, /* vprotdix: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotdixx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotdixxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vprotqi: vector_op non_destructive */
  0x0020100000000200ULL, /* vprotqix: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotqixx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotqixxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vprotwi: vector_op non_destructive */
  0x0020100000000200ULL, /* vprotwix: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotwixx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotwixxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpcomb: vector_op non_destructive */
  0x0020100000000200ULL, /* vpcombx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcombxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcombxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpcomd: vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomdxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpcomq: vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpcomw: vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomwxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpcomub: vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomubx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomubxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomubxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpcomud: vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomudx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomudxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomudxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpcomuq: vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomuqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomuqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomuqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpcomuw: vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomuwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomuwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcomuwxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpperm: vector_op non_destructive */
  0x0020100000000200ULL, /* vppermx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vppermxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vppermxxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vppermxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vppermxxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vppermxxxr: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vprotb: vector_op non_destructive */
  0x0020100000000200ULL, /* vprotbx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotbxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotbxxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotbxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotbxxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotbxxxr: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vprotd: vector_op non_destructive */
  0x0020100000000200ULL, /* vprotdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotdxxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotdxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotdxxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotdxxxr: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vprotq: vector_op non_destructive */
  0x0020100000000200ULL, /* vprotqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotqxxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotqxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotqxxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotqxxxr: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vprotw: vector_op non_destructive */
  0x0020100000000200ULL, /* vprotwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotwxxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotwxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotwxxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vprotwxxxr: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpshab: vector_op non_destructive */
  0x0020100000000200ULL, /* vpshabx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshabxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshabxxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshabxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshabxxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshabxxxr: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpshad: vector_op non_destructive */
  0x0020100000000200ULL, /* vpshadx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshadxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshadxxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshadxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshadxxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshadxxxr: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpshaq: vector_op non_destructive */
  0x0020100000000200ULL, /* vpshaqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshaqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshaqxxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshaqxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshaqxxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshaqxxxr: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpshaw: vector_op non_destructive */
  0x0020100000000200ULL, /* vpshawx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshawxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshawxxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshawxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshawxxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshawxxxr: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpshlb: vector_op non_destructive */
  0x0020100000000200ULL, /* vpshlbx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshlbxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshlbxxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshlbxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshlbxxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshlbxxxr: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpshld: vector_op non_destructive */
  0x0020100000000200ULL, /* vpshldx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshldxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshldxxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshldxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshldxxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshldxxxr: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpshlq: vector_op non_destructive */
  0x0020100000000200ULL, /* vpshlqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshlqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshlqxxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshlqxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshlqxxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshlqxxxr: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpshlw: vector_op non_destructive */
  0x0020100000000200ULL, /* vpshlwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshlwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshlwxxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshlwxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshlwxxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshlwxxxr: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpcmov: vector_op non_destructive */
  0x0020100000000200ULL, /* vpcmovx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcmovxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcmovxxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcmovxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcmovxxr: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpcmovxxxr: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmacsdd: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacsddx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacsddxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacsddxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmacsdqh: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacsdqhx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacsdqhxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacsdqhxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmacsdql: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacsdqlx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacsdqlxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacsdqlxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmacssdd: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacssddx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacssddxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacssddxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmacssdqh: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacssdqhx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacssdqhxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacssdqhxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmacssdql: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacssdqlx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacssdqlxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacssdqlxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmacsswd: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacsswdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacsswdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacsswdxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmacssww: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacsswwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacsswwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacsswwxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmacswd: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacswdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacswdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacswdxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmacsww: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacswwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacswwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmacswwxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmadcsswd: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmadcsswdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmadcsswdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmadcsswdxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmadcswd: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmadcswdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmadcswdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmadcswdxxx: load_exe vector_op non_destructive */
  0x0020180030000000ULL, /* vfadd128v64: flop fadd commutative vector_op non_destructive */
  0x0020100030000200ULL, /* vfaddx128v64: load_exe flop fadd vector_op non_destructive */
  0x0020100030000200ULL, /* vfaddxx128v64: load_exe flop fadd vector_op non_destructive */
  0x0020100030000200ULL, /* vfaddxxx128v64: load_exe flop fadd vector_op non_destructive */
  0x0020180030000000ULL, /* vfadd128v32: flop fadd commutative vector_op non_destructive */
  0x0020100030000200ULL, /* vfaddx128v32: load_exe flop fadd vector_op non_destructive */
  0x0020100030000200ULL, /* vfaddxx128v32: load_exe flop fadd vector_op non_destructive */
  0x0020100030000200ULL, /* vfaddxxx128v32: load_exe flop fadd vector_op non_destructive */
  0x0020080030000000ULL, /* vfaddsd: flop fadd commutative non_destructive */
  0x0020000030000200ULL, /* vfaddxsd: load_exe flop fadd non_destructive */
  0x0020000030000200ULL, /* vfaddxxsd: load_exe flop fadd non_destructive */
  0x0020000030000200ULL, /* vfaddxxxsd: load_exe flop fadd non_destructive */
  0x0020080030000000ULL, /* vfaddss: flop fadd commutative non_destructive */
  0x0020000030000200ULL, /* vfaddxss: load_exe flop fadd non_destructive */
  0x0020000030000200ULL, /* vfaddxxss: load_exe flop fadd non_destructive */
  0x0020000030000200ULL, /* vfaddxxxss: load_exe flop fadd non_destructive */
  0x0020100010000000ULL, /* vfaddsub128v64: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfaddsubx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfaddsubxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfaddsubxxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vfaddsub128v32: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfaddsubx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfaddsubxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfaddsubxxx128v32: load_exe flop vector_op non_destructive */
  0x0020100000000000ULL, /* vaesenc: vector_op non_destructive */
  0x0020100000000200ULL, /* vaesencx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vaesencxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vaesencxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vaesenclast: vector_op non_destructive */
  0x0020100000000200ULL, /* vaesenclastx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vaesenclastxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vaesenclastxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vaesdec: vector_op non_destructive */
  0x0020100000000200ULL, /* vaesdecx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vaesdecxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vaesdecxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vaesdeclast: vector_op non_destructive */
  0x0020100000000200ULL, /* vaesdeclastx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vaesdeclastxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vaesdeclastxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vaesimc: vector_op non_destructive */
  0x0020100000000200ULL, /* vaesimcx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vaesimcxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vaesimcxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vaeskeygenassist: vector_op non_destructive */
  0x0020100000000200ULL, /* vaeskeygenassistx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vaeskeygenassistxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vaeskeygenassistxxx: load_exe vector_op non_destructive */
  0x0020100010000000ULL, /* vandpd: flop vector_op non_destructive */
  0x0020180010000000ULL, /* vfand128v64: flop commutative vector_op non_destructive */
  0x0020100010000200ULL, /* vfandx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfandxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfandxxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vandps: flop vector_op non_destructive */
  0x0020180010000000ULL, /* vfand128v32: flop commutative vector_op non_destructive */
  0x0020100010000200ULL, /* vfandx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfandxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfandxxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vandnpd: flop vector_op non_destructive */
  0x0020100010000000ULL, /* vfandn128v64: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfandnx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfandnxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfandnxxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vandnps: flop vector_op non_destructive */
  0x0020100010000000ULL, /* vfandn128v32: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfandnx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfandnxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfandnxxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vfblend128v64: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfblendx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfblendxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfblendxxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vfblend128v32: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfblendx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfblendxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfblendxxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vfblendv128v64: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfblendvx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfblendvxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfblendvxxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vfblendv128v32: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfblendvx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfblendvxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfblendvxxx128v32: load_exe flop vector_op non_destructive */
  0x0020100000000000ULL, /* vfbroadcastss: vector_op non_destructive */
  0x0020100000000000ULL, /* vfbroadcastxss: vector_op non_destructive */
  0x0020100000000000ULL, /* vfbroadcastxxss: vector_op non_destructive */
  0x0020100000000000ULL, /* vfbroadcastsd: vector_op non_destructive */
  0x0020100000000000ULL, /* vfbroadcastxsd: vector_op non_destructive */
  0x0020100000000000ULL, /* vfbroadcastxxsd: vector_op non_destructive */
  0x0020100000000000ULL, /* vfbroadcastf128: vector_op non_destructive */
  0x0020100000000000ULL, /* vfbroadcastxf128: vector_op non_destructive */
  0x0020100000000000ULL, /* vfbroadcastxxf128: vector_op non_destructive */
  0x0000000000000000ULL, /* vcmppd: */
  0x0020100010000000ULL, /* vfcmp128v64: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfcmpx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfcmpxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfcmpxxx128v64: load_exe flop vector_op non_destructive */
  0x0000000000000000ULL, /* vcmpps: */
  0x0020100010000000ULL, /* vfcmp128v32: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfcmpx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfcmpxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfcmpxxx128v32: load_exe flop vector_op non_destructive */
  0x0020000010000000ULL, /* vfcmpsd: flop non_destructive */
  0x0020000010000200ULL, /* vfcmpxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfcmpxxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfcmpxxxsd: load_exe flop non_destructive */
  0x0020000010000000ULL, /* vfcmpss: flop non_destructive */
  0x0020000010000200ULL, /* vfcmpxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfcmpxxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfcmpxxxss: load_exe flop non_destructive */
  0x0000020010000004ULL, /* vcomisd: change_rflags flop icmp */
  0x0000020010000204ULL, /* vcomixsd: change_rflags load_exe flop icmp */
  0x0000020010000204ULL, /* vcomixxsd: change_rflags load_exe flop icmp */
  0x0000020010000204ULL, /* vcomixxxsd: change_rflags load_exe flop icmp */
  0x0000020010000004ULL, /* vcomiss: change_rflags flop icmp */
  0x0000020010000204ULL, /* vcomixss: change_rflags load_exe flop icmp */
  0x0000020010000204ULL, /* vcomixxss: change_rflags load_exe flop icmp */
  0x0000020010000204ULL, /* vcomixxxss: change_rflags load_exe flop icmp */
  0x0020100000000000ULL, /* vcvtdq2pd: vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtdq2pdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtdq2pdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtdq2pdxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcvtdq2ps: vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtdq2psx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtdq2psxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtdq2psxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcvtpd2dq: vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtpd2dqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtpd2dqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtpd2dqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcvtpd2dqy: vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtpd2dqyx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtpd2dqyxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtpd2dqyxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcvtpd2ps: vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtpd2psx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtpd2psxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtpd2psxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcvtpd2psy: vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtpd2psyx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtpd2psyxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtpd2psyxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcvtps2dq: vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtps2dqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtps2dqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtps2dqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcvtps2pd: vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtps2pdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtps2pdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvtps2pdxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcvtsd2si: vector_op non_destructive */
  0x0020100000000000ULL, /* vcvtsd2siq: vector_op non_destructive */
  0x0020000010000000ULL, /* vcvtsd2ss: flop non_destructive */
  0x0020000010000200ULL, /* vcvtsd2ssx: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vcvtsd2ssxx: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vcvtsd2ssxxx: load_exe flop non_destructive */
  0x0020000010000000ULL, /* vcvtsi2sd: flop non_destructive */
  0x0020000010000200ULL, /* vcvtsi2sdx: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vcvtsi2sdxx: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vcvtsi2sdxxx: load_exe flop non_destructive */
  0x0020000010000000ULL, /* vcvtsi2sdq: flop non_destructive */
  0x0020000010000000ULL, /* vcvtsi2sdqx: flop non_destructive */
  0x0020000010000000ULL, /* vcvtsi2sdqxx: flop non_destructive */
  0x0020000010000000ULL, /* vcvtsi2sdqxxx: flop non_destructive */
  0x0020000010000000ULL, /* vcvtsi2ss: flop non_destructive */
  0x0020000010000200ULL, /* vcvtsi2ssx: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vcvtsi2ssxx: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vcvtsi2ssxxx: load_exe flop non_destructive */
  0x0020000010000000ULL, /* vcvtsi2ssq: flop non_destructive */
  0x0020000010000000ULL, /* vcvtsi2ssqx: flop non_destructive */
  0x0020000010000000ULL, /* vcvtsi2ssqxx: flop non_destructive */
  0x0020000010000000ULL, /* vcvtsi2ssqxxx: flop non_destructive */
  0x0020000010000000ULL, /* vcvtss2sd: flop non_destructive */
  0x0020000010000200ULL, /* vcvtss2sdx: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vcvtss2sdxx: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vcvtss2sdxxx: load_exe flop non_destructive */
  0x0020100000000000ULL, /* vcvtss2si: vector_op non_destructive */
  0x0020100000000000ULL, /* vcvtss2siq: vector_op non_destructive */
  0x0020100000000000ULL, /* vcvttpd2dq: vector_op non_destructive */
  0x0020100000000200ULL, /* vcvttpd2dqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvttpd2dqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvttpd2dqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcvttpd2dqy: vector_op non_destructive */
  0x0020100000000200ULL, /* vcvttpd2dqyx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvttpd2dqyxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvttpd2dqyxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcvttps2dq: vector_op non_destructive */
  0x0020100000000200ULL, /* vcvttps2dqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvttps2dqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcvttps2dqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcvttsd2si: vector_op non_destructive */
  0x0020100000000000ULL, /* vcvttsd2siq: vector_op non_destructive */
  0x0020100000000000ULL, /* vcvttss2si: vector_op non_destructive */
  0x0020100000000000ULL, /* vcvttss2siq: vector_op non_destructive */
  0x0020100010000000ULL, /* vfdiv128v64: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfdivx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfdivxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfdivxxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vfdiv128v32: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfdivx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfdivxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfdivxxx128v32: load_exe flop vector_op non_destructive */
  0x0020000010000000ULL, /* vdivsd: flop non_destructive */
  0x0020000010000200ULL, /* vdivxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vdivxxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vdivxxxsd: load_exe flop non_destructive */
  0x0020000010000000ULL, /* vdivss: flop non_destructive */
  0x0020000010000200ULL, /* vdivxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vdivxxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vdivxxxss: load_exe flop non_destructive */
  0x0020180010000000ULL, /* vfdp128v64: flop commutative vector_op non_destructive */
  0x0020100010000200ULL, /* vfdpx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfdpxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfdpxxx128v64: load_exe flop vector_op non_destructive */
  0x0020180010000000ULL, /* vfdp128v32: flop commutative vector_op non_destructive */
  0x0020100010000200ULL, /* vfdpx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfdpxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfdpxxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vfextrf128: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfextrxf128: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfextrxxf128: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfextrxxxf128: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vfextr128v32: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfextrx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfextrxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfextrxxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vfhadd128v64: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfhaddx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfhaddxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfhaddxxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vfhadd128v32: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfhaddx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfhaddxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfhaddxxx128v32: load_exe flop vector_op non_destructive */
  0x0000000000000000ULL, /* vfhsub128v64: */
  0x0000100000000200ULL, /* vfhsubx128v64: load_exe vector_op */
  0x0000100000000200ULL, /* vfhsubxx128v64: load_exe vector_op */
  0x0000100000000200ULL, /* vfhsubxxx128v64: load_exe vector_op */
  0x0000000000000000ULL, /* vfhsub128v32: */
  0x0000100000000200ULL, /* vfhsubx128v32: load_exe vector_op */
  0x0000100000000200ULL, /* vfhsubxx128v32: load_exe vector_op */
  0x0000100000000200ULL, /* vfhsubxxx128v32: load_exe vector_op */
  0x0020100010000000ULL, /* vfinsrf128: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfinsrxf128: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfinsrxxf128: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfinsrxxxf128: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vfinsr128v32: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfinsrx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfinsrxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfinsrxxx128v32: load_exe flop vector_op non_destructive */
  0x0000100000100020ULL, /* vlddqu: load unalign_ld vector_op */
  0x0000100000100020ULL, /* vlddqux: load unalign_ld vector_op */
  0x0000100000100020ULL, /* vlddquxx: load unalign_ld vector_op */
  0x0000100000100020ULL, /* vlddqu_n32: load unalign_ld vector_op */
  0x0000000000000000ULL, /* vldmxcsr: */
  0x0020100000000000ULL, /* vmaskmovdqu: vector_op non_destructive */
  0x0020100000000000ULL, /* vfmaskld128v32: vector_op non_destructive */
  0x0020100000000000ULL, /* vfmaskldx128v32: vector_op non_destructive */
  0x0020100000000000ULL, /* vfmaskldxx128v32: vector_op non_destructive */
  0x0020100000000000ULL, /* vfmaskld128v64: vector_op non_destructive */
  0x0020100000000000ULL, /* vfmaskldx128v64: vector_op non_destructive */
  0x0020100000000000ULL, /* vfmaskldxx128v64: vector_op non_destructive */
  0x0020100000000000ULL, /* vfmaskst128v32: vector_op non_destructive */
  0x0020100000000000ULL, /* vfmaskstx128v32: vector_op non_destructive */
  0x0020100000000000ULL, /* vfmaskstxx128v32: vector_op non_destructive */
  0x0020100000000000ULL, /* vfmaskst128v64: vector_op non_destructive */
  0x0020100000000000ULL, /* vfmaskstx128v64: vector_op non_destructive */
  0x0020100000000000ULL, /* vfmaskstxx128v64: vector_op non_destructive */
  0x0020180010000000ULL, /* vfmax128v64: flop commutative vector_op non_destructive */
  0x0020100010000200ULL, /* vfmaxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfmaxxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfmaxxxx128v64: load_exe flop vector_op non_destructive */
  0x0020180010000000ULL, /* vfmax128v32: flop commutative vector_op non_destructive */
  0x0020100010000200ULL, /* vfmaxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfmaxxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfmaxxxx128v32: load_exe flop vector_op non_destructive */
  0x0020000010000000ULL, /* vfmaxsd: flop non_destructive */
  0x0020000010000200ULL, /* vfmaxxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmaxxxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmaxxxxsd: load_exe flop non_destructive */
  0x0020000010000000ULL, /* vfmaxss: flop non_destructive */
  0x0020000010000200ULL, /* vfmaxxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmaxxxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfmaxxxxss: load_exe flop non_destructive */
  0x0020180010000000ULL, /* vfmin128v64: flop commutative vector_op non_destructive */
  0x0020100010000200ULL, /* vfminx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfminxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfminxxx128v64: load_exe flop vector_op non_destructive */
  0x0020180010000000ULL, /* vfmin128v32: flop commutative vector_op non_destructive */
  0x0020100010000200ULL, /* vfminx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfminxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfminxxx128v32: load_exe flop vector_op non_destructive */
  0x0020000010000000ULL, /* vfminsd: flop non_destructive */
  0x0020000010000200ULL, /* vfminxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfminxxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfminxxxsd: load_exe flop non_destructive */
  0x0020000010000000ULL, /* vfminss: flop non_destructive */
  0x0020000010000200ULL, /* vfminxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfminxxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfminxxxss: load_exe flop non_destructive */
  0x0000000000000008ULL, /* vmovapd: move */
  0x0000100010000020ULL, /* vldapd: load flop vector_op */
  0x0000100010000020ULL, /* vldapdx: load flop vector_op */
  0x0000100010000020ULL, /* vldapdxx: load flop vector_op */
  0x0000100010000020ULL, /* vldapd_n32: load flop vector_op */
  0x0000100010001000ULL, /* vstapd: store flop vector_op */
  0x0000100010001000ULL, /* vstapdx: store flop vector_op */
  0x0000100010001000ULL, /* vstapdxx: store flop vector_op */
  0x0000100010001000ULL, /* vstapd_n32: store flop vector_op */
  0x0000000000000008ULL, /* vmovaps: move */
  0x0000100010000020ULL, /* vldaps: load flop vector_op */
  0x0000100010000020ULL, /* vldapsx: load flop vector_op */
  0x0000100010000020ULL, /* vldapsxx: load flop vector_op */
  0x0000100010000020ULL, /* vldaps_n32: load flop vector_op */
  0x0000100010001000ULL, /* vstaps: store flop vector_op */
  0x0000100010001000ULL, /* vstapsx: store flop vector_op */
  0x0000100010001000ULL, /* vstapsxx: store flop vector_op */
  0x0000100010001000ULL, /* vstaps_n32: store flop vector_op */
  0x0000100000000000ULL, /* vmovg2x: vector_op */
  0x0000100000000000ULL, /* vmovg2x64: vector_op */
  0x0000100000000000ULL, /* vmovx2g: vector_op */
  0x0000100000000000ULL, /* vmovx2g64: vector_op */
  0x0000100000000020ULL, /* vld64_2sse: load vector_op */
  0x0000100000000220ULL, /* vldx64_2sse: load load_exe vector_op */
  0x0000100000000220ULL, /* vldxx64_2sse: load load_exe vector_op */
  0x0000100000000020ULL, /* vld64_2sse_n32: load vector_op */
  0x0000100000001020ULL, /* vst64_fsse: load store vector_op */
  0x0000100000001220ULL, /* vstx64_fsse: load load_exe store vector_op */
  0x0000100000001220ULL, /* vstxx64_fsse: load load_exe store vector_op */
  0x0000100000001020ULL, /* vst64_fsse_n32: load store vector_op */
  0x0000100000000000ULL, /* vmovddup: vector_op */
  0x0000100000000060ULL, /* vmovddupx: load load_ext vector_op */
  0x0000100000000060ULL, /* vmovddupxx: load load_ext vector_op */
  0x0000100000000060ULL, /* vmovddupxxx: load load_ext vector_op */
  0x0000100000000020ULL, /* vlddqa: load vector_op */
  0x0000100000000020ULL, /* vlddqax: load vector_op */
  0x0000100000000020ULL, /* vlddqaxx: load vector_op */
  0x0000100000000020ULL, /* vlddqa_n32: load vector_op */
  0x0000100000000000ULL, /* vmovdqa: vector_op */
  0x0000100000001000ULL, /* vstdqa: store vector_op */
  0x0000100000001000ULL, /* vstdqax: store vector_op */
  0x0000100000001000ULL, /* vstdqaxx: store vector_op */
  0x0000000000001000ULL, /* vstdqa_n32: store */
  0x0000100000201000ULL, /* vstdqu: store unalign_store vector_op */
  0x0000100000201000ULL, /* vstdqux: store unalign_store vector_op */
  0x0000100000201000ULL, /* vstdquxx: store unalign_store vector_op */
  0x0000100000001000ULL, /* vstdqu_n32: store vector_op */
  0x0004100010000020ULL, /* vldhpd: load flop vector_op vector_high_loadstore */
  0x0004100010000020ULL, /* vldhpdx: load flop vector_op vector_high_loadstore */
  0x0004100010000020ULL, /* vldhpdxx: load flop vector_op vector_high_loadstore */
  0x0004000010000020ULL, /* vldhpd_n32: load flop vector_high_loadstore */
  0x0004000010001000ULL, /* vsthpd: store flop vector_high_loadstore */
  0x0004000010001000ULL, /* vsthpdx: store flop vector_high_loadstore */
  0x0004000010001000ULL, /* vsthpdxx: store flop vector_high_loadstore */
  0x0004000010001000ULL, /* vsthpd_n32: store flop vector_high_loadstore */
  0x0004100010000020ULL, /* vldhps: load flop vector_op vector_high_loadstore */
  0x0004100010000020ULL, /* vldhpsx: load flop vector_op vector_high_loadstore */
  0x0004100010000020ULL, /* vldhpsxx: load flop vector_op vector_high_loadstore */
  0x0004000010000020ULL, /* vldhps_n32: load flop vector_high_loadstore */
  0x0004000010001000ULL, /* vsthps: store flop vector_high_loadstore */
  0x0004000010001000ULL, /* vsthpsx: store flop vector_high_loadstore */
  0x0004000010001000ULL, /* vsthpsxx: store flop vector_high_loadstore */
  0x0004000010001000ULL, /* vsthps_n32: store flop vector_high_loadstore */
  0x0000100010000020ULL, /* vldlpd: load flop vector_op */
  0x0000100010000020ULL, /* vldlpdx: load flop vector_op */
  0x0000100010000020ULL, /* vldlpdxx: load flop vector_op */
  0x0000000010000020ULL, /* vldlpd_n32: load flop */
  0x0000100010001000ULL, /* vstorelpd: store flop vector_op */
  0x0000000010001000ULL, /* vstlpd: store flop */
  0x0000000010001000ULL, /* vstlpdx: store flop */
  0x0000000010001000ULL, /* vstlpdxx: store flop */
  0x0000000010001000ULL, /* vstlpd_n32: store flop */
  0x0002100010000020ULL, /* vldlps: load flop vector_op vector_lo_loadstore */
  0x0002100010000020ULL, /* vldlpsx: load flop vector_op vector_lo_loadstore */
  0x0002100010000020ULL, /* vldlpsxx: load flop vector_op vector_lo_loadstore */
  0x0002000010000020ULL, /* vldlps_n32: load flop vector_lo_loadstore */
  0x0002000010001000ULL, /* vstlps: store flop vector_lo_loadstore */
  0x0002000010001000ULL, /* vstlpsx: store flop vector_lo_loadstore */
  0x0002000010001000ULL, /* vstlpsxx: store flop vector_lo_loadstore */
  0x0002000010001000ULL, /* vstlps_n32: store flop vector_lo_loadstore */
  0x0000000010000000ULL, /* vmovmskpd: flop */
  0x0000000010000000ULL, /* vmovmskps: flop */
  0x0000100000001800ULL, /* vstorenti128: nt_store store vector_op */
  0x0000100000001800ULL, /* vstorentxi128: nt_store store vector_op */
  0x0000100000001800ULL, /* vstorentxxi128: nt_store store vector_op */
  0x0000100000000020ULL, /* vldntdqa: load vector_op */
  0x0000100000000020ULL, /* vldntdqax: load vector_op */
  0x0000100000000020ULL, /* vldntdqaxx: load vector_op */
  0x0000100000001800ULL, /* vstntdq: nt_store store vector_op */
  0x0000100000001800ULL, /* vstntdqx: nt_store store vector_op */
  0x0000100000001800ULL, /* vstntdqxx: nt_store store vector_op */
  0x0000100010001800ULL, /* vstntpd: nt_store store flop vector_op */
  0x0000100010001800ULL, /* vstntpdx: nt_store store flop vector_op */
  0x0000100010001800ULL, /* vstntpdxx: nt_store store flop vector_op */
  0x0000100010001800ULL, /* vstntps: nt_store store flop vector_op */
  0x0000100010001800ULL, /* vstntpsx: nt_store store flop vector_op */
  0x0000100010001800ULL, /* vstntpsxx: nt_store store flop vector_op */
  0x0000100010001800ULL, /* vstntsd: nt_store store flop vector_op */
  0x0000100010001800ULL, /* vstntsdx: nt_store store flop vector_op */
  0x0000100010001800ULL, /* vstntsdxx: nt_store store flop vector_op */
  0x0000100010001800ULL, /* vstntss: nt_store store flop vector_op */
  0x0000100010001800ULL, /* vstntssx: nt_store store flop vector_op */
  0x0000100010001800ULL, /* vstntssxx: nt_store store flop vector_op */
  0x0000000000000008ULL, /* vmovsd: move */
  0x0002100010000020ULL, /* vldsd: load flop vector_op vector_lo_loadstore */
  0x0002100010000020ULL, /* vldsdx: load flop vector_op vector_lo_loadstore */
  0x0002100010000020ULL, /* vldsdxx: load flop vector_op vector_lo_loadstore */
  0x0002000010000020ULL, /* vldsd_n32: load flop vector_lo_loadstore */
  0x0000000010001000ULL, /* vstsd: store flop */
  0x0000000010001000ULL, /* vstsdx: store flop */
  0x0000000010001000ULL, /* vstsdxx: store flop */
  0x0000000010001000ULL, /* vstsd_n32: store flop */
  0x0000000000000008ULL, /* vmovss: move */
  0x0000100010000020ULL, /* vldss: load flop vector_op */
  0x0000100010000020ULL, /* vldssx: load flop vector_op */
  0x0000100010000020ULL, /* vldssxx: load flop vector_op */
  0x0000000010000020ULL, /* vldss_n32: load flop */
  0x0000000010001000ULL, /* vstss: store flop */
  0x0000000010001000ULL, /* vstssx: store flop */
  0x0000000010001000ULL, /* vstssxx: store flop */
  0x0000000010001000ULL, /* vstss_n32: store flop */
  0x0000000000000000ULL, /* vmovlhps: */
  0x0000000000000000ULL, /* vmovhlps: */
  0x0000100000000000ULL, /* vmovshdup: vector_op */
  0x0000100000000060ULL, /* vmovshdupx: load load_ext vector_op */
  0x0000100000000060ULL, /* vmovshdupxx: load load_ext vector_op */
  0x0000100000000060ULL, /* vmovshdupxxx: load load_ext vector_op */
  0x0000100000000000ULL, /* vmovsldup: vector_op */
  0x0000100000000060ULL, /* vmovsldupx: load load_ext vector_op */
  0x0000100000000060ULL, /* vmovsldupxx: load load_ext vector_op */
  0x0000100000000060ULL, /* vmovsldupxxx: load load_ext vector_op */
  0x0000100000100020ULL, /* vldupd: load unalign_ld vector_op */
  0x0000100000100020ULL, /* vldupdx: load unalign_ld vector_op */
  0x0000100000100020ULL, /* vldupdxx: load unalign_ld vector_op */
  0x0000100000100020ULL, /* vldupd_n32: load unalign_ld vector_op */
  0x0000100000201000ULL, /* vstupd: store unalign_store vector_op */
  0x0000100000201000ULL, /* vstupdx: store unalign_store vector_op */
  0x0000100000201000ULL, /* vstupdxx: store unalign_store vector_op */
  0x0000100000201000ULL, /* vstupd_n32: store unalign_store vector_op */
  0x0000100000100020ULL, /* vldups: load unalign_ld vector_op */
  0x0000100000100020ULL, /* vldupsx: load unalign_ld vector_op */
  0x0000100000100020ULL, /* vldupsxx: load unalign_ld vector_op */
  0x0000100000100020ULL, /* vldups_n32: load unalign_ld vector_op */
  0x0000100000201000ULL, /* vstups: store unalign_store vector_op */
  0x0000100000201000ULL, /* vstupsx: store unalign_store vector_op */
  0x0000100000201000ULL, /* vstupsxx: store unalign_store vector_op */
  0x0000100000201000ULL, /* vstups_n32: store unalign_store vector_op */
  0x0020100000000000ULL, /* vmpsadbw: vector_op non_destructive */
  0x0020100000000200ULL, /* vmpsadbwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vmpsadbwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vmpsadbwxxx: load_exe vector_op non_destructive */
  0x0020180090000000ULL, /* vfmul128v64: flop fmul commutative vector_op non_destructive */
  0x0020100090000200ULL, /* vfmulx128v64: load_exe flop fmul vector_op non_destructive */
  0x0020100090000200ULL, /* vfmulxx128v64: load_exe flop fmul vector_op non_destructive */
  0x0020100090000200ULL, /* vfmulxxx128v64: load_exe flop fmul vector_op non_destructive */
  0x0020180090000000ULL, /* vfmul128v32: flop fmul commutative vector_op non_destructive */
  0x0020100090000200ULL, /* vfmulx128v32: load_exe flop fmul vector_op non_destructive */
  0x0020100090000200ULL, /* vfmulxx128v32: load_exe flop fmul vector_op non_destructive */
  0x0020100090000200ULL, /* vfmulxxx128v32: load_exe flop fmul vector_op non_destructive */
  0x0020080090000000ULL, /* vmulsd: flop fmul commutative non_destructive */
  0x0020000090000200ULL, /* vmulxsd: load_exe flop fmul non_destructive */
  0x0020000090000200ULL, /* vmulxxsd: load_exe flop fmul non_destructive */
  0x0020000090000200ULL, /* vmulxxxsd: load_exe flop fmul non_destructive */
  0x0020080090000000ULL, /* vmulss: flop fmul commutative non_destructive */
  0x0020000090000200ULL, /* vmulxss: load_exe flop fmul non_destructive */
  0x0020000090000200ULL, /* vmulxxss: load_exe flop fmul non_destructive */
  0x0020000090000200ULL, /* vmulxxxss: load_exe flop fmul non_destructive */
  0x0020100010000000ULL, /* vorpd: flop vector_op non_destructive */
  0x0020180010000000ULL, /* vfor128v64: flop commutative vector_op non_destructive */
  0x0020100010000200ULL, /* vforx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vforxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vforxxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vorps: flop vector_op non_destructive */
  0x0020180010000000ULL, /* vfor128v32: flop commutative vector_op non_destructive */
  0x0020100010000200ULL, /* vforx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vforxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vforxxx128v32: load_exe flop vector_op non_destructive */
  0x0020100000000000ULL, /* vabs128v8: vector_op non_destructive */
  0x0020100000000200ULL, /* vabsx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vabsxx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vabsxxx128v8: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vabs128v32: vector_op non_destructive */
  0x0020100000000200ULL, /* vabsx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vabsxx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vabsxxx128v32: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vabs128v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vabsx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vabsxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vabsxxx128v16: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpackssdw: vector_op non_destructive */
  0x0020100000000200ULL, /* vpackssdwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpackssdwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpackssdwxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpacksswb: vector_op non_destructive */
  0x0020100000000200ULL, /* vpacksswbx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpacksswbxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpacksswbxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpackusdw: vector_op non_destructive */
  0x0020100000000200ULL, /* vpackusdwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpackusdwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpackusdwxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpackuswb: vector_op non_destructive */
  0x0020100000000200ULL, /* vpackuswbx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpackuswbxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpackuswbxxx: load_exe vector_op non_destructive */
  0x0020180020000000ULL, /* vadd128v8: fadd commutative vector_op non_destructive */
  0x0020100020000200ULL, /* vaddx128v8: load_exe fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddxx128v8: load_exe fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddxxx128v8: load_exe fadd vector_op non_destructive */
  0x0020180020000000ULL, /* vadd128v32: fadd commutative vector_op non_destructive */
  0x0020100020000200ULL, /* vaddx128v32: load_exe fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddxx128v32: load_exe fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddxxx128v32: load_exe fadd vector_op non_destructive */
  0x0020180020000000ULL, /* vadd128v64: fadd commutative vector_op non_destructive */
  0x0020100020000200ULL, /* vaddx128v64: load_exe fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddxx128v64: load_exe fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddxxx128v64: load_exe fadd vector_op non_destructive */
  0x0020180020000000ULL, /* vadd128v16: fadd commutative vector_op non_destructive */
  0x0020100020000200ULL, /* vaddx128v16: load_exe fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddxx128v16: load_exe fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddxxx128v16: load_exe fadd vector_op non_destructive */
  0x0020100020000000ULL, /* vadds128v8: fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddsx128v8: load_exe fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddsxx128v8: load_exe fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddsxxx128v8: load_exe fadd vector_op non_destructive */
  0x0020100020000000ULL, /* vadds128v16: fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddsx128v16: load_exe fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddsxx128v16: load_exe fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddsxxx128v16: load_exe fadd vector_op non_destructive */
  0x0020100020000000ULL, /* vaddus128v8: fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddusx128v8: load_exe fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddusxx128v8: load_exe fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddusxxx128v8: load_exe fadd vector_op non_destructive */
  0x0020100020000000ULL, /* vaddus128v16: fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddusx128v16: load_exe fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddusxx128v16: load_exe fadd vector_op non_destructive */
  0x0020100020000200ULL, /* vaddusxxx128v16: load_exe fadd vector_op non_destructive */
  0x0020100000000000ULL, /* vpalignr128: vector_op non_destructive */
  0x0020100000000200ULL, /* vpalignrx128: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpalignrxx128: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpalignrxxx128: load_exe vector_op non_destructive */
  0x0020180000000000ULL, /* vand128v8: commutative vector_op non_destructive */
  0x0020100000000200ULL, /* vandx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vandxx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vandxxx128v8: load_exe vector_op non_destructive */
  0x0020180000000000ULL, /* vand128v16: commutative vector_op non_destructive */
  0x0020100000000200ULL, /* vandx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vandxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vandxxx128v16: load_exe vector_op non_destructive */
  0x0020180000000000ULL, /* vand128v32: commutative vector_op non_destructive */
  0x0020100000000200ULL, /* vandx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vandxx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vandxxx128v32: load_exe vector_op non_destructive */
  0x0020180000000000ULL, /* vand128v64: commutative vector_op non_destructive */
  0x0020100000000200ULL, /* vandx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vandxx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vandxxx128v64: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vandn128v8: vector_op non_destructive */
  0x0020100000000200ULL, /* vandnx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vandnxx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vandnxxx128v8: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vandn128v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vandnx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vandnxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vandnxxx128v16: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vandn128v32: vector_op non_destructive */
  0x0020100000000200ULL, /* vandnx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vandnxx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vandnxxx128v32: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vandn128v64: vector_op non_destructive */
  0x0020100000000200ULL, /* vandnx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vandnxx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vandnxxx128v64: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpavgb: vector_op non_destructive */
  0x0020100000000200ULL, /* vpavgbx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpavgbxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpavgbxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpavgw: vector_op non_destructive */
  0x0020100000000200ULL, /* vpavgwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpavgwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpavgwxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vblendv128v8: vector_op non_destructive */
  0x0020100000000200ULL, /* vblendvx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vblendvxx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vblendvxxx128v8: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vblend128v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vblendx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vblendxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vblendxxx128v16: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpclmulqdq: vector_op non_destructive */
  0x0020100000000200ULL, /* vpclmulqdqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpclmulqdqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpclmulqdqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcmpeq128v8: vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpeqx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpeqxx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpeqxxx128v8: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcmpeq128v32: vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpeqx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpeqxx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpeqxxx128v32: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcmpeq128v64: vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpeqx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpeqxx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpeqxxx128v64: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcmpeq128v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpeqx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpeqxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpeqxxx128v16: load_exe vector_op non_destructive */
  0x0020100000000004ULL, /* vcmpestri: change_rflags vector_op non_destructive */
  0x0020100000000204ULL, /* vcmpestrix: change_rflags load_exe vector_op non_destructive */
  0x0020100000000204ULL, /* vcmpestrixx: change_rflags load_exe vector_op non_destructive */
  0x0020100000000204ULL, /* vcmpestrixxx: change_rflags load_exe vector_op non_destructive */
  0x0020100000000004ULL, /* vcmpestrm: change_rflags vector_op non_destructive */
  0x0020100000000204ULL, /* vcmpestrmx: change_rflags load_exe vector_op non_destructive */
  0x0020100000000204ULL, /* vcmpestrmxx: change_rflags load_exe vector_op non_destructive */
  0x0020100000000204ULL, /* vcmpestrmxxx: change_rflags load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcmpgt128v8: vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpgtx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpgtxx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpgtxxx128v8: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcmpgt128v32: vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpgtx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpgtxx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpgtxxx128v32: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcmpgt128v64: vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpgtx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpgtxx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpgtxxx128v64: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vcmpgt128v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpgtx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpgtxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vcmpgtxxx128v16: load_exe vector_op non_destructive */
  0x0020100000000004ULL, /* vcmpistri: change_rflags vector_op non_destructive */
  0x0020100000000204ULL, /* vcmpistrix: change_rflags load_exe vector_op non_destructive */
  0x0020100000000204ULL, /* vcmpistrixx: change_rflags load_exe vector_op non_destructive */
  0x0020100000000204ULL, /* vcmpistrixxx: change_rflags load_exe vector_op non_destructive */
  0x0020100000000004ULL, /* vcmpistrm: change_rflags vector_op non_destructive */
  0x0020100000000204ULL, /* vcmpistrmx: change_rflags load_exe vector_op non_destructive */
  0x0020100000000204ULL, /* vcmpistrmxx: change_rflags load_exe vector_op non_destructive */
  0x0020100000000204ULL, /* vcmpistrmxxx: change_rflags load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vfperm128v64: vector_op non_destructive */
  0x0020100000000200ULL, /* vfpermx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vfpermxx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vfpermxxx128v64: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vfpermi128v64: vector_op non_destructive */
  0x0020100000000200ULL, /* vfpermix128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vfpermixx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vfpermixxx128v64: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vfperm128v32: vector_op non_destructive */
  0x0020100000000200ULL, /* vfpermx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vfpermxx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vfpermxxx128v32: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vfpermi128v32: vector_op non_destructive */
  0x0020100000000200ULL, /* vfpermix128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vfpermixx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vfpermixxx128v32: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vfperm2f128: vector_op non_destructive */
  0x0020100000000200ULL, /* vfperm2xf128: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vfperm2xxf128: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vfperm2xxxf128: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vextr128v8: vector_op non_destructive */
  0x0020100000000200ULL, /* vextrx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vextrxx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vextrxxx128v8: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vextr128v32: vector_op non_destructive */
  0x0020100000000200ULL, /* vextrx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vextrxx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vextrxxx128v32: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vextr128v64: vector_op non_destructive */
  0x0020100000000200ULL, /* vextrx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vextrxx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vextrxxx128v64: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vextr128v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vextrx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vextrxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vextrxxx128v16: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphadd128v32: vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddxx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddxxx128v32: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphadds128v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddsx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddsxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddsxxx128v16: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphadd128v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphaddxxx128v16: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphminposuw: vector_op non_destructive */
  0x0020100000000200ULL, /* vphminposuwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphminposuwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphminposuwxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphsub128v32: vector_op non_destructive */
  0x0020100000000200ULL, /* vphsubx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphsubxx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphsubxxx128v32: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphsubs128v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vphsubsx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphsubsxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphsubsxxx128v16: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vphsub128v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vphsubx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphsubxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vphsubxxx128v16: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vinsr128v8: vector_op non_destructive */
  0x0020100000000200ULL, /* vinsrx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vinsrxx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vinsrxxx128v8: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vinsr128v32: vector_op non_destructive */
  0x0020100000000200ULL, /* vinsrx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vinsrxx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vinsrxxx128v32: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vinsr128v64: vector_op non_destructive */
  0x0020100000000200ULL, /* vinsrx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vinsrxx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vinsrxxx128v64: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vinsr128v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vinsrx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vinsrxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vinsrxxx128v16: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmaddwd: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmaddwdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmaddwdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmaddwdxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmaddubsw128: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmaddubswx128: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmaddubswxx128: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmaddubswxxx128: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vmaxs128v8: vector_op non_destructive */
  0x0020100000000200ULL, /* vmaxsx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vmaxsxx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vmaxsxxx128v8: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vmaxs128v32: vector_op non_destructive */
  0x0020100000000200ULL, /* vmaxsx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vmaxsxx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vmaxsxxx128v32: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vmaxs128v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vmaxsx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vmaxsxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vmaxsxxx128v16: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vmaxu128v8: vector_op non_destructive */
  0x0020100000000200ULL, /* vmaxux128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vmaxuxx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vmaxuxxx128v8: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vmaxu128v32: vector_op non_destructive */
  0x0020100000000200ULL, /* vmaxux128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vmaxuxx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vmaxuxxx128v32: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vmaxu128v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vmaxux128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vmaxuxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vmaxuxxx128v16: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vmins128v8: vector_op non_destructive */
  0x0020100000000200ULL, /* vminsx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vminsxx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vminsxxx128v8: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vmins128v32: vector_op non_destructive */
  0x0020100000000200ULL, /* vminsx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vminsxx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vminsxxx128v32: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vmins128v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vminsx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vminsxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vminsxxx128v16: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vminu128v8: vector_op non_destructive */
  0x0020100000000200ULL, /* vminux128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vminuxx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vminuxxx128v8: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vminu128v32: vector_op non_destructive */
  0x0020100000000200ULL, /* vminux128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vminuxx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vminuxxx128v32: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vminu128v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vminux128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vminuxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vminuxxx128v16: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmovmskb128: vector_op non_destructive */
  0x0020100000000000ULL, /* vpmovsxbd: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovsxbdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovsxbdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovsxbdxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmovsxbq: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovsxbqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovsxbqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovsxbqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmovsxbw: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovsxbwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovsxbwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovsxbwxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmovsxdq: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovsxdqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovsxdqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovsxdqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmovsxwd: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovsxwdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovsxwdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovsxwdxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmovsxwq: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovsxwqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovsxwqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovsxwqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmovzxbd: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovzxbdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovzxbdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovzxbdxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmovzxbq: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovzxbqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovzxbqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovzxbqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmovzxbw: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovzxbwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovzxbwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovzxbwxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmovzxdq: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovzxdqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovzxdqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovzxdqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmovzxwd: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovzxwdx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovzxwdxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovzxwdxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpmovzxwq: vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovzxwqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovzxwqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpmovzxwqxxx: load_exe vector_op non_destructive */
  0x0020100080000000ULL, /* vmulhuw: fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmulhuwx: load_exe fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmulhuwxx: load_exe fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmulhuwxxx: load_exe fmul vector_op non_destructive */
  0x0020100080000000ULL, /* vmulhrsw: fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmulhrswx: load_exe fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmulhrswxx: load_exe fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmulhrswxxx: load_exe fmul vector_op non_destructive */
  0x0020100080000000ULL, /* vmulhw: fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmulhwx: load_exe fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmulhwxx: load_exe fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmulhwxxx: load_exe fmul vector_op non_destructive */
  0x0020100080000000ULL, /* vmulld: fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmulldx: load_exe fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmulldxx: load_exe fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmulldxxx: load_exe fmul vector_op non_destructive */
  0x0020100080000000ULL, /* vmul128v16: fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmulx128v16: load_exe fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmulxx128v16: load_exe fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmulxxx128v16: load_exe fmul vector_op non_destructive */
  0x0020100080000000ULL, /* vmul128v32: fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmulx128v32: load_exe fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmulxx128v32: load_exe fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmulxxx128v32: load_exe fmul vector_op non_destructive */
  0x0020100080000000ULL, /* vmuludq: fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmuludqx: load_exe fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmuludqxx: load_exe fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmuludqxxx: load_exe fmul vector_op non_destructive */
  0x0020100080000000ULL, /* vmuldq: fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmuldqx: load_exe fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmuldqxx: load_exe fmul vector_op non_destructive */
  0x0020100080000200ULL, /* vmuldqxxx: load_exe fmul vector_op non_destructive */
  0x0020180000000000ULL, /* vor128v8: commutative vector_op non_destructive */
  0x0020100000000200ULL, /* vorx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vorxx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vorxxx128v8: load_exe vector_op non_destructive */
  0x0020180000000000ULL, /* vor128v16: commutative vector_op non_destructive */
  0x0020100000000200ULL, /* vorx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vorxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vorxxx128v16: load_exe vector_op non_destructive */
  0x0020180000000000ULL, /* vor128v32: commutative vector_op non_destructive */
  0x0020100000000200ULL, /* vorx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vorxx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vorxxx128v32: load_exe vector_op non_destructive */
  0x0020180000000000ULL, /* vor128v64: commutative vector_op non_destructive */
  0x0020100000000200ULL, /* vorx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vorxx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vorxxx128v64: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpsadbw: vector_op non_destructive */
  0x0020100000000200ULL, /* vpsadbwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsadbwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsadbwxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpshuf128v8: vector_op non_destructive */
  0x0020100000000200ULL, /* vpshufx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshufxx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshufxxx128v8: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpshuf128v32: vector_op non_destructive */
  0x0020100000000200ULL, /* vpshufx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshufxx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshufxxx128v32: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpshufw64v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vpshufwx64v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshufwxx64v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshufwxxx64v16: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpshufhw: vector_op non_destructive */
  0x0020100000000200ULL, /* vpshufhwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshufhwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshufhwxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpshuflw: vector_op non_destructive */
  0x0020100000000200ULL, /* vpshuflwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshuflwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpshuflwxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpsign128v8: vector_op non_destructive */
  0x0020100000000200ULL, /* vpsignx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsignxx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsignxxx128v8: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpsign128v32: vector_op non_destructive */
  0x0020100000000200ULL, /* vpsignx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsignxx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsignxxx128v32: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpsign128v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vpsignx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsignxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsignxxx128v16: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpslldq: vector_op non_destructive */
  0x0020100000000000ULL, /* vpsrldq: vector_op non_destructive */
  0x0020100000000000ULL, /* vpslld: vector_op non_destructive */
  0x0020100000000200ULL, /* vpslldx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpslldxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpslldxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpslldi: vector_op non_destructive */
  0x0020100000000000ULL, /* vpsllq: vector_op non_destructive */
  0x0020100000000200ULL, /* vpsllqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsllqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsllqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpsllqi: vector_op non_destructive */
  0x0020100000000000ULL, /* vpsllw: vector_op non_destructive */
  0x0020100000000200ULL, /* vpsllwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsllwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsllwxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpsllwi: vector_op non_destructive */
  0x0020100000000000ULL, /* vpsrad: vector_op non_destructive */
  0x0020100000000200ULL, /* vpsradx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsradxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsradxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpsradi: vector_op non_destructive */
  0x0020100000000000ULL, /* vpsraw: vector_op non_destructive */
  0x0020100000000200ULL, /* vpsrawx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsrawxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsrawxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpsrawi: vector_op non_destructive */
  0x0020100000000000ULL, /* vpsrld: vector_op non_destructive */
  0x0020100000000200ULL, /* vpsrldx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsrldxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsrldxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpsrldi: vector_op non_destructive */
  0x0020100000000000ULL, /* vpsrlq: vector_op non_destructive */
  0x0020100000000200ULL, /* vpsrlqx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsrlqxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsrlqxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpsrlqi: vector_op non_destructive */
  0x0020100000000000ULL, /* vpsrlw: vector_op non_destructive */
  0x0020100000000200ULL, /* vpsrlwx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsrlwxx: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpsrlwxxx: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpsrlwi: vector_op non_destructive */
  0x0020100040000000ULL, /* vsub128v8: fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubx128v8: load_exe fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubxx128v8: load_exe fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubxxx128v8: load_exe fsub vector_op non_destructive */
  0x0020100040000000ULL, /* vsub128v32: fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubx128v32: load_exe fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubxx128v32: load_exe fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubxxx128v32: load_exe fsub vector_op non_destructive */
  0x0020100040000000ULL, /* vsub128v64: fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubx128v64: load_exe fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubxx128v64: load_exe fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubxxx128v64: load_exe fsub vector_op non_destructive */
  0x0020100040000000ULL, /* vsub128v16: fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubx128v16: load_exe fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubxx128v16: load_exe fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubxxx128v16: load_exe fsub vector_op non_destructive */
  0x0020100040000000ULL, /* vsubs128v8: fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubsx128v8: load_exe fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubsxx128v8: load_exe fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubsxxx128v8: load_exe fsub vector_op non_destructive */
  0x0020100040000000ULL, /* vsubs128v16: fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubsx128v16: load_exe fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubsxx128v16: load_exe fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubsxxx128v16: load_exe fsub vector_op non_destructive */
  0x0020100040000000ULL, /* vsubus128v8: fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubusx128v8: load_exe fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubusxx128v8: load_exe fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubusxxx128v8: load_exe fsub vector_op non_destructive */
  0x0020100040000000ULL, /* vsubus128v16: fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubusx128v16: load_exe fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubusxx128v16: load_exe fsub vector_op non_destructive */
  0x0020100040000200ULL, /* vsubusxxx128v16: load_exe fsub vector_op non_destructive */
  0x0000100000000004ULL, /* vptest128: change_rflags vector_op */
  0x0000100000000204ULL, /* vptestx128: change_rflags load_exe vector_op */
  0x0000100000000204ULL, /* vptestxx128: change_rflags load_exe vector_op */
  0x0000100000000204ULL, /* vptestxxx128: change_rflags load_exe vector_op */
  0x0000100000000004ULL, /* vtestpd: change_rflags vector_op */
  0x0000100000000204ULL, /* vtestxpd: change_rflags load_exe vector_op */
  0x0000100000000204ULL, /* vtestxxpd: change_rflags load_exe vector_op */
  0x0000100000000204ULL, /* vtestxxxpd: change_rflags load_exe vector_op */
  0x0000100000000004ULL, /* vtestps: change_rflags vector_op */
  0x0000100000000204ULL, /* vtestxps: change_rflags load_exe vector_op */
  0x0000100000000204ULL, /* vtestxxps: change_rflags load_exe vector_op */
  0x0000100000000204ULL, /* vtestxxxps: change_rflags load_exe vector_op */
  0x0020100000000000ULL, /* vpunpckh64v8: vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpckhx64v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpckhxx64v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpckhxxx64v8: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpunpckh64v32: vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpckhx64v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpckhxx64v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpckhxxx64v32: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpunpckh64v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpckhx64v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpckhxx64v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpckhxxx64v16: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpunpckh64v64: vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpckhx64v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpckhxx64v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpckhxxx64v64: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpunpckl64v8: vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpcklx64v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpcklxx64v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpcklxxx64v8: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpunpckl64v32: vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpcklx64v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpcklxx64v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpcklxxx64v32: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpunpckl64v16: vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpcklx64v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpcklxx64v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpcklxxx64v16: load_exe vector_op non_destructive */
  0x0020100000000000ULL, /* vpunpckl64v64: vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpcklx64v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpcklxx64v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vpunpcklxxx64v64: load_exe vector_op non_destructive */
  0x0020180000000000ULL, /* vxor128v8: commutative vector_op non_destructive */
  0x0020100000000200ULL, /* vxorx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vxorxx128v8: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vxorxxx128v8: load_exe vector_op non_destructive */
  0x0020180000000000ULL, /* vxor128v16: commutative vector_op non_destructive */
  0x0020100000000200ULL, /* vxorx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vxorxx128v16: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vxorxxx128v16: load_exe vector_op non_destructive */
  0x0020180000000000ULL, /* vxor128v32: commutative vector_op non_destructive */
  0x0020100000000200ULL, /* vxorx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vxorxx128v32: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vxorxxx128v32: load_exe vector_op non_destructive */
  0x0020180000000000ULL, /* vxor128v64: commutative vector_op non_destructive */
  0x0020100000000200ULL, /* vxorx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vxorxx128v64: load_exe vector_op non_destructive */
  0x0020100000000200ULL, /* vxorxxx128v64: load_exe vector_op non_destructive */
  0x0020100010000000ULL, /* vfrcp128v32: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfrcpx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfrcpxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfrcpxxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vfrcpss: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfrcpxss: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfrcpxxss: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfrcpxxxss: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vround128v64: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vroundx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vroundxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vroundxxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vround128v32: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vroundx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vroundxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vroundxxx128v32: load_exe flop vector_op non_destructive */
  0x0020000010000000ULL, /* vroundsd: flop non_destructive */
  0x0020000010000200ULL, /* vroundxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vroundxxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vroundxxxsd: load_exe flop non_destructive */
  0x0020000010000000ULL, /* vroundss: flop non_destructive */
  0x0020000010000200ULL, /* vroundxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vroundxxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vroundxxxss: load_exe flop non_destructive */
  0x0020100010000000ULL, /* vfrsqrt128v32: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfrsqrtx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfrsqrtxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfrsqrtxxx128v32: load_exe flop vector_op non_destructive */
  0x0020000010000000ULL, /* vfrsqrtss: flop non_destructive */
  0x0020000010000200ULL, /* vfrsqrtxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfrsqrtxxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfrsqrtxxxss: load_exe flop non_destructive */
  0x0000000000000000ULL, /* vshufpd: */
  0x0020100010000000ULL, /* vfshuf128v64: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfshufx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfshufxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfshufxxx128v64: load_exe flop vector_op non_destructive */
  0x0000000000000000ULL, /* vshufps: */
  0x0020100010000000ULL, /* vfshuf128v32: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfshufx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfshufxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfshufxxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vfsqrt128v64: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfsqrtx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfsqrtxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfsqrtxxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vfsqrt128v32: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfsqrtx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfsqrtxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfsqrtxxx128v32: load_exe flop vector_op non_destructive */
  0x0020000810000000ULL, /* vfsqrtsd: flop sqrt non_destructive */
  0x0020000010000200ULL, /* vfsqrtxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfsqrtxxsd: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfsqrtxxxsd: load_exe flop non_destructive */
  0x0020000810000000ULL, /* vfsqrtss: flop sqrt non_destructive */
  0x0020000010000200ULL, /* vfsqrtxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfsqrtxxss: load_exe flop non_destructive */
  0x0020000010000200ULL, /* vfsqrtxxxss: load_exe flop non_destructive */
  0x0000000000000000ULL, /* vstmxcsr: */
  0x0020100050000000ULL, /* vfsub128v64: flop fsub vector_op non_destructive */
  0x0020100050000200ULL, /* vfsubx128v64: load_exe flop fsub vector_op non_destructive */
  0x0020100050000200ULL, /* vfsubxx128v64: load_exe flop fsub vector_op non_destructive */
  0x0020100050000200ULL, /* vfsubxxx128v64: load_exe flop fsub vector_op non_destructive */
  0x0020100050000000ULL, /* vfsub128v32: flop fsub vector_op non_destructive */
  0x0020100050000200ULL, /* vfsubx128v32: load_exe flop fsub vector_op non_destructive */
  0x0020100050000200ULL, /* vfsubxx128v32: load_exe flop fsub vector_op non_destructive */
  0x0020100050000200ULL, /* vfsubxxx128v32: load_exe flop fsub vector_op non_destructive */
  0x0020000050000000ULL, /* vsubsd: flop fsub non_destructive */
  0x0020000050000200ULL, /* vsubxsd: load_exe flop fsub non_destructive */
  0x0020000050000200ULL, /* vsubxxsd: load_exe flop fsub non_destructive */
  0x0020000050000200ULL, /* vsubxxxsd: load_exe flop fsub non_destructive */
  0x0020000050000000ULL, /* vsubss: flop fsub non_destructive */
  0x0020000050000200ULL, /* vsubxss: load_exe flop fsub non_destructive */
  0x0020000050000200ULL, /* vsubxxss: load_exe flop fsub non_destructive */
  0x0020000050000200ULL, /* vsubxxxss: load_exe flop fsub non_destructive */
  0x0000020010000004ULL, /* vucomisd: change_rflags flop icmp */
  0x0000020010000204ULL, /* vucomixsd: change_rflags load_exe flop icmp */
  0x0000020010000204ULL, /* vucomixxsd: change_rflags load_exe flop icmp */
  0x0000020010000204ULL, /* vucomixxxsd: change_rflags load_exe flop icmp */
  0x0000020010000004ULL, /* vucomiss: change_rflags flop icmp */
  0x0000020010000204ULL, /* vucomixss: change_rflags load_exe flop icmp */
  0x0000020010000204ULL, /* vucomixxss: change_rflags load_exe flop icmp */
  0x0000020010000204ULL, /* vucomixxxss: change_rflags load_exe flop icmp */
  0x0020100010000000ULL, /* vunpckh128v64: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vunpckhx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vunpckhxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vunpckhxxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vunpckh128v32: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vunpckhx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vunpckhxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vunpckhxxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vunpckl128v64: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vunpcklx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vunpcklxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vunpcklxxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vunpckl128v32: flop vector_op non_destructive */
  0x0020100010000200ULL, /* vunpcklx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vunpcklxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vunpcklxxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vxorpd: flop vector_op non_destructive */
  0x0020180010000000ULL, /* vfxor128v64: flop commutative vector_op non_destructive */
  0x0020100010000200ULL, /* vfxorx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfxorxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfxorxxx128v64: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vxzero128v64: flop vector_op non_destructive */
  0x0020100010000000ULL, /* vxzero64: flop vector_op non_destructive */
  0x0020100010000000ULL, /* vxorps: flop vector_op non_destructive */
  0x0020180010000000ULL, /* vfxor128v32: flop commutative vector_op non_destructive */
  0x0020100010000200ULL, /* vfxorx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfxorxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000200ULL, /* vfxorxxx128v32: load_exe flop vector_op non_destructive */
  0x0020100010000000ULL, /* vxzero128v32: flop vector_op non_destructive */
  0x0020100010000000ULL, /* vxzero32: flop vector_op non_destructive */
  0x0000000000000000ULL, /* vzeroall: */
  0x0000300010000000ULL, /* xfmadd132pd: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmadd132xpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmadd132xxpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmadd132xxxpd: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmadd213pd: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmadd213xpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmadd213xxpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmadd213xxxpd: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmadd231pd: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmadd231xpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmadd231xxpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmadd231xxxpd: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmadd132ps: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmadd132xps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmadd132xxps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmadd132xxxps: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmadd213ps: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmadd213xps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmadd213xxps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmadd213xxxps: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmadd231ps: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmadd231xps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmadd231xxps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmadd231xxxps: load_exe flop vector_op x86_style */
  0x0000200010000000ULL, /* xfmadd132sd: flop x86_style */
  0x0000200010000200ULL, /* xfmadd132xsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmadd132xxsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmadd132xxxsd: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfmadd213sd: flop x86_style */
  0x0000200010000200ULL, /* xfmadd213xsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmadd213xxsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmadd213xxxsd: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfmadd231sd: flop x86_style */
  0x0000200010000200ULL, /* xfmadd231xsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmadd231xxsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmadd231xxxsd: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfmadd132ss: flop x86_style */
  0x0000200010000200ULL, /* xfmadd132xss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmadd132xxss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmadd132xxxss: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfmadd213ss: flop x86_style */
  0x0000200010000200ULL, /* xfmadd213xss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmadd213xxss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmadd213xxxss: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfmadd231ss: flop x86_style */
  0x0000200010000200ULL, /* xfmadd231xss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmadd231xxss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmadd231xxxss: load_exe flop x86_style */
  0x0000300010000000ULL, /* xfmaddsub132pd: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmaddsub132xpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmaddsub132xxpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmaddsub132xxxpd: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmaddsub213pd: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmaddsub213xpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmaddsub213xxpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmaddsub213xxxpd: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmaddsub231pd: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmaddsub231xpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmaddsub231xxpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmaddsub231xxxpd: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmaddsub132ps: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmaddsub132xps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmaddsub132xxps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmaddsub132xxxps: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmaddsub213ps: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmaddsub213xps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmaddsub213xxps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmaddsub213xxxps: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmaddsub231ps: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmaddsub231xps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmaddsub231xxps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmaddsub231xxxps: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmsubadd132pd: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsubadd132xpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsubadd132xxpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsubadd132xxxpd: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmsubadd213pd: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsubadd213xpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsubadd213xxpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsubadd213xxxpd: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmsubadd231pd: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsubadd231xpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsubadd231xxpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsubadd231xxxpd: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmsubadd132ps: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsubadd132xps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsubadd132xxps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsubadd132xxxps: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmsubadd213ps: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsubadd213xps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsubadd213xxps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsubadd213xxxps: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmsubadd231ps: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsubadd231xps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsubadd231xxps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsubadd231xxxps: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmsub132pd: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsub132xpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsub132xxpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsub132xxxpd: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmsub213pd: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsub213xpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsub213xxpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsub213xxxpd: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmsub231pd: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsub231xpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsub231xxpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsub231xxxpd: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmsub132ps: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsub132xps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsub132xxps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsub132xxxps: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmsub213ps: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsub213xps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsub213xxps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsub213xxxps: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfmsub231ps: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsub231xps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsub231xxps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfmsub231xxxps: load_exe flop vector_op x86_style */
  0x0000200010000000ULL, /* xfmsub132sd: flop x86_style */
  0x0000200010000200ULL, /* xfmsub132xsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmsub132xxsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmsub132xxxsd: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfmsub213sd: flop x86_style */
  0x0000200010000200ULL, /* xfmsub213xsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmsub213xxsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmsub213xxxsd: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfmsub231sd: flop x86_style */
  0x0000200010000200ULL, /* xfmsub231xsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmsub231xxsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmsub231xxxsd: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfmsub132ss: flop x86_style */
  0x0000200010000200ULL, /* xfmsub132xss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmsub132xxss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmsub132xxxss: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfmsub213ss: flop x86_style */
  0x0000200010000200ULL, /* xfmsub213xss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmsub213xxss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmsub213xxxss: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfmsub231ss: flop x86_style */
  0x0000200010000200ULL, /* xfmsub231xss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmsub231xxss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfmsub231xxxss: load_exe flop x86_style */
  0x0000300010000000ULL, /* xfnmadd132pd: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmadd132xpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmadd132xxpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmadd132xxxpd: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfnmadd213pd: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmadd213xpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmadd213xxpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmadd213xxxpd: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfnmadd231pd: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmadd231xpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmadd231xxpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmadd231xxxpd: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfnmadd132ps: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmadd132xps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmadd132xxps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmadd132xxxps: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfnmadd213ps: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmadd213xps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmadd213xxps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmadd213xxxps: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfnmadd231ps: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmadd231xps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmadd231xxps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmadd231xxxps: load_exe flop vector_op x86_style */
  0x0000200010000000ULL, /* xfnmadd132sd: flop x86_style */
  0x0000200010000200ULL, /* xfnmadd132xsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmadd132xxsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmadd132xxxsd: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfnmadd213sd: flop x86_style */
  0x0000200010000200ULL, /* xfnmadd213xsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmadd213xxsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmadd213xxxsd: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfnmadd231sd: flop x86_style */
  0x0000200010000200ULL, /* xfnmadd231xsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmadd231xxsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmadd231xxxsd: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfnmadd132ss: flop x86_style */
  0x0000200010000200ULL, /* xfnmadd132xss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmadd132xxss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmadd132xxxss: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfnmadd213ss: flop x86_style */
  0x0000200010000200ULL, /* xfnmadd213xss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmadd213xxss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmadd213xxxss: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfnmadd231ss: flop x86_style */
  0x0000200010000200ULL, /* xfnmadd231xss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmadd231xxss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmadd231xxxss: load_exe flop x86_style */
  0x0000300010000000ULL, /* xfnmsub132pd: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmsub132xpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmsub132xxpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmsub132xxxpd: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfnmsub213pd: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmsub213xpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmsub213xxpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmsub213xxxpd: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfnmsub231pd: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmsub231xpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmsub231xxpd: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmsub231xxxpd: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfnmsub132ps: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmsub132xps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmsub132xxps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmsub132xxxps: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfnmsub213ps: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmsub213xps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmsub213xxps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmsub213xxxps: load_exe flop vector_op x86_style */
  0x0000300010000000ULL, /* xfnmsub231ps: flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmsub231xps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmsub231xxps: load_exe flop vector_op x86_style */
  0x0000300010000200ULL, /* xfnmsub231xxxps: load_exe flop vector_op x86_style */
  0x0000200010000000ULL, /* xfnmsub132sd: flop x86_style */
  0x0000200010000200ULL, /* xfnmsub132xsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmsub132xxsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmsub132xxxsd: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfnmsub213sd: flop x86_style */
  0x0000200010000200ULL, /* xfnmsub213xsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmsub213xxsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmsub213xxxsd: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfnmsub231sd: flop x86_style */
  0x0000200010000200ULL, /* xfnmsub231xsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmsub231xxsd: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmsub231xxxsd: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfnmsub132ss: flop x86_style */
  0x0000200010000200ULL, /* xfnmsub132xss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmsub132xxss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmsub132xxxss: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfnmsub213ss: flop x86_style */
  0x0000200010000200ULL, /* xfnmsub213xss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmsub213xxss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmsub213xxxss: load_exe flop x86_style */
  0x0000200010000000ULL, /* xfnmsub231ss: flop x86_style */
  0x0000200010000200ULL, /* xfnmsub231xss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmsub231xxss: load_exe flop x86_style */
  0x0000200010000200ULL, /* xfnmsub231xxxss: load_exe flop x86_style */
  0x0000000000000008ULL, /* movabsq: move */
  0x0000000000001000ULL, /* store8_abs: store */
  0x0000000000001000ULL, /* store16_abs: store */
  0x0000000000001000ULL, /* store32_abs: store */
  0x0000000000001000ULL, /* store64_abs: store */
  0x0000000000000020ULL, /* ld8_abs: load */
  0x0000000000000020ULL, /* ld16_abs: load */
  0x0000000000000020ULL, /* ld32_abs: load */
  0x0000000000000020ULL, /* ld64_abs: load */
  0x0040000000000604ULL, /* lock_add32: change_rflags load_exe load_exe_store prefix_lock */
  0x0040000000000604ULL, /* lock_adc32: change_rflags load_exe load_exe_store prefix_lock */
  0x0040000000000604ULL, /* lock_add64: change_rflags load_exe load_exe_store prefix_lock */
  0x0040a00000000404ULL, /* lock_xchg32: change_rflags load_exe_store x86_style side_effects prefix_lock */
  0x0040a00000000404ULL, /* lock_xchg64: change_rflags load_exe_store x86_style side_effects prefix_lock */
  0x0040800000000004ULL, /* lock_cmpxchg32: change_rflags side_effects prefix_lock */
  0x0040800000000004ULL, /* lock_cmpxchg64: change_rflags side_effects prefix_lock */
  0x0040000000000604ULL, /* lock_and32: change_rflags load_exe load_exe_store prefix_lock */
  0x0040000000000604ULL, /* lock_and64: change_rflags load_exe load_exe_store prefix_lock */
  0x0040000000000604ULL, /* lock_or32: change_rflags load_exe load_exe_store prefix_lock */
  0x0040000000000604ULL, /* lock_or64: change_rflags load_exe load_exe_store prefix_lock */
  0x0040000000000604ULL, /* lock_xor32: change_rflags load_exe load_exe_store prefix_lock */
  0x0040000000000604ULL, /* lock_xor64: change_rflags load_exe load_exe_store prefix_lock */
  0x0040000000000604ULL, /* lock_sub32: change_rflags load_exe load_exe_store prefix_lock */
  0x0040000000000604ULL, /* lock_sub64: change_rflags load_exe load_exe_store prefix_lock */
  0x0040000000000604ULL, /* lock_add8: change_rflags load_exe load_exe_store prefix_lock */
  0x0040000000000604ULL, /* lock_add16: change_rflags load_exe load_exe_store prefix_lock */
  0x0040a00000000404ULL, /* lock_xchg8: change_rflags load_exe_store x86_style side_effects prefix_lock */
  0x0040a00000000404ULL, /* lock_xchg16: change_rflags load_exe_store x86_style side_effects prefix_lock */
  0x0040800000000004ULL, /* lock_cmpxchg8: change_rflags side_effects prefix_lock */
  0x0040800000000004ULL, /* lock_cmpxchg16: change_rflags side_effects prefix_lock */
  0x0040000000000604ULL, /* lock_and8: change_rflags load_exe load_exe_store prefix_lock */
  0x0040000000000604ULL, /* lock_and16: change_rflags load_exe load_exe_store prefix_lock */
  0x0040000000000604ULL, /* lock_or8: change_rflags load_exe load_exe_store prefix_lock */
  0x0040000000000604ULL, /* lock_or16: change_rflags load_exe load_exe_store prefix_lock */
  0x0040000000000604ULL, /* lock_xor8: change_rflags load_exe load_exe_store prefix_lock */
  0x0040000000000604ULL, /* lock_xor16: change_rflags load_exe load_exe_store prefix_lock */
  0x0040000000000604ULL, /* lock_sub8: change_rflags load_exe load_exe_store prefix_lock */
  0x0040000000000604ULL, /* lock_sub16: change_rflags load_exe load_exe_store prefix_lock */
  0x0040a00000000404ULL, /* lock_xadd8: change_rflags load_exe_store x86_style side_effects prefix_lock */
  0x0040a00000000404ULL, /* lock_xadd16: change_rflags load_exe_store x86_style side_effects prefix_lock */
  0x0040a00000000404ULL, /* lock_xadd32: change_rflags load_exe_store x86_style side_effects prefix_lock */
  0x0040a00000000404ULL, /* lock_xadd64: change_rflags load_exe_store x86_style side_effects prefix_lock */
  0x0000000000000004ULL, /* bsf32: change_rflags */
  0x0000000000000004ULL, /* bsf64: change_rflags */
  0x0000000000000004ULL, /* bsr32: change_rflags */
  0x0000000000000004ULL, /* bsr64: change_rflags */
  0x000000200000c000ULL, /* tls_global_dynamic_64: xfer call jump */
  0x000000200000c000ULL, /* tls_global_dynamic_32: xfer call jump */
  0x000000200000c000ULL, /* tls_local_dynamic_64: xfer call jump */
  0x000000200000c000ULL, /* tls_local_dynamic_32: xfer call jump */
  0x0000000200000000ULL, /* begin_pregtn: dummy */
  0x0000000200000000ULL, /* end_pregtn: dummy */
  0x0000000200000000ULL, /* bwd_bar: dummy */
  0x0000000200000000ULL, /* fwd_bar: dummy */
  0x0000000200000000ULL, /* label: dummy */
  0x0000000100000000ULL, /* nop: noop */
  0x0000000300000000ULL, /* noop: noop dummy */
};
