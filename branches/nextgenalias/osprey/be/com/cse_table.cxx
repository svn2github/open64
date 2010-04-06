#include "cse_table.h"

CallSideEffectInfoBase RawLibcallSideEffectTable[] =
  {
    {
      "abort",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      0,
      { 0, }
    },
    {
      "calloc",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |
        CFAT_exposes_argument_address_to_globals)
      | CFAT_allocates_heap_memory | CFAT_returns_heap_memory ,
      2,
      { CPA_no_ptr_deref_and_expose, CPA_no_ptr_deref_and_expose },
    },
    {
      "ctime",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      0,
      { 0, }
    },
    {
      "exit",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals),
      1,
      { CPA_no_ptr_deref_and_expose, }
    },
    {
      "fclose",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      1,
      { CPA_one_level_read |CPA_two_level_read |CPA_one_level_write |CPA_two_level_write}
    },
    {
      "feof",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      1,
      { CPA_one_level_read |CPA_two_level_read |CPA_one_level_write |CPA_two_level_write }
    },
    {
      "fflush",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      1,
      { CPA_one_level_read |CPA_two_level_read |CPA_one_level_write |CPA_two_level_write}
    },
    {
      "fgets",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref  |CFAT_exposes_argument_address_to_return,
      3,
      { 
        CPA_one_level_write | CPA_one_level_read | CPA_exposed_to_return,
        0,
        CPA_one_level_read |CPA_two_level_read |CPA_one_level_write |CPA_two_level_write
      }
    },
    {
      "fopen",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      0,
      { 0, }
    },
    {
      "fprintf",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read /* default for var args */
      | CFAT_argument_one_level_deref |CFAT_is_printf_like | CFAT_has_format_string,
      2,
      { CPA_one_level_read |CPA_two_level_read |CPA_one_level_write|CPA_two_level_write,
        CPA_one_level_read |CPA_is_format_string, }
    },
    {
      "fputs",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      2,
      { 
        CPA_one_level_read ,
        CPA_one_level_read |CPA_one_level_write |CPA_two_level_read | CPA_two_level_write,
      }
    },
    {
      "fread",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      4,
      { CPA_one_level_write, 0, 0, 
        CPA_one_level_read |CPA_two_level_read |CPA_one_level_write |CPA_two_level_write}
    },
    {
      "free",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |
        CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref | CFAT_deallocates_heap_memory,
      1,
      { CPA_one_level_write }
    },
    {
      "fseek",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      1,
      { CPA_one_level_read |CPA_two_level_read |CPA_one_level_write |CPA_two_level_write,}
    },
    {
      "ftell",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return 
        |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      1,
      { CPA_one_level_read |CPA_two_level_read |CPA_one_level_write 
        |CPA_two_level_write, }
    },
    {
      "fwrite",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      4,
      { CPA_one_level_read, 0, 0, 
        CPA_one_level_read |CPA_two_level_read |CPA_one_level_write |CPA_two_level_write}
    },
    {
      "getenv",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      0,
      { 0, }
    },
    {
      "log",
      CFAT_default_attr & (~CFAT_pure_call_attr_mask),
      0,
      { 0, }
    },
    {
      "malloc",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |
        CFAT_exposes_argument_address_to_globals)
      | CFAT_allocates_heap_memory | CFAT_returns_heap_memory ,
      1,
      { CPA_no_ptr_deref_and_expose },
    },
    {
      "memchr",
      CFAT_default_attr & ~CFAT_pure_call_attr_mask | CFAT_is_libc_entry 
      |CFAT_argument_indirectly_read 
      |CFAT_argument_one_level_deref |CFAT_exposes_argument_address_to_return,
      3,
      {
        CPA_one_level_read |CPA_exposed_to_return, 
        CPA_no_ptr_deref_and_expose,
        CPA_no_ptr_deref_and_expose
      }
    },
    {
      "memcmp",
      CFAT_default_attr & ~CFAT_pure_call_attr_mask | CFAT_is_libc_entry 
      |CFAT_argument_indirectly_read |CFAT_argument_one_level_deref,
      3,
      {
        CPA_one_level_read , 
        CPA_one_level_read , 
        CPA_no_ptr_deref_and_expose
      }
    },
    {
      "memcpy",
      CFAT_default_attr & ~CFAT_pure_call_attr_mask | CFAT_is_libc_entry 
      |CFAT_argument_indirectly_read | CFAT_argument_indirectly_write 
      |CFAT_argument_one_level_deref |CFAT_exposes_argument_address_to_return,
      3,
      {
        CPA_one_level_write | CPA_exposed_to_return,
        CPA_one_level_read , 
        CPA_no_ptr_deref_and_expose
      }
    },
    {
      "memmove",
      CFAT_default_attr & ~CFAT_pure_call_attr_mask | CFAT_is_libc_entry 
      |CFAT_argument_indirectly_read | CFAT_argument_indirectly_write 
      |CFAT_argument_one_level_deref |CFAT_exposes_argument_address_to_return,
      3,
      {
        CPA_one_level_write | CPA_exposed_to_return,
        CPA_one_level_read , 
        CPA_no_ptr_deref_and_expose
      }
    },
    {
      "memset",
      CFAT_default_attr & ~CFAT_pure_call_attr_mask | CFAT_is_libc_entry 
      | CFAT_argument_indirectly_write 
      | CFAT_exposes_argument_address_to_return 
      | CFAT_argument_one_level_deref,
      2,
      {
        CPA_one_level_write | CPA_exposed_to_return,
        CPA_no_ptr_deref_and_expose
      }
    },
    {
      "perror",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      0,
      { 0, }
    },
    {
      "printf",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read 
      | CFAT_argument_one_level_deref | CFAT_is_printf_like | CFAT_has_format_string,
      1,
      { CPA_one_level_read | CPA_is_format_string }
    },
    {
      "puts",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_one_level_deref,
      1,
      { 
        CPA_one_level_read ,
      }
    },
    {
      "realloc",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |
        CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write 
      | CFAT_argument_one_level_deref |CFAT_allocates_heap_memory | 
      CFAT_returns_heap_memory,
      2,
      { CPA_one_level_read|CPA_one_level_write, CPA_no_ptr_deref_and_expose },
    },
    {
      "remove",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      0,
      { 0, }
    },
    {
      "rewind",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      0,
      { 0, }
    },
    {
      "sprintf",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref |CFAT_is_printf_like |CFAT_has_format_string,
      2,
      { CPA_one_level_write, CPA_one_level_read |CPA_is_format_string }
    },
    {
      "strcat",
      CFAT_default_attr & ~CFAT_pure_call_attr_mask | CFAT_is_libc_entry 
      |CFAT_argument_indirectly_read | CFAT_argument_indirectly_write 
      |CFAT_argument_one_level_deref |CFAT_exposes_argument_address_to_return,
      2,
      {
        CPA_one_level_read | CPA_one_level_write | CPA_exposed_to_return,
        CPA_one_level_read 
      }
    },
    {
      "strchr",
      CFAT_default_attr & ~CFAT_pure_call_attr_mask | CFAT_is_libc_entry 
      |CFAT_argument_indirectly_read |CFAT_argument_one_level_deref |
      CFAT_exposes_argument_address_to_return,
      2,
      {
        CPA_one_level_read | CPA_exposed_to_return,
        CPA_no_ptr_deref_and_expose
      }
    },
    {
      "strcspn",
      CFAT_default_attr & ~CFAT_pure_call_attr_mask | CFAT_is_libc_entry 
      |CFAT_argument_indirectly_read |CFAT_argument_one_level_deref,
      2,
      {
        CPA_one_level_read , 
        CPA_one_level_read 
      }
    },	
    {
      "strncat",
      CFAT_default_attr & ~CFAT_pure_call_attr_mask | CFAT_is_libc_entry 
      |CFAT_argument_indirectly_read | CFAT_argument_indirectly_write 
      |CFAT_argument_one_level_deref |CFAT_exposes_argument_address_to_return,
      3,
      {
        CPA_one_level_read | CPA_one_level_write | CPA_exposed_to_return,
        CPA_one_level_read,
        CPA_no_ptr_deref_and_expose
      }
    },
    {
      "strncmp",
      CFAT_default_attr & ~CFAT_pure_call_attr_mask | CFAT_is_libc_entry 
      |CFAT_argument_indirectly_read |CFAT_argument_one_level_deref,
      3,
      {
        CPA_one_level_read ,
        CPA_one_level_read ,
        CPA_no_ptr_deref_and_expose
      }
    },
    {
      "strncpy",
      CFAT_default_attr & ~CFAT_pure_call_attr_mask | CFAT_is_libc_entry 
      |CFAT_argument_indirectly_read | CFAT_argument_indirectly_write 
      |CFAT_argument_one_level_deref |CFAT_exposes_argument_address_to_return,
      3,
      {
        CPA_one_level_write |CPA_exposed_to_return,
        CPA_one_level_read,
        CPA_no_ptr_deref_and_expose
      }
    },
    {
      "strpbrk",
      CFAT_default_attr & ~CFAT_pure_call_attr_mask | CFAT_is_libc_entry 
      |CFAT_argument_indirectly_read |CFAT_argument_one_level_deref |
      CFAT_exposes_argument_address_to_return,
      2,
      {
        CPA_one_level_read | CPA_exposed_to_return,
        CPA_one_level_read 
      }
    },
    {
      "strspn",
      CFAT_default_attr & ~CFAT_pure_call_attr_mask | CFAT_is_libc_entry 
      |CFAT_argument_indirectly_read |CFAT_argument_one_level_deref,
      2,
      {
        CPA_one_level_read ,
        CPA_one_level_read 
      }
    },
    {
      "strstr",
      CFAT_default_attr & ~CFAT_pure_call_attr_mask | CFAT_is_libc_entry 
      |CFAT_argument_indirectly_read |CFAT_argument_one_level_deref |
      CFAT_exposes_argument_address_to_return,
      2,
      {
        CPA_one_level_read | CPA_exposed_to_return,
        CPA_one_level_read 
      }
    },
    {
      "strtok",
      CFAT_default_attr & ~CFAT_pure_call_attr_mask | CFAT_is_libc_entry 
      |CFAT_argument_indirectly_read | CFAT_argument_indirectly_write 
      |CFAT_argument_one_level_deref | CFAT_returns_exposed_memory |
      CFAT_exposes_argument_address_to_return | CFAT_exposes_argument_address_to_globals,
      2,
      {
        CPA_one_level_read | CPA_one_level_write |CPA_exposed_to_return |CPA_exposed_to_globals,
        CPA_one_level_read
      }
    },
    {
      "time",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      0,
      { 0, }
    },
    {
      "vfprintf",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      2,
      { CPA_one_level_read |CPA_two_level_read |CPA_one_level_write |CPA_two_level_write,
        CPA_one_level_read }
    },
    {
      "_F90_ALLOCATE",
      CFAT_argument_indirectly_read | CFAT_argument_indirectly_write |
      CFAT_allocates_heap_memory |CFAT_is_lib_f90,
      3,
      { CPA_one_level_read |CPA_one_level_write |CPA_two_level_write | 
        CPA_is_pointer_to_heap_addr_loc, CPA_one_level_read | 
        CPA_one_level_write, 
        CPA_no_ptr_deref_and_expose
      }
    },
    {
      "_IO_getc",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      1,
      { CPA_one_level_read |CPA_two_level_read |CPA_one_level_write |CPA_two_level_write, }
    },
    {
      "_IO_putc",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      2,
      { 
        0,
        CPA_one_level_read |CPA_two_level_read |CPA_one_level_write |CPA_two_level_write,
      }
    },
    {
      "__rawmemchr",
      CFAT_default_attr & ~CFAT_pure_call_attr_mask | CFAT_is_libc_entry 
      |CFAT_argument_indirectly_read 
      |CFAT_argument_one_level_deref |CFAT_exposes_argument_address_to_return,
      2,
      {
        CPA_one_level_read |CPA_exposed_to_return, 
        CPA_no_ptr_deref_and_expose
      }
    },
    {
      "__strtod_internal",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      2,
      { CPA_one_level_read, CPA_one_level_write}
    },
    {
      "__strtol_internal",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      3,
      { CPA_one_level_read, CPA_one_level_write,CPA_no_ptr_deref_and_expose }
    },
    {
      "__strtoll_internal",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      3,
      { CPA_one_level_read, CPA_one_level_write,CPA_no_ptr_deref_and_expose }
    },    {
      "__strtoul_internal",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      3,
      { CPA_one_level_read, CPA_one_level_write,CPA_no_ptr_deref_and_expose }
    },
    {
      "__strtoull_internal",
      CFAT_libc_default_attr &
      ~(CFAT_exposes_argument_address_to_return |CFAT_exposes_argument_address_to_globals)
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write
      | CFAT_argument_one_level_deref,
      3,
      { CPA_one_level_read, CPA_one_level_write,CPA_no_ptr_deref_and_expose }
    },
    {
      "_ZdaPv",
      CFAT_libcpp_default_attr &
      ~(CFAT_exposes_argument_address_to_return 
        | CFAT_exposes_argument_address_to_globals)
      | CFAT_globals_read | CFAT_globals_write | CFAT_is_marked_libcall
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write 
      | CFAT_argument_one_level_deref | CFAT_deallocates_heap_memory,
      0,
      { 0, }
    },
    {
      "_ZdlPv",
      CFAT_libcpp_default_attr &
      ~(CFAT_exposes_argument_address_to_return 
        | CFAT_exposes_argument_address_to_globals)
      | CFAT_globals_read | CFAT_globals_write  | CFAT_is_marked_libcall
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write 
      | CFAT_argument_one_level_deref | CFAT_deallocates_heap_memory,
      0,
      { 0, }
    },
    {
      "_Znam",
      CFAT_libcpp_default_attr &
      ~(CFAT_exposes_argument_address_to_return 
        | CFAT_exposes_argument_address_to_globals)
      | CFAT_globals_read | CFAT_globals_write 
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write 
      | CFAT_is_marked_libcall 
      | CFAT_argument_one_level_deref | CFAT_allocates_heap_memory 
      | CFAT_returns_heap_memory,
      0,
      { 0, }
    },
    {
      "_Znwm",
      CFAT_libcpp_default_attr &
      ~(CFAT_exposes_argument_address_to_return 
        | CFAT_exposes_argument_address_to_globals)
      | CFAT_globals_read | CFAT_globals_write 
      | CFAT_argument_indirectly_read | CFAT_argument_indirectly_write  
      | CFAT_is_marked_libcall
      | CFAT_argument_one_level_deref | CFAT_allocates_heap_memory 
      | CFAT_returns_heap_memory,
      0,
      { 0, }
    },
    { 0 }
  };



