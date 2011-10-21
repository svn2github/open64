#include <stdio.h>
#include <string.h>
#include "832-b.h"
static char acpi_os_name[100];

int __attribute__ ((__section__ (".init.text")))
  __attribute__ ((no_instrument_function)) acpi_os_name_setup (char *str)
{
  char *p = acpi_os_name;
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

const char __setup_str_acpi_os_name_setup[]
  __attribute__ ((__section__ (".init.rodata")))
  __attribute__ ((aligned (1))) = "acpi_os_name=";
struct obs_kernel_param __setup_acpi_os_name_setup __attribute__ ((__used__))
  __attribute__ ((__section__ (".init.setup")))
  __attribute__ ((aligned ((sizeof (long))))) =
{
__setup_str_acpi_os_name_setup, acpi_os_name_setup, 0};
int
main ()
{
  struct obs_kernel_param *p;
  for (p = &__setup_acpi_parse_apic_instance_setup;
       p <= &__setup_acpi_os_name_setup; p++)
    {
      printf ("%d\n", p);
      printf ("%s\n", p->str);
    }
  return 0;
}
