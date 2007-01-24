#include "targ_proc.h"

static const char* const processor_names[] = {
  "itanium",
  "UNDEFINED"
};

PROCESSOR PROCESSOR_Value = PROCESSOR_UNDEFINED;

const char* PROCESSOR_Name(PROCESSOR proc)
{
  return processor_names[(int)proc];
}
