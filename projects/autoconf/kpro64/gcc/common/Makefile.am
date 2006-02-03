noinst_LIBRARIES = libgcc_common.a
libgcc_common_a_SOURCES = \
	alias.c attribs.c \
	bb-reorder.c bitmap.c builtins.c \
	c-common.c c-dump.c c-format.c c-lex.c c-opts.c c-pragma.c \
		c-pretty-print.c c-semantics.c caller-save.c calls.c cfg.c \
		cfganal.c cfgbuild.c cfgcleanup.c cfglayout.c cfgloop.c \
		cfgrtl.c combine.c conflict.c convert.c cppdefault.c \
		cpperror.c cppexp.c cppfiles.c cpphash.c cppinit.c cpplex.c \
		cpplib.c cppmacro.c cppmain.c cpptrad.c cse.c cselib.c \
	dbxout.c debug.c df.c diagnostic.c doloop.c dominance.c dwarf2asm.c \
		dwarf2out.c dwarfout.c \
	emit-rtl.c et-forest.c except.c explow.c expmed.c expr.c \
	final.c flow.c fold-const.c function.c \
	gcse.c ../config/genrtl.c ggc-common.c ggc-page.c global.c graph.c \
		../config/gtype-desc.c \
	haifa-sched.c hashtable.c hooks.c \
	ifcvt.c ../config/insn-attrtab.c ../config/insn-emit.c \
		../config/insn-extract.c ../config/insn-opinit.c \
		../config/insn-output.c ../config/insn-peep.c \
		../config/insn-recog.c integrate.c intl.c \
	jump.c \
	langhooks.c lcm.c line-map.c lists.c local-alloc.c loop.c \
	main.c mbchar.c mkdeps.c \
	optabs.c \
	params.c predict.c prefix.c print-rtl.c print-tree.c profile.c \
	ra.c ra-build.c ra-colorize.c ra-debug.c ra-rewrite.c real.c recog.c \
		reg-stack.c regclass.c regmove.c regrename.c reload.c \
		reload1.c reorg.c resource.c rtl.c rtl-error.c rtlanal.c \
	sbitmap.c sched-deps.c sched-ebb.c sched-rgn.c sched-vis.c sdbout.c \
		sibcall.c simplify-rtx.c ssa.c ssa-ccp.c ssa-dce.c stmt.c \
		stor-layout.c stringpool.c \
	timevar.c toplev.c tracer.c tree.c tree-dump.c tree-inline.c \
	unroll.c \
	varasm.c varray.c version.c vmsdbgout.c \
	xcoffout.c

_topgcc = ${top_srcdir}/contrib/gcc
VPATH = ${_topgcc}/gcc
AM_CPPFLAGS = -DIN_GCC -DPREFIX=\"${prefix}\" -DTARGET_NAME=\"${GCC_TARGET_ALIAS}\" \
	-I${_topgcc}/gcc -I${_topgcc}/gcc/config -I${_topgcc}/include \
	-I../config