inline void cpa_set_one_level_read(UINT32& p) { p |= CPA_one_level_read;}
inline void cpa_set_one_level_write(UINT32& p) { p |= CPA_one_level_write;}
inline void cpa_set_two_level_read(UINT32& p) {  p |= CPA_two_level_read;}
inline void cpa_set_two_level_write(UINT32& p) {  p |= CPA_two_level_write;}
inline void cpa_set_multi_level_read(UINT32& p) { p |= CPA_multi_level_read;}
inline void cpa_set_multi_level_write(UINT32& p) {  p |= CPA_multi_level_write;}
inline void cpa_set_exposed_to_globals(UINT32& p) {  p |= CPA_exposed_to_globals; }
inline void cpa_set_exposed_to_return(UINT32& p) { p |= CPA_exposed_to_return; }
inline void cpa_set_is_pointer_to_heap_addr_loc(UINT32& p) { p |= CPA_is_pointer_to_heap_addr_loc;}
inline void cpa_set_is_format_string(UINT32& p ) { p |= CPA_is_format_string; }

inline void cpa_clear_one_level_read(UINT32& p) { p &= ~CPA_one_level_read;}
inline void cpa_clear_one_level_write(UINT32& p) { p &= ~CPA_one_level_write;}
inline void cpa_clear_two_level_read(UINT32& p) {  p &= ~CPA_two_level_read;}
inline void cpa_clear_two_level_write(UINT32& p) {  p &= ~CPA_two_level_write;}
inline void cpa_clear_multi_level_read(UINT32& p) { p &= ~CPA_multi_level_read;}
inline void cpa_clear_multi_level_write(UINT32& p) {  p &= ~CPA_multi_level_write;}
inline void cpa_clear_exposed_to_globals(UINT32& p) {  p &= ~CPA_exposed_to_globals; }
inline void cpa_clear_exposed_to_return(UINT32& p) { p &= ~CPA_exposed_to_return; }
inline void cpa_clear_is_pointer_to_heap_addr_loc(UINT32& p) { p &= ~CPA_is_pointer_to_heap_addr_loc;}
inline void cpa_clear_is_format_string(UINT32& p ) { p &= ~CPA_is_format_string; }

