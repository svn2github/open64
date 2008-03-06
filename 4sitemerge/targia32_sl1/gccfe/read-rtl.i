# 1 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/read-rtl.c"
# 1 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/read-rtl.c"
# 29 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/read-rtl.c"
# 1 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/system.h" 1
# 172 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/system.h"
# 1 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/hwint.h" 1
# 173 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/system.h" 2
# 30 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/read-rtl.c" 2
# 1 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h" 1
# 31 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
struct function;

# 1 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/machmode.h" 1
# 29 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/machmode.h"
enum machine_mode {
# 1 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/machmode.def" 1
# 74 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/machmode.def"
VOIDmode,

BImode,
QImode,
HImode,
SImode,
DImode,
TImode,
OImode,




PQImode,
PHImode,
PSImode,
PDImode,

QFmode,
HFmode,
TQFmode,
SFmode,
DFmode,
XFmode,
TFmode,


QCmode,
HCmode,
SCmode,
DCmode,
XCmode,
TCmode,

CQImode,
CHImode,
CSImode,
CDImode,
CTImode,
COImode,





V1DImode,
V2QImode,
V2HImode,
V2SImode,
V2DImode,

V4QImode,
V4HImode,
V4SImode,
V4DImode,

V8QImode,
V8HImode,
V8SImode,
V8DImode,

V16QImode,

V2SFmode,
V2DFmode,

V4SFmode,
V4DFmode,

V8SFmode,
V8DFmode,
V16SFmode,



BLKmode,
# 158 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/machmode.def"
CCmode,
# 31 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/machmode.h" 2
MAX_MACHINE_MODE };
# 41 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/machmode.h"
extern const char * const mode_name[(int) MAX_MACHINE_MODE];


enum mode_class { MODE_RANDOM, MODE_INT, MODE_FLOAT, MODE_PARTIAL_INT, MODE_CC,
    MODE_COMPLEX_INT, MODE_COMPLEX_FLOAT,
    MODE_VECTOR_INT, MODE_VECTOR_FLOAT,
    MAX_MODE_CLASS};




extern const enum mode_class mode_class[(int) MAX_MACHINE_MODE];
# 89 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/machmode.h"
extern const unsigned char mode_size[(int) MAX_MACHINE_MODE];




extern const unsigned char mode_unit_size[(int) MAX_MACHINE_MODE];
# 105 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/machmode.h"
extern const unsigned short mode_bitsize[(int) MAX_MACHINE_MODE];
# 115 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/machmode.h"
extern const unsigned int mode_mask_array[(int) MAX_MACHINE_MODE];



extern const enum machine_mode inner_mode_array[(int) MAX_MACHINE_MODE];
# 132 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/machmode.h"
extern const unsigned char mode_wider_mode[(int) MAX_MACHINE_MODE];






extern enum machine_mode mode_for_size PARAMS ((unsigned int,
      enum mode_class, int));



extern enum machine_mode smallest_mode_for_size
    PARAMS ((unsigned int, enum mode_class));





extern enum machine_mode int_mode_for_mode PARAMS ((enum machine_mode));



extern enum machine_mode get_best_mode PARAMS ((int, int, unsigned int,
      enum machine_mode, int));



extern unsigned get_mode_alignment PARAMS ((enum machine_mode));





extern const enum machine_mode class_narrowest_mode[(int) MAX_MODE_CLASS];





extern enum machine_mode byte_mode;
extern enum machine_mode word_mode;
extern enum machine_mode ptr_mode;
# 34 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h" 2
# 47 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
enum rtx_code {


# 1 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def" 1
# 70 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
UNKNOWN ,



NIL ,




INCLUDE ,






EXPR_LIST ,



INSN_LIST ,
# 129 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
MATCH_OPERAND ,






MATCH_SCRATCH ,




MATCH_DUP ,







MATCH_OPERATOR ,
# 158 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
MATCH_PARALLEL ,




MATCH_OP_DUP ,




MATCH_PAR_DUP ,




MATCH_INSN ,
# 192 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
DEFINE_INSN ,







DEFINE_PEEPHOLE ,
# 211 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
DEFINE_SPLIT ,
# 239 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
DEFINE_INSN_AND_SPLIT ,



DEFINE_PEEPHOLE2 ,



DEFINE_COMBINE ,
# 260 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
DEFINE_EXPAND ,
# 276 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
DEFINE_DELAY ,
# 317 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
DEFINE_FUNCTION_UNIT ,


DEFINE_ASM_ATTRIBUTES ,
# 333 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
DEFINE_COND_EXEC ,





SEQUENCE ,


ADDRESS ,
# 358 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
DEFINE_CPU_UNIT ,





DEFINE_QUERY_CPU_UNIT ,
# 374 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
EXCLUSION_SET ,
# 383 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
PRESENCE_SET ,
# 393 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
ABSENCE_SET ,
# 404 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
DEFINE_BYPASS ,
# 413 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
DEFINE_AUTOMATON ,
# 433 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
AUTOMATA_OPTION ,
# 442 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
DEFINE_RESERVATION ,
# 490 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
DEFINE_INSN_RESERVATION ,
# 501 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
DEFINE_ATTR ,


ATTR ,







SET_ATTR ,
# 527 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
SET_ATTR_ALTERNATIVE ,




EQ_ATTR ,
# 542 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
ATTR_FLAG ,
# 555 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
INSN ,



JUMP_INSN ,






CALL_INSN ,


BARRIER ,







CODE_LABEL ,
# 586 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
NOTE ,
# 599 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
COND_EXEC ,


PARALLEL ,







ASM_INPUT ,
# 624 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
ASM_OPERANDS ,
# 635 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
UNSPEC ,


UNSPEC_VOLATILE ,



ADDR_VEC ,
# 667 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
ADDR_DIFF_VEC ,
# 678 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
PREFETCH ,
# 690 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
SET ,




USE ,




CLOBBER ,





CALL ,



RETURN ,





TRAP_IF ,




RESX ,






CONST_INT ,




CONST_DOUBLE ,


CONST_VECTOR ,


CONST_STRING ,





CONST ,



PC ,


VALUE ,
# 761 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
REG ,






SCRATCH ,
# 778 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
SUBREG ,
# 791 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
STRICT_LOW_PART ,





CONCAT ,




MEM ,





LABEL_REF ,





SYMBOL_REF ,






CC0 ,
# 830 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
ADDRESSOF ,
# 848 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
QUEUED ,
# 860 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
IF_THEN_ELSE ,
# 869 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
COND ,


COMPARE ,


PLUS ,


MINUS ,


NEG ,

MULT ,


DIV ,

MOD ,


UDIV ,
UMOD ,


AND ,

IOR ,

XOR ,

NOT ,




ASHIFT ,
ROTATE ,
ASHIFTRT ,
LSHIFTRT ,
ROTATERT ,





SMIN ,
SMAX ,
UMIN ,
UMAX ,
# 928 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
PRE_DEC ,
PRE_INC ,
POST_DEC ,
POST_INC ,
# 945 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
PRE_MODIFY ,
POST_MODIFY ,



NE ,
EQ ,
GE ,
GT ,
LE ,
LT ,
GEU ,
GTU ,
LEU ,
LTU ,


UNORDERED ,
ORDERED ,


UNEQ ,
UNGE ,
UNGT ,
UNLE ,
UNLT ,


LTGT ,




SIGN_EXTEND ,


ZERO_EXTEND ,


TRUNCATE ,


FLOAT_EXTEND ,
FLOAT_TRUNCATE ,


FLOAT ,







FIX ,


UNSIGNED_FLOAT ,




UNSIGNED_FIX ,


ABS ,


SQRT ,




FFS ,
# 1029 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
SIGN_EXTRACT ,


ZERO_EXTRACT ,




HIGH ,



LO_SUM ,
# 1054 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
RANGE_INFO ,
# 1069 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
RANGE_REG ,





RANGE_VAR ,



RANGE_LIVE ,




CONSTANT_P_RTX ,
# 1105 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
CALL_PLACEHOLDER ,






VEC_MERGE ,





VEC_SELECT ,




VEC_CONCAT ,





VEC_DUPLICATE ,


SS_PLUS ,


US_PLUS ,


SS_MINUS ,


US_MINUS ,


SS_TRUNCATE ,


US_TRUNCATE ,
# 1161 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.def"
PHI ,
# 51 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h" 2


