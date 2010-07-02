#include "targ_proc.h"

static const char* const processor_names[] = {
  "opteron",
  "barcelona",
  "orochi",
  "em64t",
  "core",
  "wolfdale",
  "UNDEFINED"
};

PROCESSOR PROCESSOR_Value = PROCESSOR_UNDEFINED;

const char* PROCESSOR_Name(PROCESSOR proc)
{
  return processor_names[(int)proc];
}
