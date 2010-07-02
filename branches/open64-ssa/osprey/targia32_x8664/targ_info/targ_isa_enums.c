#include "targ_isa_enums.h"

const ISA_ENUM_CLASS_INFO ISA_ENUM_CLASS_info[] = {
	{ "EC_UNDEFINED",	ECV_UNDEFINED,	ECV_UNDEFINED },
	{ "EC_pfhint",	ECV_pfhint_L2_store,	ECV_pfhint_L1_L2_load },
};

const ISA_ENUM_CLASS_VALUE_INFO ISA_ENUM_CLASS_VALUE_info[] = {
	{ "UNDEFINED",	-1 },
	{ "L2_store",	1 },
	{ "L2_load",	0 },
	{ "L1_store",	3 },
	{ "L1_load",	2 },
	{ "L1_L2_load",	4 },
};