static CallSideEffectInfoTable CallSideEffectTable;

CallSideEffectInfoTable::CallSideEffectInfoTable()
{
  // create side effect hash table:
  INT32 i = 0;
  const char* func = RawLibcallSideEffectTable[0].FuncName;
  while (func)
  {
    CallSideEffectInfo* new_info = 
      new CallSideEffectInfo(RawLibcallSideEffectTable[i]);
    SideEffectTable_[func] = new_info;
    i++;
    func = RawLibcallSideEffectTable[i].FuncName;
  }
}

// check %n in the format string:
extern bool
doesFormatStringContainPercN(WN* call_node, UINT32 format_arg_pos)
{
  // get format string argument 
  WN* format_node = WN_kid0(WN_kid(call_node, format_arg_pos));
  if ((WN_operator(format_node) == OPR_LDA) &&
      (ST_sym_class(WN_st(format_node)) == CLASS_CONST) &&
      (TCON_ty(STC_val(WN_st(format_node))) == MTYPE_STRING))
  {
    char* format_string = Targ_Print(NULL, STC_val(WN_st(format_node)));
    // Simple scan for %n
    const char* cur_c = format_string;
    while (*cur_c != '\0')
    {
      if (*cur_c++ == '%')
      {
        // skip modifiers
        while ((*cur_c == 'h') || (*cur_c == 'l') || (*cur_c == 'L') ||
               isdigit(*cur_c) || (*cur_c == '$'))
          ++cur_c;
        
        // %%n --> produce can false positive -- should be ok.
        if (*cur_c == 'n') return true;
      }
    }
    return false;
  }
  
  return true; // may contain:
}


