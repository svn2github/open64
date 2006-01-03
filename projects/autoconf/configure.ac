AC_PREREQ(2.59)
AC_INIT([The Open64 compiler suite], [2.0], [The Open64 Project], [occ])
AC_CONFIG_HEADERS([config.h])

AC_CANONICAL_BUILD
AC_CANONICAL_HOST
AC_CANONICAL_TARGET

AM_INIT_AUTOMAKE

case $target_cpu in
    amd64|x86_64|i386)
	AC_DEFINE(TARG_X8664,1,[Define when building an amd64 compiler])
	TARG_SUBDIR=x8664
	;;
    ia64)
	AC_DEFINE(TARG_IA64,1,[Define when building an ia64 compiler])
	TARG_SUBDIR=ia64
	;;
    *)
	AC_MSG_ERROR([*** Unsupported target architecture: $target_cpu], 1)
	;;
esac
AC_SUBST([TARG_SUBDIR])

#
# Check for programs
#
AC_PROG_CC
AC_PROG_CXX
AC_PROG_F77
AC_PROG_INSTALL
AC_PROG_RANLIB

#
# Check for libraries (none yet)
#

#
# Check for header files
#
AC_HEADER_STDC

AH_TEMPLATE(HAVE_AR_H, [Define if you have the <ar.h> header file.])
AH_TEMPLATE(HAVE_ELF_H, [Define if you have the <elf.h> header file.])
AH_TEMPLATE(HAVE_FCNTL_H, [Define if you have the <fcntl.h> header file.])
AH_TEMPLATE(HAVE_GELF_H, [Define if you have the <gelf.h> header file.])
AH_TEMPLATE(HAVE_LIBELF_H, [Define if you have the <libelf.h> header file.])
AH_TEMPLATE(HAVE_SYS_ELF_H, [Define if you have the <sys/elf.h> header file.])

AC_CHECK_HEADERS([ar.h elf.h fcntl.h gelf.h libelf.h sys/elf.h])