  LAST_AND_UNUSED_RTX_CODE};






extern const unsigned char rtx_length[((int) LAST_AND_UNUSED_RTX_CODE)];


extern const char * const rtx_name[((int) LAST_AND_UNUSED_RTX_CODE)];


extern const char * const rtx_format[((int) LAST_AND_UNUSED_RTX_CODE)];


extern const char rtx_class[((int) LAST_AND_UNUSED_RTX_CODE)];


extern const unsigned char rtx_next[((int) LAST_AND_UNUSED_RTX_CODE)];



typedef struct
{

  unsigned min_align: 8;

  unsigned base_after_vec: 1;
  unsigned min_after_vec: 1;

  unsigned max_after_vec: 1;

  unsigned min_after_base: 1;

  unsigned max_after_base: 1;


  unsigned offset_unsigned: 1;
  unsigned : 2;
  unsigned scale : 8;
} addr_diff_vec_flags;
# 103 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
typedef struct mem_attrs GTY(())
{
  int alias;
  tree expr;
  rtx offset;
  rtx size;
  unsigned int align;
} mem_attrs;



union rtunion_def
{
  int rtwint;
  int rtint;
  unsigned int rtuint;
  const char *rtstr;
  rtx rtx;
  rtvec rtvec;
  enum machine_mode rttype;
  addr_diff_vec_flags rt_addr_diff_vec_flags;
  struct cselib_val_struct *rt_cselib;
  struct bitmap_head_def *rtbit;
  tree rttree;
  struct basic_block_def *bb;
  mem_attrs *rtmem;
};
typedef union rtunion_def rtunion;



struct rtx_def GTY((chain_next ("RTX_NEXT (&%h)"),
      chain_prev ("RTX_PREV (&%h)")))
{

  unsigned int code: 16;


  unsigned int mode : 8;






  unsigned int jump : 1;


  unsigned int call : 1;







  unsigned int unchanging : 1;
# 168 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
  unsigned int volatil : 1;
# 186 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
  unsigned int in_struct : 1;






  unsigned int used : 1;




  unsigned integrated : 1;
# 207 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
  unsigned frame_related : 1;




  rtunion GTY ((special ("rtx_def"),
  desc ("GET_CODE (&%0)"))) fld[1];
};
# 247 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
struct rtvec_def GTY(()) {
  int num_elem;
  rtx GTY ((length ("%h.num_elem"))) elem[1];
};
# 610 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
enum reg_note
{



  REG_DEAD = 1,


  REG_INC,
# 629 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
  REG_EQUIV,




  REG_EQUAL,





  REG_WAS_0,





  REG_RETVAL,




  REG_LIBCALL,






  REG_NONNEG,



  REG_NO_CONFLICT,


  REG_UNUSED,
# 674 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
  REG_CC_SETTER, REG_CC_USER,




  REG_LABEL,





  REG_DEP_ANTI, REG_DEP_OUTPUT,





  REG_BR_PROB,



  REG_NOALIAS,



  REG_SAVE_AREA,





  REG_BR_PRED,




  REG_FRAME_RELATED_EXPR,




  REG_EH_CONTEXT,





  REG_EH_REGION,


  REG_SAVE_NOTE,





  REG_MAYBE_DEAD,


  REG_NORETURN,



  REG_NON_LOCAL_GOTO,



  REG_SETJMP,


  REG_ALWAYS_RETURN,



  REG_VTABLE_REF
};
# 761 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
extern const char * const reg_note_name[];
# 821 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
enum insn_note
{

  NOTE_INSN_BIAS = -100,



  NOTE_INSN_DELETED,



  NOTE_INSN_BLOCK_BEG,
  NOTE_INSN_BLOCK_END,


  NOTE_INSN_LOOP_BEG,
  NOTE_INSN_LOOP_END,


  NOTE_INSN_LOOP_CONT,

  NOTE_INSN_LOOP_VTOP,





  NOTE_INSN_LOOP_END_TOP_COND,






  NOTE_INSN_FUNCTION_END,


  NOTE_INSN_PROLOGUE_END,


  NOTE_INSN_EPILOGUE_BEG,


  NOTE_INSN_DELETED_LABEL,




  NOTE_INSN_FUNCTION_BEG,



  NOTE_INSN_EH_REGION_BEG,
  NOTE_INSN_EH_REGION_END,




  NOTE_INSN_REPEATED_LINE_NUMBER,


  NOTE_INSN_BASIC_BLOCK,



  NOTE_INSN_EXPECTED_VALUE,


  NOTE_INSN_PREDICTION,

  NOTE_INSN_MAX
};



extern const char * const note_insn_name[NOTE_INSN_MAX - NOTE_INSN_BIAS];
# 911 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
enum label_kind
{
  LABEL_NORMAL = 0,
  LABEL_STATIC_ENTRY,
  LABEL_GLOBAL_ENTRY,
  LABEL_WEAK_ENTRY
};
# 1038 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
extern unsigned int subreg_lsb PARAMS ((rtx));
extern unsigned int subreg_regno_offset PARAMS ((unsigned int,
        enum machine_mode,
        unsigned int,
        enum machine_mode));
extern bool subreg_offset_representable_p PARAMS ((unsigned int,
        enum machine_mode,
        unsigned int,
        enum machine_mode));
extern unsigned int subreg_regno PARAMS ((rtx));
# 1345 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
extern int rtx_equal_function_value_matters;


extern int generating_concat_p;




extern int ceil_log2 PARAMS ((unsigned int));




extern rtx expand_builtin_expect_jump PARAMS ((tree, rtx, rtx));


extern void set_stack_check_libfunc PARAMS ((rtx));
extern int trunc_int_for_mode PARAMS ((int,
            enum machine_mode));
extern rtx plus_constant_wide PARAMS ((rtx, int));
extern rtx plus_constant_for_output_wide PARAMS ((rtx, int));
extern void optimize_save_area_alloca PARAMS ((rtx));


extern rtx gen_rtx PARAMS ((enum rtx_code,
       enum machine_mode, ...));
