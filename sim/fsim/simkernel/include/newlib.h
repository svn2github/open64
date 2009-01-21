/*
 *  File: newlib.h
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
#ifndef NEWLIB_H_
#define NEWLIB_H_

#define newlib_FOPEN      (-1)    /* from sys/file.h, kernel use only */

#define UC_ACCMODE       0x0003
#define UC_RDONLY        0x0000
#define UC_WRONLY        0x0001
#define UC_RDWR          0x0002
#define UC_APPEND        0x0008
#define UC_SYNC          0x0010
#define UC_NONBLOCK      0x0080
#define UC_CREAT         0x0100  /* not fcntl */
#define UC_TRUNC         0x0200  /* not fcntl */
#define UC_EXCL          0x0400  /* not fcntl */
#define UC_NOCTTY        0x0800  /* not fcntl */
#define UC_FSYNC         O_SYNC
#define UC_ASYNC         0x1000


/*flag for mmap*/
#define MAP_SHARED      0x01            /* Share changes */
#define MAP_PRIVATE     0x02            /* Changes are private */
#define MAP_TYPE        0x0f            /* Mask for type of mapping */
#define MAP_FIXED       0x10            /* Interpret addr exactly */

# define UC_MAP_NORESERVE  0x0400          /* don't check for reservations */
# define UC_MAP_ANONYMOUS  0x0800          /* don't use a file */
# define UC_MAP_GROWSDOWN  0x1000          /* stack-like segment */
# define UC_MAP_DENYWRITE  0x2000          /* ETXTBSY */
# define UC_MAP_EXECUTABLE 0x4000          /* mark it as an executable */
# define UC_MAP_LOCKED     0x8000          /* pages are locked */

#define FMAP_NORESERVE   0x4000          /* don't check for reservations */
#define FMAP_ANONYMOUS   0x20            /* don't use a file */
#define FMAP_GROWSDOWN   0x0100          /* stack-like segment */
#define FMAP_DENYWRITE   0x0800          /* ETXTBSY */
#define FMAP_EXECUTABLE  0x1000          /* mark it as an executable */
#define FMAP_LOCKED      0x2000          /* pages are locked */



#ifdef __CYGWIN__
#define NEWLIB_OPEN_FLG(_flag_, _target_flag_) \
	INT _target_flag_ = 0;	\
	_target_flag_|=(_flag_&O_RDONLY);	\
	_target_flag_|=(_flag_&O_WRONLY);	\
	_target_flag_|=(_flag_&O_RDWR);	\
	_target_flag_|=(_flag_&O_ACCMODE); \
	_target_flag_|=((_flag_&UC_APPEND)>0?O_APPEND:0);	\
	_target_flag_|=((_flag_&UC_SYNC)>0?O_SYNC:0);	\
	_target_flag_|=((_flag_&UC_NONBLOCK)>0?O_NONBLOCK:0);	\
	_target_flag_|=((_flag_&UC_CREAT)>0?O_CREAT:0);	\
	_target_flag_|=((_flag_&UC_TRUNC)>0?O_TRUNC:0);	\
	_target_flag_|=((_flag_&UC_EXCL)>0?O_EXCL:0);	\
	_target_flag_|=((_flag_&UC_NOCTTY)>0?O_NOCTTY:0);	
#else
#define NEWLIB_OPEN_FLG(_flag_, _target_flag_) \
	INT _target_flag_ = 0;	\
	_target_flag_|=(_flag_&O_RDONLY);	\
	_target_flag_|=(_flag_&O_WRONLY);	\
	_target_flag_|=(_flag_&O_RDWR);	\
	_target_flag_|=(_flag_&O_ACCMODE); \
	_target_flag_|=((_flag_&UC_APPEND)>0?O_APPEND:0);	\
	_target_flag_|=((_flag_&UC_SYNC)>0?O_SYNC:0);	\
	_target_flag_|=((_flag_&UC_NONBLOCK)>0?O_NONBLOCK:0);	\
	_target_flag_|=((_flag_&UC_CREAT)>0?O_CREAT:0);	\
	_target_flag_|=((_flag_&UC_TRUNC)>0?O_TRUNC:0);	\
	_target_flag_|=((_flag_&UC_EXCL)>0?O_EXCL:0);	\
	_target_flag_|=((_flag_&UC_NOCTTY)>0?O_NOCTTY:0);	\
	_target_flag_|=((_flag_&UC_FSYNC)>0?O_FSYNC:0);	\
	_target_flag_|=((_flag_&UC_ASYNC)>0?O_ASYNC:0);
#endif
	
#define NEWLIB_MMAP_FLG(_flag_, _target_flag_) \
    INT _target_flag_ = 0; \
    _target_flag_|=(_flag_ & MAP_SHARED); \
    _target_flag_|=(_flag_ & MAP_PRIVATE); \
    _target_flag_|=(_flag_ & MAP_TYPE); \
    _target_flag_|=(_flag_ & MAP_FIXED); \
    _target_flag_|=((_flag_ & UC_MAP_NORESERVE)>0?FMAP_NORESERVE:0); \
    _target_flag_|=((_flag_ & UC_MAP_ANONYMOUS)>0?FMAP_ANONYMOUS:0); \
    _target_flag_|=((_flag_ & UC_MAP_GROWSDOWN)>0?FMAP_GROWSDOWN:0); \
    _target_flag_|=((_flag_ & UC_MAP_DENYWRITE)>0?FMAP_DENYWRITE:0); \
    _target_flag_|=((_flag_ & UC_MAP_EXECUTABLE)>0?FMAP_EXECUTABLE:0); \
    _target_flag_|=((_flag_ & UC_MAP_LOCKED)>0?FMAP_LOCKED:0);
    
    