AH_TEMPLATE(__LIBELF_HEADER_ELF_H,
    [Define to `<elf.h>' or `<sys/elf.h>' if one of them is present.])

if test "$ac_cv_header_elf_h" = yes; then
    AC_DEFINE(__LIBELF_HEADER_ELF_H, [<elf.h>])
else
    if test "$ac_cv_header_sys_elf_h" = yes; then
	AC_DEFINE(__LIBELF_HEADER_ELF_H, [<sys/elf.h>])
    fi
fi

#
# Check for types
#
AC_TYPE_OFF_T
AC_TYPE_SIZE_T

# For libdwarf
AC_TRY_COMPILE([], [__uint32_t p; p = 3;],
    AC_DEFINE(HAVE___UINT32_T, 1,
	[See if __uint32_t is predefined in the compiler.]))
AC_TRY_COMPILE([], [__uint64_t p; p = 3;],
    AC_DEFINE(HAVE___UINT64_T, 1,
	[See if __uint64_t is predefined in the compiler.]))

# For libdwarf
AC_TRY_COMPILE([#include <sys/types.h>], [__uint32_t p; p = 3;],
    AC_DEFINE(HAVE___UINT32_T_IN_SYS_TYPES_H, 1,
	[Define 1 if sys/types.h defines __uint32_t.]))
AC_TRY_COMPILE([#include <sys/types.h>], [__uint64_t p; p = 3;],
    AC_DEFINE(HAVE___UINT64_T_IN_SYS_TYPES_H, 1,
	[Define 1 if sys/types.h defines __uint64_t.]))

#
# Check for structures (none yet)
#

#
# Check for compiler characteristics
#
AC_C_CONST
AC_C_INLINE
AC_CHECK_SIZEOF(short,2)
AC_CHECK_SIZEOF(int,4)
AC_CHECK_SIZEOF(long,0)
AC_CHECK_SIZEOF(long long,0)

AH_TEMPLATE(__libelf_i16_t,
    [Define to a 16-bit signed integer type if one exists.])
AH_TEMPLATE(__libelf_i32_t,
    [Define to a 32-bit signed integer type if one exists.])
AH_TEMPLATE(__libelf_i64_t,
    [Define to a 64-bit signed integer type if one exists.])
AH_TEMPLATE(__libelf_u16_t,
    [Define to a 16-bit unsigned integer type if one exists.])
AH_TEMPLATE(__libelf_u32_t,
    [Define to a 32-bit unsigned integer type if one exists.])
AH_TEMPLATE(__libelf_u64_t,
    [Define to a 64-bit unsigned integer type if one exists.])

AC_DEFINE(__libelf_i16_t, short)
AC_DEFINE(__libelf_u16_t, unsigned short)
AC_DEFINE(__libelf_i32_t, int)
AC_DEFINE(__libelf_u32_t, unsigned int)

if test "$ac_cv_sizeof_long" = 8; then
    AC_DEFINE(__libelf_i64_t, long)
    AC_DEFINE(__libelf_u64_t, unsigned long)
else
    if test "$ac_cv_sizeof_long_long" = 8; then
	AC_DEFINE(__libelf_i64_t, long long)
	AC_DEFINE(__libelf_u64_t, unsigned long long)
    fi
fi

AC_CACHE_CHECK([for struct Elf64_Ehdr], libelf_cv_struct_elf64_ehdr,
    AC_TRY_COMPILE([#include __LIBELF_HEADER_ELF_H], [Elf64_Ehdr x],
	[libelf_cv_struct_elf64_ehdr=yes], [libelf_cv_struct_elf64_ehdr=no]))

AC_CACHE_CHECK([for struct Elf64_Rel], libelf_cv_struct_elf64_rel,
    AC_TRY_COMPILE([#include __LIBELF_HEADER_ELF_H],
	[Elf64_Rel x; x.r_info = 1], [libelf_cv_struct_elf64_rel=yes],
	AC_TRY_COMPILE([#include __LIBELF_HEADER_ELF_H],
	    [Elf64_Rel x; x.r_sym = 1], [libelf_cv_struct_elf64_rel=irix],
	    [libelf_cv_struct_elf64_rel=no])))

AH_TEMPLATE(__LIBELF64,
    [Define if your system supports 64-bit ELF.])

AH_TEMPLATE(__LIBELF64_IRIX,
    [Define if you have an Irix system with 64-bit ELF support.])

case "$libelf_cv_struct_elf64_ehdr:$libelf_cv_struct_elf64_rel" in
    yes:yes)
	AC_DEFINE(__LIBELF64)
	;;
    yes:irix)
	AC_DEFINE(__LIBELF64)
	AC_DEFINE(__LIBELF64_IRIX)
	;;
    *)
	AC_MSG_ERROR([*** Missing 64-bit ELF support], 1)
	;;
esac

AC_CACHE_CHECK([for Elf32_Verdef], libelf_cv_verdef32,
    AC_TRY_COMPILE([#include __LIBELF_HEADER_ELF_H],
	[Elf32_Verdef d; Elf32_Verdaux a; Elf32_Verneed n; Elf32_Vernaux b;],
	[libelf_cv_verdef32=yes], [libelf_cv_verdef32=no]))

AC_CACHE_CHECK([for Elf64_Verdef], libelf_cv_verdef64,
    AC_TRY_COMPILE([#include __LIBELF_HEADER_ELF_H],
	[Elf64_Verdef d; Elf64_Verdaux a; Elf64_Verneed n; Elf64_Vernaux b;],
	[libelf_cv_verdef64=yes], [libelf_cv_verdef64=no]))

AC_CACHE_CHECK([for SHT_SUNW_verdef], libelf_cv_sun_verdef,
    AC_TRY_COMPILE([#include __LIBELF_HEADER_ELF_H],
	[Elf32_Word x = SHT_SUNW_verdef + SHT_SUNW_verneed + SHT_SUNW_versym],
	[libelf_cv_sun_verdef=yes], [libelf_cv_sun_verdef=no]))

AC_CACHE_CHECK([for SHT_GNU_verdef], libelf_cv_gnu_verdef,
    AC_TRY_COMPILE([#include __LIBELF_HEADER_ELF_H],
	[Elf32_Word x = SHT_GNU_verdef + SHT_GNU_verneed + SHT_GNU_versym],
	[libelf_cv_gnu_verdef=yes], [libelf_cv_gnu_verdef=no]))

AH_TEMPLATE(__LIBELF_SYMBOL_VERSIONS,
    [Define if your system supports symbol versioning.])

AH_TEMPLATE(__LIBELF_SUN_SYMBOL_VERSIONS,
    [Define if symbol versioning uses Sun section types.])

AH_TEMPLATE(__LIBELF_GNU_SYMBOL_VERSIONS,
    [Define if symbol versioning uses GNU section types.])

case "$libelf_cv_verdef32:$libelf_cv_verdef64" in
    yes:yes)
	AC_DEFINE(__LIBELF_SYMBOL_VERSIONS)
	if test "$libelf_cv_sun_verdef" = yes; then
	    AC_DEFINE(__LIBELF_SUN_SYMBOL_VERSIONS)
	elif test "$libelf_cv_gnu_verdef" = yes; then
	    AC_DEFINE(__LIBELF_GNU_SYMBOL_VERSIONS)
	fi
	;;
esac

#
# Check for library functions
#
AC_FUNC_ALLOCA
AC_FUNC_MMAP

AH_TEMPLATE(HAVE_FTRUNCATE, [Define if you have the ftruncate(2) function.])
AH_TEMPLATE(HAVE_MEMCMP, [Define if you have the memcmp(3) function.])
AH_TEMPLATE(HAVE_MEMCPY, [Define if you have the memcpy(3) function.])
AH_TEMPLATE(HAVE_MEMMOVE, [Define if you have the memmove(3) function.])
AH_TEMPLATE(HAVE_MEMSET, [Define if you have the memset(3) function.])
AH_TEMPLATE(HAVE_STRSIGNAL, [Define if you have the strsignal(3) function.])

AC_CHECK_FUNCS([ftruncate memcmp memcpy memmove memset strsignal])

# For libdwarf
AC_DEFINE(HAVE_ELF64_GETEHDR,1,[We have elf64_getehdr() in our libelf.a.])
AC_DEFINE(HAVE_ELF64_GETSHDR,1,[We have elf64_getshdr() in our libelf.a.])

#
# Check for system services (none yet)
#

#
# Set features
#
AC_DEFINE(HAVE_OLD_DWARF2_32BIT_OFFSET,1,[DWARF2 32-bit section offsets.])

AC_CONFIG_FILES([Makefile
		 kpro64/Makefile
		 kpro64/arith/Makefile
		 kpro64/common/Makefile
		 kpro64/libcif/Makefile
		 kpro64/libcmplrs/Makefile
		 kpro64/libdwarf/Makefile
		 kpro64/libelf/Makefile
		 kpro64/libelfutil/Makefile
		 kpro64/libunwind/Makefile
		 kpro64/targ_info/Makefile])
AC_OUTPUT