extern rtvec gen_rtvec PARAMS ((int, ...));
extern rtx copy_insn_1 PARAMS ((rtx));
extern rtx copy_insn PARAMS ((rtx));
extern rtx gen_int_mode PARAMS ((int,
       enum machine_mode));
extern rtx emit_copy_of_insn_after PARAMS ((rtx, rtx));


extern rtx rtx_alloc PARAMS ((enum rtx_code));
extern rtvec rtvec_alloc PARAMS ((int));
extern rtx copy_rtx PARAMS ((rtx));


extern rtx copy_rtx_if_shared PARAMS ((rtx));


extern rtx copy_most_rtx PARAMS ((rtx, rtx));
extern rtx shallow_copy_rtx PARAMS ((rtx));
extern int rtx_equal_p PARAMS ((rtx, rtx));


extern rtvec gen_rtvec_v PARAMS ((int, rtx *));
extern rtx gen_reg_rtx PARAMS ((enum machine_mode));
extern rtx gen_label_rtx PARAMS ((void));
extern int subreg_hard_regno PARAMS ((rtx, int));
extern rtx gen_lowpart_common PARAMS ((enum machine_mode, rtx));
extern rtx gen_lowpart PARAMS ((enum machine_mode, rtx));


extern rtx gen_lowpart_if_possible PARAMS ((enum machine_mode, rtx));


extern rtx gen_highpart PARAMS ((enum machine_mode, rtx));
extern rtx gen_highpart_mode PARAMS ((enum machine_mode,
       enum machine_mode, rtx));
extern rtx gen_realpart PARAMS ((enum machine_mode, rtx));
extern rtx gen_imagpart PARAMS ((enum machine_mode, rtx));
extern rtx operand_subword PARAMS ((rtx, unsigned int, int,
       enum machine_mode));
extern rtx constant_subword PARAMS ((rtx, int,
       enum machine_mode));


extern rtx operand_subword_force PARAMS ((rtx, unsigned int,
       enum machine_mode));
extern int subreg_lowpart_p PARAMS ((rtx));
extern unsigned int subreg_lowpart_offset PARAMS ((enum machine_mode,
         enum machine_mode));
extern unsigned int subreg_highpart_offset PARAMS ((enum machine_mode,
          enum machine_mode));
extern rtx make_safe_from PARAMS ((rtx, rtx));
extern rtx convert_memory_address PARAMS ((enum machine_mode, rtx));
extern rtx get_insns PARAMS ((void));
extern const char *get_insn_name PARAMS ((int));
extern rtx get_last_insn PARAMS ((void));
extern rtx get_last_insn_anywhere PARAMS ((void));
extern rtx get_first_nonnote_insn PARAMS ((void));
extern rtx get_last_nonnote_insn PARAMS ((void));
extern void start_sequence PARAMS ((void));
extern void push_to_sequence PARAMS ((rtx));
extern void end_sequence PARAMS ((void));
extern void push_to_full_sequence PARAMS ((rtx, rtx));
extern void end_full_sequence PARAMS ((rtx*, rtx*));


extern rtx immed_double_const PARAMS ((int, int, enum machine_mode));
extern rtx mem_for_const_double PARAMS ((rtx));
extern rtx force_const_mem PARAMS ((enum machine_mode, rtx));


extern rtx get_pool_constant PARAMS ((rtx));
extern rtx get_pool_constant_mark PARAMS ((rtx, bool *));
extern enum machine_mode get_pool_mode PARAMS ((rtx));
extern rtx get_pool_constant_for_function PARAMS ((struct function *, rtx));
extern enum machine_mode get_pool_mode_for_function PARAMS ((struct function *, rtx));
extern int get_pool_offset PARAMS ((rtx));
extern rtx simplify_subtraction PARAMS ((rtx));


extern rtx assign_stack_local PARAMS ((enum machine_mode,
            int, int));
extern rtx assign_stack_temp PARAMS ((enum machine_mode,
            int, int));
extern rtx assign_stack_temp_for_type PARAMS ((enum machine_mode,
       int, int, tree));
extern rtx assign_temp PARAMS ((tree, int, int, int));

extern rtx emit_insn_before PARAMS ((rtx, rtx));
extern rtx emit_insn_before_scope PARAMS ((rtx, rtx, tree));
extern rtx emit_jump_insn_before PARAMS ((rtx, rtx));
extern rtx emit_jump_insn_before_scope PARAMS ((rtx, rtx, tree));
extern rtx emit_call_insn_before PARAMS ((rtx, rtx));
extern rtx emit_call_insn_before_scope PARAMS ((rtx, rtx, tree));
extern rtx emit_barrier_before PARAMS ((rtx));
extern rtx emit_label_before PARAMS ((rtx, rtx));
extern rtx emit_note_before PARAMS ((int, rtx));
extern rtx emit_insn_after PARAMS ((rtx, rtx));
extern rtx emit_insn_after_scope PARAMS ((rtx, rtx, tree));
extern rtx emit_jump_insn_after PARAMS ((rtx, rtx));
extern rtx emit_jump_insn_after_scope PARAMS ((rtx, rtx, tree));
extern rtx emit_call_insn_after PARAMS ((rtx, rtx));
extern rtx emit_call_insn_after_scope PARAMS ((rtx, rtx, tree));
extern rtx emit_barrier_after PARAMS ((rtx));
extern rtx emit_label_after PARAMS ((rtx, rtx));
extern rtx emit_note_after PARAMS ((int, rtx));
extern rtx emit_line_note_after PARAMS ((const char *, int, rtx));
extern rtx emit_insn PARAMS ((rtx));
extern rtx emit_jump_insn PARAMS ((rtx));
extern rtx emit_call_insn PARAMS ((rtx));
extern rtx emit_label PARAMS ((rtx));
extern rtx emit_barrier PARAMS ((void));
extern rtx emit_line_note PARAMS ((const char *, int));
extern rtx emit_note PARAMS ((const char *, int));
extern rtx emit_line_note_force PARAMS ((const char *, int));
extern rtx make_insn_raw PARAMS ((rtx));
extern rtx previous_insn PARAMS ((rtx));
extern rtx next_insn PARAMS ((rtx));
extern rtx prev_nonnote_insn PARAMS ((rtx));
extern rtx next_nonnote_insn PARAMS ((rtx));
extern rtx prev_real_insn PARAMS ((rtx));
extern rtx next_real_insn PARAMS ((rtx));
extern rtx prev_active_insn PARAMS ((rtx));
extern rtx next_active_insn PARAMS ((rtx));
extern int active_insn_p PARAMS ((rtx));
extern rtx prev_label PARAMS ((rtx));
extern rtx next_label PARAMS ((rtx));
extern rtx next_cc0_user PARAMS ((rtx));
extern rtx prev_cc0_setter PARAMS ((rtx));


extern tree choose_inner_scope PARAMS ((tree, tree));