#define NEWLIB_WRITE_STAT_STRUCT(_addr_, _stat_struct_) \
	mmu().writeBlock(_addr_, (BYTE*) &_stat_struct_.st_dev, 4); \
	mmu().writeBlock(_addr_+4, (BYTE*) &_stat_struct_.st_ino, 4); \
	mmu().writeBlock(_addr_+8, (BYTE*) &_stat_struct_.st_mode, 2); \
	mmu().writeBlock(_addr_+10, (BYTE*) &_stat_struct_.st_nlink, 2); \
	mmu().writeBlock(_addr_+12, (BYTE*) &_stat_struct_.st_uid, 2); \
	mmu().writeBlock(_addr_+14, (BYTE*) &_stat_struct_.st_gid, 2); \
	mmu().writeBlock(_addr_+16, (BYTE*) &_stat_struct_.st_rdev, 4); \
	mmu().writeBlock(_addr_+20, (BYTE*) &_stat_struct_.st_size, 4); \
	mmu().writeBlock(_addr_+24, (BYTE*) &_stat_struct_.st_blksize, 8); \
	mmu().writeBlock(_addr_+32, (BYTE*) &_stat_struct_.st_atime, 8); \
	mmu().writeBlock(_addr_+40, (BYTE*) &_stat_struct_.st_mtime, 8); \
	mmu().writeBlock(_addr_+48, (BYTE*) &_stat_struct_.st_ctime, 8);

#define NEWLIB_WRITE_STATFS_STRUCT(_addr_, _statfs_struct_) \
    mmu().writeBlock(_addr_, (BYTE*) &_statfs_struct_.f_type, 4); \
    mmu().writeBlock(_addr_+4, (BYTE*) &_statfs_struct_.f_bsize, 4); \
    mmu().writeBlock(_addr_+8, (BYTE*) &_statfs_struct_.f_blocks, 4); \
    mmu().writeBlock(_addr_+12, (BYTE*) &_statfs_struct_.f_bfree, 4); \
    mmu().writeBlock(_addr_+16, (BYTE*) &_statfs_struct_.f_bavail, 4); \
    mmu().writeBlock(_addr_+20, (BYTE*) &_statfs_struct_.f_files, 4); \
    mmu().writeBlock(_addr_+24, (BYTE*) &_statfs_struct_.f_ffree, 4); \
    mmu().writeBlock(_addr_+28, (BYTE*) &_statfs_struct_.f_fsid, 8); \
    mmu().writeBlock(_addr_+36, (BYTE*) &_statfs_struct_.f_namelen, 4); \
    mmu().writeBlock(_addr_+40, (BYTE*) &_statfs_struct_.f_frsize, 4); \
    mmu().writeBlock(_addr_+44, (BYTE*) &_statfs_struct_.f_spare, 20);
    
#define NEWLIB_WRITE_DIRENT_STRUCT(_addr_, _dirent_struct_, _size_) \
    mmu().writeBlock(_addr_, (BYTE*)&_dirent_struct_.d_ino,4); \
    mmu().writeBlock(_addr_+4, (BYTE*)&_dirent_struct_.d_ino,4); \
    mmu().writeBlock(_addr_+8, (BYTE*)&_dirent_struct_.d_reclen,2); \
    mmu().writeBlock(_addr_+10, (BYTE*)&_dirent_struct_.d_name,_size_-10);

#define NEWLIB_WRITE_TERMIOS_STRUCT(_addr_, _termios_struct_) \
    mmu().writeBlock(_addr_,(BYTE *)&_termios_struct_.c_iflag,sizeof(tcflag_t)); \
    mmu().writeBlock(_addr_+sizeof(tcflag_t),(BYTE *)&_termios_struct_.c_oflag,sizeof(tcflag_t)); \
    mmu().writeBlock(_addr_+2*sizeof(tcflag_t),(BYTE *)&_termios_struct_.c_cflag,sizeof(tcflag_t)); \
    mmu().writeBlock(_addr_+3*sizeof(tcflag_t),(BYTE *)&_termios_struct_.c_lflag,sizeof(tcflag_t)); \
    mmu().writeBlock(_addr_+4*sizeof(tcflag_t),(BYTE *)&_termios_struct_.c_lflag,sizeof(cc_t)); \
    mmu().writeBlock(_addr_+4*sizeof(tcflag_t)+sizeof(cc_t),(BYTE *)&_termios_struct_.c_lflag,NCCS*sizeof(cc_t));

#define NEWLIB_WRITE_TIMEB_STRUCT(_addr_, _timeb_struct_) \
    mmu().writeBlock(_addr_,(BYTE *)&_timeb_struct_.time,4); \
    mmu().writeBlock(_addr_+4,(BYTE *)&_timeb_struct_.millitm,2); \
    mmu().writeBlock(_addr_+6,(BYTE *)&_timeb_struct_.timezone,2); \
    mmu().writeBlock(_addr_+8,(BYTE *)&_timeb_struct_.dstflag,2);
    
#define NEWLIB_WRITE_FLOCK_STRUCT(_addr_, _flock_struct_) 
#define NEWLIB_READ_FLOCK_STRUCT(_addr_, _flock_struct_) 
#endif /*NEWLIB_H_*/
