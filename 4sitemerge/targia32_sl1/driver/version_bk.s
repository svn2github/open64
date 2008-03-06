	.file	"version_bk.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl cset_rev
	.section	.rodata
.LC0:
	.string	"unknown"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 4
	.type	cset_rev, @object
	.size	cset_rev, 4
cset_rev:
	.long	.LC0
.globl cset_key
	.align 4
	.type	cset_key, @object
	.size	cset_key, 4
cset_key:
	.long	.LC0
.globl build_root
	.align 4
	.type	build_root, @object
	.size	build_root, 4
build_root:
	.long	.LC0
.globl build_host
	.section	.rodata
.LC1:
	.string	"atlantic.capsl.udel.edu"
	.section	.data.rel.ro.local
	.align 4
	.type	build_host, @object
	.size	build_host, 4
build_host:
	.long	.LC1
.globl build_user
	.section	.rodata
.LC2:
	.string	"handong"
	.section	.data.rel.ro.local
	.align 4
	.type	build_user, @object
	.size	build_user, 4
build_user:
	.long	.LC2
.globl build_date
	.section	.rodata
.LC3:
	.string	"2008-02-14 17:24:20 -0500"
	.section	.data.rel.ro.local
	.align 4
	.type	build_date, @object
	.size	build_date, 4
build_date:
	.long	.LC3
	.file 1 "version_bk.c"
	.text
.Letext0:
	.section	.debug_info
	.long	0x122
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"version_bk.c"
	.string	"/usa/handong/simplnano/cmplr/targia32_sl1/driver"
	.uleb128 0x2
	.string	"cset_rev"
	.byte	0x1
	.byte	0x2
	.long	0x92
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cset_rev
	.uleb128 0x3
	.long	0x97
	.uleb128 0x4
	.byte	0x4
	.long	0x9d
	.uleb128 0x3
	.long	0xa2
	.uleb128 0x5
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.string	"cset_key"
	.byte	0x1
	.byte	0x3
	.long	0x92
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cset_key
	.uleb128 0x2
	.string	"build_root"
	.byte	0x1
	.byte	0x4
	.long	0x92
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	build_root
	.uleb128 0x2
	.string	"build_host"
	.byte	0x1
	.byte	0x5
	.long	0x92
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	build_host
	.uleb128 0x2
	.string	"build_user"
	.byte	0x1
	.byte	0x6
	.long	0x92
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	build_user
	.uleb128 0x2
	.string	"build_date"
	.byte	0x1
	.byte	0x7
	.long	0x92
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	build_date
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x64
	.value	0x2
	.long	.Ldebug_info0
	.long	0x126
	.long	0x7b
	.string	"cset_rev"
	.long	0xaa
	.string	"cset_key"
	.long	0xc1
	.string	"build_root"
	.long	0xda
	.string	"build_host"
	.long	0xf3
	.string	"build_user"
	.long	0x10c
	.string	"build_date"
	.long	0x0
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.note.GNU-stack,"",@progbits