UINT32
CallSideEffectInfo::GetArgumentAttr(UINT32 arg_pos, 
                                    WN* call_node,
                                    bool ignore_format_string) const
{
  if (arg_pos < NumOfKnownPars)
  {
    return ParAttrs[arg_pos];
  }

  UINT32 arg_attr;
  // Special case for printf/sprintf/fprintf family functions --
  // by default, arguments in vararg list should have attributes '0', but
  // when %n is detected in the format string, it should be CPA_one_level_write 
  // (conservatively for all trailing arguments).
  //  
  if ((SideEffects & CFAT_is_printf_like) && !ignore_format_string)
  {
    arg_attr = GetArgumentAttr_();

    if (call_node) {
      // Now find the format string:
      INT32 format_pos = -1;
      for (INT32 i = 0; i < NumOfKnownPars; i ++)
      {
        if (ParAttrs[i] & CPA_is_format_string)
        {
          format_pos = i;
          break;
        }
      }
      if (doesFormatStringContainPercN(call_node,format_pos))
        arg_attr =  arg_attr | CPA_one_level_write;
    }
    else  // call_node is not available, we have to be conservative
      arg_attr = arg_attr | CPA_one_level_write;
  }
  else arg_attr = GetArgumentAttr_();

  return arg_attr;
}