extern rtx next_nondeleted_insn PARAMS ((rtx));
extern enum rtx_code reverse_condition PARAMS ((enum rtx_code));
extern enum rtx_code reverse_condition_maybe_unordered PARAMS ((enum rtx_code));
extern enum rtx_code swap_condition PARAMS ((enum rtx_code));
extern enum rtx_code unsigned_condition PARAMS ((enum rtx_code));
extern enum rtx_code signed_condition PARAMS ((enum rtx_code));
extern void mark_jump_label PARAMS ((rtx, rtx, int));
extern void cleanup_barriers PARAMS ((void));


extern bool squeeze_notes PARAMS ((rtx *, rtx *));
extern rtx delete_related_insns PARAMS ((rtx));
extern void delete_jump PARAMS ((rtx));
extern void delete_barrier PARAMS ((rtx));
extern rtx get_label_before PARAMS ((rtx));
extern rtx get_label_after PARAMS ((rtx));
extern rtx follow_jumps PARAMS ((rtx));


extern rtx *find_constant_term_loc PARAMS ((rtx *));


extern rtx try_split PARAMS ((rtx, rtx, int));
extern int split_branch_probability;


extern rtx split_insns PARAMS ((rtx, rtx));


extern rtx simplify_unary_operation PARAMS ((enum rtx_code,
       enum machine_mode, rtx,
       enum machine_mode));
extern rtx simplify_binary_operation PARAMS ((enum rtx_code,
       enum machine_mode, rtx,
       rtx));
extern rtx simplify_ternary_operation PARAMS ((enum rtx_code,
       enum machine_mode,
       enum machine_mode, rtx, rtx,
       rtx));
extern rtx simplify_relational_operation PARAMS ((enum rtx_code,
        enum machine_mode, rtx,
        rtx));
extern rtx simplify_gen_binary PARAMS ((enum rtx_code,
       enum machine_mode,
       rtx, rtx));
extern rtx simplify_gen_unary PARAMS ((enum rtx_code,
       enum machine_mode, rtx,
       enum machine_mode));
extern rtx simplify_gen_ternary PARAMS ((enum rtx_code,
       enum machine_mode,
       enum machine_mode,
       rtx, rtx, rtx));
extern rtx simplify_gen_relational PARAMS ((enum rtx_code,
       enum machine_mode,
       enum machine_mode,
       rtx, rtx));
extern rtx simplify_subreg PARAMS ((enum machine_mode,
       rtx,
       enum machine_mode,
       unsigned int));
extern rtx simplify_gen_subreg PARAMS ((enum machine_mode,
       rtx,
       enum machine_mode,
       unsigned int));
extern rtx simplify_replace_rtx PARAMS ((rtx, rtx, rtx));
extern rtx simplify_rtx PARAMS ((rtx));
extern rtx avoid_constant_pool_reference PARAMS ((rtx));


extern rtx gen_mem_addressof PARAMS ((rtx, tree, int));


extern enum machine_mode choose_hard_reg_mode PARAMS ((unsigned int,
             unsigned int));


extern rtx set_unique_reg_note PARAMS ((rtx, enum reg_note, rtx));
# 1591 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
extern int rtx_addr_can_trap_p PARAMS ((rtx));
extern int rtx_unstable_p PARAMS ((rtx));
extern int rtx_varies_p PARAMS ((rtx, int));
extern int rtx_addr_varies_p PARAMS ((rtx, int));
extern int get_integer_term PARAMS ((rtx));
extern rtx get_related_value PARAMS ((rtx));
extern rtx get_jump_table_offset PARAMS ((rtx, rtx *));
extern int global_reg_mentioned_p PARAMS ((rtx));
extern int reg_mentioned_p PARAMS ((rtx, rtx));
extern int count_occurrences PARAMS ((rtx, rtx, int));
extern int reg_referenced_p PARAMS ((rtx, rtx));
extern int reg_used_between_p PARAMS ((rtx, rtx, rtx));
extern int reg_referenced_between_p PARAMS ((rtx, rtx, rtx));
extern int reg_set_between_p PARAMS ((rtx, rtx, rtx));
extern int regs_set_between_p PARAMS ((rtx, rtx, rtx));
extern int commutative_operand_precedence PARAMS ((rtx));
extern int swap_commutative_operands_p PARAMS ((rtx, rtx));
extern int modified_between_p PARAMS ((rtx, rtx, rtx));
extern int no_labels_between_p PARAMS ((rtx, rtx));
extern int no_jumps_between_p PARAMS ((rtx, rtx));
extern int modified_in_p PARAMS ((rtx, rtx));
extern int insn_dependent_p PARAMS ((rtx, rtx));
extern int reg_set_p PARAMS ((rtx, rtx));
extern rtx single_set_2 PARAMS ((rtx, rtx));
extern int multiple_sets PARAMS ((rtx));
extern int set_noop_p PARAMS ((rtx));
extern int noop_move_p PARAMS ((rtx));
extern rtx find_last_value PARAMS ((rtx, rtx *, rtx, int));
extern int refers_to_regno_p PARAMS ((unsigned int, unsigned int,
       rtx, rtx *));
extern int reg_overlap_mentioned_p PARAMS ((rtx, rtx));
extern rtx set_of PARAMS ((rtx, rtx));
extern void note_stores PARAMS ((rtx,
       void (*) (rtx, rtx, void *),
       void *));
extern void note_uses PARAMS ((rtx *,
       void (*) (rtx *, void *),
       void *));
extern rtx reg_set_last PARAMS ((rtx, rtx));
extern int dead_or_set_p PARAMS ((rtx, rtx));
extern int dead_or_set_regno_p PARAMS ((rtx, unsigned int));
extern rtx find_reg_note PARAMS ((rtx, enum reg_note, rtx));
extern rtx find_regno_note PARAMS ((rtx, enum reg_note,
       unsigned int));
extern rtx find_reg_equal_equiv_note PARAMS ((rtx));
extern int find_reg_fusage PARAMS ((rtx, enum rtx_code, rtx));
extern int find_regno_fusage PARAMS ((rtx, enum rtx_code,
       unsigned int));
extern int pure_call_p PARAMS ((rtx));
extern void remove_note PARAMS ((rtx, rtx));
extern int side_effects_p PARAMS ((rtx));
extern int volatile_refs_p PARAMS ((rtx));
extern int volatile_insn_p PARAMS ((rtx));
extern int may_trap_p PARAMS ((rtx));
extern int inequality_comparisons_p PARAMS ((rtx));
extern rtx replace_rtx PARAMS ((rtx, rtx, rtx));
extern rtx replace_regs PARAMS ((rtx, rtx *, unsigned int,
       int));
extern int computed_jump_p PARAMS ((rtx));
typedef int (*rtx_function) PARAMS ((rtx *, void *));
extern int for_each_rtx PARAMS ((rtx *, rtx_function, void *));
extern rtx regno_use_in PARAMS ((unsigned int, rtx));
extern int auto_inc_p PARAMS ((rtx));
extern int in_expr_list_p PARAMS ((rtx, rtx));
extern void remove_node_from_expr_list PARAMS ((rtx, rtx *));
extern int insns_safe_to_move_p PARAMS ((rtx, rtx, rtx *));
extern int loc_mentioned_in_p PARAMS ((rtx *, rtx));
extern rtx find_first_parameter_load PARAMS ((rtx, rtx));
extern bool keep_with_call_p PARAMS ((rtx));



