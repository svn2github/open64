/* Generated automatically by the program `genattr'
from the machine description file `md'.  */

#define HAVE_ATTR_alternative
#define get_attr_alternative(insn) which_alternative
#define HAVE_ATTR_type
enum attr_type {TYPE_UNKNOWN, TYPE_A, TYPE_I, TYPE_M, TYPE_F, TYPE_B, TYPE_L, TYPE_S};
extern enum attr_type get_attr_type PARAMS ((rtx));

#define HAVE_ATTR_predicable
enum attr_predicable {PREDICABLE_NO, PREDICABLE_YES};
extern enum attr_predicable get_attr_predicable PARAMS ((rtx));

#define INSN_SCHEDULING

extern int result_ready_cost PARAMS ((rtx));
extern int function_units_used PARAMS ((rtx));

extern struct function_unit_desc
{
  const char *name;
  int bitmask;
  int multiplicity;
  int simultaneity;
  int default_cost;
  int max_issue_delay;
  int (*ready_cost_function) PARAMS ((rtx));
  int (*conflict_cost_function) PARAMS ((rtx, rtx));
  int max_blockage;
  unsigned int (*blockage_range_function) PARAMS ((rtx));
  int (*blockage_function) PARAMS ((rtx, rtx));
} function_units[];

#define FUNCTION_UNITS_SIZE 6
#define MIN_MULTIPLICITY 1
#define MAX_MULTIPLICITY 3
#define MIN_SIMULTANEITY 1
#define MAX_SIMULTANEITY 1
#define MIN_READY_COST 1
#define MAX_READY_COST 1
#define MIN_ISSUE_DELAY 1
#define MAX_ISSUE_DELAY 1
#define MIN_BLOCKAGE 1
#define MAX_BLOCKAGE 1
#define BLOCKAGE_BITS 1
#define INSN_QUEUE_SIZE 2

#define ATTR_FLAG_forward	0x1
#define ATTR_FLAG_backward	0x2
#define ATTR_FLAG_likely	0x4
#define ATTR_FLAG_very_likely	0x8
#define ATTR_FLAG_unlikely	0x10
#define ATTR_FLAG_very_unlikely	0x20