UINT32
CallSideEffectInfo::GetArgumentAttr_() const
{
  UINT32 default_attr = CPA_default_attr;
  if ((SideEffects & CFAT_argument_indirectly_read) == 0)
  {
    cpa_clear_one_level_read(default_attr);
    cpa_clear_two_level_read(default_attr);
    cpa_clear_multi_level_read(default_attr);
    cpa_clear_two_level_write(default_attr);
    cpa_clear_multi_level_write(default_attr);
  }
  // only guarantees one level:
  if ((SideEffects & CFAT_argument_indirectly_write) == 0)
  {
    cpa_clear_one_level_write(default_attr);
  }

  if (SideEffects & CFAT_argument_one_level_deref)
  {
    cpa_clear_two_level_read(default_attr);
    cpa_clear_multi_level_read(default_attr);
    cpa_clear_two_level_write(default_attr);
    cpa_clear_multi_level_write(default_attr);
  }

  if ((SideEffects & CFAT_exposes_argument_address_to_return) == 0)
    cpa_clear_exposed_to_return(default_attr);
  if ((SideEffects & CFAT_exposes_argument_address_to_globals) == 0)
    cpa_clear_exposed_to_globals(default_attr);

  return default_attr;
}

CallSideEffectInfo::CallSideEffectInfo(const WN* call_node)
{
  FuncName = 0;
  NumOfKnownPars = 0;
  UINT32 side_effects = CFAT_default_attr;

  if (call_node)
  {
#if 0
    // Pure call case:
    // if (WN_Call_Pure(call_node))
    if(ci->GetLibCall() == 2)
    {
      // Set Pure attribute:
      side_effects &= ~CFAT_pure_call_attr_mask;
      
      // Now special case for some math lib calls:
      UINT32 num_args = call_node->GetNumArguments();
      INT32 i;
      for (i = 0; i < num_args; i++)
      {
        SyzNodePtr arg = call_node->GetArgument(i);
        if (arg->GetResultType()->isPointer()) 
        {
          side_effects |= CFAT_argument_indirectly_read;
          break;
        }
      }
    
      SideEffects = side_effects;
      return;
    }
#endif

    if (WN_Call_Pure(call_node))
      side_effects &= ~CFAT_pure_call_attr_mask;
    
    if (WN_Call_Does_Mem_Alloc(call_node))
    {
      side_effects |= CFAT_allocates_heap_memory;
      side_effects |= CFAT_returns_heap_memory;
    }
  }
  // TODO -- a few more side_effects may be retrieved from the WN
  // (specifically for Fortran intrinsic calls)

  SideEffects  = side_effects;
  return;
}