extern rtx find_use_as_address PARAMS ((rtx, rtx, int));



void free_EXPR_LIST_list PARAMS ((rtx *));
void free_INSN_LIST_list PARAMS ((rtx *));
void free_EXPR_LIST_node PARAMS ((rtx));
void free_INSN_LIST_node PARAMS ((rtx));
rtx alloc_INSN_LIST PARAMS ((rtx, rtx));
rtx alloc_EXPR_LIST PARAMS ((int, rtx, rtx));







extern int max_parallel;


extern void free_reg_info PARAMS ((void));


extern int asm_noperands PARAMS ((rtx));
extern const char *decode_asm_operands PARAMS ((rtx, rtx *, rtx **,
            const char **,
            enum machine_mode *));

extern enum reg_class reg_preferred_class PARAMS ((int));
extern enum reg_class reg_alternate_class PARAMS ((int));

extern rtx get_first_nonparm_insn PARAMS ((void));

extern void split_all_insns PARAMS ((int));
extern void split_all_insns_noflow PARAMS ((void));


extern GTY(()) rtx const_int_rtx[64 * 2 + 1];





extern GTY(()) rtx const_true_rtx;

extern GTY(()) rtx const_tiny_rtx[3][(int) MAX_MACHINE_MODE];
# 1731 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
enum global_rtl_index
{
  GR_PC,
  GR_CC0,
  GR_STACK_POINTER,
  GR_FRAME_POINTER,




  GR_ARG_POINTER = GR_FRAME_POINTER,


  GR_HARD_FRAME_POINTER = GR_FRAME_POINTER,
# 1755 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
  GR_VIRTUAL_INCOMING_ARGS,
  GR_VIRTUAL_STACK_ARGS,
  GR_VIRTUAL_STACK_DYNAMIC,
  GR_VIRTUAL_OUTGOING_ARGS,
  GR_VIRTUAL_CFA,

  GR_MAX
};


extern GTY(()) rtx global_rtl[GR_MAX];
# 1779 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
extern GTY(()) rtx pic_offset_table_rtx;
extern GTY(()) rtx struct_value_rtx;
extern GTY(()) rtx struct_value_incoming_rtx;
extern GTY(()) rtx static_chain_rtx;
extern GTY(()) rtx static_chain_incoming_rtx;
extern GTY(()) rtx return_address_pointer_rtx;
# 1797 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
extern rtx gen_rtx_CONST_INT PARAMS ((enum machine_mode, int));
extern rtx gen_rtx_CONST_VECTOR PARAMS ((enum machine_mode, rtvec));
extern rtx gen_raw_REG PARAMS ((enum machine_mode, int));
extern rtx gen_rtx_REG PARAMS ((enum machine_mode, unsigned));
extern rtx gen_rtx_SUBREG PARAMS ((enum machine_mode, rtx, int));
extern rtx gen_rtx_MEM PARAMS ((enum machine_mode, rtx));

extern rtx gen_lowpart_SUBREG PARAMS ((enum machine_mode, rtx));
# 1874 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
extern rtx find_next_ref PARAMS ((rtx, rtx));

extern rtx output_constant_def PARAMS ((tree, int));
# 1886 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
extern int flow2_completed;




extern int reload_completed;




extern int reload_in_progress;







extern int cse_not_expected;



extern int no_new_pseudos;





extern int rtx_to_tree_code PARAMS ((enum rtx_code));


struct obstack;
extern void gcc_obstack_init PARAMS ((struct obstack *));


struct cse_basic_block_data;
# 1932 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
extern int rtx_cost PARAMS ((rtx, enum rtx_code));
extern int address_cost PARAMS ((rtx, enum machine_mode));
extern int delete_trivially_dead_insns PARAMS ((rtx, int));



extern void cse_end_of_basic_block PARAMS ((rtx,
      struct cse_basic_block_data *,
      int, int, int));


extern int comparison_dominates_p PARAMS ((enum rtx_code, enum rtx_code));
extern int condjump_p PARAMS ((rtx));
extern int any_condjump_p PARAMS ((rtx));
extern int any_uncondjump_p PARAMS ((rtx));
extern int safe_to_remove_jump_p PARAMS ((rtx));
extern rtx pc_set PARAMS ((rtx));
extern rtx condjump_label PARAMS ((rtx));
extern int simplejump_p PARAMS ((rtx));
extern int tablejump_p PARAMS ((rtx));
extern int returnjump_p PARAMS ((rtx));
extern int onlyjump_p PARAMS ((rtx));
extern int only_sets_cc0_p PARAMS ((rtx));
extern int sets_cc0_p PARAMS ((rtx));
extern int invert_jump_1 PARAMS ((rtx, rtx));
extern int invert_jump PARAMS ((rtx, rtx, int));
extern int rtx_renumbered_equal_p PARAMS ((rtx, rtx));
extern int true_regnum PARAMS ((rtx));
extern unsigned int reg_or_subregno PARAMS ((rtx));
extern int redirect_jump_1 PARAMS ((rtx, rtx));
extern int redirect_jump PARAMS ((rtx, rtx, int));
extern void rebuild_jump_labels PARAMS ((rtx));
extern enum rtx_code reversed_comparison_code PARAMS ((rtx, rtx));
extern enum rtx_code reversed_comparison_code_parts PARAMS ((enum rtx_code,
            rtx, rtx, rtx));
extern void delete_for_peephole PARAMS ((rtx, rtx));
extern int condjump_in_parallel_p PARAMS ((rtx));
extern void never_reached_warning PARAMS ((rtx, rtx));
extern void purge_line_number_notes PARAMS ((rtx));
extern void copy_loop_headers PARAMS ((rtx));


extern int max_reg_num PARAMS ((void));
extern int max_label_num PARAMS ((void));
extern int get_first_label_num PARAMS ((void));
extern void delete_insns_since PARAMS ((rtx));
extern void mark_reg_pointer PARAMS ((rtx, int));
extern void mark_user_reg PARAMS ((rtx));
extern void reset_used_flags PARAMS ((rtx));
extern void reorder_insns PARAMS ((rtx, rtx, rtx));
extern void reorder_insns_nobb PARAMS ((rtx, rtx, rtx));
extern int get_max_uid PARAMS ((void));
extern int in_sequence_p PARAMS ((void));
extern void force_next_line_note PARAMS ((void));
extern void init_emit PARAMS ((void));
extern void init_emit_once PARAMS ((int));
extern void push_topmost_sequence PARAMS ((void));
extern void pop_topmost_sequence PARAMS ((void));
extern int subreg_realpart_p PARAMS ((rtx));
extern void reverse_comparison PARAMS ((rtx));
extern void set_new_first_and_last_insn PARAMS ((rtx, rtx));
extern void set_new_first_and_last_label_num PARAMS ((int, int));
extern void set_new_last_label_num PARAMS ((int));
extern void unshare_all_rtl_again PARAMS ((rtx));
extern void set_first_insn PARAMS ((rtx));
extern void set_last_insn PARAMS ((rtx));
extern void link_cc0_insns PARAMS ((rtx));
extern void add_insn PARAMS ((rtx));
extern void add_insn_before PARAMS ((rtx, rtx));
extern void add_insn_after PARAMS ((rtx, rtx));
extern void remove_insn PARAMS ((rtx));
extern void reorder_insns_with_line_notes PARAMS ((rtx, rtx, rtx));
extern void emit_insn_after_with_line_notes PARAMS ((rtx, rtx, rtx));
extern enum rtx_code classify_insn PARAMS ((rtx));
extern rtx emit PARAMS ((rtx));



