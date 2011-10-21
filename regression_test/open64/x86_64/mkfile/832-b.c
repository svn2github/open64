#include "832-b.h"

unsigned char _ctype[100];

static int __attribute__ ((__section__ (".init.text")))
  __attribute__ ((no_instrument_function))
acpi_parse_apic_instance_setup (char *str)
{
  char *p = acpi_parse_apic_instance;
  int count = 100 - 1;

  if (!str || !*str)
    return 0;

  for (; count-- && str && *str; str++)
    {
      if ((((_ctype[(int) (unsigned char) (*str)]) & (0x01 | 0x02 | 0x04)) !=
           0) || *str == ' ' || *str == ':')
        *p++ = *str;
      else if (*str == '\'' || *str == '"')
        continue;
      else
        break;
    }
  *p = 0;

  return 1;

}
const char __setup_str_acpi_parse_apic_instance_setup[]
  __attribute__ ((__section__ (".init.rodata")))
  __attribute__ ((aligned (1))) = "acpi_parse_apic_instance=";

struct obs_kernel_param __setup_acpi_parse_apic_instance_setup
  __attribute__ ((__used__)) __attribute__ ((__section__ (".init.setup")))
  __attribute__ ((aligned ((sizeof (long))))) =
{
__setup_str_acpi_parse_apic_instance_setup, acpi_parse_apic_instance_setup,
    0};
