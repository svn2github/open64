
#ifdef IN_GCC
#include "auto-host.h"
#endif
#ifdef IN_GCC
#include "gansidecl.h"
#endif
#ifdef IN_GCC
#ifdef SGI_MONGOOSE
#ifdef __i386
#include "i386/xm-i386.h"
#else
#include "ia64/xm-ia64.h"
#endif
#endif
#endif
#ifdef IN_GCC
#include "hwint.h"
#endif
#ifndef HAVE_ATEXIT
#define HAVE_ATEXIT
#endif
#ifndef POSIX
#define POSIX
#endif
#ifndef BSTRING
#define BSTRING
#endif