int force_line_numbers PARAMS ((void));
void restore_line_number_status PARAMS ((int old_value));
extern void renumber_insns PARAMS ((FILE *));
extern void remove_unnecessary_notes PARAMS ((void));
extern rtx delete_insn PARAMS ((rtx));
extern void delete_insn_chain PARAMS ((rtx, rtx));
extern rtx delete_insn_and_edges PARAMS ((rtx));
extern void delete_insn_chain_and_edges PARAMS ((rtx, rtx));


extern int combine_instructions PARAMS ((rtx, unsigned int));
extern unsigned int extended_count PARAMS ((rtx, enum machine_mode, int));
extern rtx remove_death PARAMS ((unsigned int, rtx));
# 2033 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
extern void fix_sched_param PARAMS ((const char *, const char *));


extern const char *print_rtx_head;
extern void debug_rtx PARAMS ((rtx));
extern void debug_rtx_list PARAMS ((rtx, int));
extern void debug_rtx_range PARAMS ((rtx, rtx));
extern rtx debug_rtx_find PARAMS ((rtx, int));
# 2050 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
extern void init_loop PARAMS ((void));
extern rtx libcall_other_reg PARAMS ((rtx, rtx));



extern void record_excess_regs PARAMS ((rtx, rtx, rtx *));


extern void reposition_prologue_and_epilogue_notes PARAMS ((rtx));
extern void thread_prologue_and_epilogue_insns PARAMS ((rtx));
extern int prologue_epilogue_contains PARAMS ((rtx));
extern int sibcall_epilogue_contains PARAMS ((rtx));
extern void preserve_rtl_expr_result PARAMS ((rtx));
extern void mark_temp_addr_taken PARAMS ((rtx));
extern void update_temp_slot_address PARAMS ((rtx, rtx));
extern void purge_addressof PARAMS ((rtx));
extern void purge_hard_subreg_sets PARAMS ((rtx));


extern void set_file_and_line_for_stmt PARAMS ((const char *, int));
extern void expand_null_return PARAMS ((void));
extern void emit_jump PARAMS ((rtx));
extern int preserve_subexpressions_p PARAMS ((void));


extern rtx move_by_pieces PARAMS ((rtx, rtx,
       unsigned int,
       unsigned int, int));


extern void recompute_reg_usage PARAMS ((rtx, int));
extern int initialize_uninitialized_subregs PARAMS ((void));
extern void delete_dead_jumptables PARAMS ((void));






extern void init_expmed PARAMS ((void));
extern void expand_inc PARAMS ((rtx, rtx));
extern void expand_dec PARAMS ((rtx, rtx));
extern rtx expand_mult_highpart PARAMS ((enum machine_mode, rtx,
      unsigned int, rtx,
      int, int));







extern void mark_elimination PARAMS ((int, int));
# 2111 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
extern void build_insn_chain PARAMS ((rtx));


extern int reg_classes_intersect_p PARAMS ((enum reg_class, enum reg_class));
extern int reg_class_subset_p PARAMS ((enum reg_class, enum reg_class));
extern void globalize_reg PARAMS ((int));
extern void init_regs PARAMS ((void));
extern void init_fake_stack_mems PARAMS ((void));
extern void init_reg_sets PARAMS ((void));
extern void regset_release_memory PARAMS ((void));
extern void regclass_init PARAMS ((void));
extern void regclass PARAMS ((rtx, int, FILE *));
extern void reg_scan PARAMS ((rtx, unsigned int, int));
extern void reg_scan_update PARAMS ((rtx, rtx, unsigned int));
extern void fix_register PARAMS ((const char *, int, int));





extern bool invalid_mode_change_p PARAMS ((unsigned int,
       enum reg_class,
       enum machine_mode));

extern int delete_null_pointer_checks PARAMS ((rtx));





extern void combine_stack_adjustments PARAMS ((void));
# 2152 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/rtl.h"
extern int local_alloc PARAMS ((void));
extern int function_invariant_p PARAMS ((rtx));


extern void init_branch_prob PARAMS ((const char *));
extern void branch_prob PARAMS ((void));
extern void end_branch_prob PARAMS ((void));
extern void output_func_start_profiler PARAMS ((void));







extern int add_double PARAMS ((unsigned int, int,
      unsigned int, int,
      unsigned int *,
      int *));
extern int neg_double PARAMS ((unsigned int, int,
      unsigned int *,
      int *));
extern int mul_double PARAMS ((unsigned int,
      int,
      unsigned int, int,
      unsigned int *,
      int *));
extern void lshift_double PARAMS ((unsigned int, int,
      int, unsigned int,
      unsigned int *,
      int *, int));
extern void rshift_double PARAMS ((unsigned int, int,
      int, unsigned int,
      unsigned int *,
      int *, int));
extern void lrotate_double PARAMS ((unsigned int, int,
      int, unsigned int,
      unsigned int *,
      int *));
extern void rrotate_double PARAMS ((unsigned int, int,
      int, unsigned int,
      unsigned int *,
      int *));


enum libcall_type
{
  LCT_NORMAL = 0,
  LCT_CONST = 1,
  LCT_PURE = 2,
  LCT_CONST_MAKE_BLOCK = 3,
  LCT_PURE_MAKE_BLOCK = 4,
  LCT_NORETURN = 5,
  LCT_THROW = 6,
  LCT_ALWAYS_RETURN = 7,
  LCT_RETURNS_TWICE = 8
};

extern void emit_library_call PARAMS ((rtx, enum libcall_type,
       enum machine_mode, int,
       ...));
extern rtx emit_library_call_value PARAMS ((rtx, rtx, enum libcall_type,
       enum machine_mode, int,
       ...));


extern int set_dominates_use PARAMS ((int, int, int, rtx, rtx));


extern int in_data_section PARAMS ((void));
extern void init_varasm_once PARAMS ((void));


extern void init_rtl PARAMS ((void));
extern void traverse_md_constants PARAMS ((int (*) (void **, void *),
       void *));
struct md_constant { char *name, *value; };






extern const char *read_rtx_filename;
extern int read_rtx_lineno;







extern void fancy_abort PARAMS ((const char *, int, const char *))
    ATTRIBUTE_NORETURN;



extern void clear_reg_alias_info PARAMS ((rtx));
extern rtx canon_rtx PARAMS ((rtx));
extern int true_dependence PARAMS ((rtx, enum machine_mode, rtx,
      int (*)(rtx, int)));
extern rtx get_addr PARAMS ((rtx));
extern int canon_true_dependence PARAMS ((rtx, enum machine_mode, rtx,
                                                rtx, int (*)(rtx, int)));
