	.file	"version-bk.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl version_string
	.section	.rodata
	.type	version_string, @object
	.size	version_string, 29
version_string:
	.string	"3.3.1 20030915  (PathScale )"
.globl bug_report_url
	.align 32
	.type	bug_report_url, @object
	.size	bug_report_url, 44
bug_report_url:
	.string	"<URL:http://www.pathscale.com/support.html>"
.globl cset_rev
.LC0:
	.string	"unknown"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 4
	.type	cset_rev, @object
	.size	cset_rev, 4
cset_rev:
	.long	.LC0
.globl cset_key
	.section	.rodata
.LC1:
	.string	""
	.section	.data.rel.ro.local
	.align 4
	.type	cset_key, @object
	.size	cset_key, 4
cset_key:
	.long	.LC1
.globl build_root
	.align 4
	.type	build_root, @object
	.size	build_root, 4
build_root:
	.long	.LC0
.globl build_host
	.section	.rodata
.LC2:
	.string	"atlantic.capsl.udel.edu"
	.section	.data.rel.ro.local
	.align 4
	.type	build_host, @object
	.size	build_host, 4
build_host:
	.long	.LC2
.globl build_user
	.section	.rodata
.LC3:
	.string	"handong"
	.section	.data.rel.ro.local
	.align 4
	.type	build_user, @object
	.size	build_user, 4
build_user:
	.long	.LC3
.globl build_date
	.section	.rodata
.LC4:
	.string	"2008-02-23 23:25:05 -0500"
	.section	.data.rel.ro.local
	.align 4
	.type	build_date, @object
	.size	build_date, 4
build_date:
	.long	.LC4
	.file 1 "version-bk.c"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1a6
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"version-bk.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.long	0x9b
	.long	0xab
	.uleb128 0x3
	.long	0x9b
	.byte	0x1c
	.byte	0x0
	.uleb128 0x4
	.string	"unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x5
	.string	"version_string"
	.byte	0x1
	.byte	0xe
	.long	0xd0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	version_string
	.uleb128 0x6
	.long	0x8b
	.uleb128 0x2
	.long	0xe5
	.long	0xab
	.uleb128 0x3
	.long	0x9b
	.byte	0x2b
	.byte	0x0
	.uleb128 0x5
	.string	"bug_report_url"
	.byte	0x1
	.byte	0x18
	.long	0x102
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	bug_report_url
	.uleb128 0x6
	.long	0xd5
	.uleb128 0x5
	.string	"cset_rev"
	.byte	0x1
	.byte	0x1d
	.long	0x11e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cset_rev
	.uleb128 0x6
	.long	0x123
	.uleb128 0x7
	.byte	0x4
	.long	0x129
	.uleb128 0x6
	.long	0xab
	.uleb128 0x5
	.string	"cset_key"
	.byte	0x1
	.byte	0x1e
	.long	0x11e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cset_key
	.uleb128 0x5
	.string	"build_root"
	.byte	0x1
	.byte	0x1f
	.long	0x11e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	build_root
	.uleb128 0x5
	.string	"build_host"
	.byte	0x1
	.byte	0x20
	.long	0x11e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	build_host
	.uleb128 0x5
	.string	"build_user"
	.byte	0x1
	.byte	0x21
	.long	0x11e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	build_user
	.uleb128 0x5
	.string	"build_date"
	.byte	0x1
	.byte	0x22
	.long	0x11e
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x8a
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1aa
	.long	0xb3
	.string	"version_string"
	.long	0xe5
	.string	"bug_report_url"
	.long	0x107
	.string	"cset_rev"
	.long	0x12e
	.string	"cset_key"
	.long	0x145
	.string	"build_root"
	.long	0x15e
	.string	"build_host"
	.long	0x177
	.string	"build_user"
	.long	0x190
	.string	"build_date"
	.long	0x0
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.note.GNU-stack,"",@progbits
