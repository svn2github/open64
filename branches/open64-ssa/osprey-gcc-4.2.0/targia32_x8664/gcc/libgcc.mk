srcdir = ../../gcc
VPATH = ../../gcc
EQ = =
objects = $(filter %.o,$^)

# Dependencies are accumulated as we go.
all: stmp-dirs
dirs = libgcc

vis_hide := $(strip $(subst @,-,\
    $(shell if echo 'void foo(void); void foo(void) {}' | \
          $(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -fvisibility=hidden -Werror \
          -c -xc - -o vis_temp_file$$$$.o 2> /dev/null; \
          then echo @fvisibility=hidden @DHIDE_EXPORTS; \
          rm vis_temp_file$$$$.o 2> /dev/null; \
          fi)))

ifneq (,$(vis_hide))
define gen-hide-list
$(NM_FOR_TARGET) -pg $< | \
  $(AWK) 'NF == 3 && $$2 !~ /^[UN]$$/ { print "\t.hidden", $$3 }' > $@T
mv -f $@T $@
endef
else
gen-hide-list = echo > $@
endif


#
# ml: .;
# dir: .
# flags:
# libgcc_a: ./libgcc.a
# libgcov_a: ./libgcov.a
# libgcc_eh_a: ./libgcc_eh.a
# libunwind_a:
#
# shlib_slibdir_qual: /../lib64
# libgcc_s_so: ./libgcc_s.so
# libunwind_so:
#

libgcc/./_muldi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_muldi3 -c $(srcdir)/libgcc2.c -o libgcc/./_muldi3_s.o
libgcc/./_muldi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_muldi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_muldi3.o
./libgcc.a: libgcc/./_muldi3.o
./libgcc_s.so: libgcc/./_muldi3_s.o
libgcc/./libgcc.map: libgcc/./_muldi3_s.o
libgcc/./_negdi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_negdi2 -c $(srcdir)/libgcc2.c -o libgcc/./_negdi2_s.o
libgcc/./_negdi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_negdi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_negdi2.o
./libgcc.a: libgcc/./_negdi2.o
./libgcc_s.so: libgcc/./_negdi2_s.o
libgcc/./libgcc.map: libgcc/./_negdi2_s.o
libgcc/./_lshrdi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_lshrdi3 -c $(srcdir)/libgcc2.c -o libgcc/./_lshrdi3_s.o
libgcc/./_lshrdi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_lshrdi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_lshrdi3.o
./libgcc.a: libgcc/./_lshrdi3.o
./libgcc_s.so: libgcc/./_lshrdi3_s.o
libgcc/./libgcc.map: libgcc/./_lshrdi3_s.o
libgcc/./_ashldi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_ashldi3 -c $(srcdir)/libgcc2.c -o libgcc/./_ashldi3_s.o
libgcc/./_ashldi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_ashldi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_ashldi3.o
./libgcc.a: libgcc/./_ashldi3.o
./libgcc_s.so: libgcc/./_ashldi3_s.o
libgcc/./libgcc.map: libgcc/./_ashldi3_s.o
libgcc/./_ashrdi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_ashrdi3 -c $(srcdir)/libgcc2.c -o libgcc/./_ashrdi3_s.o
libgcc/./_ashrdi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_ashrdi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_ashrdi3.o
./libgcc.a: libgcc/./_ashrdi3.o
./libgcc_s.so: libgcc/./_ashrdi3_s.o
libgcc/./libgcc.map: libgcc/./_ashrdi3_s.o
libgcc/./_cmpdi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_cmpdi2 -c $(srcdir)/libgcc2.c -o libgcc/./_cmpdi2_s.o
libgcc/./_cmpdi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_cmpdi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_cmpdi2.o
./libgcc.a: libgcc/./_cmpdi2.o
./libgcc_s.so: libgcc/./_cmpdi2_s.o
libgcc/./libgcc.map: libgcc/./_cmpdi2_s.o
libgcc/./_ucmpdi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_ucmpdi2 -c $(srcdir)/libgcc2.c -o libgcc/./_ucmpdi2_s.o
libgcc/./_ucmpdi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_ucmpdi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_ucmpdi2.o
./libgcc.a: libgcc/./_ucmpdi2.o
./libgcc_s.so: libgcc/./_ucmpdi2_s.o
libgcc/./libgcc.map: libgcc/./_ucmpdi2_s.o
libgcc/./_clear_cache_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_clear_cache -c $(srcdir)/libgcc2.c -o libgcc/./_clear_cache_s.o
libgcc/./_clear_cache.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_clear_cache $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_clear_cache.o
./libgcc.a: libgcc/./_clear_cache.o
./libgcc_s.so: libgcc/./_clear_cache_s.o
libgcc/./libgcc.map: libgcc/./_clear_cache_s.o
libgcc/./_enable_execute_stack_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_enable_execute_stack -c $(srcdir)/libgcc2.c -o libgcc/./_enable_execute_stack_s.o
libgcc/./_enable_execute_stack.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_enable_execute_stack $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_enable_execute_stack.o
./libgcc.a: libgcc/./_enable_execute_stack.o
./libgcc_s.so: libgcc/./_enable_execute_stack_s.o
libgcc/./libgcc.map: libgcc/./_enable_execute_stack_s.o
libgcc/./_trampoline_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_trampoline -c $(srcdir)/libgcc2.c -o libgcc/./_trampoline_s.o
libgcc/./_trampoline.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_trampoline $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_trampoline.o
./libgcc.a: libgcc/./_trampoline.o
./libgcc_s.so: libgcc/./_trampoline_s.o
libgcc/./libgcc.map: libgcc/./_trampoline_s.o
libgcc/./__main_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL__main -c $(srcdir)/libgcc2.c -o libgcc/./__main_s.o
libgcc/./__main.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL__main $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./__main.o
./libgcc.a: libgcc/./__main.o
./libgcc_s.so: libgcc/./__main_s.o
libgcc/./libgcc.map: libgcc/./__main_s.o
libgcc/./_absvsi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_absvsi2 -c $(srcdir)/libgcc2.c -o libgcc/./_absvsi2_s.o
libgcc/./_absvsi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_absvsi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_absvsi2.o
./libgcc.a: libgcc/./_absvsi2.o
./libgcc_s.so: libgcc/./_absvsi2_s.o
libgcc/./libgcc.map: libgcc/./_absvsi2_s.o
libgcc/./_absvdi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_absvdi2 -c $(srcdir)/libgcc2.c -o libgcc/./_absvdi2_s.o
libgcc/./_absvdi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_absvdi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_absvdi2.o
./libgcc.a: libgcc/./_absvdi2.o
./libgcc_s.so: libgcc/./_absvdi2_s.o
libgcc/./libgcc.map: libgcc/./_absvdi2_s.o
libgcc/./_addvsi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_addvsi3 -c $(srcdir)/libgcc2.c -o libgcc/./_addvsi3_s.o
libgcc/./_addvsi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_addvsi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_addvsi3.o
./libgcc.a: libgcc/./_addvsi3.o
./libgcc_s.so: libgcc/./_addvsi3_s.o
libgcc/./libgcc.map: libgcc/./_addvsi3_s.o
libgcc/./_addvdi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_addvdi3 -c $(srcdir)/libgcc2.c -o libgcc/./_addvdi3_s.o
libgcc/./_addvdi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_addvdi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_addvdi3.o
./libgcc.a: libgcc/./_addvdi3.o
./libgcc_s.so: libgcc/./_addvdi3_s.o
libgcc/./libgcc.map: libgcc/./_addvdi3_s.o
libgcc/./_subvsi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_subvsi3 -c $(srcdir)/libgcc2.c -o libgcc/./_subvsi3_s.o
libgcc/./_subvsi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_subvsi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_subvsi3.o
./libgcc.a: libgcc/./_subvsi3.o
./libgcc_s.so: libgcc/./_subvsi3_s.o
libgcc/./libgcc.map: libgcc/./_subvsi3_s.o
libgcc/./_subvdi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_subvdi3 -c $(srcdir)/libgcc2.c -o libgcc/./_subvdi3_s.o
libgcc/./_subvdi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_subvdi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_subvdi3.o
./libgcc.a: libgcc/./_subvdi3.o
./libgcc_s.so: libgcc/./_subvdi3_s.o
libgcc/./libgcc.map: libgcc/./_subvdi3_s.o
libgcc/./_mulvsi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_mulvsi3 -c $(srcdir)/libgcc2.c -o libgcc/./_mulvsi3_s.o
libgcc/./_mulvsi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_mulvsi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_mulvsi3.o
./libgcc.a: libgcc/./_mulvsi3.o
./libgcc_s.so: libgcc/./_mulvsi3_s.o
libgcc/./libgcc.map: libgcc/./_mulvsi3_s.o
libgcc/./_mulvdi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_mulvdi3 -c $(srcdir)/libgcc2.c -o libgcc/./_mulvdi3_s.o
libgcc/./_mulvdi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_mulvdi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_mulvdi3.o
./libgcc.a: libgcc/./_mulvdi3.o
./libgcc_s.so: libgcc/./_mulvdi3_s.o
libgcc/./libgcc.map: libgcc/./_mulvdi3_s.o
libgcc/./_negvsi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_negvsi2 -c $(srcdir)/libgcc2.c -o libgcc/./_negvsi2_s.o
libgcc/./_negvsi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_negvsi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_negvsi2.o
./libgcc.a: libgcc/./_negvsi2.o
./libgcc_s.so: libgcc/./_negvsi2_s.o
libgcc/./libgcc.map: libgcc/./_negvsi2_s.o
libgcc/./_negvdi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_negvdi2 -c $(srcdir)/libgcc2.c -o libgcc/./_negvdi2_s.o
libgcc/./_negvdi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_negvdi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_negvdi2.o
./libgcc.a: libgcc/./_negvdi2.o
./libgcc_s.so: libgcc/./_negvdi2_s.o
libgcc/./libgcc.map: libgcc/./_negvdi2_s.o
libgcc/./_ctors_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_ctors -c $(srcdir)/libgcc2.c -o libgcc/./_ctors_s.o
libgcc/./_ctors.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_ctors $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_ctors.o
./libgcc.a: libgcc/./_ctors.o
./libgcc_s.so: libgcc/./_ctors_s.o
libgcc/./libgcc.map: libgcc/./_ctors_s.o
libgcc/./_ffssi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_ffssi2 -c $(srcdir)/libgcc2.c -o libgcc/./_ffssi2_s.o
libgcc/./_ffssi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_ffssi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_ffssi2.o
./libgcc.a: libgcc/./_ffssi2.o
./libgcc_s.so: libgcc/./_ffssi2_s.o
libgcc/./libgcc.map: libgcc/./_ffssi2_s.o
libgcc/./_ffsdi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_ffsdi2 -c $(srcdir)/libgcc2.c -o libgcc/./_ffsdi2_s.o
libgcc/./_ffsdi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_ffsdi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_ffsdi2.o
./libgcc.a: libgcc/./_ffsdi2.o
./libgcc_s.so: libgcc/./_ffsdi2_s.o
libgcc/./libgcc.map: libgcc/./_ffsdi2_s.o
libgcc/./_clz_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_clz -c $(srcdir)/libgcc2.c -o libgcc/./_clz_s.o
libgcc/./_clz.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_clz $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_clz.o
./libgcc.a: libgcc/./_clz.o
./libgcc_s.so: libgcc/./_clz_s.o
libgcc/./libgcc.map: libgcc/./_clz_s.o
libgcc/./_clzsi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_clzsi2 -c $(srcdir)/libgcc2.c -o libgcc/./_clzsi2_s.o
libgcc/./_clzsi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_clzsi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_clzsi2.o
./libgcc.a: libgcc/./_clzsi2.o
./libgcc_s.so: libgcc/./_clzsi2_s.o
libgcc/./libgcc.map: libgcc/./_clzsi2_s.o
libgcc/./_clzdi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_clzdi2 -c $(srcdir)/libgcc2.c -o libgcc/./_clzdi2_s.o
libgcc/./_clzdi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_clzdi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_clzdi2.o
./libgcc.a: libgcc/./_clzdi2.o
./libgcc_s.so: libgcc/./_clzdi2_s.o
libgcc/./libgcc.map: libgcc/./_clzdi2_s.o
libgcc/./_ctzsi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_ctzsi2 -c $(srcdir)/libgcc2.c -o libgcc/./_ctzsi2_s.o
libgcc/./_ctzsi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_ctzsi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_ctzsi2.o
./libgcc.a: libgcc/./_ctzsi2.o
./libgcc_s.so: libgcc/./_ctzsi2_s.o
libgcc/./libgcc.map: libgcc/./_ctzsi2_s.o
libgcc/./_ctzdi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_ctzdi2 -c $(srcdir)/libgcc2.c -o libgcc/./_ctzdi2_s.o
libgcc/./_ctzdi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_ctzdi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_ctzdi2.o
./libgcc.a: libgcc/./_ctzdi2.o
./libgcc_s.so: libgcc/./_ctzdi2_s.o
libgcc/./libgcc.map: libgcc/./_ctzdi2_s.o
libgcc/./_popcount_tab_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_popcount_tab -c $(srcdir)/libgcc2.c -o libgcc/./_popcount_tab_s.o
libgcc/./_popcount_tab.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_popcount_tab $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_popcount_tab.o
./libgcc.a: libgcc/./_popcount_tab.o
./libgcc_s.so: libgcc/./_popcount_tab_s.o
libgcc/./libgcc.map: libgcc/./_popcount_tab_s.o
libgcc/./_popcountsi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_popcountsi2 -c $(srcdir)/libgcc2.c -o libgcc/./_popcountsi2_s.o
libgcc/./_popcountsi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_popcountsi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_popcountsi2.o
./libgcc.a: libgcc/./_popcountsi2.o
./libgcc_s.so: libgcc/./_popcountsi2_s.o
libgcc/./libgcc.map: libgcc/./_popcountsi2_s.o
libgcc/./_popcountdi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_popcountdi2 -c $(srcdir)/libgcc2.c -o libgcc/./_popcountdi2_s.o
libgcc/./_popcountdi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_popcountdi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_popcountdi2.o
./libgcc.a: libgcc/./_popcountdi2.o
./libgcc_s.so: libgcc/./_popcountdi2_s.o
libgcc/./libgcc.map: libgcc/./_popcountdi2_s.o
libgcc/./_paritysi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_paritysi2 -c $(srcdir)/libgcc2.c -o libgcc/./_paritysi2_s.o
libgcc/./_paritysi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_paritysi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_paritysi2.o
./libgcc.a: libgcc/./_paritysi2.o
./libgcc_s.so: libgcc/./_paritysi2_s.o
libgcc/./libgcc.map: libgcc/./_paritysi2_s.o
libgcc/./_paritydi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_paritydi2 -c $(srcdir)/libgcc2.c -o libgcc/./_paritydi2_s.o
libgcc/./_paritydi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_paritydi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_paritydi2.o
./libgcc.a: libgcc/./_paritydi2.o
./libgcc_s.so: libgcc/./_paritydi2_s.o
libgcc/./libgcc.map: libgcc/./_paritydi2_s.o
libgcc/./_powisf2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_powisf2 -c $(srcdir)/libgcc2.c -o libgcc/./_powisf2_s.o
libgcc/./_powisf2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_powisf2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_powisf2.o
./libgcc.a: libgcc/./_powisf2.o
./libgcc_s.so: libgcc/./_powisf2_s.o
libgcc/./libgcc.map: libgcc/./_powisf2_s.o
libgcc/./_powidf2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_powidf2 -c $(srcdir)/libgcc2.c -o libgcc/./_powidf2_s.o
libgcc/./_powidf2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_powidf2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_powidf2.o
./libgcc.a: libgcc/./_powidf2.o
./libgcc_s.so: libgcc/./_powidf2_s.o
libgcc/./libgcc.map: libgcc/./_powidf2_s.o
libgcc/./_powixf2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_powixf2 -c $(srcdir)/libgcc2.c -o libgcc/./_powixf2_s.o
libgcc/./_powixf2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_powixf2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_powixf2.o
./libgcc.a: libgcc/./_powixf2.o
./libgcc_s.so: libgcc/./_powixf2_s.o
libgcc/./libgcc.map: libgcc/./_powixf2_s.o
libgcc/./_powitf2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_powitf2 -c $(srcdir)/libgcc2.c -o libgcc/./_powitf2_s.o
libgcc/./_powitf2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_powitf2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_powitf2.o
./libgcc.a: libgcc/./_powitf2.o
./libgcc_s.so: libgcc/./_powitf2_s.o
libgcc/./libgcc.map: libgcc/./_powitf2_s.o
libgcc/./_mulsc3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_mulsc3 -c $(srcdir)/libgcc2.c -o libgcc/./_mulsc3_s.o
libgcc/./_mulsc3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_mulsc3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_mulsc3.o
./libgcc.a: libgcc/./_mulsc3.o
./libgcc_s.so: libgcc/./_mulsc3_s.o
libgcc/./libgcc.map: libgcc/./_mulsc3_s.o
libgcc/./_muldc3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_muldc3 -c $(srcdir)/libgcc2.c -o libgcc/./_muldc3_s.o
libgcc/./_muldc3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_muldc3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_muldc3.o
./libgcc.a: libgcc/./_muldc3.o
./libgcc_s.so: libgcc/./_muldc3_s.o
libgcc/./libgcc.map: libgcc/./_muldc3_s.o
libgcc/./_mulxc3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_mulxc3 -c $(srcdir)/libgcc2.c -o libgcc/./_mulxc3_s.o
libgcc/./_mulxc3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_mulxc3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_mulxc3.o
./libgcc.a: libgcc/./_mulxc3.o
./libgcc_s.so: libgcc/./_mulxc3_s.o
libgcc/./libgcc.map: libgcc/./_mulxc3_s.o
libgcc/./_multc3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_multc3 -c $(srcdir)/libgcc2.c -o libgcc/./_multc3_s.o
libgcc/./_multc3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_multc3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_multc3.o
./libgcc.a: libgcc/./_multc3.o
./libgcc_s.so: libgcc/./_multc3_s.o
libgcc/./libgcc.map: libgcc/./_multc3_s.o
libgcc/./_divsc3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_divsc3 -c $(srcdir)/libgcc2.c -o libgcc/./_divsc3_s.o
libgcc/./_divsc3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_divsc3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_divsc3.o
./libgcc.a: libgcc/./_divsc3.o
./libgcc_s.so: libgcc/./_divsc3_s.o
libgcc/./libgcc.map: libgcc/./_divsc3_s.o
libgcc/./_divdc3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_divdc3 -c $(srcdir)/libgcc2.c -o libgcc/./_divdc3_s.o
libgcc/./_divdc3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_divdc3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_divdc3.o
./libgcc.a: libgcc/./_divdc3.o
./libgcc_s.so: libgcc/./_divdc3_s.o
libgcc/./libgcc.map: libgcc/./_divdc3_s.o
libgcc/./_divxc3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_divxc3 -c $(srcdir)/libgcc2.c -o libgcc/./_divxc3_s.o
libgcc/./_divxc3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_divxc3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_divxc3.o
./libgcc.a: libgcc/./_divxc3.o
./libgcc_s.so: libgcc/./_divxc3_s.o
libgcc/./libgcc.map: libgcc/./_divxc3_s.o
libgcc/./_divtc3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_divtc3 -c $(srcdir)/libgcc2.c -o libgcc/./_divtc3_s.o
libgcc/./_divtc3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_divtc3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_divtc3.o
./libgcc.a: libgcc/./_divtc3.o
./libgcc_s.so: libgcc/./_divtc3_s.o
libgcc/./libgcc.map: libgcc/./_divtc3_s.o
libgcc/./_fixunssfsi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_fixunssfsi -c $(srcdir)/libgcc2.c -o libgcc/./_fixunssfsi_s.o
libgcc/./_fixunssfsi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_fixunssfsi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_fixunssfsi.o
./libgcc.a: libgcc/./_fixunssfsi.o
./libgcc_s.so: libgcc/./_fixunssfsi_s.o
libgcc/./libgcc.map: libgcc/./_fixunssfsi_s.o
libgcc/./_fixunsdfsi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_fixunsdfsi -c $(srcdir)/libgcc2.c -o libgcc/./_fixunsdfsi_s.o
libgcc/./_fixunsdfsi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_fixunsdfsi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_fixunsdfsi.o
./libgcc.a: libgcc/./_fixunsdfsi.o
./libgcc_s.so: libgcc/./_fixunsdfsi_s.o
libgcc/./libgcc.map: libgcc/./_fixunsdfsi_s.o
libgcc/./_fixunsxfsi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_fixunsxfsi -c $(srcdir)/libgcc2.c -o libgcc/./_fixunsxfsi_s.o
libgcc/./_fixunsxfsi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_fixunsxfsi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_fixunsxfsi.o
./libgcc.a: libgcc/./_fixunsxfsi.o
./libgcc_s.so: libgcc/./_fixunsxfsi_s.o
libgcc/./libgcc.map: libgcc/./_fixunsxfsi_s.o
libgcc/./_fixsfdi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_fixsfdi -c $(srcdir)/libgcc2.c -o libgcc/./_fixsfdi_s.o
libgcc/./_fixsfdi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_fixsfdi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_fixsfdi.o
./libgcc.a: libgcc/./_fixsfdi.o
./libgcc_s.so: libgcc/./_fixsfdi_s.o
libgcc/./libgcc.map: libgcc/./_fixsfdi_s.o
libgcc/./_fixunssfdi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_fixunssfdi -c $(srcdir)/libgcc2.c -o libgcc/./_fixunssfdi_s.o
libgcc/./_fixunssfdi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_fixunssfdi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_fixunssfdi.o
./libgcc.a: libgcc/./_fixunssfdi.o
./libgcc_s.so: libgcc/./_fixunssfdi_s.o
libgcc/./libgcc.map: libgcc/./_fixunssfdi_s.o
libgcc/./_floatdisf_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_floatdisf -c $(srcdir)/libgcc2.c -o libgcc/./_floatdisf_s.o
libgcc/./_floatdisf.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_floatdisf $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_floatdisf.o
./libgcc.a: libgcc/./_floatdisf.o
./libgcc_s.so: libgcc/./_floatdisf_s.o
libgcc/./libgcc.map: libgcc/./_floatdisf_s.o
libgcc/./_floatundisf_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_floatundisf -c $(srcdir)/libgcc2.c -o libgcc/./_floatundisf_s.o
libgcc/./_floatundisf.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_floatundisf $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_floatundisf.o
./libgcc.a: libgcc/./_floatundisf.o
./libgcc_s.so: libgcc/./_floatundisf_s.o
libgcc/./libgcc.map: libgcc/./_floatundisf_s.o
libgcc/./_fixdfdi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_fixdfdi -c $(srcdir)/libgcc2.c -o libgcc/./_fixdfdi_s.o
libgcc/./_fixdfdi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_fixdfdi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_fixdfdi.o
./libgcc.a: libgcc/./_fixdfdi.o
./libgcc_s.so: libgcc/./_fixdfdi_s.o
libgcc/./libgcc.map: libgcc/./_fixdfdi_s.o
libgcc/./_fixunsdfdi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_fixunsdfdi -c $(srcdir)/libgcc2.c -o libgcc/./_fixunsdfdi_s.o
libgcc/./_fixunsdfdi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_fixunsdfdi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_fixunsdfdi.o
./libgcc.a: libgcc/./_fixunsdfdi.o
./libgcc_s.so: libgcc/./_fixunsdfdi_s.o
libgcc/./libgcc.map: libgcc/./_fixunsdfdi_s.o
libgcc/./_floatdidf_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_floatdidf -c $(srcdir)/libgcc2.c -o libgcc/./_floatdidf_s.o
libgcc/./_floatdidf.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_floatdidf $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_floatdidf.o
./libgcc.a: libgcc/./_floatdidf.o
./libgcc_s.so: libgcc/./_floatdidf_s.o
libgcc/./libgcc.map: libgcc/./_floatdidf_s.o
libgcc/./_floatundidf_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_floatundidf -c $(srcdir)/libgcc2.c -o libgcc/./_floatundidf_s.o
libgcc/./_floatundidf.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_floatundidf $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_floatundidf.o
./libgcc.a: libgcc/./_floatundidf.o
./libgcc_s.so: libgcc/./_floatundidf_s.o
libgcc/./libgcc.map: libgcc/./_floatundidf_s.o
libgcc/./_fixxfdi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_fixxfdi -c $(srcdir)/libgcc2.c -o libgcc/./_fixxfdi_s.o
libgcc/./_fixxfdi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_fixxfdi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_fixxfdi.o
./libgcc.a: libgcc/./_fixxfdi.o
./libgcc_s.so: libgcc/./_fixxfdi_s.o
libgcc/./libgcc.map: libgcc/./_fixxfdi_s.o
libgcc/./_fixunsxfdi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_fixunsxfdi -c $(srcdir)/libgcc2.c -o libgcc/./_fixunsxfdi_s.o
libgcc/./_fixunsxfdi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_fixunsxfdi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_fixunsxfdi.o
./libgcc.a: libgcc/./_fixunsxfdi.o
./libgcc_s.so: libgcc/./_fixunsxfdi_s.o
libgcc/./libgcc.map: libgcc/./_fixunsxfdi_s.o
libgcc/./_floatdixf_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_floatdixf -c $(srcdir)/libgcc2.c -o libgcc/./_floatdixf_s.o
libgcc/./_floatdixf.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_floatdixf $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_floatdixf.o
./libgcc.a: libgcc/./_floatdixf.o
./libgcc_s.so: libgcc/./_floatdixf_s.o
libgcc/./libgcc.map: libgcc/./_floatdixf_s.o
libgcc/./_floatundixf_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_floatundixf -c $(srcdir)/libgcc2.c -o libgcc/./_floatundixf_s.o
libgcc/./_floatundixf.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_floatundixf $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_floatundixf.o
./libgcc.a: libgcc/./_floatundixf.o
./libgcc_s.so: libgcc/./_floatundixf_s.o
libgcc/./libgcc.map: libgcc/./_floatundixf_s.o
libgcc/./_fixtfdi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_fixtfdi -c $(srcdir)/libgcc2.c -o libgcc/./_fixtfdi_s.o
libgcc/./_fixtfdi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_fixtfdi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_fixtfdi.o
./libgcc.a: libgcc/./_fixtfdi.o
./libgcc_s.so: libgcc/./_fixtfdi_s.o
libgcc/./libgcc.map: libgcc/./_fixtfdi_s.o
libgcc/./_fixunstfdi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_fixunstfdi -c $(srcdir)/libgcc2.c -o libgcc/./_fixunstfdi_s.o
libgcc/./_fixunstfdi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_fixunstfdi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_fixunstfdi.o
./libgcc.a: libgcc/./_fixunstfdi.o
./libgcc_s.so: libgcc/./_fixunstfdi_s.o
libgcc/./libgcc.map: libgcc/./_fixunstfdi_s.o
libgcc/./_floatditf_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_floatditf -c $(srcdir)/libgcc2.c -o libgcc/./_floatditf_s.o
libgcc/./_floatditf.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_floatditf $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_floatditf.o
./libgcc.a: libgcc/./_floatditf.o
./libgcc_s.so: libgcc/./_floatditf_s.o
libgcc/./libgcc.map: libgcc/./_floatditf_s.o
libgcc/./_floatunditf_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_floatunditf -c $(srcdir)/libgcc2.c -o libgcc/./_floatunditf_s.o
libgcc/./_floatunditf.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_floatunditf $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_floatunditf.o
./libgcc.a: libgcc/./_floatunditf.o
./libgcc_s.so: libgcc/./_floatunditf_s.o
libgcc/./libgcc.map: libgcc/./_floatunditf_s.o
libgcc/./_eprintf.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_eprintf $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./_eprintf.o
./libgcc.a: libgcc/./_eprintf.o
libgcc/./__gcc_bcmp.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL__gcc_bcmp $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/./__gcc_bcmp.o
./libgcc.a: libgcc/./__gcc_bcmp.o
libgcc/./_divdi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_divdi3 -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/./_divdi3_s.o
libgcc/./_divdi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_divdi3 $(vis_hide) -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/./_divdi3.o
./libgcc.a: libgcc/./_divdi3.o
./libgcc_s.so: libgcc/./_divdi3_s.o
libgcc/./libgcc.map: libgcc/./_divdi3_s.o
libgcc/./_moddi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_moddi3 -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/./_moddi3_s.o
libgcc/./_moddi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_moddi3 $(vis_hide) -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/./_moddi3.o
./libgcc.a: libgcc/./_moddi3.o
./libgcc_s.so: libgcc/./_moddi3_s.o
libgcc/./libgcc.map: libgcc/./_moddi3_s.o
libgcc/./_udivdi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_udivdi3 -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/./_udivdi3_s.o
libgcc/./_udivdi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_udivdi3 $(vis_hide) -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/./_udivdi3.o
./libgcc.a: libgcc/./_udivdi3.o
./libgcc_s.so: libgcc/./_udivdi3_s.o
libgcc/./libgcc.map: libgcc/./_udivdi3_s.o
libgcc/./_umoddi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_umoddi3 -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/./_umoddi3_s.o
libgcc/./_umoddi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_umoddi3 $(vis_hide) -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/./_umoddi3.o
./libgcc.a: libgcc/./_umoddi3.o
./libgcc_s.so: libgcc/./_umoddi3_s.o
libgcc/./libgcc.map: libgcc/./_umoddi3_s.o
libgcc/./_udiv_w_sdiv_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_udiv_w_sdiv -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/./_udiv_w_sdiv_s.o
libgcc/./_udiv_w_sdiv.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_udiv_w_sdiv $(vis_hide) -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/./_udiv_w_sdiv.o
./libgcc.a: libgcc/./_udiv_w_sdiv.o
./libgcc_s.so: libgcc/./_udiv_w_sdiv_s.o
libgcc/./libgcc.map: libgcc/./_udiv_w_sdiv_s.o
libgcc/./_udivmoddi4_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -DL_udivmoddi4 -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/./_udivmoddi4_s.o
libgcc/./_udivmoddi4.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DL_udivmoddi4 $(vis_hide) -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/./_udivmoddi4.o
./libgcc.a: libgcc/./_udivmoddi4.o
./libgcc_s.so: libgcc/./_udivmoddi4_s.o
libgcc/./libgcc.map: libgcc/./_udivmoddi4_s.o
libgcc/./unwind-dw2.o: stmp-dirs ../../gcc/unwind-dw2.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -fexceptions $(vis_hide) -c ../../gcc/unwind-dw2.c -o libgcc/./unwind-dw2.o
./libgcc_eh.a: libgcc/./unwind-dw2.o
libgcc/./unwind-dw2-fde-glibc.o: stmp-dirs ../../gcc/unwind-dw2-fde-glibc.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -fexceptions $(vis_hide) -c ../../gcc/unwind-dw2-fde-glibc.c -o libgcc/./unwind-dw2-fde-glibc.o
./libgcc_eh.a: libgcc/./unwind-dw2-fde-glibc.o
libgcc/./unwind-sjlj.o: stmp-dirs ../../gcc/unwind-sjlj.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -fexceptions $(vis_hide) -c ../../gcc/unwind-sjlj.c -o libgcc/./unwind-sjlj.o
./libgcc_eh.a: libgcc/./unwind-sjlj.o
libgcc/./gthr-gnat.o: stmp-dirs ../../gcc/gthr-gnat.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -fexceptions $(vis_hide) -c ../../gcc/gthr-gnat.c -o libgcc/./gthr-gnat.o
./libgcc_eh.a: libgcc/./gthr-gnat.o
libgcc/./unwind-c.o: stmp-dirs ../../gcc/unwind-c.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -fexceptions $(vis_hide) -c ../../gcc/unwind-c.c -o libgcc/./unwind-c.o
./libgcc_eh.a: libgcc/./unwind-c.o
libgcc/./unwind-dw2_s.o: stmp-dirs ../../gcc/unwind-dw2.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -fexceptions -c ../../gcc/unwind-dw2.c -o libgcc/./unwind-dw2_s.o
./libgcc_s.so: libgcc/./unwind-dw2_s.o
libgcc/./libgcc.map: libgcc/./unwind-dw2_s.o
libgcc/./unwind-dw2-fde-glibc_s.o: stmp-dirs ../../gcc/unwind-dw2-fde-glibc.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -fexceptions -c ../../gcc/unwind-dw2-fde-glibc.c -o libgcc/./unwind-dw2-fde-glibc_s.o
./libgcc_s.so: libgcc/./unwind-dw2-fde-glibc_s.o
libgcc/./libgcc.map: libgcc/./unwind-dw2-fde-glibc_s.o
libgcc/./unwind-sjlj_s.o: stmp-dirs ../../gcc/unwind-sjlj.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -fexceptions -c ../../gcc/unwind-sjlj.c -o libgcc/./unwind-sjlj_s.o
./libgcc_s.so: libgcc/./unwind-sjlj_s.o
libgcc/./libgcc.map: libgcc/./unwind-sjlj_s.o
libgcc/./gthr-gnat_s.o: stmp-dirs ../../gcc/gthr-gnat.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -fexceptions -c ../../gcc/gthr-gnat.c -o libgcc/./gthr-gnat_s.o
./libgcc_s.so: libgcc/./gthr-gnat_s.o
libgcc/./libgcc.map: libgcc/./gthr-gnat_s.o
libgcc/./unwind-c_s.o: stmp-dirs ../../gcc/unwind-c.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -fexceptions -c ../../gcc/unwind-c.c -o libgcc/./unwind-c_s.o
./libgcc_s.so: libgcc/./unwind-c_s.o
libgcc/./libgcc.map: libgcc/./unwind-c_s.o
libgcc/./_gcov.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -DL_gcov -c $(srcdir)/libgcov.c -o libgcc/./_gcov.o
./libgcov.a: libgcc/./_gcov.o
libgcc/./_gcov_merge_add.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -DL_gcov_merge_add -c $(srcdir)/libgcov.c -o libgcc/./_gcov_merge_add.o
./libgcov.a: libgcc/./_gcov_merge_add.o
libgcc/./_gcov_merge_single.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -DL_gcov_merge_single -c $(srcdir)/libgcov.c -o libgcc/./_gcov_merge_single.o
./libgcov.a: libgcc/./_gcov_merge_single.o
libgcc/./_gcov_merge_delta.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -DL_gcov_merge_delta -c $(srcdir)/libgcov.c -o libgcc/./_gcov_merge_delta.o
./libgcov.a: libgcc/./_gcov_merge_delta.o
libgcc/./_gcov_fork.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -DL_gcov_fork -c $(srcdir)/libgcov.c -o libgcc/./_gcov_fork.o
./libgcov.a: libgcc/./_gcov_fork.o
libgcc/./_gcov_execl.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -DL_gcov_execl -c $(srcdir)/libgcov.c -o libgcc/./_gcov_execl.o
./libgcov.a: libgcc/./_gcov_execl.o
libgcc/./_gcov_execlp.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -DL_gcov_execlp -c $(srcdir)/libgcov.c -o libgcc/./_gcov_execlp.o
./libgcov.a: libgcc/./_gcov_execlp.o
libgcc/./_gcov_execle.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -DL_gcov_execle -c $(srcdir)/libgcov.c -o libgcc/./_gcov_execle.o
./libgcov.a: libgcc/./_gcov_execle.o
libgcc/./_gcov_execv.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -DL_gcov_execv -c $(srcdir)/libgcov.c -o libgcc/./_gcov_execv.o
./libgcov.a: libgcc/./_gcov_execv.o
libgcc/./_gcov_execvp.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -DL_gcov_execvp -c $(srcdir)/libgcov.c -o libgcc/./_gcov_execvp.o
./libgcov.a: libgcc/./_gcov_execvp.o
libgcc/./_gcov_execve.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -DL_gcov_execve -c $(srcdir)/libgcov.c -o libgcc/./_gcov_execve.o
./libgcov.a: libgcc/./_gcov_execve.o
libgcc/./_gcov_interval_profiler.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -DL_gcov_interval_profiler -c $(srcdir)/libgcov.c -o libgcc/./_gcov_interval_profiler.o
./libgcov.a: libgcc/./_gcov_interval_profiler.o
libgcc/./_gcov_pow2_profiler.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -DL_gcov_pow2_profiler -c $(srcdir)/libgcov.c -o libgcc/./_gcov_pow2_profiler.o
./libgcov.a: libgcc/./_gcov_pow2_profiler.o
libgcc/./_gcov_one_value_profiler.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -DL_gcov_one_value_profiler -c $(srcdir)/libgcov.c -o libgcc/./_gcov_one_value_profiler.o
./libgcov.a: libgcc/./_gcov_one_value_profiler.o

extra: stmp-dirs
	$(MAKE) GCC_FOR_TARGET="$(GCC_FOR_TARGET)" \
	  AR_FOR_TARGET="$(AR_FOR_TARGET)" \
	  AR_CREATE_FOR_TARGET="$(AR_CREATE_FOR_TARGET)" \
	  AR_EXTRACT_FOR_TARGET="$(AR_EXTRACT_FOR_TARGET)" \
	  AR_FLAGS_FOR_TARGET="$(AR_FLAGS_FOR_TARGET)" \
	  CC="$(CC)" CFLAGS="$(CFLAGS)" \
	  BUILD_PREFIX="$(BUILD_PREFIX)" \
	  BUILD_PREFIX_1="$(BUILD_PREFIX_1)" \
	  LANGUAGES="$(LANGUAGES)" \
	  LIBGCC2_CFLAGS="$(LIBGCC2_CFLAGS) "  \
	  MULTILIB_CFLAGS="" T= crtbegin.o crtend.o crtbeginS.o crtendS.o crtbeginT.o crtfastmath.o
all: extra
./libgcc_s.so: extra

libgcc/./libgcc.map: ../../gcc/mkmap-symver.awk ../../gcc/libgcc-std.ver ../../gcc/config/i386/libgcc-x86_64-glibc.ver
	{ $(NM_FOR_TARGET) -pg $(objects); echo %%; \
	  cat ../../gcc/libgcc-std.ver ../../gcc/config/i386/libgcc-x86_64-glibc.ver \
	    | sed -e '/^[   ]*#/d' \
	          -e 's/^%\(if\|else\|elif\|endif\|define\)/#\1/' \
	    | $(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -E -xassembler-with-cpp -; \
	} | $(AWK) -f ../../gcc/mkmap-symver.awk  > libgcc/./tmp-libgcc.map
	mv 'libgcc/./tmp-libgcc.map' $@
./libgcc_s.so: libgcc/./libgcc.map

./libgcc.a: stmp-dirs
	-rm -f ./libgcc.a
	$(AR_CREATE_FOR_TARGET) ./libgcc.a $(objects)
	$(RANLIB_FOR_TARGET) ./libgcc.a
all: ./libgcc.a

./libgcov.a: stmp-dirs
	-rm -f ./libgcov.a
	$(AR_CREATE_FOR_TARGET) ./libgcov.a $(objects)
	$(RANLIB_FOR_TARGET) ./libgcov.a
all: ./libgcov.a

./libgcc_eh.a: stmp-dirs
	-rm -f ./libgcc_eh.a
	$(AR_CREATE_FOR_TARGET) ./libgcc_eh.a $(objects)
	$(RANLIB_FOR_TARGET) ./libgcc_eh.a
all: ./libgcc_eh.a

./libgcc_s.so: stmp-dirs 
	/proj/opensrc_nobackup/zhiweic/SVN/puretrunk/osprey-gcc-4.2.0/targia32_x8664/./gcc/xgcc -B/proj/opensrc_nobackup/zhiweic/SVN/puretrunk/osprey-gcc-4.2.0/targia32_x8664/./gcc/ -B/open64-gcc-4.2.0/x86_64-redhat-linux/bin/ -B/open64-gcc-4.2.0/x86_64-redhat-linux/lib/ -isystem /open64-gcc-4.2.0/x86_64-redhat-linux/include -isystem /open64-gcc-4.2.0/x86_64-redhat-linux/sys-include -O2  -O2 -O0 -g -DIs_True_On  -DIN_GCC    -W -Wall -Wwrite-strings -Wstrict-prototypes -Wmissing-prototypes -Wold-style-definition  -isystem ./include  -fPIC -g -DHAVE_GTHR_DEFAULT -DIN_LIBGCC2 -D__GCC_FLOAT_NOT_NEEDED  -shared -nodefaultlibs -Wl,--soname=libgcc_s.so.1 -Wl,--version-script=libgcc/./libgcc.map -o ./libgcc_s.so.1.tmp  $(objects) -lc && rm -f ./libgcc_s.so && if [ -f ./libgcc_s.so.1 ]; then mv -f ./libgcc_s.so.1 ./libgcc_s.so.1.backup; else true; fi && mv ./libgcc_s.so.1.tmp ./libgcc_s.so.1 && ln -s libgcc_s.so.1 ./libgcc_s.so
all: ./libgcc_s.so

#
# ml: 32;@m32
# dir: 32
# flags: -m32
# libgcc_a: 32/libgcc.a
# libgcov_a: 32/libgcov.a
# libgcc_eh_a: 32/libgcc_eh.a
# libunwind_a:
#
# shlib_slibdir_qual: /../lib
# libgcc_s_so: 32/libgcc_s.so
# libunwind_so:
#

dirs += 32 libgcc/32

libgcc/32/_muldi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_muldi3 -c $(srcdir)/libgcc2.c -o libgcc/32/_muldi3_s.o
libgcc/32/_muldi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_muldi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_muldi3.o
32/libgcc.a: libgcc/32/_muldi3.o
32/libgcc_s.so: libgcc/32/_muldi3_s.o
libgcc/32/libgcc.map: libgcc/32/_muldi3_s.o
libgcc/32/_negdi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_negdi2 -c $(srcdir)/libgcc2.c -o libgcc/32/_negdi2_s.o
libgcc/32/_negdi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_negdi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_negdi2.o
32/libgcc.a: libgcc/32/_negdi2.o
32/libgcc_s.so: libgcc/32/_negdi2_s.o
libgcc/32/libgcc.map: libgcc/32/_negdi2_s.o
libgcc/32/_lshrdi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_lshrdi3 -c $(srcdir)/libgcc2.c -o libgcc/32/_lshrdi3_s.o
libgcc/32/_lshrdi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_lshrdi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_lshrdi3.o
32/libgcc.a: libgcc/32/_lshrdi3.o
32/libgcc_s.so: libgcc/32/_lshrdi3_s.o
libgcc/32/libgcc.map: libgcc/32/_lshrdi3_s.o
libgcc/32/_ashldi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_ashldi3 -c $(srcdir)/libgcc2.c -o libgcc/32/_ashldi3_s.o
libgcc/32/_ashldi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_ashldi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_ashldi3.o
32/libgcc.a: libgcc/32/_ashldi3.o
32/libgcc_s.so: libgcc/32/_ashldi3_s.o
libgcc/32/libgcc.map: libgcc/32/_ashldi3_s.o
libgcc/32/_ashrdi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_ashrdi3 -c $(srcdir)/libgcc2.c -o libgcc/32/_ashrdi3_s.o
libgcc/32/_ashrdi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_ashrdi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_ashrdi3.o
32/libgcc.a: libgcc/32/_ashrdi3.o
32/libgcc_s.so: libgcc/32/_ashrdi3_s.o
libgcc/32/libgcc.map: libgcc/32/_ashrdi3_s.o
libgcc/32/_cmpdi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_cmpdi2 -c $(srcdir)/libgcc2.c -o libgcc/32/_cmpdi2_s.o
libgcc/32/_cmpdi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_cmpdi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_cmpdi2.o
32/libgcc.a: libgcc/32/_cmpdi2.o
32/libgcc_s.so: libgcc/32/_cmpdi2_s.o
libgcc/32/libgcc.map: libgcc/32/_cmpdi2_s.o
libgcc/32/_ucmpdi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_ucmpdi2 -c $(srcdir)/libgcc2.c -o libgcc/32/_ucmpdi2_s.o
libgcc/32/_ucmpdi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_ucmpdi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_ucmpdi2.o
32/libgcc.a: libgcc/32/_ucmpdi2.o
32/libgcc_s.so: libgcc/32/_ucmpdi2_s.o
libgcc/32/libgcc.map: libgcc/32/_ucmpdi2_s.o
libgcc/32/_clear_cache_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_clear_cache -c $(srcdir)/libgcc2.c -o libgcc/32/_clear_cache_s.o
libgcc/32/_clear_cache.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_clear_cache $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_clear_cache.o
32/libgcc.a: libgcc/32/_clear_cache.o
32/libgcc_s.so: libgcc/32/_clear_cache_s.o
libgcc/32/libgcc.map: libgcc/32/_clear_cache_s.o
libgcc/32/_enable_execute_stack_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_enable_execute_stack -c $(srcdir)/libgcc2.c -o libgcc/32/_enable_execute_stack_s.o
libgcc/32/_enable_execute_stack.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_enable_execute_stack $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_enable_execute_stack.o
32/libgcc.a: libgcc/32/_enable_execute_stack.o
32/libgcc_s.so: libgcc/32/_enable_execute_stack_s.o
libgcc/32/libgcc.map: libgcc/32/_enable_execute_stack_s.o
libgcc/32/_trampoline_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_trampoline -c $(srcdir)/libgcc2.c -o libgcc/32/_trampoline_s.o
libgcc/32/_trampoline.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_trampoline $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_trampoline.o
32/libgcc.a: libgcc/32/_trampoline.o
32/libgcc_s.so: libgcc/32/_trampoline_s.o
libgcc/32/libgcc.map: libgcc/32/_trampoline_s.o
libgcc/32/__main_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL__main -c $(srcdir)/libgcc2.c -o libgcc/32/__main_s.o
libgcc/32/__main.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL__main $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/__main.o
32/libgcc.a: libgcc/32/__main.o
32/libgcc_s.so: libgcc/32/__main_s.o
libgcc/32/libgcc.map: libgcc/32/__main_s.o
libgcc/32/_absvsi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_absvsi2 -c $(srcdir)/libgcc2.c -o libgcc/32/_absvsi2_s.o
libgcc/32/_absvsi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_absvsi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_absvsi2.o
32/libgcc.a: libgcc/32/_absvsi2.o
32/libgcc_s.so: libgcc/32/_absvsi2_s.o
libgcc/32/libgcc.map: libgcc/32/_absvsi2_s.o
libgcc/32/_absvdi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_absvdi2 -c $(srcdir)/libgcc2.c -o libgcc/32/_absvdi2_s.o
libgcc/32/_absvdi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_absvdi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_absvdi2.o
32/libgcc.a: libgcc/32/_absvdi2.o
32/libgcc_s.so: libgcc/32/_absvdi2_s.o
libgcc/32/libgcc.map: libgcc/32/_absvdi2_s.o
libgcc/32/_addvsi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_addvsi3 -c $(srcdir)/libgcc2.c -o libgcc/32/_addvsi3_s.o
libgcc/32/_addvsi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_addvsi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_addvsi3.o
32/libgcc.a: libgcc/32/_addvsi3.o
32/libgcc_s.so: libgcc/32/_addvsi3_s.o
libgcc/32/libgcc.map: libgcc/32/_addvsi3_s.o
libgcc/32/_addvdi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_addvdi3 -c $(srcdir)/libgcc2.c -o libgcc/32/_addvdi3_s.o
libgcc/32/_addvdi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_addvdi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_addvdi3.o
32/libgcc.a: libgcc/32/_addvdi3.o
32/libgcc_s.so: libgcc/32/_addvdi3_s.o
libgcc/32/libgcc.map: libgcc/32/_addvdi3_s.o
libgcc/32/_subvsi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_subvsi3 -c $(srcdir)/libgcc2.c -o libgcc/32/_subvsi3_s.o
libgcc/32/_subvsi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_subvsi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_subvsi3.o
32/libgcc.a: libgcc/32/_subvsi3.o
32/libgcc_s.so: libgcc/32/_subvsi3_s.o
libgcc/32/libgcc.map: libgcc/32/_subvsi3_s.o
libgcc/32/_subvdi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_subvdi3 -c $(srcdir)/libgcc2.c -o libgcc/32/_subvdi3_s.o
libgcc/32/_subvdi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_subvdi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_subvdi3.o
32/libgcc.a: libgcc/32/_subvdi3.o
32/libgcc_s.so: libgcc/32/_subvdi3_s.o
libgcc/32/libgcc.map: libgcc/32/_subvdi3_s.o
libgcc/32/_mulvsi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_mulvsi3 -c $(srcdir)/libgcc2.c -o libgcc/32/_mulvsi3_s.o
libgcc/32/_mulvsi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_mulvsi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_mulvsi3.o
32/libgcc.a: libgcc/32/_mulvsi3.o
32/libgcc_s.so: libgcc/32/_mulvsi3_s.o
libgcc/32/libgcc.map: libgcc/32/_mulvsi3_s.o
libgcc/32/_mulvdi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_mulvdi3 -c $(srcdir)/libgcc2.c -o libgcc/32/_mulvdi3_s.o
libgcc/32/_mulvdi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_mulvdi3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_mulvdi3.o
32/libgcc.a: libgcc/32/_mulvdi3.o
32/libgcc_s.so: libgcc/32/_mulvdi3_s.o
libgcc/32/libgcc.map: libgcc/32/_mulvdi3_s.o
libgcc/32/_negvsi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_negvsi2 -c $(srcdir)/libgcc2.c -o libgcc/32/_negvsi2_s.o
libgcc/32/_negvsi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_negvsi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_negvsi2.o
32/libgcc.a: libgcc/32/_negvsi2.o
32/libgcc_s.so: libgcc/32/_negvsi2_s.o
libgcc/32/libgcc.map: libgcc/32/_negvsi2_s.o
libgcc/32/_negvdi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_negvdi2 -c $(srcdir)/libgcc2.c -o libgcc/32/_negvdi2_s.o
libgcc/32/_negvdi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_negvdi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_negvdi2.o
32/libgcc.a: libgcc/32/_negvdi2.o
32/libgcc_s.so: libgcc/32/_negvdi2_s.o
libgcc/32/libgcc.map: libgcc/32/_negvdi2_s.o
libgcc/32/_ctors_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_ctors -c $(srcdir)/libgcc2.c -o libgcc/32/_ctors_s.o
libgcc/32/_ctors.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_ctors $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_ctors.o
32/libgcc.a: libgcc/32/_ctors.o
32/libgcc_s.so: libgcc/32/_ctors_s.o
libgcc/32/libgcc.map: libgcc/32/_ctors_s.o
libgcc/32/_ffssi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_ffssi2 -c $(srcdir)/libgcc2.c -o libgcc/32/_ffssi2_s.o
libgcc/32/_ffssi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_ffssi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_ffssi2.o
32/libgcc.a: libgcc/32/_ffssi2.o
32/libgcc_s.so: libgcc/32/_ffssi2_s.o
libgcc/32/libgcc.map: libgcc/32/_ffssi2_s.o
libgcc/32/_ffsdi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_ffsdi2 -c $(srcdir)/libgcc2.c -o libgcc/32/_ffsdi2_s.o
libgcc/32/_ffsdi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_ffsdi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_ffsdi2.o
32/libgcc.a: libgcc/32/_ffsdi2.o
32/libgcc_s.so: libgcc/32/_ffsdi2_s.o
libgcc/32/libgcc.map: libgcc/32/_ffsdi2_s.o
libgcc/32/_clz_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_clz -c $(srcdir)/libgcc2.c -o libgcc/32/_clz_s.o
libgcc/32/_clz.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_clz $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_clz.o
32/libgcc.a: libgcc/32/_clz.o
32/libgcc_s.so: libgcc/32/_clz_s.o
libgcc/32/libgcc.map: libgcc/32/_clz_s.o
libgcc/32/_clzsi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_clzsi2 -c $(srcdir)/libgcc2.c -o libgcc/32/_clzsi2_s.o
libgcc/32/_clzsi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_clzsi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_clzsi2.o
32/libgcc.a: libgcc/32/_clzsi2.o
32/libgcc_s.so: libgcc/32/_clzsi2_s.o
libgcc/32/libgcc.map: libgcc/32/_clzsi2_s.o
libgcc/32/_clzdi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_clzdi2 -c $(srcdir)/libgcc2.c -o libgcc/32/_clzdi2_s.o
libgcc/32/_clzdi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_clzdi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_clzdi2.o
32/libgcc.a: libgcc/32/_clzdi2.o
32/libgcc_s.so: libgcc/32/_clzdi2_s.o
libgcc/32/libgcc.map: libgcc/32/_clzdi2_s.o
libgcc/32/_ctzsi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_ctzsi2 -c $(srcdir)/libgcc2.c -o libgcc/32/_ctzsi2_s.o
libgcc/32/_ctzsi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_ctzsi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_ctzsi2.o
32/libgcc.a: libgcc/32/_ctzsi2.o
32/libgcc_s.so: libgcc/32/_ctzsi2_s.o
libgcc/32/libgcc.map: libgcc/32/_ctzsi2_s.o
libgcc/32/_ctzdi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_ctzdi2 -c $(srcdir)/libgcc2.c -o libgcc/32/_ctzdi2_s.o
libgcc/32/_ctzdi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_ctzdi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_ctzdi2.o
32/libgcc.a: libgcc/32/_ctzdi2.o
32/libgcc_s.so: libgcc/32/_ctzdi2_s.o
libgcc/32/libgcc.map: libgcc/32/_ctzdi2_s.o
libgcc/32/_popcount_tab_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_popcount_tab -c $(srcdir)/libgcc2.c -o libgcc/32/_popcount_tab_s.o
libgcc/32/_popcount_tab.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_popcount_tab $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_popcount_tab.o
32/libgcc.a: libgcc/32/_popcount_tab.o
32/libgcc_s.so: libgcc/32/_popcount_tab_s.o
libgcc/32/libgcc.map: libgcc/32/_popcount_tab_s.o
libgcc/32/_popcountsi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_popcountsi2 -c $(srcdir)/libgcc2.c -o libgcc/32/_popcountsi2_s.o
libgcc/32/_popcountsi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_popcountsi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_popcountsi2.o
32/libgcc.a: libgcc/32/_popcountsi2.o
32/libgcc_s.so: libgcc/32/_popcountsi2_s.o
libgcc/32/libgcc.map: libgcc/32/_popcountsi2_s.o
libgcc/32/_popcountdi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_popcountdi2 -c $(srcdir)/libgcc2.c -o libgcc/32/_popcountdi2_s.o
libgcc/32/_popcountdi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_popcountdi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_popcountdi2.o
32/libgcc.a: libgcc/32/_popcountdi2.o
32/libgcc_s.so: libgcc/32/_popcountdi2_s.o
libgcc/32/libgcc.map: libgcc/32/_popcountdi2_s.o
libgcc/32/_paritysi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_paritysi2 -c $(srcdir)/libgcc2.c -o libgcc/32/_paritysi2_s.o
libgcc/32/_paritysi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_paritysi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_paritysi2.o
32/libgcc.a: libgcc/32/_paritysi2.o
32/libgcc_s.so: libgcc/32/_paritysi2_s.o
libgcc/32/libgcc.map: libgcc/32/_paritysi2_s.o
libgcc/32/_paritydi2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_paritydi2 -c $(srcdir)/libgcc2.c -o libgcc/32/_paritydi2_s.o
libgcc/32/_paritydi2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_paritydi2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_paritydi2.o
32/libgcc.a: libgcc/32/_paritydi2.o
32/libgcc_s.so: libgcc/32/_paritydi2_s.o
libgcc/32/libgcc.map: libgcc/32/_paritydi2_s.o
libgcc/32/_powisf2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_powisf2 -c $(srcdir)/libgcc2.c -o libgcc/32/_powisf2_s.o
libgcc/32/_powisf2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_powisf2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_powisf2.o
32/libgcc.a: libgcc/32/_powisf2.o
32/libgcc_s.so: libgcc/32/_powisf2_s.o
libgcc/32/libgcc.map: libgcc/32/_powisf2_s.o
libgcc/32/_powidf2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_powidf2 -c $(srcdir)/libgcc2.c -o libgcc/32/_powidf2_s.o
libgcc/32/_powidf2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_powidf2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_powidf2.o
32/libgcc.a: libgcc/32/_powidf2.o
32/libgcc_s.so: libgcc/32/_powidf2_s.o
libgcc/32/libgcc.map: libgcc/32/_powidf2_s.o
libgcc/32/_powixf2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_powixf2 -c $(srcdir)/libgcc2.c -o libgcc/32/_powixf2_s.o
libgcc/32/_powixf2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_powixf2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_powixf2.o
32/libgcc.a: libgcc/32/_powixf2.o
32/libgcc_s.so: libgcc/32/_powixf2_s.o
libgcc/32/libgcc.map: libgcc/32/_powixf2_s.o
libgcc/32/_powitf2_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_powitf2 -c $(srcdir)/libgcc2.c -o libgcc/32/_powitf2_s.o
libgcc/32/_powitf2.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_powitf2 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_powitf2.o
32/libgcc.a: libgcc/32/_powitf2.o
32/libgcc_s.so: libgcc/32/_powitf2_s.o
libgcc/32/libgcc.map: libgcc/32/_powitf2_s.o
libgcc/32/_mulsc3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_mulsc3 -c $(srcdir)/libgcc2.c -o libgcc/32/_mulsc3_s.o
libgcc/32/_mulsc3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_mulsc3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_mulsc3.o
32/libgcc.a: libgcc/32/_mulsc3.o
32/libgcc_s.so: libgcc/32/_mulsc3_s.o
libgcc/32/libgcc.map: libgcc/32/_mulsc3_s.o
libgcc/32/_muldc3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_muldc3 -c $(srcdir)/libgcc2.c -o libgcc/32/_muldc3_s.o
libgcc/32/_muldc3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_muldc3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_muldc3.o
32/libgcc.a: libgcc/32/_muldc3.o
32/libgcc_s.so: libgcc/32/_muldc3_s.o
libgcc/32/libgcc.map: libgcc/32/_muldc3_s.o
libgcc/32/_mulxc3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_mulxc3 -c $(srcdir)/libgcc2.c -o libgcc/32/_mulxc3_s.o
libgcc/32/_mulxc3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_mulxc3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_mulxc3.o
32/libgcc.a: libgcc/32/_mulxc3.o
32/libgcc_s.so: libgcc/32/_mulxc3_s.o
libgcc/32/libgcc.map: libgcc/32/_mulxc3_s.o
libgcc/32/_multc3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_multc3 -c $(srcdir)/libgcc2.c -o libgcc/32/_multc3_s.o
libgcc/32/_multc3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_multc3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_multc3.o
32/libgcc.a: libgcc/32/_multc3.o
32/libgcc_s.so: libgcc/32/_multc3_s.o
libgcc/32/libgcc.map: libgcc/32/_multc3_s.o
libgcc/32/_divsc3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_divsc3 -c $(srcdir)/libgcc2.c -o libgcc/32/_divsc3_s.o
libgcc/32/_divsc3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_divsc3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_divsc3.o
32/libgcc.a: libgcc/32/_divsc3.o
32/libgcc_s.so: libgcc/32/_divsc3_s.o
libgcc/32/libgcc.map: libgcc/32/_divsc3_s.o
libgcc/32/_divdc3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_divdc3 -c $(srcdir)/libgcc2.c -o libgcc/32/_divdc3_s.o
libgcc/32/_divdc3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_divdc3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_divdc3.o
32/libgcc.a: libgcc/32/_divdc3.o
32/libgcc_s.so: libgcc/32/_divdc3_s.o
libgcc/32/libgcc.map: libgcc/32/_divdc3_s.o
libgcc/32/_divxc3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_divxc3 -c $(srcdir)/libgcc2.c -o libgcc/32/_divxc3_s.o
libgcc/32/_divxc3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_divxc3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_divxc3.o
32/libgcc.a: libgcc/32/_divxc3.o
32/libgcc_s.so: libgcc/32/_divxc3_s.o
libgcc/32/libgcc.map: libgcc/32/_divxc3_s.o
libgcc/32/_divtc3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_divtc3 -c $(srcdir)/libgcc2.c -o libgcc/32/_divtc3_s.o
libgcc/32/_divtc3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_divtc3 $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_divtc3.o
32/libgcc.a: libgcc/32/_divtc3.o
32/libgcc_s.so: libgcc/32/_divtc3_s.o
libgcc/32/libgcc.map: libgcc/32/_divtc3_s.o
libgcc/32/_fixunssfsi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_fixunssfsi -c $(srcdir)/libgcc2.c -o libgcc/32/_fixunssfsi_s.o
libgcc/32/_fixunssfsi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_fixunssfsi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_fixunssfsi.o
32/libgcc.a: libgcc/32/_fixunssfsi.o
32/libgcc_s.so: libgcc/32/_fixunssfsi_s.o
libgcc/32/libgcc.map: libgcc/32/_fixunssfsi_s.o
libgcc/32/_fixunsdfsi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_fixunsdfsi -c $(srcdir)/libgcc2.c -o libgcc/32/_fixunsdfsi_s.o
libgcc/32/_fixunsdfsi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_fixunsdfsi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_fixunsdfsi.o
32/libgcc.a: libgcc/32/_fixunsdfsi.o
32/libgcc_s.so: libgcc/32/_fixunsdfsi_s.o
libgcc/32/libgcc.map: libgcc/32/_fixunsdfsi_s.o
libgcc/32/_fixunsxfsi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_fixunsxfsi -c $(srcdir)/libgcc2.c -o libgcc/32/_fixunsxfsi_s.o
libgcc/32/_fixunsxfsi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_fixunsxfsi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_fixunsxfsi.o
32/libgcc.a: libgcc/32/_fixunsxfsi.o
32/libgcc_s.so: libgcc/32/_fixunsxfsi_s.o
libgcc/32/libgcc.map: libgcc/32/_fixunsxfsi_s.o
libgcc/32/_fixsfdi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_fixsfdi -c $(srcdir)/libgcc2.c -o libgcc/32/_fixsfdi_s.o
libgcc/32/_fixsfdi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_fixsfdi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_fixsfdi.o
32/libgcc.a: libgcc/32/_fixsfdi.o
32/libgcc_s.so: libgcc/32/_fixsfdi_s.o
libgcc/32/libgcc.map: libgcc/32/_fixsfdi_s.o
libgcc/32/_fixunssfdi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_fixunssfdi -c $(srcdir)/libgcc2.c -o libgcc/32/_fixunssfdi_s.o
libgcc/32/_fixunssfdi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_fixunssfdi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_fixunssfdi.o
32/libgcc.a: libgcc/32/_fixunssfdi.o
32/libgcc_s.so: libgcc/32/_fixunssfdi_s.o
libgcc/32/libgcc.map: libgcc/32/_fixunssfdi_s.o
libgcc/32/_floatdisf_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_floatdisf -c $(srcdir)/libgcc2.c -o libgcc/32/_floatdisf_s.o
libgcc/32/_floatdisf.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_floatdisf $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_floatdisf.o
32/libgcc.a: libgcc/32/_floatdisf.o
32/libgcc_s.so: libgcc/32/_floatdisf_s.o
libgcc/32/libgcc.map: libgcc/32/_floatdisf_s.o
libgcc/32/_floatundisf_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_floatundisf -c $(srcdir)/libgcc2.c -o libgcc/32/_floatundisf_s.o
libgcc/32/_floatundisf.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_floatundisf $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_floatundisf.o
32/libgcc.a: libgcc/32/_floatundisf.o
32/libgcc_s.so: libgcc/32/_floatundisf_s.o
libgcc/32/libgcc.map: libgcc/32/_floatundisf_s.o
libgcc/32/_fixdfdi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_fixdfdi -c $(srcdir)/libgcc2.c -o libgcc/32/_fixdfdi_s.o
libgcc/32/_fixdfdi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_fixdfdi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_fixdfdi.o
32/libgcc.a: libgcc/32/_fixdfdi.o
32/libgcc_s.so: libgcc/32/_fixdfdi_s.o
libgcc/32/libgcc.map: libgcc/32/_fixdfdi_s.o
libgcc/32/_fixunsdfdi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_fixunsdfdi -c $(srcdir)/libgcc2.c -o libgcc/32/_fixunsdfdi_s.o
libgcc/32/_fixunsdfdi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_fixunsdfdi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_fixunsdfdi.o
32/libgcc.a: libgcc/32/_fixunsdfdi.o
32/libgcc_s.so: libgcc/32/_fixunsdfdi_s.o
libgcc/32/libgcc.map: libgcc/32/_fixunsdfdi_s.o
libgcc/32/_floatdidf_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_floatdidf -c $(srcdir)/libgcc2.c -o libgcc/32/_floatdidf_s.o
libgcc/32/_floatdidf.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_floatdidf $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_floatdidf.o
32/libgcc.a: libgcc/32/_floatdidf.o
32/libgcc_s.so: libgcc/32/_floatdidf_s.o
libgcc/32/libgcc.map: libgcc/32/_floatdidf_s.o
libgcc/32/_floatundidf_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_floatundidf -c $(srcdir)/libgcc2.c -o libgcc/32/_floatundidf_s.o
libgcc/32/_floatundidf.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_floatundidf $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_floatundidf.o
32/libgcc.a: libgcc/32/_floatundidf.o
32/libgcc_s.so: libgcc/32/_floatundidf_s.o
libgcc/32/libgcc.map: libgcc/32/_floatundidf_s.o
libgcc/32/_fixxfdi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_fixxfdi -c $(srcdir)/libgcc2.c -o libgcc/32/_fixxfdi_s.o
libgcc/32/_fixxfdi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_fixxfdi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_fixxfdi.o
32/libgcc.a: libgcc/32/_fixxfdi.o
32/libgcc_s.so: libgcc/32/_fixxfdi_s.o
libgcc/32/libgcc.map: libgcc/32/_fixxfdi_s.o
libgcc/32/_fixunsxfdi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_fixunsxfdi -c $(srcdir)/libgcc2.c -o libgcc/32/_fixunsxfdi_s.o
libgcc/32/_fixunsxfdi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_fixunsxfdi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_fixunsxfdi.o
32/libgcc.a: libgcc/32/_fixunsxfdi.o
32/libgcc_s.so: libgcc/32/_fixunsxfdi_s.o
libgcc/32/libgcc.map: libgcc/32/_fixunsxfdi_s.o
libgcc/32/_floatdixf_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_floatdixf -c $(srcdir)/libgcc2.c -o libgcc/32/_floatdixf_s.o
libgcc/32/_floatdixf.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_floatdixf $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_floatdixf.o
32/libgcc.a: libgcc/32/_floatdixf.o
32/libgcc_s.so: libgcc/32/_floatdixf_s.o
libgcc/32/libgcc.map: libgcc/32/_floatdixf_s.o
libgcc/32/_floatundixf_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_floatundixf -c $(srcdir)/libgcc2.c -o libgcc/32/_floatundixf_s.o
libgcc/32/_floatundixf.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_floatundixf $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_floatundixf.o
32/libgcc.a: libgcc/32/_floatundixf.o
32/libgcc_s.so: libgcc/32/_floatundixf_s.o
libgcc/32/libgcc.map: libgcc/32/_floatundixf_s.o
libgcc/32/_fixtfdi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_fixtfdi -c $(srcdir)/libgcc2.c -o libgcc/32/_fixtfdi_s.o
libgcc/32/_fixtfdi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_fixtfdi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_fixtfdi.o
32/libgcc.a: libgcc/32/_fixtfdi.o
32/libgcc_s.so: libgcc/32/_fixtfdi_s.o
libgcc/32/libgcc.map: libgcc/32/_fixtfdi_s.o
libgcc/32/_fixunstfdi_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_fixunstfdi -c $(srcdir)/libgcc2.c -o libgcc/32/_fixunstfdi_s.o
libgcc/32/_fixunstfdi.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_fixunstfdi $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_fixunstfdi.o
32/libgcc.a: libgcc/32/_fixunstfdi.o
32/libgcc_s.so: libgcc/32/_fixunstfdi_s.o
libgcc/32/libgcc.map: libgcc/32/_fixunstfdi_s.o
libgcc/32/_floatditf_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_floatditf -c $(srcdir)/libgcc2.c -o libgcc/32/_floatditf_s.o
libgcc/32/_floatditf.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_floatditf $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_floatditf.o
32/libgcc.a: libgcc/32/_floatditf.o
32/libgcc_s.so: libgcc/32/_floatditf_s.o
libgcc/32/libgcc.map: libgcc/32/_floatditf_s.o
libgcc/32/_floatunditf_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_floatunditf -c $(srcdir)/libgcc2.c -o libgcc/32/_floatunditf_s.o
libgcc/32/_floatunditf.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_floatunditf $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_floatunditf.o
32/libgcc.a: libgcc/32/_floatunditf.o
32/libgcc_s.so: libgcc/32/_floatunditf_s.o
libgcc/32/libgcc.map: libgcc/32/_floatunditf_s.o
libgcc/32/_eprintf.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_eprintf $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/_eprintf.o
32/libgcc.a: libgcc/32/_eprintf.o
libgcc/32/__gcc_bcmp.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL__gcc_bcmp $(vis_hide) -c $(srcdir)/libgcc2.c -o libgcc/32/__gcc_bcmp.o
32/libgcc.a: libgcc/32/__gcc_bcmp.o
libgcc/32/_divdi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_divdi3 -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/32/_divdi3_s.o
libgcc/32/_divdi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_divdi3 $(vis_hide) -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/32/_divdi3.o
32/libgcc.a: libgcc/32/_divdi3.o
32/libgcc_s.so: libgcc/32/_divdi3_s.o
libgcc/32/libgcc.map: libgcc/32/_divdi3_s.o
libgcc/32/_moddi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_moddi3 -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/32/_moddi3_s.o
libgcc/32/_moddi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_moddi3 $(vis_hide) -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/32/_moddi3.o
32/libgcc.a: libgcc/32/_moddi3.o
32/libgcc_s.so: libgcc/32/_moddi3_s.o
libgcc/32/libgcc.map: libgcc/32/_moddi3_s.o
libgcc/32/_udivdi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_udivdi3 -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/32/_udivdi3_s.o
libgcc/32/_udivdi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_udivdi3 $(vis_hide) -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/32/_udivdi3.o
32/libgcc.a: libgcc/32/_udivdi3.o
32/libgcc_s.so: libgcc/32/_udivdi3_s.o
libgcc/32/libgcc.map: libgcc/32/_udivdi3_s.o
libgcc/32/_umoddi3_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_umoddi3 -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/32/_umoddi3_s.o
libgcc/32/_umoddi3.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_umoddi3 $(vis_hide) -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/32/_umoddi3.o
32/libgcc.a: libgcc/32/_umoddi3.o
32/libgcc_s.so: libgcc/32/_umoddi3_s.o
libgcc/32/libgcc.map: libgcc/32/_umoddi3_s.o
libgcc/32/_udiv_w_sdiv_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_udiv_w_sdiv -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/32/_udiv_w_sdiv_s.o
libgcc/32/_udiv_w_sdiv.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_udiv_w_sdiv $(vis_hide) -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/32/_udiv_w_sdiv.o
32/libgcc.a: libgcc/32/_udiv_w_sdiv.o
32/libgcc_s.so: libgcc/32/_udiv_w_sdiv_s.o
libgcc/32/libgcc.map: libgcc/32/_udiv_w_sdiv_s.o
libgcc/32/_udivmoddi4_s.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -DL_udivmoddi4 -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/32/_udivmoddi4_s.o
libgcc/32/_udivmoddi4.o: stmp-dirs $(srcdir)/libgcc2.c $(srcdir)/libgcc2.h gbl-ctors.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -DL_udivmoddi4 $(vis_hide) -fexceptions -fnon-call-exceptions -c $(srcdir)/libgcc2.c -o libgcc/32/_udivmoddi4.o
32/libgcc.a: libgcc/32/_udivmoddi4.o
32/libgcc_s.so: libgcc/32/_udivmoddi4_s.o
libgcc/32/libgcc.map: libgcc/32/_udivmoddi4_s.o
libgcc/32/unwind-dw2.o: stmp-dirs ../../gcc/unwind-dw2.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -fexceptions $(vis_hide) -c ../../gcc/unwind-dw2.c -o libgcc/32/unwind-dw2.o
32/libgcc_eh.a: libgcc/32/unwind-dw2.o
libgcc/32/unwind-dw2-fde-glibc.o: stmp-dirs ../../gcc/unwind-dw2-fde-glibc.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -fexceptions $(vis_hide) -c ../../gcc/unwind-dw2-fde-glibc.c -o libgcc/32/unwind-dw2-fde-glibc.o
32/libgcc_eh.a: libgcc/32/unwind-dw2-fde-glibc.o
libgcc/32/unwind-sjlj.o: stmp-dirs ../../gcc/unwind-sjlj.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -fexceptions $(vis_hide) -c ../../gcc/unwind-sjlj.c -o libgcc/32/unwind-sjlj.o
32/libgcc_eh.a: libgcc/32/unwind-sjlj.o
libgcc/32/gthr-gnat.o: stmp-dirs ../../gcc/gthr-gnat.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -fexceptions $(vis_hide) -c ../../gcc/gthr-gnat.c -o libgcc/32/gthr-gnat.o
32/libgcc_eh.a: libgcc/32/gthr-gnat.o
libgcc/32/unwind-c.o: stmp-dirs ../../gcc/unwind-c.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -m32 -fexceptions $(vis_hide) -c ../../gcc/unwind-c.c -o libgcc/32/unwind-c.o
32/libgcc_eh.a: libgcc/32/unwind-c.o
libgcc/32/unwind-dw2_s.o: stmp-dirs ../../gcc/unwind-dw2.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -fexceptions -c ../../gcc/unwind-dw2.c -o libgcc/32/unwind-dw2_s.o
32/libgcc_s.so: libgcc/32/unwind-dw2_s.o
libgcc/32/libgcc.map: libgcc/32/unwind-dw2_s.o
libgcc/32/unwind-dw2-fde-glibc_s.o: stmp-dirs ../../gcc/unwind-dw2-fde-glibc.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -fexceptions -c ../../gcc/unwind-dw2-fde-glibc.c -o libgcc/32/unwind-dw2-fde-glibc_s.o
32/libgcc_s.so: libgcc/32/unwind-dw2-fde-glibc_s.o
libgcc/32/libgcc.map: libgcc/32/unwind-dw2-fde-glibc_s.o
libgcc/32/unwind-sjlj_s.o: stmp-dirs ../../gcc/unwind-sjlj.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -fexceptions -c ../../gcc/unwind-sjlj.c -o libgcc/32/unwind-sjlj_s.o
32/libgcc_s.so: libgcc/32/unwind-sjlj_s.o
libgcc/32/libgcc.map: libgcc/32/unwind-sjlj_s.o
libgcc/32/gthr-gnat_s.o: stmp-dirs ../../gcc/gthr-gnat.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -fexceptions -c ../../gcc/gthr-gnat.c -o libgcc/32/gthr-gnat_s.o
32/libgcc_s.so: libgcc/32/gthr-gnat_s.o
libgcc/32/libgcc.map: libgcc/32/gthr-gnat_s.o
libgcc/32/unwind-c_s.o: stmp-dirs ../../gcc/unwind-c.c unwind.inc unwind-dw2-fde.h unwind-dw2-fde.c $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES) -DSHARED -m32 -fexceptions -c ../../gcc/unwind-c.c -o libgcc/32/unwind-c_s.o
32/libgcc_s.so: libgcc/32/unwind-c_s.o
libgcc/32/libgcc.map: libgcc/32/unwind-c_s.o
libgcc/32/_gcov.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -m32 -DL_gcov -c $(srcdir)/libgcov.c -o libgcc/32/_gcov.o
32/libgcov.a: libgcc/32/_gcov.o
libgcc/32/_gcov_merge_add.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -m32 -DL_gcov_merge_add -c $(srcdir)/libgcov.c -o libgcc/32/_gcov_merge_add.o
32/libgcov.a: libgcc/32/_gcov_merge_add.o
libgcc/32/_gcov_merge_single.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -m32 -DL_gcov_merge_single -c $(srcdir)/libgcov.c -o libgcc/32/_gcov_merge_single.o
32/libgcov.a: libgcc/32/_gcov_merge_single.o
libgcc/32/_gcov_merge_delta.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -m32 -DL_gcov_merge_delta -c $(srcdir)/libgcov.c -o libgcc/32/_gcov_merge_delta.o
32/libgcov.a: libgcc/32/_gcov_merge_delta.o
libgcc/32/_gcov_fork.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -m32 -DL_gcov_fork -c $(srcdir)/libgcov.c -o libgcc/32/_gcov_fork.o
32/libgcov.a: libgcc/32/_gcov_fork.o
libgcc/32/_gcov_execl.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -m32 -DL_gcov_execl -c $(srcdir)/libgcov.c -o libgcc/32/_gcov_execl.o
32/libgcov.a: libgcc/32/_gcov_execl.o
libgcc/32/_gcov_execlp.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -m32 -DL_gcov_execlp -c $(srcdir)/libgcov.c -o libgcc/32/_gcov_execlp.o
32/libgcov.a: libgcc/32/_gcov_execlp.o
libgcc/32/_gcov_execle.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -m32 -DL_gcov_execle -c $(srcdir)/libgcov.c -o libgcc/32/_gcov_execle.o
32/libgcov.a: libgcc/32/_gcov_execle.o
libgcc/32/_gcov_execv.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -m32 -DL_gcov_execv -c $(srcdir)/libgcov.c -o libgcc/32/_gcov_execv.o
32/libgcov.a: libgcc/32/_gcov_execv.o
libgcc/32/_gcov_execvp.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -m32 -DL_gcov_execvp -c $(srcdir)/libgcov.c -o libgcc/32/_gcov_execvp.o
32/libgcov.a: libgcc/32/_gcov_execvp.o
libgcc/32/_gcov_execve.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -m32 -DL_gcov_execve -c $(srcdir)/libgcov.c -o libgcc/32/_gcov_execve.o
32/libgcov.a: libgcc/32/_gcov_execve.o
libgcc/32/_gcov_interval_profiler.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -m32 -DL_gcov_interval_profiler -c $(srcdir)/libgcov.c -o libgcc/32/_gcov_interval_profiler.o
32/libgcov.a: libgcc/32/_gcov_interval_profiler.o
libgcc/32/_gcov_pow2_profiler.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -m32 -DL_gcov_pow2_profiler -c $(srcdir)/libgcov.c -o libgcc/32/_gcov_pow2_profiler.o
32/libgcov.a: libgcc/32/_gcov_pow2_profiler.o
libgcc/32/_gcov_one_value_profiler.o: stmp-dirs $(srcdir)/libgcov.c $(srcdir)/gcov-io.h $(srcdir)/gcov-io.c gcov-iov.h $(CONFIG_H) coretypes.h $(TM_H) $(MACHMODE_H) longlong.h config.status stmp-int-hdrs tsystem.h
	$(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -m32 -DL_gcov_one_value_profiler -c $(srcdir)/libgcov.c -o libgcc/32/_gcov_one_value_profiler.o
32/libgcov.a: libgcc/32/_gcov_one_value_profiler.o

extra32: stmp-dirs
	$(MAKE) GCC_FOR_TARGET="$(GCC_FOR_TARGET)" \
	  AR_FOR_TARGET="$(AR_FOR_TARGET)" \
	  AR_CREATE_FOR_TARGET="$(AR_CREATE_FOR_TARGET)" \
	  AR_EXTRACT_FOR_TARGET="$(AR_EXTRACT_FOR_TARGET)" \
	  AR_FLAGS_FOR_TARGET="$(AR_FLAGS_FOR_TARGET)" \
	  CC="$(CC)" CFLAGS="$(CFLAGS)" \
	  BUILD_PREFIX="$(BUILD_PREFIX)" \
	  BUILD_PREFIX_1="$(BUILD_PREFIX_1)" \
	  LANGUAGES="$(LANGUAGES)" \
	  LIBGCC2_CFLAGS="$(LIBGCC2_CFLAGS) -m32 "  \
	  MULTILIB_CFLAGS=" -m32" T=32/ 32/crtbegin.o 32/crtend.o 32/crtbeginS.o 32/crtendS.o 32/crtbeginT.o 32/crtfastmath.o
all: extra32
32/libgcc_s.so: extra32

libgcc/32/libgcc.map: ../../gcc/mkmap-symver.awk ../../gcc/libgcc-std.ver ../../gcc/config/i386/libgcc-x86_64-glibc.ver
	{ $(NM_FOR_TARGET) -pg $(objects); echo %%; \
	  cat ../../gcc/libgcc-std.ver ../../gcc/config/i386/libgcc-x86_64-glibc.ver \
	    | sed -e '/^[   ]*#/d' \
	          -e 's/^%\(if\|else\|elif\|endif\|define\)/#\1/' \
	    | $(GCC_FOR_TARGET) $(LIBGCC2_CFLAGS) $(INCLUDES)  -m32 -E -xassembler-with-cpp -; \
	} | $(AWK) -f ../../gcc/mkmap-symver.awk  > libgcc/32/tmp-libgcc.map
	mv 'libgcc/32/tmp-libgcc.map' $@
32/libgcc_s.so: libgcc/32/libgcc.map

32/libgcc.a: stmp-dirs
	-rm -f 32/libgcc.a
	$(AR_CREATE_FOR_TARGET) 32/libgcc.a $(objects)
	$(RANLIB_FOR_TARGET) 32/libgcc.a
all: 32/libgcc.a

32/libgcov.a: stmp-dirs
	-rm -f 32/libgcov.a
	$(AR_CREATE_FOR_TARGET) 32/libgcov.a $(objects)
	$(RANLIB_FOR_TARGET) 32/libgcov.a
all: 32/libgcov.a

32/libgcc_eh.a: stmp-dirs
	-rm -f 32/libgcc_eh.a
	$(AR_CREATE_FOR_TARGET) 32/libgcc_eh.a $(objects)
	$(RANLIB_FOR_TARGET) 32/libgcc_eh.a
all: 32/libgcc_eh.a

32/libgcc_s.so: stmp-dirs 
	/proj/opensrc_nobackup/zhiweic/SVN/puretrunk/osprey-gcc-4.2.0/targia32_x8664/./gcc/xgcc -B/proj/opensrc_nobackup/zhiweic/SVN/puretrunk/osprey-gcc-4.2.0/targia32_x8664/./gcc/ -B/open64-gcc-4.2.0/x86_64-redhat-linux/bin/ -B/open64-gcc-4.2.0/x86_64-redhat-linux/lib/ -isystem /open64-gcc-4.2.0/x86_64-redhat-linux/include -isystem /open64-gcc-4.2.0/x86_64-redhat-linux/sys-include -O2  -O2 -O0 -g -DIs_True_On  -DIN_GCC    -W -Wall -Wwrite-strings -Wstrict-prototypes -Wmissing-prototypes -Wold-style-definition  -isystem ./include  -fPIC -g -DHAVE_GTHR_DEFAULT -DIN_LIBGCC2 -D__GCC_FLOAT_NOT_NEEDED  -shared -nodefaultlibs -Wl,--soname=libgcc_s.so.1 -Wl,--version-script=libgcc/32/libgcc.map -o 32/libgcc_s.so.1.tmp  -m32 $(objects) -lc && rm -f 32/libgcc_s.so && if [ -f 32/libgcc_s.so.1 ]; then mv -f 32/libgcc_s.so.1 32/libgcc_s.so.1.backup; else true; fi && mv 32/libgcc_s.so.1.tmp 32/libgcc_s.so.1 && ln -s libgcc_s.so.1 32/libgcc_s.so
all: 32/libgcc_s.so

libgcc-stage-start:
	for dir in $(dirs); do \
	  if [ -d $(stage)/$$dir ]; then :; \
	  else /bin/sh ../../gcc/../mkinstalldirs $(stage)/$$dir; fi; \
	done
	-for dir in $(dirs); do \
	  mv $$dir/*.o $(stage)/$$dir; \
	  mv $$dir/*.vis $(stage)/$$dir; \
    mv $$dir/*.map $(stage)/$$dir; \
	  test ! -f $$dir/libgcc.a || mv $$dir/lib* $(stage)/$$dir; \
	done

stmp-dirs:
	for d in $(dirs); do \
	  if [ -d $$d ]; then true; else /bin/sh ../../gcc/../mkinstalldirs $$d; fi; \
	done
	if [ -f stmp-dirs ]; then true; else touch stmp-dirs; fi

install: all
	$(INSTALL_DATA) ./libgcc.a $(DESTDIR)$(libsubdir)/
	chmod 644 $(DESTDIR)$(libsubdir)/libgcc.a
	$(RANLIB_FOR_TARGET) $(DESTDIR)$(libsubdir)/libgcc.a
	$(INSTALL_DATA) ./libgcov.a $(DESTDIR)$(libsubdir)/
	chmod 644 $(DESTDIR)$(libsubdir)/libgcov.a
	$(RANLIB_FOR_TARGET) $(DESTDIR)$(libsubdir)/libgcov.a
	$(INSTALL_DATA) ./libgcc_eh.a $(DESTDIR)$(libsubdir)/
	chmod 644 $(DESTDIR)$(libsubdir)/libgcc_eh.a
	$(RANLIB_FOR_TARGET) $(DESTDIR)$(libsubdir)/libgcc_eh.a
	$(mkinstalldirs) $(DESTDIR)$(slibdir)/../lib64; /usr/bin/install -c -m 644 ./libgcc_s.so.1 $(DESTDIR)$(slibdir)/../lib64/libgcc_s.so.1; rm -f $(DESTDIR)$(slibdir)/../lib64/libgcc_s.so; ln -s libgcc_s.so.1 $(DESTDIR)$(slibdir)/../lib64/libgcc_s.so
	if [ -d $(DESTDIR)$(libsubdir)/32 ]; then true; else /bin/sh ../../gcc/../mkinstalldirs $(DESTDIR)$(libsubdir)/32; chmod a+rx $(DESTDIR)$(libsubdir)/32; fi;
	$(INSTALL_DATA) 32/libgcc.a $(DESTDIR)$(libsubdir)/32/
	chmod 644 $(DESTDIR)$(libsubdir)/32/libgcc.a
	$(RANLIB_FOR_TARGET) $(DESTDIR)$(libsubdir)/32/libgcc.a
	$(INSTALL_DATA) 32/libgcov.a $(DESTDIR)$(libsubdir)/32/
	chmod 644 $(DESTDIR)$(libsubdir)/32/libgcov.a
	$(RANLIB_FOR_TARGET) $(DESTDIR)$(libsubdir)/32/libgcov.a
	$(INSTALL_DATA) 32/libgcc_eh.a $(DESTDIR)$(libsubdir)/32/
	chmod 644 $(DESTDIR)$(libsubdir)/32/libgcc_eh.a
	$(RANLIB_FOR_TARGET) $(DESTDIR)$(libsubdir)/32/libgcc_eh.a
	$(mkinstalldirs) $(DESTDIR)$(slibdir)/../lib; /usr/bin/install -c -m 644 32/libgcc_s.so.1 $(DESTDIR)$(slibdir)/../lib/libgcc_s.so.1; rm -f $(DESTDIR)$(slibdir)/../lib/libgcc_s.so; ln -s libgcc_s.so.1 $(DESTDIR)$(slibdir)/../lib/libgcc_s.so
	$(INSTALL_DATA) crtbegin.o $(DESTDIR)$(libsubdir)/
	$(INSTALL_DATA) 32/crtbegin.o $(DESTDIR)$(libsubdir)/32/
	$(INSTALL_DATA) crtend.o $(DESTDIR)$(libsubdir)/
	$(INSTALL_DATA) 32/crtend.o $(DESTDIR)$(libsubdir)/32/
	$(INSTALL_DATA) crtbeginS.o $(DESTDIR)$(libsubdir)/
	$(INSTALL_DATA) 32/crtbeginS.o $(DESTDIR)$(libsubdir)/32/
	$(INSTALL_DATA) crtendS.o $(DESTDIR)$(libsubdir)/
	$(INSTALL_DATA) 32/crtendS.o $(DESTDIR)$(libsubdir)/32/
	$(INSTALL_DATA) crtbeginT.o $(DESTDIR)$(libsubdir)/
	$(INSTALL_DATA) 32/crtbeginT.o $(DESTDIR)$(libsubdir)/32/
	$(INSTALL_DATA) crtfastmath.o $(DESTDIR)$(libsubdir)/
	$(INSTALL_DATA) 32/crtfastmath.o $(DESTDIR)$(libsubdir)/32/
.PHONY: all install