CallSideEffectInfo::CallSideEffectInfo(CallSideEffectInfoBase& csb)
  : CallSideEffectInfoBase(csb)
{}


CallSideEffectInfo
CallSideEffectInfo::GetDefaultCallSideEffectInfo(const WN* call_node )
{
  CallSideEffectInfo csi(call_node);
  return csi;
}

CallSideEffectInfo
CallSideEffectInfo::GetCallSideEffectInfo(const WN* call_node, 
                                          bool* from_table)
{
  const char* name_str = 0;
  // Firstly, find the name key to lookup the side effect table:
  name_str = ST_name(WN_st(call_node));

  if (!name_str) 
  {
    if (from_table)
      *from_table = false;
    return GetDefaultCallSideEffectInfo(call_node);
  }

  return GetCallSideEffectInfo_(name_str, call_node, from_table);
}

CallSideEffectInfo
CallSideEffectInfo::GetCallSideEffectInfo(const ST* call_sym,
                                          bool* from_table)
{
  const char* name_str = 0;
  // Firstly, find the name key to lookup the side effect table:
  name_str = ST_name(call_sym);

  if (!name_str)
  { 
    if (from_table)
      *from_table = false;
    return GetDefaultCallSideEffectInfo(NULL);
  }

  return GetCallSideEffectInfo_(name_str, NULL, from_table);
}