extern int read_dependence PARAMS ((rtx, rtx));
extern int anti_dependence PARAMS ((rtx, rtx));
extern int output_dependence PARAMS ((rtx, rtx));
extern void mark_constant_function PARAMS ((void));
extern void init_alias_once PARAMS ((void));
extern void init_alias_analysis PARAMS ((void));
extern void end_alias_analysis PARAMS ((void));
extern rtx addr_side_effect_eval PARAMS ((rtx, int, int));


typedef enum {
  sibcall_use_normal = 1,
  sibcall_use_tail_recursion,
  sibcall_use_sibcall
} sibcall_use_t;

extern void optimize_sibling_and_tail_recursive_calls PARAMS ((void));
extern void replace_call_placeholder PARAMS ((rtx, sibcall_use_t));






extern GTY(()) rtx stack_limit_rtx;


extern void regrename_optimize PARAMS ((void));
extern void copyprop_hardreg_forward PARAMS ((void));


extern void if_convert PARAMS ((int));


extern void invert_br_probabilities PARAMS ((rtx));
extern bool expensive_function_p PARAMS ((int));

extern void tracer PARAMS ((void));
# 31 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/read-rtl.c" 2



static htab_t md_constants;

static void fatal_with_file_and_line PARAMS ((FILE *, const char *, ...))
  ATTRIBUTE_PRINTF_2 ATTRIBUTE_NORETURN;
static void fatal_expected_char PARAMS ((FILE *, int, int)) ATTRIBUTE_NORETURN;
static void read_name PARAMS ((char *, FILE *));
static char *read_string PARAMS ((struct obstack *, FILE *, int));
static char *read_quoted_string PARAMS ((struct obstack *, FILE *));
static char *read_braced_string PARAMS ((struct obstack *, FILE *));
static void read_escape PARAMS ((struct obstack *, FILE *));
static hashval_t def_hash PARAMS ((const void *));
static int def_name_eq_p PARAMS ((const void *, const void *));
static void read_constants PARAMS ((FILE *infile, char *tmp_char));
static void validate_const_int PARAMS ((FILE *, const char *));




int read_rtx_lineno = 1;


const char *read_rtx_filename = "<unknown>";

static void
fatal_with_file_and_line VPARAMS ((FILE *infile, const char *msg, ...))
{
  char context[64];
  size_t i;
  int c;






  va_list ap;

  VA_START (ap, msg);


  fprintf (stderr, "%s:%d: ", read_rtx_filename, read_rtx_lineno);
  vfprintf (stderr, msg, ap);
  putc ('\n', stderr);


  for (i = 0; i < sizeof (context)-1; ++i)
    {
      c = getc (infile);
      if (c == EOF)
 break;
      if (c == '\r' || c == '\n')
 break;
      context[i] = c;
    }
  context[i] = '\0';

  fprintf (stderr, "%s:%d: following context is `%s'\n",
    read_rtx_filename, read_rtx_lineno, context);




  va_end (ap);

  exit (1);
}




static void
fatal_expected_char (infile, expected_c, actual_c)
     FILE *infile;
     int expected_c, actual_c;
{
  fatal_with_file_and_line (infile, "expected character `%c', found `%c'",
       expected_c, actual_c);
}






int
read_skip_spaces (infile)
     FILE *infile;
{
  int c;

  while (1)
    {
      c = getc (infile);
      switch (c)
 {
 case '\n':
   read_rtx_lineno++;
   break;

 case ' ': case '\t': case '\f': case '\r':
   break;

 case ';':
   do
     c = getc (infile);
   while (c != '\n' && c != EOF);
   read_rtx_lineno++;
   break;

 case '/':
   {
     int prevc;
     c = getc (infile);
     if (c != '*')
       fatal_expected_char (infile, '*', c);

     prevc = 0;
     while ((c = getc (infile)) && c != EOF)
       {
  if (c == '\n')
     read_rtx_lineno++;
         else if (prevc == '*' && c == '/')
    break;
         prevc = c;
       }
   }
   break;

 default:
   return c;
 }
    }
}




static void
read_name (str, infile)
     char *str;
     FILE *infile;
{
  char *p;
  int c;

  c = read_skip_spaces (infile);

  p = str;
  while (1)
    {
      if (c == ' ' || c == '\n' || c == '\t' || c == '\f' || c == '\r')
 break;
      if (c == ':' || c == ')' || c == ']' || c == '"' || c == '/'
   || c == '(' || c == '[')
 {
   ungetc (c, infile);
   break;
 }
      *p++ = c;
      c = getc (infile);
    }
  if (p == str)
    fatal_with_file_and_line (infile, "missing name or number");
  if (c == '\n')
    read_rtx_lineno++;

  *p = 0;
# 222 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/read-rtl.c"
}



static void
read_escape (ob, infile)
     struct obstack *ob;
     FILE *infile;
{
  int c = getc (infile);

  switch (c)
    {

    case '\n':
      read_rtx_lineno++;
      return;


    case '\\':
    case '"':
    case '\'':
      break;
# 255 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/read-rtl.c"
    case 'a': case 'b': case 'f': case 'n': case 'r': case 't': case 'v':
    case '0': case '1': case '2': case '3': case '4': case '5': case '6':
    case '7': case 'x':
      obstack_1grow (ob, '\\');
      break;



    case ';':
      obstack_grow (ob, "\\n\\t", 4);
      return;


    default:
      fprintf (stderr, "%s:%d: warning: unrecognized escape \\%c\n",
        read_rtx_filename, read_rtx_lineno, c);
      obstack_1grow (ob, '\\');
      break;
    }

  obstack_1grow (ob, c);
}




static char *
read_quoted_string (ob, infile)
     struct obstack *ob;
     FILE *infile;
{
  int c;

  while (1)
    {
      c = getc (infile);
      if (c == '\n')
 read_rtx_lineno++;
      else if (c == '\\')
 {
   read_escape (ob, infile);
   continue;
 }
      else if (c == '"')
 break;

      obstack_1grow (ob, c);
    }

  obstack_1grow (ob, 0);
  return obstack_finish (ob);
}




static char *
read_braced_string (ob, infile)
     struct obstack *ob;
     FILE *infile;
{
  int c;
  int brace_depth = 1;

  obstack_1grow (ob, '{');
  while (brace_depth)
    {
      c = getc (infile);
      if (c == '\n')
 read_rtx_lineno++;
      else if (c == '{')
 brace_depth++;
      else if (c == '}')
 brace_depth--;
      else if (c == '\\')
 {
   read_escape (ob, infile);
   continue;
 }

      obstack_1grow (ob, c);
    }

  obstack_1grow (ob, 0);
  return obstack_finish (ob);
}





static char *
read_string (ob, infile, star_if_braced)
     struct obstack *ob;
     FILE *infile;
     int star_if_braced;
{
  char *stringbuf;
  int saw_paren = 0;
  int c;

  c = read_skip_spaces (infile);
  if (c == '(')
    {
      saw_paren = 1;
      c = read_skip_spaces (infile);
    }

  if (c == '"')
    stringbuf = read_quoted_string (ob, infile);
  else if (c == '{')
    {
      if (star_if_braced)
 obstack_1grow (ob, '*');
      stringbuf = read_braced_string (ob, infile);
    }
  else
    fatal_with_file_and_line (infile, "expected `\"' or `{', found `%c'", c);

  if (saw_paren)
    {
      c = read_skip_spaces (infile);
      if (c != ')')
 fatal_expected_char (infile, ')', c);
    }

  return stringbuf;
}
# 422 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/read-rtl.c"
static hashval_t
def_hash (def)
     const void *def;
{
  unsigned result, i;
  const char *string = ((const struct md_constant *) def)->name;

  for (result = i = 0;*string++ != '\0'; i++)
    result += ((unsigned char) *string << (i % CHAR_BIT));
  return result;
}


