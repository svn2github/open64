/*
 *  File: syscall.h
 * 
 *  Copyright (c) 2006 Beijing SimpLight Nanoelectornics, Ltd.
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without modification, 
 *  are permitted provided that the following conditions are met:
 *
 *  1.Redistributions of source code must retain the above copyright notice, 
 *    this list of conditions and the following disclaimer. 
 *  2.Redistributions in binary form must reproduce the above copyright notice, 
 *    this list of conditions and the following disclaimer in the documentation 
 *    and/or other materials provided with the distribution. 
 *
 *  THIS SOFTWARE IS PROVIDED BY THE FREEBSD PROJECT ``AS IS'' AND ANY EXPRESS 
 *  OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES 
 *  OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. 
 *  IN NO EVENT SHALL THE FREEBSD PROJECT OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
 *  INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, 
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, 
 *  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY 
 *  OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE 
 *  OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED 
 *  OF THE POSSIBILITY OF SUCH DAMAGE.
 */
#ifndef SYSCALL_H_
#define SYSCALL_H_

/* back door for disable/enable system devices */
#define SYS_dev_switch		0x2000

#define SYS_exit       		0x1500
#define SYS_fork        	2
#define SYS_read        	0x1000
#define SYS_write       	0x1001
#define SYS_open        	0x1100
#define SYS_close       	0x1002
#define SYS_wait4       	7
#define SYS_creat       	8
#define SYS_link        	0x1005
#define SYS_unlink      	0x1004
#define SYS_execv       	11
#define SYS_chdir       	12
#define SYS_mknod       	14
#define SYS_chmod       	15
#define SYS_chown       	16
#define SYS_lseek       	0x1003
#define SYS_getpid      	20
#define SYS_isatty      	21
#define SYS_stat  			0x1401
#define SYS_fstat       	0x1402
#define SYS_time        	23
#define SYS_gettimeofday	0x1800

#define SYS_uclibc          	0x0

/*uclibc syscall id*/
#define __NR_Linux   4000
#define __NR_exit   (__NR_Linux +   1) 
#define __NR_read   (__NR_Linux +   3) 
#define __NR_write   (__NR_Linux +   4) 
#define __NR_open   (__NR_Linux +   5)
#define __NR_close   (__NR_Linux +   6)
#define __NR_creat   (__NR_Linux +   8)
#define __NR_link   (__NR_Linux +   9)
#define __NR_unlink   (__NR_Linux +  10)
#define __NR_chdir   (__NR_Linux +  12)
#define __NR_mknod   (__NR_Linux +  14)
#define __NR_chmod   (__NR_Linux +  15) 
#define __NR_lchown   (__NR_Linux +  16)
#define __NR_lseek   (__NR_Linux +  19)
#define __NR_access   (__NR_Linux +  33)
#define __NR_ftime   (__NR_Linux +  35)
#define __NR_rename   (__NR_Linux +  38)
#define __NR_mkdir   (__NR_Linux +  39)
#define __NR_rmdir   (__NR_Linux +  40) 
#define __NR_dup   (__NR_Linux +  41) 
#define __NR_ioctl   (__NR_Linux +  54)
#define __NR_fcntl   (__NR_Linux +  55)
#define __NR_chroot   (__NR_Linux +  61)
#define __NR_dup2   (__NR_Linux +  63)
#define __NR_symlink   (__NR_Linux +  83)
#define __NR_readlink   (__NR_Linux +  85)
#define __NR_mmap   (__NR_Linux +  90)
#define __NR_munmap   (__NR_Linux +  91)
#define __NR_truncate   (__NR_Linux +  92) 
#define __NR_ftruncate   (__NR_Linux +  93)
#define __NR_fchmod   (__NR_Linux +  94)
#define __NR_fchown   (__NR_Linux +  95) 
#define __NR_statfs   (__NR_Linux +  99) 
#define __NR_fstatfs   (__NR_Linux + 100)
#define __NR_stat   (__NR_Linux + 106)
#define __NR_lstat   (__NR_Linux + 107)
#define __NR_fstat   (__NR_Linux + 108)
#define __NR_fsync   (__NR_Linux + 118)
#define __NR_fchdir   (__NR_Linux + 133) 
#define __NR_getdents   (__NR_Linux + 141)
#define __NR_flock   (__NR_Linux + 143)
#define __NR_msync   (__NR_Linux + 144)
#define __NR_fdatasync   (__NR_Linux + 152)
#define __NR_bind   (__NR_Linux + 169)
#define __NR_recvfrom   (__NR_Linux + 176)
#define __NR_sendto   (__NR_Linux + 180)
#define __NR_setsockopt   (__NR_Linux + 181)
#define __NR_socket   (__NR_Linux + 183)
#define __NR_pread64   (__NR_Linux + 200) 
#define __NR_pwrite64   (__NR_Linux + 201)
#define __NR_chown   (__NR_Linux + 202)
#define __NR_getcwd   (__NR_Linux + 203)
#define __NR_sendfile   (__NR_Linux + 207) 
#define __NR_readahead   (__NR_Linux + 223)
#define __NR_setxattr   (__NR_Linux + 224) 
#define __NR_lsetxattr   (__NR_Linux + 225)
#define __NR_fsetxattr   (__NR_Linux + 226)
#define __NR_getxattr   (__NR_Linux + 227) 
#define __NR_lgetxattr   (__NR_Linux + 228)
#define __NR_fgetxattr   (__NR_Linux + 229)
#define __NR_listxattr   (__NR_Linux + 230) 
#define __NR_llistxattr   (__NR_Linux + 231)
#define __NR_flistxattr   (__NR_Linux + 232)
#define __NR_removexattr  (__NR_Linux + 233) 
#define __NR_lremovexattr  (__NR_Linux + 234)
#define __NR_fremovexattr  (__NR_Linux + 235)
#define __NR_sendfile64   (__NR_Linux + 237)
#define __NR_fadvise64   (__NR_Linux + 254)
#define __NR_statfs64   (__NR_Linux + 255) 
#define __NR_fstatfs64   (__NR_Linux + 256)

/*ioctl cmd*/
#define TCGETS          	0x5401

#define TIOCNXCL        	0x540D
#define SNDCTL_DSP_SYNC 	0x5001
#define SNDCTL_DSP_SETFMT 	0xc0045005
#define SNDCTL_DSP_CHANNELS 	0xc0045006
#define SNDCTL_DSP_SPEED 	0xc0045002

/*arg offset*/
#define ARGOFFSET 	16
#define SPECIAL_FLAG 	-88

#define INDEX_REG_INPUT 2
#define INDEX_REG_ERR 	7
#endif /*SYSCALL_H_*/