CallSideEffectInfo
CallSideEffectInfo::GetCallSideEffectInfo_(const char* func_name,
                                           const WN* call_node,
                                           bool* from_table)
{
  CallSideEffectInfo* csip = CallSideEffectTable.Find(func_name);
  // No entry found in the side effect table:
  if (csip == 0)
  {
    if (from_table)
      *from_table = false;
    return GetDefaultCallSideEffectInfo(NULL);
  }

  // a copy is made:
  CallSideEffectInfo csi = *csip;

  if (from_table)
    *from_table = true;

  return csi;
}


static bool  
printAttr_(UINT32 side_effects, UINT32 attr, const char* encode,
           bool suppress_hippen, bool& is_first, UINT32 mask = 0)
{
  if (mask == 0) mask = attr;
  bool printed = false;

  if ((side_effects & mask) == attr)
  {
    if (!is_first && !suppress_hippen)
      fprintf(stderr,"-");
    else if (is_first)
      fprintf(stderr,"\t");

    fprintf(stderr,"%s", encode);

    printed = true;
    is_first = false;
  }

  return printed;
}

void 
CallSideEffectInfo::Print(WN* callnode) const
{
#if 0
  // Print string encoding (lower case for read, upper case for write -- 
  // for single letter case)
  // 
  // a/A -- argument indirectly read/write
  // g/G -- globals read/write
  // c/C -- libc globals read/write
  // p/P -- libcpp globals read/write
  // h/H -- hidden data read/write
  // s/S -- statics read/write
  // e/E -- exposed memory read/write
  // -------------------
  // rh  -- returns heap address
  // re  -- returns exposed locatiino
  // eg  -- exposing to global
  // er  -- exposing to return
  // ol  -- one level deref
  // mc  -- marked libcall
  // fm  -- has format string
  // ---------------------
  // PR  -- printf like
  // STC  -- libc entry
  // CPP  -- libcpp entry
  // FOR  -- f90 entry
  // ASM  -- assem intrin
  // DCTR -- default ctor
  // CCTR -- default copy ctor
  // ALLC -- allocator
  // DLLC -- deallocator 


  // Per-argument attribute encoding:
  // ord -- one level read
  // trd -- two level read
  // mrd -- mult level read
  // owr -- one level write
  // twr -- two level write
  // mwr -- mult level write
  // ------------------------
  // eg  -- exposed to global
  // er  -- exposed to return
  // php -- pointer to heap pointer
  // fmt -- is format string


  fprintf(stderr,"[CSI]: node_id=[%05x] ",callnode->GetId().GetVal());
  SYZ_OPCODE op = callnode->GetOpcode();
  if (op == OP_icup)
    fprintf(stderr,"\n");
  else
  {
    if (op == OP_cup)
      fprintf(stderr, "callee=%s\n",
              callnode->GetEntry()->GetName()->GetCharString());
    else
    {
      SYZ_IntrinsicInfo iif = callnode->GetIntrinsicInfo();
      if (iif.isHPIntelIntrinsic())
        fprintf(stderr,"asmop=%s\n", iif.GetName());
      else
        fprintf(stderr,"f90cip=%s\n", iif.GetName());
    }
  }

  bool is_first = true;
  bool p = false;
  p =   printAttr_(SideEffects, CFAT_globals_read, "g", false, is_first);
  p =   printAttr_(SideEffects, CFAT_globals_write, "G", p, is_first);
  p =   printAttr_(SideEffects, CFAT_statics_read, "s", false, is_first);
  p =   printAttr_(SideEffects, CFAT_statics_write, "S", p, is_first);
  p =   printAttr_(SideEffects, CFAT_libc_globals_read, "c", false, is_first);
  p =   printAttr_(SideEffects, CFAT_libc_globals_write, "C", p, is_first);
  p =   printAttr_(SideEffects, CFAT_libcpp_globals_read, "p", false, is_first);
  p =   printAttr_(SideEffects, CFAT_libcpp_globals_write, "P", p, is_first);
  p =   printAttr_(SideEffects, CFAT_exposed_memory_read, "e", false, is_first);
  p =   printAttr_(SideEffects, CFAT_exposed_memory_write, "E", p, is_first);
  p =   printAttr_(SideEffects, CFAT_hidden_data_read, "h", false, is_first);
  p =   printAttr_(SideEffects, CFAT_hidden_data_write, "H", p, is_first);
  p =   printAttr_(SideEffects, CFAT_argument_indirectly_read, "a", false, is_first);
  p =   printAttr_(SideEffects, CFAT_argument_indirectly_write, "A", p, is_first);
  p =   printAttr_(SideEffects, CFAT_argument_one_level_deref, "ol", false, is_first);
  p =   printAttr_(SideEffects, CFAT_is_marked_libcall, "mc", false, is_first);
  p =   printAttr_(SideEffects, CFAT_has_format_string, "fm", false, is_first);
  p =   printAttr_(SideEffects, CFAT_returns_heap_memory, "rh", false, is_first);
  p =   printAttr_(SideEffects, CFAT_returns_exposed_memory, "re", false, is_first);
  p =   printAttr_(SideEffects, CFAT_exposes_argument_address_to_return, "er", false, is_first);
  p =   printAttr_(SideEffects, CFAT_exposes_argument_address_to_globals, "eg", false, is_first);
  p =   printAttr_(SideEffects, CFAT_allocates_heap_memory, "ALLC", false, is_first);
  p =   printAttr_(SideEffects, CFAT_deallocates_heap_memory, "DLLC", false, is_first);
  p =   printAttr_(SideEffects, CFAT_is_printf_like, "PR", false, is_first);
  fprintf(stderr,"-[");
  p =   printAttr_(SideEffects, CFAT_is_libc_entry, "STC", true, is_first, CFAT_callee_kind_mask);
  p =   printAttr_(SideEffects, CFAT_is_libcpp_entry, "CPP", true, is_first, CFAT_callee_kind_mask);
  p =   printAttr_(SideEffects, CFAT_is_lib_f90, "FOR", true, is_first, CFAT_callee_kind_mask);
  p =   printAttr_(SideEffects, CFAT_is_asm_intrin, "ASM", true, is_first, CFAT_callee_kind_mask);
  p =   printAttr_(SideEffects, CFAT_is_dflt_ctor, "DCTR", true, is_first, CFAT_callee_kind_mask);
  p =   printAttr_(SideEffects, CFAT_is_dflt_cpy_ctor, "CCTR", true, is_first, CFAT_callee_kind_mask);

  fprintf(stderr,":%d]\n",NumOfKnownPars);
    
  // Now print per-argument attribute:
  for (INT32 i = 0 ; i < callnode->GetNumArguments(); i++)
  {
    UINT32 arg_attr = GetArgumentAttr(callnode,i);
    bool is_first = true;
    p = false;    
    fprintf(stderr,"\t[%d]",i);
    p = printAttr_(arg_attr, CPA_one_level_read,"ord", false, is_first);
    p = (printAttr_(arg_attr, CPA_one_level_write,"owr", false, is_first) || p);
    p = (printAttr_(arg_attr, CPA_two_level_read,"trd", false, is_first) || p);
    p = (printAttr_(arg_attr, CPA_two_level_write,"twr", false, is_first) || p);
    p = (printAttr_(arg_attr, CPA_multi_level_read,"mrd", false, is_first) || p);
    p = (printAttr_(arg_attr, CPA_multi_level_write,"mwr", false, is_first) || p);
    p = (printAttr_(arg_attr, CPA_exposed_to_globals,"eg", false, is_first) || p);
    p = (printAttr_(arg_attr, CPA_exposed_to_return,"er", false, is_first) || p);
    p = (printAttr_(arg_attr, CPA_is_pointer_to_heap_addr_loc,"php", false, is_first) || p);
    p = (printAttr_(arg_attr, CPA_is_format_string,"fmt", false, is_first) || p);
    if (p) fprintf(stderr,"\n");
    else  fprintf(stderr,"\t---\n");
  }
  fprintf(stderr,"\n");
  fflush(stderr);
#endif
}