static int
def_name_eq_p (def1, def2)
     const void *def1, *def2;
{
  return ! strcmp (((const struct md_constant *) def1)->name,
     ((const struct md_constant *) def2)->name);
}
# 506 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/read-rtl.c"
void
traverse_md_constants (callback, info)
     htab_trav callback;
     void *info;
{




}

static void
validate_const_int (infile, string)
     FILE *infile;
     const char *string;
{
  const char *cp;
  int valid = 1;

  cp = string;
  while (*cp && ISSPACE (*cp))
    cp++;
  if (*cp == '-' || *cp == '+')
    cp++;
  if (*cp == 0)
    valid = 0;
  for (; *cp; cp++)
    if (! ISDIGIT (*cp))
      valid = 0;
  if (!valid)
    fatal_with_file_and_line (infile, "invalid decimal constant \"%s\"\n", string);
}






rtx
read_rtx (infile)
     FILE *infile;
{
  int i, j;
  enum rtx_code tmp_code;
  const char *format_ptr;



  char tmp_char[256];
  rtx return_rtx;
  int c;
  int tmp_int;
  int tmp_wide;


  static struct obstack rtl_obstack;
  static int initialized;


  struct rtx_list
    {
      struct rtx_list *next;
      rtx value;
    };

  if (!initialized) {
    obstack_init (&rtl_obstack);
    initialized = 1;
  }

again:
  c = read_skip_spaces (infile);
  if (c != '(')
    fatal_expected_char (infile, '(', c);

  read_name (tmp_char, infile);

  tmp_code = UNKNOWN;
# 592 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/read-rtl.c"
  for (i = 0; i < ((int) LAST_AND_UNUSED_RTX_CODE); i++)
    if (! strcmp (tmp_char, (rtx_name[(int) (i)])))
      {
 tmp_code = (enum rtx_code) i;
 break;
      }

  if (tmp_code == UNKNOWN)
    fatal_with_file_and_line (infile, "unknown rtx code `%s'", tmp_char);


  if (tmp_code == NIL)
    {

      while ((c = getc (infile)) && c != ')')
 ;

      return 0;
    }


  return_rtx = rtx_alloc (tmp_code);
  format_ptr = (rtx_format[(int) (((enum rtx_code) (return_rtx)->code))]);




  i = read_skip_spaces (infile);
  if (i == ':')
    {
      read_name (tmp_char, infile);
      for (j = 0; j < (int) MAX_MACHINE_MODE; j++)
 if (! strcmp ((mode_name[(int) (j)]), tmp_char))
   break;

      if (j == MAX_MACHINE_MODE)
 fatal_with_file_and_line (infile, "unknown mode `%s'", tmp_char);

      ((return_rtx)->mode = (unsigned int) ((enum machine_mode) j));
    }
  else
    ungetc (i, infile);

  for (i = 0; i < (rtx_length[(int) (((enum rtx_code) (return_rtx)->code))]); i++)
    switch (*format_ptr++)
      {


      case '0':
 break;

      case 'e':
      case 'u':
 (((return_rtx)->fld[i]).rtx) = read_rtx (infile);
 break;

      case 'V':


 c = read_skip_spaces (infile);
 ungetc (c, infile);
 if (c == ')')
   {
     (((return_rtx)->fld[i]).rtvec) = 0;
     break;
   }


      case 'E':
 {

   struct obstack vector_stack;
   int list_counter = 0;
   rtvec return_vec = (rtvec) 0;

   c = read_skip_spaces (infile);
   if (c != '[')
     fatal_expected_char (infile, '[', c);


   obstack_init (&vector_stack);
   while ((c = read_skip_spaces (infile)) && c != ']')
     {
       ungetc (c, infile);
       list_counter++;
       obstack_ptr_grow (&vector_stack, (PTR) read_rtx (infile));
     }
   if (list_counter > 0)
     {
       return_vec = rtvec_alloc (list_counter);
       memcpy (&return_vec->elem[0], obstack_finish (&vector_stack),
        list_counter * sizeof (rtx));
     }
   (((return_rtx)->fld[i]).rtvec) = return_vec;
   obstack_free (&vector_stack, 0);

 }
 break;

      case 'S':


 c = read_skip_spaces (infile);
 ungetc (c, infile);
 if (c == ')')
   {
     (((return_rtx)->fld[i]).rtstr) = 0;
     break;
   }

      case 'T':
      case 's':
 {
   char *stringbuf;





   int star_if_braced = (format_ptr[-1] == 'T');

   stringbuf = read_string (&rtl_obstack, infile, star_if_braced);





   if (*stringbuf == '\0'
       && i == 0
       && (((enum rtx_code) (return_rtx)->code) == DEFINE_INSN
    || ((enum rtx_code) (return_rtx)->code) == DEFINE_INSN_AND_SPLIT))
     {
       char line_name[20];
       const char *fn = (read_rtx_filename ? read_rtx_filename : "rtx");
       const char *slash;
       for (slash = fn; *slash; slash ++)
  if (*slash == '/' || *slash == '\\' || *slash == ':')
    fn = slash + 1;
       obstack_1grow (&rtl_obstack, '*');
       obstack_grow (&rtl_obstack, fn, strlen (fn));
       sprintf (line_name, ":%d", read_rtx_lineno);
       obstack_grow (&rtl_obstack, line_name, strlen (line_name)+1);
       stringbuf = (char *) obstack_finish (&rtl_obstack);
     }

   if (star_if_braced)
     (((return_rtx)->fld[i]).rtstr) = stringbuf;
   else
     (((return_rtx)->fld[i]).rtstr) = stringbuf;
 }
 break;

      case 'w':
 read_name (tmp_char, infile);
 validate_const_int (infile, tmp_char);

 tmp_wide = atoi (tmp_char);
# 762 "/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/read-rtl.c"
 (((return_rtx)->fld[i]).rtwint) = tmp_wide;
 break;

      case 'i':
      case 'n':
 read_name (tmp_char, infile);
 validate_const_int (infile, tmp_char);
 tmp_int = atoi (tmp_char);
 (((return_rtx)->fld[i]).rtint) = tmp_int;
 break;

      default:
 fprintf (stderr,
   "switch format wrong in rtl.read_rtx(). format was: %c.\n",
   format_ptr[-1]);
 fprintf (stderr, "\tfile position: %ld\n", ftell (infile));
 fancy_abort ("/usa/handong/simplnano/cmplr/targia32_sl1/gccfe/gnu/../../../kgccfe/gnu/read-rtl.c", 778, "?");
      }

  c = read_skip_spaces (infile);
  if (c != ')')
    fatal_expected_char (infile, ')', c);

  return return_rtx;
}
