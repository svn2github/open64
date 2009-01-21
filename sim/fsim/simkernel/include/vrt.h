/*
 *  File: vrt.h
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
#ifndef VRT_H_
#define VRT_H_

#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

#include <sys/ioctl.h>
#include <sys/file.h>

#include <sys/uio.h>
#include <sys/vfs.h>
#include <sys/mman.h>
#include <errno.h> 
#include <sys/types.h>
#include <sys/socket.h>
#include <termios.h>
#include <sys/timeb.h>
#include <sys/mman.h>
#include<netinet/in.h>

#ifndef __CYGWIN__
#include <attr/xattr.h>
#include <sys/sendfile.h>
#endif

#include "defs.h"
#include "simdefs.h"
#include "newlib.h"
#include "syscall.h"
#include "status.h"

#ifdef __CYGWIN__
#include "syswin32.h"
#endif

/*
	Please note: ^^^^^^^^^^^^^^^^
	  Some of functions in this file are NOT comm for all target:
	    For example, we use uclibc call convention in this file.
*/

template<class MMUClass, class REGClass, class INSTRClass>
class VRuntime {
private:
	MMUClass& _mmu;
	REGClass& _reg;
	ProcessStatus<INSTRClass>& _status;
	
private:
	//system call handlers
	UINT _vrtexit(void);
	UINT _vrtread(void);
	UINT _vrtwrite(void);
	UINT _vrtopen(void);
	UINT _vrtclose(void);
	UINT _vrtlink(void);
	UINT _vrtunlink(void);
	UINT _vrtlseek(void);
	UINT _vrtstat(void);
	UINT _vrtfstat(void);
    UINT _vrtlstat(void);  
	UINT _vrtfsync(void);
	UINT _vrtfdatasync(void);
	UINT _vrttruncate(void);
	UINT _vrtftruncate(void);
	UINT _vrtsetxattr(void);
	UINT _vrtlsetxattr(void);
	UINT _vrtfsetxattr(void);
	UINT _vrtchmod(void);
	UINT _vrtfchmod(void);
 	UINT _vrtfcntl(void);
	UINT _vrtdup(void);
	UINT _vrtdup2(void);
	UINT _vrtioctl(void);
	UINT _vrtflock(void);
	UINT _vrtsendfile(void);
	UINT _vrtsendfile64(void);
	UINT _vrtchown(void);
	UINT _vrtfchown(void);
	UINT _vrtlchown(void);
	UINT _vrtreadahead(void);
	UINT _vrtstatfs(void);
	UINT _vrtfstatfs(void);
    UINT _vrtfstatfs64(void);
	UINT _vrtfadvise64(void); 
	UINT _vrtpread64(void);
	UINT _vrtpwrite64(void);
	UINT _vrtfchdir(void);
	UINT _vrtchdir(void);
	UINT _vrtmkdir(void);
	UINT _vrtrmdir(void);
	UINT _vrtgetxattr(void);
	UINT _vrtlgetxattr(void);
	UINT _vrtfgetxattr(void);
	UINT _vrtgetdents(void);
	UINT _vrtlistxattr(void);
	UINT _vrtllistxattr(void);
	UINT _vrtflistxattr(void);
	UINT _vrtremovexattr(void);
	UINT _vrtlremovexattr(void);
	UINT _vrtfremovexattr(void);
	UINT _vrtreadlink(void);
	UINT _vrtsymlink(void);
	UINT _vrtrename(void);
	UINT _vrtcreat(void);
	UINT _vrtaccess(void);
	UINT _vrtmknod(void);
	UINT _vrtchroot(void);
	UINT _vrtmsync(void);
	UINT _vrtgetcwd(void);
	UINT _vrtftime(void);
	UINT _vrtmmap(void);
	UINT _vrtmunmap(void);
	UINT _vrtsocket(void);
	UINT _vrtsetsockopt(void);
	UINT _vrtbind(void);
	UINT _vrtrecvfrom(void);
	UINT _vrtsendto(void);
	UINT uclibc_syscall(void);
	
	UINT _vrtdevswitch(void);
	
	INT _findfreeblock(INT pagenum);

	
	INT _find_not_init_list(void)
	{   
		INT i;
		for(i=0;i<MAX_ALLOC_NUM;i++)
		   if(mmu().allocMap()->alloc(i)->flag==LIST_NOT_INIT)
		     break;
		return i;     
	}
	INT _find_start_free_list(ADDR start)
	{   INT i=mmu().allocMap()->searchPos();
		while(i<MAX_ALLOC_NUM){
		   if(mmu().allocMap()->alloc(i)->end>=start && mmu().allocMap()->alloc(i)->start<=start)
		     return i;
		   i=mmu().allocMap()->alloc(i)->next;
		}  
		return i;
	}
	INT _find_end_free_list(ADDR end)
	{   INT i=mmu().allocMap()->searchPos();
		while(i<MAX_ALLOC_NUM){
		   if(mmu().allocMap()->alloc(i)->start<=end && mmu().allocMap()->alloc(i)->end>=end)
		     return i;
		   i=mmu().allocMap()->alloc(i)->next;
		}
		return i;  
	}
	INT _no_free_less(ADDR start){
		   INT i = mmu().allocMap()->searchPos();
		   if(i == MAX_ALLOC_NUM)
		     return 1;
		   if(mmu().allocMap()->alloc(i)->start>start)
		     return 1;
		   else 
		     return 0;	  	     
	}
	INT _find_most_end_list(ADDR start)
	{
		INT i=mmu().allocMap()->searchPos();
		while(i<MAX_ALLOC_NUM){
		   if(mmu().allocMap()->alloc(i)->start>start)
		     return mmu().allocMap()->alloc(i)->prev;
		   i=mmu().allocMap()->alloc(i)->next;
		}
		return i;  
	}
	INT _find_most_start_list(ADDR end)
	{
		INT i=mmu().allocMap()->searchPos();
		while(i<MAX_ALLOC_NUM){
		   if(mmu().allocMap()->alloc(i)->start>end)
		     return i;
		   i=mmu().allocMap()->alloc(i)->next;
		}
		return i;  
	}

public:
	VRuntime(MMUClass& mmu, REGClass& reg, ProcessStatus<INSTRClass>& st) : _mmu(mmu), _reg(reg), _status(st) {}
	MMUClass& mmu() { return _mmu; }
	REGClass& reg() { return _reg; }
	ProcessStatus<INSTRClass>& status() { return _status; }
	
	UINT syscall(UINT id);
	
	WORD getArgWord(INT i);
	WORD getSyscallWord(void);
	WORD getReturnCode(void);
	void setReturn(WORD data,WORD err) ;
};


template<class MMUClass, class REGClass, class INSTRClass>
INT VRuntime<MMUClass, REGClass, INSTRClass>::_findfreeblock(INT pagenum){	   	
   	int i,j=-1,best_num=mmu().allocMap()->allocLimit();
   	if(mmu().allocMap()->allocLimit()!=(UINT)-1)
   	    best_num = mmu().allocMap()->allocLimit()/ADD_PAGE_SIZE;
   	else
   	    best_num = MAX_ALLOC_PAGE;
   	best_num = (best_num>MAX_ALLOC_PAGE) ? MAX_ALLOC_PAGE: best_num;    
   	i=mmu().allocMap()->searchPos();
   	while(i<MAX_ALLOC_NUM)
   	{
   		if(mmu().allocMap()->alloc(i)->page_num>=pagenum)
   		  if((mmu().allocMap()->alloc(i)->page_num-pagenum)<=best_num){
   		       best_num=mmu().allocMap()->alloc(i)->page_num-pagenum;
   		       j=i;
   		  }
   		i=mmu().allocMap()->alloc(i)->next;   	   
   	}
   	return j;
}

template<class MMUClass, class REGClass, class INSTRClass>
void VRuntime<MMUClass, REGClass, INSTRClass>::setReturn(WORD data,WORD err) {
	if(err == 0)
	{
	   reg().setGPR(INDEX_REG_INPUT,data);
	   reg().setGPR(INDEX_REG_ERR, 0);
	}
	else
	{
	   reg().setGPR(INDEX_REG_INPUT,err);
	   reg().setGPR(INDEX_REG_ERR, 1);
	}
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::syscall(UINT id) {
	switch(id) {
		case SYS_dev_switch: return _vrtdevswitch();
		case SYS_exit: return _vrtexit();
		case SYS_read: return _vrtread();
		case SYS_write: return _vrtwrite();
		case SYS_open: return _vrtopen();
		case SYS_close: return _vrtclose();
		case SYS_link: return _vrtlink();
		case SYS_unlink: return _vrtunlink();
		case SYS_lseek:	return _vrtlseek();
		case SYS_stat: return _vrtstat();
		case SYS_fstat: return _vrtfstat();
		case SYS_uclibc: return uclibc_syscall();
		case SYS_gettimeofday:
		default:
			AppFatal((0), ("VRT error: unknown system call id(%d).", id));
			return ESTATUS_ERR;
	}
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::uclibc_syscall() {
	int ret = 0;
	UINT id = getSyscallWord();
	errno = 0;
	switch(id) {
		case __NR_exit: ret =  _vrtexit();break;
		case __NR_read: ret =  _vrtread();break;
		case __NR_write: ret =  _vrtwrite();break;
		case __NR_open: ret =  _vrtopen();break;
		case __NR_close: ret =  _vrtclose();break;
		case __NR_creat: ret =  _vrtcreat();break;
		case __NR_link: ret =  _vrtlink();break;
        case __NR_unlink: ret =  _vrtunlink();break;
        case __NR_chdir: ret =  _vrtchdir();break;
        case __NR_mknod: ret =  _vrtmknod();break;
        case __NR_chmod: ret =  _vrtchmod();break; 
        case __NR_lchown: ret =  _vrtlchown();break;
        case __NR_lseek: ret =  _vrtlseek();break;
        case __NR_access: ret =  _vrtaccess();break;
        case __NR_ftime: ret =  _vrtftime();break;
        case __NR_rename: ret =  _vrtrename();break;
        case __NR_mkdir: ret =  _vrtmkdir();break;
        case __NR_rmdir: ret =  _vrtrmdir();break;
        case __NR_dup: ret =  _vrtdup();break;
        case __NR_ioctl: ret =  _vrtioctl();break;
        case __NR_fcntl: ret =  _vrtfcntl();break;
        case __NR_chroot: ret =  _vrtchroot();break;
        case __NR_dup2: ret =  _vrtdup2();break;
        case __NR_symlink: ret =  _vrtsymlink();break;
        case __NR_readlink: ret =  _vrtreadlink();break;
        case __NR_mmap: ret = _vrtmmap();break;
        case __NR_truncate: ret =  _vrttruncate();break;
        case __NR_ftruncate: ret =  _vrtftruncate();break;
        case __NR_fchmod: ret =  _vrtfchmod();break;        
        case __NR_fchown: ret =  _vrtfchown();break;
        case __NR_statfs: ret =  _vrtstatfs();break;
        case __NR_fstatfs: ret =  _vrtfstatfs();break;        
        case __NR_stat: ret =  _vrtstat();break;
        case __NR_lstat: ret =  _vrtlstat();break;
        case __NR_fstat: ret =  _vrtfstat();break;
        case __NR_fsync: ret =  _vrtfsync();break;
        case __NR_fchdir: ret =  _vrtfchdir();break;
        case __NR_getdents: ret =  _vrtgetdents();break;
        case __NR_flock: ret =  _vrtflock();break;
        case __NR_msync: ret =  _vrtmsync();break;
        case __NR_fdatasync: ret =  _vrtfdatasync();break;
        case __NR_pread64: ret =  _vrtpread64();break;
        case __NR_pwrite64: ret =  _vrtpwrite64();break;
        case __NR_chown: ret =  _vrtchown();break;
        case __NR_getcwd: ret =  _vrtgetcwd();break;
        case __NR_sendfile: ret =  _vrtsendfile();break;
        case __NR_readahead: ret =  _vrtreadahead();break;
        case __NR_setxattr: ret =  _vrtsetxattr();break;
        case __NR_lsetxattr: ret =  _vrtlsetxattr();break;
        case __NR_fsetxattr: ret =  _vrtfsetxattr();break;
        case __NR_getxattr: ret =  _vrtgetxattr();break;
        case __NR_lgetxattr: ret =  _vrtlgetxattr();break;
        case __NR_fgetxattr: ret =  _vrtfgetxattr();break;
        case __NR_listxattr: ret =  _vrtlistxattr();break; 
        case __NR_llistxattr: ret =  _vrtllistxattr();break;
        case __NR_flistxattr: ret =  _vrtflistxattr();break;
        case __NR_removexattr: ret =  _vrtremovexattr();break;
        case __NR_lremovexattr: ret =  _vrtlremovexattr();break;
        case __NR_fremovexattr: ret =  _vrtfremovexattr();break;        
        case __NR_sendfile64: ret =  _vrtsendfile64();break;
        case __NR_fadvise64: ret =  _vrtfadvise64();break;
        case __NR_fstatfs64: ret =  _vrtfstatfs64();break;
        case __NR_munmap: ret = _vrtmunmap();break;
        case __NR_socket: ret = _vrtsocket();break;
        case __NR_setsockopt: ret = _vrtsetsockopt();break;
        case __NR_bind: ret = _vrtbind();break;
        case __NR_recvfrom: ret = _vrtrecvfrom();break;
        case __NR_sendto: ret = _vrtsendto();break;
        default:
               AppFatal((0), ("VRT error: unknown system call id(%d).", getSyscallWord()));
			return ESTATUS_ERR;
	}
	vmsg(VERBOSE_0, "syscall %d return errno:%d\n", id, errno);
	return ret;
}

template<class MMUClass, class REGClass, class INSTRClass>
WORD VRuntime<MMUClass, REGClass, INSTRClass>::getSyscallWord() {
	return reg().getGPR(UCLIBC_SYSCALL_REG);
}

template<class MMUClass, class REGClass, class INSTRClass>
WORD VRuntime<MMUClass, REGClass, INSTRClass>::getArgWord(INT i) {
		if(i<CALL_MAX_ARG_IN_REG) {
			return reg().getGPR(i+CALL_ARG_START_INDEX);
		}
		else {
			return mmu().readWord(reg().getSP()+(WORD_BYTE*(i-4))+ARGOFFSET);
		}
}

template<class MMUClass, class REGClass, class INSTRClass>
WORD VRuntime<MMUClass, REGClass, INSTRClass>::getReturnCode(void) {
		return reg().getGPR(CALL_RETURN_REG_INDEX);
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtexit() {
	//INT status = (INT) getReturnCode();
	INT status = 0;
	return (status==0?ESTATUS_EXIT_0:ESTATUS_EXIT_1);
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtread() {
	ssize_t ret;
	INT fd = getArgWord(0);	
	ADDR a = getArgWord(1);	
	size_t count =  getArgWord(2);	
	char buf[count];
	ret = read(fd, buf, count);
	if(errno == 0)
		mmu().writeBlock(a, (const BYTE*)buf, count);
	setReturn((WORD) ret,(INT) errno);		
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtwrite() {
	ssize_t ret;
	INT fd =  getArgWord(0);	
	ADDR a =  getArgWord(1);
	size_t count =  getArgWord(2);
	char buf[count];
	mmu().readBlock(a, (BYTE*) buf, count);
//	errno = 0;
	ret = write(fd, buf, count);
	setReturn((WORD) ret,errno);
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtopen() {
	INT ret;
	ADDR pathaddr =  getArgWord(0);	
	STRING path = mmu().getString(pathaddr);
	INT flags =  getArgWord(1);	
	mode_t mode =  getArgWord(2);
	NEWLIB_OPEN_FLG(flags, target_flag)
	ret = open(path, target_flag, mode);
	setReturn((WORD) ret,errno);	
	delete path;
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtclose() {
	INT ret;
	INT fd =  getArgWord(0);	
	ret = close(fd);
	setReturn((WORD) ret,errno);	
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtlink() {
	INT ret;
	ADDR oldpathAddr = getArgWord(0);
	ADDR newpathAddr = getArgWord(1);
	STRING newpath = mmu().getString(newpathAddr);
	STRING oldpath = mmu().getString(oldpathAddr);
	ret = link(oldpath, newpath);
	setReturn((WORD) ret,errno);
	delete newpath;
	delete oldpath;
	return ESTATUS_NORMAL;	
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtunlink() {
	INT ret;
	ADDR pathAddr =  getArgWord(0);	
	STRING path = mmu().getString(pathAddr);
	ret = unlink(path);
	setReturn((WORD) ret,errno);	
	delete path;
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtlseek() {
	off_t ret;
	INT fildes =  getArgWord(0);	
	off_t offset =  (off_t) getArgWord(1);
	INT whence =  getArgWord(2);
	ret = lseek(fildes, offset, whence);
	setReturn((WORD) ret,errno);
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtstat() {
	AppFatal((0), ("VRT error: stat system call is not verify yet."));
	WORD ret;
	ADDR strAddr = getArgWord(0);
	ADDR buf = getArgWord(1);
	struct stat temp_buf;
	STRING filename = mmu().getString(strAddr);
	ret = stat(filename, &temp_buf);
	if(errno == 0)
	{
		NEWLIB_WRITE_STAT_STRUCT(buf, temp_buf)
	}
	setReturn((WORD) ret,errno);
	delete filename;
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtfstat() {
	DevWarn("fstat system call not really implemented");

	WORD ret;
	INT fildes = getArgWord(0);
	ADDR buf = getArgWord(1);
	struct stat temp_buf;
	ret = fstat(fildes, &temp_buf);
	//printf("dev_t:%d\n ino_t:%d\n,mode_t:%d\n,nlink_t:%d\n,uid_t:%d\n,gid_t:%d\n,dev_t:%d\n,off_t:%d\n",temp_buf.st_dev,temp_buf.st_ino,temp_buf.st_mode,temp_buf.st_nlink,temp_buf.st_uid,temp_buf.st_gid,temp_buf.st_rdev,temp_buf.st_size);
	//printf("size:%d\n",temp_buf.st);
	if(errno == 0)
	{
		NEWLIB_WRITE_STAT_STRUCT(buf, temp_buf)
	}
	setReturn((WORD) ret,errno);
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtlstat() {
	AppFatal((0), ("VRT error: lstat system call is not verify yet."));
	WORD ret;
	ADDR strAddr = getArgWord(0);
	ADDR buf = getArgWord(1);
	struct stat temp_buf;
	STRING filename = mmu().getString(strAddr);
	ret = lstat(filename, &temp_buf);
	if(errno == 0)
	{
		NEWLIB_WRITE_STAT_STRUCT(buf, temp_buf)
	}
	setReturn((WORD) ret,errno);
	delete filename;
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtfsync() {
	AppFatal((0), ("VRT error: fsync system call is not verify yet."));
	WORD ret;
	INT fildes = getArgWord(0);
	ret = fsync(fildes);
	setReturn((WORD) ret,errno);
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtfdatasync() {
	AppFatal((0), ("VRT error: fdatasync system call is not verify yet."));
	WORD ret;
	INT fildes = getArgWord(0);
	ret = fdatasync(fildes);
	setReturn((WORD) ret,errno);
	return ESTATUS_NORMAL;	
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrttruncate() {
	WORD ret;
	ADDR strAddr = getArgWord(0);
	off_t len = getArgWord(1);
	STRING path = mmu().getString(strAddr);
	ret = truncate(path, len);
	delete path;
	setReturn((WORD) ret, errno);
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtftruncate() {
	WORD ret;
	INT fd = getArgWord(0);
	off_t length = getArgWord(1);	
	ret = ftruncate(fd, length);
	setReturn((WORD) ret,errno);
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtsetxattr() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: setxattr system call is not verify yet."));
	WORD ret;
	ADDR pathAddr = getArgWord(0);
	ADDR strAddr = getArgWord(1);
	ADDR a = getArgWord(2);
	size_t size = getArgWord(3);
    char value[size];
    mmu().readBlock(a,(BYTE *)value,size);
	INT flag = getArgWord(4);
	STRING name = mmu().getString(strAddr);
	STRING path = mmu().getString(pathAddr);	
	ret = setxattr(path, name, value, size, flag);
	setReturn((WORD) ret,errno);
	delete name;
	delete path;
	#endif
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtlsetxattr() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: lsetxattr system call is not verify yet."));
	WORD ret;
	ADDR pathAddr = getArgWord(0);
	ADDR strAddr = getArgWord(1);
	ADDR a = getArgWord(2);
	size_t size = getArgWord(3);
    char value[size];
    mmu().readBlock(a,(BYTE *)value,size);
	INT flag = getArgWord(4);
	STRING name = mmu().getString(strAddr);	
	STRING path = mmu().getString(pathAddr);
	ret = lsetxattr(path, name, value, size, flag);
	setReturn((WORD) ret, errno);
	delete name;
	delete path;
	#endif
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtfsetxattr() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: fsetxattr system call is not verify yet."));
	WORD ret;
	INT fd = getArgWord(0);
	ADDR strAddr = getArgWord(1);
	ADDR a = getArgWord(2);
	size_t size = getArgWord(3);
    char value[size];
    mmu().readBlock(a,(BYTE *)value,size);
	INT flag = getArgWord(4);
	STRING name = mmu().getString(strAddr);	
	ret = fsetxattr(fd, name, value, size, flag);
	setReturn((WORD) ret, errno);
	delete name;
	#endif
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtfadvise64() {//(int fd, loff_t offset, size_t len, int advice)
		#ifndef __CYGWIN__
    AppFatal((0), ("VRT error: fadvise64 system call is not verify yet."));
    WORD ret;
    INT fd = getArgWord(0);
    __off64_t offset = getArgWord(1);
    __off64_t len = getArgWord(2);
    INT advice = getArgWord(3);
    ret =  posix_fadvise64(fd,offset,len,advice);
    setReturn((WORD) ret, errno);
    #endif
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtchmod() {//(unsigned int fd, mode_t mode);
	#ifndef __CYGWIN__
	WORD ret;
	ADDR strAddr = getArgWord(0);
	__mode_t mode = getArgWord(1);
	STRING filename = mmu().getString(strAddr);
	ret = chmod(filename, mode);
	setReturn((WORD) ret, errno);
	delete filename;
	#endif
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtfchmod() {//(unsigned int fd, mode_t mode);
	#ifndef __CYGWIN__
	WORD ret;
	INT fd = getArgWord(0);
	__mode_t mode = getArgWord(1);
	ret = fchmod(fd, mode);
	setReturn((WORD) ret, errno);
	#endif
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtfcntl(){
	#ifndef __CYGWIN__
	DevWarn("fcntl system call not verify yet");
	WORD ret;
	INT fd = getArgWord(0);
	INT cmd = getArgWord(1);
	switch(cmd) {
    case F_GETOWN:
    case F_GETSIG:
    case F_SETSIG:
    case F_GETFL:
    case F_GETFD:    
    {  	
    	ret = fcntl(fd, cmd);
    }
    case F_SETOWN:	
	case F_DUPFD:
	case F_SETFD:
	case F_SETFL:
	{
		UINT arg = getArgWord(2);
		ret = fcntl(fd, cmd, arg);
		break;
	}
	case F_GETLK:
	{
		//ADDR a = getArgWord(2);
		struct flock temp_buf; 
		ret = fcntl(fd, cmd, &temp_buf);
		//NEWLIB_WRITE_FLOCK_STRUCT(a, temp_buf);
		break;
	} 
	case F_SETLK:
	case F_SETLKW:
	{
		//ADDR a = getArgWord(2);
		struct flock temp_buf; 
		//NEWLIB_READ_FLOCK_STRUCT(a, temp_buf);
		ret = fcntl(fd, cmd, &temp_buf);
	} 
	}
	setReturn((WORD) ret,errno);
	#endif
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtdup(){
	//AppFatal((0), ("VRT error: dup system call is not verify yet."));
	WORD ret;
	INT fildes = getArgWord(0);
	ret = dup(fildes);
	setReturn((WORD) ret, errno);
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtdup2() {
	//AppFatal((0), ("VRT error: dup2 system call is not verify yet."));
	WORD ret;
	INT oldfd = getArgWord(0);
	INT newfd = getArgWord(1);
	ret = dup2(oldfd, newfd);
	setReturn((WORD) ret, errno);
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtioctl() {
	WORD ret;
	INT fd = getArgWord(0);
	INT cmd = getArgWord(1);
//	INT p = getArgWord(2);
//	WORD data;
	//STRING arg = mmu().getString(a);	
	switch(cmd){
//		case SNDCTL_DSP_SYNC:
//		{
//			ret = ioctl(fd,cmd,p);
//			setReturn((WORD) ret, errno);
//			DevWarn("ioctl: executed for soundcard config");
//			return ESTATUS_NORMAL;
//		}
//		case SNDCTL_DSP_SETFMT:
//		case SNDCTL_DSP_CHANNELS:
//		case SNDCTL_DSP_SPEED:
//		{
//			data = mmu().readWord(p);
//			ret = ioctl(fd,cmd,&data);
//			setReturn((WORD) ret, errno);
//			DevWarn("ioctl: executed for soundcard config");
//			return ESTATUS_NORMAL;
//		}
		case TIOCNXCL:
			{
//		  	ADDR arg = getArgWord(2);
//		    STRING temp = mmu().getString(arg);
//		  	ret = ioctl(fd, cmd, temp);
//            mmu().setString(arg,temp);
//            delete temp;
		  	ret =-1;
		  	setReturn((WORD) ret, errno);
		  	DevWarn("ioctl: TIOCNXL not really implemented");
	        return ESTATUS_NORMAL;
			}
		case TCGETS:		        
		{
//		   ADDR arg = getArgWord(2);
		   struct termios tempbuf;
		   ret = ioctl(fd,cmd,&tempbuf);
//		   NEWLIB_WRITE_TERMIOS_STRUCT(arg,tempbuf);
		   setReturn((WORD) -1, errno);		   
		   DevWarn("ioctl: TCGETS not really implemented");
	       return ESTATUS_NORMAL;	
		}	
	    default:
	    AppFatal((0), ("VRT error: the other ioctl system call  not implemented yet."));
	      ret = 0;
		  	setReturn((WORD) ret, errno);
	        return ESTATUS_NORMAL;   
	}    
//	mmu().setString(a, arg);
//	delete arg;
	setReturn((WORD) ret, errno);
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtflock() {
	AppFatal((0), ("VRT error: flock system call is not verify yet."));
	WORD ret;
	INT fd = getArgWord(0);
	INT cmd = getArgWord(1);
	ret = flock(fd, cmd);
	setReturn((WORD) ret, errno);
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtsendfile() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: sendfile system call is not verify yet."));
	WORD ret;
	INT outfd = getArgWord(0);
	INT infd = getArgWord(1);
	ADDR a = getArgWord(2);
	off_t offset;
	mmu().readBlock(a, (BYTE*)&offset, sizeof(offset));
	size_t count = getArgWord(3); 
	ret = sendfile(outfd, infd, &offset, count);
	if(errno == 0)
	{
		mmu().writeBlock(a, (const BYTE*)&offset, sizeof(offset));
	}
	setReturn((WORD) ret, errno);
	#endif
	return ESTATUS_NORMAL;	
}	

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtsendfile64() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: sendfile64 system call is not verify yet."));
	WORD ret;
	INT outfd = getArgWord(0);
	INT infd = getArgWord(1);
	ADDR a = getArgWord(2);
	__off64_t offset;
	mmu().readBlock(a, (BYTE*)&offset, sizeof(offset));
	size_t count = getArgWord(3); 
	ret = sendfile64(outfd, infd, &offset, count);
	if(errno ==0)
	{
		mmu().writeBlock(a, (const BYTE*)&offset, sizeof(offset));
	}
	setReturn((WORD) ret, errno);
	#endif
	return ESTATUS_NORMAL;	
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtchown() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: chown system call is not verify yet."));
	WORD ret;
	ADDR strAddr = getArgWord(0);
	__uid_t uid = getArgWord(1);
	__gid_t  gid = getArgWord(2);
	STRING filename = mmu().getString(strAddr);
	ret = chown(filename, uid, gid);
	setReturn((WORD) ret, errno);
	delete filename;
	#endif
	return ESTATUS_NORMAL;
	
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtfchown() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: fchown system call is not verify yet."));
	WORD ret;
	INT fd = getArgWord(0);
	__uid_t uid = getArgWord(1);
	__gid_t gid = getArgWord(2);
	ret = fchown(fd, uid, gid);
	setReturn((WORD) ret, errno);
	#endif
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtlchown() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: lchown system call is not verify yet."));
	WORD ret;
	ADDR strAddr = getArgWord(0);
	__uid_t uid = getArgWord(1);
	__gid_t gid = getArgWord(2);
	STRING filename = mmu().getString(strAddr);
	ret = lchown(filename, uid, gid);
	setReturn((WORD) ret, errno);
	delete filename;
	#endif
	return ESTATUS_NORMAL;
}	

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtreadahead() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: readahead system call is not verify yet."));
    WORD ret;
    INT fd = getArgWord(0);
    __off64_t offset = getArgWord(1);
    size_t count = getArgWord(2);
    ret = readahead(fd, offset, count);
    setReturn((WORD) ret, errno);
    #endif
    return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtstatfs() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: statfs system call is not verify yet."));
	WORD ret;
	ADDR strAddr = getArgWord(0);
	ADDR buf = getArgWord(1);
	STRING path = mmu().getString(strAddr);
	struct statfs  temp_buf;
	ret = statfs(path, &temp_buf);
	if(errno == 0)
	{
		NEWLIB_WRITE_STATFS_STRUCT(buf, temp_buf)
	}
	delete path;
	setReturn((WORD) ret, errno);
	#endif
	return ESTATUS_NORMAL;	
}	

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtfstatfs() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: fstatfs system call is not verify yet."));
	WORD ret;
	INT fildes = getArgWord(0);
	ADDR buf = getArgWord(1);
	struct statfs  temp_buf;
	ret = fstatfs(fildes, &temp_buf);
	if(errno == 0)
	{
		NEWLIB_WRITE_STATFS_STRUCT(buf, temp_buf)
	}
	setReturn((WORD) ret, errno);
	#endif
	return ESTATUS_NORMAL;	
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtfstatfs64() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: fstatfs64 system call is not verify yet."));
	WORD ret;
	INT fildes = getArgWord(0);
	ADDR buf = getArgWord(1);
	struct statfs64  temp_buf;
	ret = fstatfs64(fildes, &temp_buf);
	if(errno == 0)
    {
		NEWLIB_WRITE_STATFS_STRUCT(buf, temp_buf)
    }
	setReturn((WORD) ret, errno);
	#endif
	return ESTATUS_NORMAL;	
}


template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtpread64() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: pread64 system call is not verify yet."));
	WORD ret;
	INT fd = getArgWord(0);
	ADDR a = getArgWord(1);
	size_t count = getArgWord(2);
	__off64_t offset = getArgWord(3);
	char buf[count];
	ret = pread64(fd, buf, count, offset);
	if(errno == 0)
	{
		mmu().writeBlock(a, (const BYTE*)buf, count);
	}
    setReturn((WORD) ret, errno);
    #endif
	return ESTATUS_NORMAL;
}	

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtpwrite64() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: pwrite64 system call is not verify yet."));
	WORD ret;
	INT fd = getArgWord(0);
	ADDR a = getArgWord(1);
	size_t count = getArgWord(2);
	__off64_t offset = getArgWord(3);
	char buf[count];
	mmu().readBlock(a, (BYTE*)buf, count);
	ret = pwrite64(fd, buf, count, offset);
    setReturn((WORD) ret, errno);
   #endif
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtfchdir() {
	WORD ret;
	INT fd = getArgWord(0);
	ret = fchdir(fd);
    setReturn((WORD) ret, errno);
	return ESTATUS_NORMAL;   	
}	

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtchdir() {
	WORD ret;
	ADDR strAddr = getArgWord(0);
	STRING path = mmu().getString(strAddr);
	ret = chdir(path);
	delete path;
    setReturn((WORD) ret, errno);
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtmkdir() {
	#ifndef __CYGWIN__
	WORD ret;
	ADDR strAddr = getArgWord(0);
	__mode_t mode = getArgWord(1);
	STRING path = mmu().getString(strAddr);
	ret = mkdir(path, mode);
	delete path;
	setReturn((WORD) ret, errno);
	#endif
	return ESTATUS_NORMAL;
}	

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtrmdir() {
	WORD ret;
	ADDR strAddr = getArgWord(0);
	STRING path = mmu().getString(strAddr);
	ret = rmdir(path);
	delete path;
    setReturn((WORD) ret, errno);
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtgetxattr() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: getxattr system call is not verify yet."));
    WORD ret;
    ADDR pathAddr = getArgWord(0);
    ADDR strAddr = getArgWord(1);
    STRING name = mmu().getString(strAddr);
    STRING path = mmu().getString(pathAddr);
    ADDR a = getArgWord(2);
    size_t size = getArgWord(3);
    char value[size];
    ret = getxattr(path, name, value, size);
    if(errno == 0)
    {
    	mmu().writeBlock(a, (const BYTE*)value, size);
    }
    delete name;
    delete path;
    setReturn((WORD) ret, errno);
    #endif
    return ESTATUS_NORMAL;	
}
template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtlgetxattr() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: lgetxattr system call is not verify yet."));
    WORD ret;
    INT pathAddr = getArgWord(0);
    ADDR strAddr = getArgWord(1);
    STRING name = mmu().getString(strAddr);
    STRING path = mmu().getString(pathAddr);
    ADDR a = getArgWord(2);
    size_t size = getArgWord(3);
    char value[size];
    ret = lgetxattr(path, name, value, size);
    if(errno == 0)
    {
    	mmu().writeBlock(a, (const BYTE*)value, size);
    }
    delete name;
    delete path;
    setReturn((WORD) ret, errno);
    #endif
    return ESTATUS_NORMAL;	
}
template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtfgetxattr() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: fgetxattr system call is not verify yet."));
    WORD ret;
    INT fd = getArgWord(0);
    ADDR strAddr = getArgWord(1);
    STRING name = mmu().getString(strAddr);
    ADDR a = getArgWord(2);
    size_t size = getArgWord(3);
    char value[size];
    ret = fgetxattr(fd, name, value, size);
    if(errno == 0)
    {
    	mmu().writeBlock(a, (const BYTE*)value, size);
    }
    delete name;
    setReturn((WORD) ret, errno);
    #endif
    return ESTATUS_NORMAL;	
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtlistxattr() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: listxattr system call is not verify yet."));
	WORD ret;
	ADDR pathAddr = getArgWord(0);
	ADDR a = getArgWord(1);
	size_t size = getArgWord(2);
	char list[size];
	STRING path = mmu().getString(pathAddr);	
	ret = listxattr(path,list,size);
	if(errno == 0)
	{
		mmu().writeBlock(a, (const BYTE*)list, size);
	}
	delete path;
	setReturn((WORD) ret, errno);
	#endif
    return ESTATUS_NORMAL;
}	

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtllistxattr() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: llistxattr system call is not verify yet."));
	WORD ret;
	ADDR pathAddr = getArgWord(0);
	ADDR a = getArgWord(1);
	size_t size = getArgWord(2);
	char list[size];
	STRING path = mmu().getString(pathAddr);	
	ret = llistxattr(path,list,size);
	if(errno == 0)
		mmu().writeBlock(a, (const BYTE*)list, size);
	delete path;
	setReturn((WORD) ret, errno);
	#endif
    return ESTATUS_NORMAL;
}	

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtflistxattr() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: flistxattr system call is not verify yet."));
	WORD ret;
	INT fd = getArgWord(0);
	ADDR a = getArgWord(1);
	size_t size = getArgWord(2);
	char list[size];
	ret = flistxattr(fd,list,size);
	if(errno == 0)
		mmu().writeBlock(a, (const BYTE*)list, size);
	setReturn((WORD) ret, errno);
	#endif
    return ESTATUS_NORMAL;
}	

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtremovexattr() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: removexattr system call is not verify yet."));
	WORD ret;
	ADDR pathAddr = getArgWord(0);
	ADDR strAddr = getArgWord(1);
	STRING name = mmu().getString(strAddr);
    STRING path = mmu().getString(pathAddr);
    ret = removexattr(path,name);
    delete path;
    delete name;
    setReturn((WORD) ret, errno);
    #endif
    return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtlremovexattr() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: lremovexattr system call is not verify yet."));
	WORD ret;
	ADDR pathAddr = getArgWord(0);
	ADDR strAddr = getArgWord(1);
	STRING name = mmu().getString(strAddr);
    STRING path = mmu().getString(pathAddr);
    ret = lremovexattr(path,name);
    delete path;
    delete name;
    setReturn((WORD) ret, errno);
  #endif
    return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtfremovexattr() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: fremovexattr system call is not verify yet."));
	WORD ret;
	INT fd = getArgWord(0);
	ADDR strAddr = getArgWord(1);
	STRING name = mmu().getString(strAddr);
    ret = fremovexattr(fd,name);
    delete name;
    setReturn((WORD) ret, errno);
  #endif
    return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtgetdents() {
	AppFatal((0), ("VRT error: getdents system call is not verify yet."));
/*	WORD ret;
	INT fd = getArgWord(0);
	ADDR a = getArgWord(1);
	UINT count = getArgWord(2);
	struct dirent temp_buf;
	ret = sys_getdents(fd, &temp_buf, count);
	NEWLIB_WRITE_DIRENT_STRUCT(a, temp_buf, count)
	setReturn((WORD) ret);*/
	AppFatal((0), ("VRT error: getdents not support now."));
    return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtreadlink() {
    WORD ret;
    ADDR strAddr = getArgWord(0);
    ADDR a = getArgWord(1);
    UINT bufsize = getArgWord(2);
    char buf[bufsize];
    STRING path = mmu().getString(strAddr);
    ret = readlink(path, buf, bufsize);
    if(errno == 0)
    	mmu().writeBlock(a, (const BYTE*)buf, bufsize);
    delete path;
    setReturn((WORD) ret, errno);
    return ESTATUS_NORMAL;	
}	

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtsymlink() {
	WORD ret;
	ADDR oldAddr = getArgWord(0);
	ADDR newAddr = getArgWord(1);
	STRING oldpath = mmu().getString(oldAddr);
	STRING newpath = mmu().getString(newAddr);
	ret = symlink(oldpath, newpath);
	delete oldpath;
	delete newpath;
	setReturn((WORD) ret, errno);
    return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtrename() {
	WORD ret;
	ADDR oldAddr = getArgWord(0);
	ADDR newAddr = getArgWord(1);
	STRING oldname = mmu().getString(oldAddr);
	STRING newname = mmu().getString(newAddr);
	ret = rename(oldname, newname);
	delete oldname;
	delete newname;
    setReturn((WORD) ret, errno);
    return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtcreat() {
	WORD ret;
	ADDR strAddr = getArgWord(0);
	mode_t mode = getArgWord(1);
	STRING path = mmu().getString(strAddr);
	ret = creat(path, mode);
	delete path;
	setReturn((WORD) ret, errno);
    return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtaccess() {
	AppFatal((0), ("VRT error: access system call is not verify yet."));
    WORD ret;
    ADDR strAddr = getArgWord(0);
    INT mode = getArgWord(1);
    STRING path = mmu().getString(strAddr);
    ret = access(path, mode);
    delete path;
    setReturn((WORD) ret, errno);
    return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtmknod() {
	#ifndef __CYGWIN__
	AppFatal((0), ("VRT error: mknod system call is not verify yet."));
	WORD ret;
	ADDR strAddr = getArgWord(0);
	__mode_t  mode = getArgWord(1);
	__dev_t dev = getArgWord(2);
	STRING path = mmu().getString(strAddr);
	ret = mknod(path, mode, dev);
	delete path;
	setReturn((WORD) ret, errno);
	#endif
    return ESTATUS_NORMAL;
}	
	
template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtchroot() {
	AppFatal((0), ("VRT error: chroot system call is not verify yet."));
    WORD ret;
    ADDR strAddr = getArgWord(0);
    STRING path = mmu().getString(strAddr);
    ret = chroot(path);
    delete path;
    setReturn((WORD) ret, errno);
    return ESTATUS_NORMAL;	
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtmsync() {
	AppFatal((0), ("VRT error: msync system call is not verify yet."));
    WORD ret;
    ADDR a = getArgWord(0);
    size_t len = getArgWord(1);
    INT flags = getArgWord(2);
    char start[len];
    mmu().readBlock(a, (BYTE *)start, len);
    ret = msync(start, len, flags);
    setReturn((WORD) ret, errno);
    return ESTATUS_NORMAL;
}	

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtgetcwd() {
	WORD ret;
	ADDR a = getArgWord(0);
	size_t size = getArgWord(1);
	char temp[size];
	ret = (WORD)getcwd(temp, size);
	if((char *)ret != NULL)
	{
	   mmu().writeBlock(a, (BYTE *)temp, size);
	}
	setReturn((WORD) ret, errno);
    return ESTATUS_NORMAL;  
}
template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtftime(){
	AppFatal((0), ("VRT error: ftime system call is not verify yet."));
	WORD ret;
	ADDR a = getArgWord(0);
	struct timeb temp_buf;
	ret = ftime(&temp_buf);
	if(errno == 0)
	{
		NEWLIB_WRITE_TIMEB_STRUCT(a,temp_buf);
	}
    setReturn(ret, errno);
    return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtsocket(){
	DevWarn("socket system call is not verify yet.");
	WORD ret;
	WORD domain = getArgWord(0);
	WORD type = getArgWord(1); 
	WORD protocol = getArgWord(2);
	ret = socket(domain,type,protocol);
	setReturn(ret, errno);
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtsetsockopt(){
    DevWarn("setsockopt system call is not verify yet.");
    WORD ret;
    WORD s = getArgWord(0);  
    WORD level = getArgWord(1);
    WORD optname = getArgWord(2);
    ADDR optval = getArgWord(3);
    socklen_t optlen = getArgWord(4);
    char buf[optlen];
    mmu().readBlock(optval, (BYTE*) buf, optlen);
    ret = setsockopt(s,level,optname,buf,optlen);
    setReturn(ret, errno);
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtbind(){
	DevWarn("bind system call is not verify yet.");
	WORD ret;
	WORD sockfd = getArgWord(0);
	ADDR a = getArgWord(1);  
	WORD addrlen = getArgWord(2);
	struct sockaddr my_addr;
	mmu().readBlock(a, (BYTE*)&my_addr.sa_family, 2);
	mmu().readBlock(a+2,(BYTE*)&my_addr.sa_data[0],14);
	ret = bind(sockfd,&my_addr,addrlen);
	setReturn(ret, errno);
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtrecvfrom(){
	#ifndef __CYGWIN__
	//DevWarn("recvfrom system call is not verify yet.");
//	fflush(NULL);
	WORD ret;
	WORD s = getArgWord(0);
	ADDR b = getArgWord(1);
	WORD len = getArgWord(2);
	WORD flags = getArgWord(3);
	ADDR saddr = getArgWord(4);
	ADDR lenaddr = getArgWord(5);	
	//printf("before:%d,%d,%d,%d,%d,%d\n",s,b,len,flags,saddr,lenaddr);
	char buf[len];
	struct sockaddr_in *from;
	from = (sockaddr_in *)alloca(sizeof(sockaddr_in));
	socklen_t fromlen,fromlen1;
	mmu().readBlock(lenaddr,(BYTE*)&fromlen1,4);
	if(flags==MSG_DONTWAIT)
	{
		if(saddr)
		{
			//mmu().readBlock(saddr,(BYTE*)&from.sa_family,2);
			//mmu().readBlock(saddr+2,(BYTE*)&from.sa_data[0],14);			
			ret = recvfrom(s,buf,len,flags,(struct sockaddr *)from,&fromlen);
			//printf("fsim:s:%d,buf:%x,len:%d,flag:%d\n",s,buf,len,flags);
			//printf("fsim:%x,%x\n",from->sin_addr.s_addr,from->sin_port);
		    if(fromlen<=fromlen1)
	    		mmu().writeBlock(saddr,(const BYTE *)from,fromlen);
	    	else
	    	    mmu().writeBlock(saddr,(const BYTE *)from,fromlen1);
	    		
		}
		else
	    	ret =  recvfrom(s,buf,len,flags,NULL,&fromlen);
		if(ret!=-1)
		{
	    	mmu().writeBlock(b,(const BYTE *)buf,ret);	    	
	    	mmu().writeBlock(lenaddr,(const BYTE *)&fromlen,4);
		}
	}
	
	else
	{
		flags=MSG_DONTWAIT;
		fd_set rfds;
        struct timeval tv;
        int retval;
        FD_ZERO(&rfds);
        FD_SET(s, &rfds);

        tv.tv_sec = 0;
        tv.tv_usec = 0;
     
        retval = select(s+1, &rfds, NULL, NULL, &tv);
		if(retval!=-1 && FD_ISSET(s,&rfds))
		{
			//printf("retval:%d\n",retval);
			if(saddr)
			{
//				fflush(NULL);
				ret = recvfrom(s,buf,len,flags,(struct sockaddr *)from,&fromlen);
				if(fromlen<=fromlen1)
	    			mmu().writeBlock(saddr,(const BYTE *)from,fromlen);
	    		else
	    	    	mmu().writeBlock(saddr,(const BYTE *)from,fromlen1);
			}
			else
	    		ret =  recvfrom(s,buf,len,flags,NULL,&fromlen);
			if(ret!=-1)
			{
	    		mmu().writeBlock(b,(const BYTE *)buf,len);
	    		mmu().writeBlock(lenaddr,(const BYTE *)&fromlen,4);
			}
		}
		else
		{
			ret = SPECIAL_FLAG;			
		}
	}
	setReturn(ret, errno);
	#endif
	return ESTATUS_NORMAL;
}	

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtsendto(){
	DevWarn("sendto system call is not verify yet.");
//	fflush(NULL);
	WORD ret;
	WORD s = getArgWord(0);
	ADDR b = getArgWord(1);
	size_t len = getArgWord(2);
	WORD flags = getArgWord(3);
	ADDR saddr = getArgWord(4);
	socklen_t tolen = getArgWord(5);
	struct sockaddr to;
	mmu().readBlock(saddr,(BYTE*)&to.sa_family,2);
	mmu().readBlock(saddr+2,(BYTE*)&to.sa_data[0],14);
	char buf[len];
	mmu().readBlock(b,(BYTE *)buf,len);
	ret = sendto(s,buf,len,flags,&to,tolen);
	setReturn(ret, errno);
	return ESTATUS_NORMAL;
}
	
template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtmmap(){
	WORD ret;
	ADDR end;
	int pagenum,k,i;

	DevWarn("mmap system call not verified yet");
	//printf("%d\n",mmu().mmap_cal());
	void* start = (void *)getArgWord(0);
	size_t length = getArgWord(1);
	int prot = getArgWord(2);
	int flag = getArgWord(3);
	int fd = getArgWord(4);
	off_t offset = getArgWord(5);
	//printf("%d,%d,%d,%d,%d,%d\n",(int)start, (int)length, prot,flag,fd,(int)offset);
	//prot =PROT_READ;
	//flag = MAP_SHARED;
	
	// map the uclibc flag to host flag
	NEWLIB_MMAP_FLG(flag,host_flag)
	
	ret = 0;
	if (!(host_flag & MAP_ANONYMOUS)) {
		AppFatal((mmu().mmap_cal()==0), ("VRT error: mmap system call should not be executed twice."));
		mmu().add_mmap_cal();
		ret = (UINT)mmap(start, length, prot, host_flag, fd, offset);
	} else {
		// We don't call mmap for anonymous map, i.e., non file mapping
		ret = 1;
	}
	ADDR a;
	if(ret!=-1 && ret !=0)	 
	{
		if (length % ADD_PAGE_SIZE == 0) 
			pagenum = length/ADD_PAGE_SIZE;  		    
		else 
			pagenum = length / ADD_PAGE_SIZE+1;
		
		k=_findfreeblock(pagenum);
		AppFatal((k!=-1),("not enough memory."));
		if(mmu().allocMap()->alloc(k)->start==0)
		{
		   a = mmu().allocMap()->allocStart();		
		   if(a & PAGE_MASK_HIGH)
	   		 a = (a & PAGE_MASK_LOW)+ADD_PAGE_SIZE;
		   mmu().allocMap()->alloc(k)->start = a;  	
		   end = a+pagenum*ADD_PAGE_SIZE;	   
		   mmu().allocMap()->allocStart(end);		  
		}	
	    //allocate new page 
	    a=mmu().allocMap()->alloc(k)->start; 
	    if(mmu().allocMap()->alloc(k)->page_num==pagenum)
	    {
	       if(mmu().allocMap()->alloc(k)->start==mmu().allocMap()->allocStart())
	          mmu().allocMap()->allocStart(mmu().allocMap()->alloc(k)->start+pagenum*ADD_PAGE_SIZE);
		   mmu().allocMap()->alloc(k)->flag=LIST_NOT_INIT;
		   i=mmu().allocMap()->alloc(k)->prev;
		   if(i!=MAX_ALLOC_NUM)
		   		mmu().allocMap()->alloc(i)->next=mmu().allocMap()->alloc(k)->next;
		   i=mmu().allocMap()->alloc(k)->next;
		   if(i!=MAX_ALLOC_NUM)
		   		mmu().allocMap()->alloc(i)->prev=mmu().allocMap()->alloc(k)->prev;
		   if(mmu().allocMap()->searchPos()==k)
		      mmu().allocMap()->searchPos(mmu().allocMap()->alloc(k)->next);		   
	    }
	    else
	    {	       
	       mmu().allocMap()->alloc(k)->start+=pagenum*ADD_PAGE_SIZE;
	       mmu().allocMap()->alloc(k)->page_num-=pagenum;
	       if(mmu().allocMap()->alloc(k)->start>mmu().allocMap()->allocStart())
	          mmu().allocMap()->allocStart(mmu().allocMap()->alloc(k)->start);	
 	    }
		
		//AppFatal((1), ("mmap request size is not a multiple of page size"));          
	}
	if (!(host_flag & MAP_ANONYMOUS))
		   mmu().writeBlock(a, (const BYTE *)ret, length);
	    ret = a;
	    if (host_flag & MAP_ANONYMOUS) {
	    	vmsg(VERBOSE_0, "Non-file mmap at address %#08x size %#08xbytes. No host mmap called!\n", a, length);
	   	 } else {
	   		vmsg(VERBOSE_0, "mmap at address %#08x size %#08xbytes host addr %#08x\n", a, length, ret);
	   	}
	vmsg(VERBOSE_0, "request size:0x%x ret addr:0x%x, end address of data mem changed to:0x%x\n", length, ret,mmu().allocMap()->allocStart());
	INT err = 0;
	setReturn(ret, err);
    return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtmunmap(){
	DevWarn("munmap system call not verified yet");
	INT startnum,endnum;
	void *start = (void *)getArgWord(0);
	AppFatal((((ADDR)start & PAGE_MASK_HIGH)==0),("munmap is not matched the early mmap."));
	size_t length = getArgWord(1);
	ADDR data_end = (ADDR)start+length;
	if(data_end & PAGE_MASK_HIGH)
	   data_end = (data_end & PAGE_MASK_LOW)+ADD_PAGE_SIZE;
	//printf("start:0x%x,length:0x%x,data_end:0x%x\n",start,length,mmu().dataEnd());
	ADDR data_start = (ADDR)start;
	INT i,j,pagenum = (length%ADD_PAGE_SIZE)? (length/ADD_PAGE_SIZE+1):length/ADD_PAGE_SIZE;
	startnum=_find_start_free_list(data_start);
	endnum=_find_end_free_list(data_end);
	//printf("search:%d\n",mmu().searchPos());
	//printf("0x%x\n",startnum);
	//printf("aaa,%d\n",mmu().alloc(0)->page_num);
	if(startnum==MAX_ALLOC_NUM && endnum==MAX_ALLOC_NUM)
	{
    	i=_find_not_init_list();    	
    	AppFatal((i!=MAX_ALLOC_NUM),("too much fractions!!"));
    	mmu().allocMap()->alloc(i)->flag=LIST_USED;
    	mmu().allocMap()->alloc(i)->start=data_start;
    	mmu().allocMap()->alloc(i)->page_num = pagenum;
    	mmu().allocMap()->alloc(i)->end = data_end;
    	mmu().allocMap()->alloc(i)->prev = _find_most_end_list(mmu().allocMap()->alloc(i)->start);
    	mmu().allocMap()->alloc(i)->next = _find_most_start_list(mmu().allocMap()->alloc(i)->end);
    	//printf("%d\n",mmu().alloc(1)->flag);
    	if(mmu().allocMap()->alloc(i)->prev!=MAX_ALLOC_NUM){
    		j=mmu().allocMap()->alloc(i)->prev;
    		mmu().allocMap()->alloc(j)->next=i;
    	}
    	if(mmu().allocMap()->alloc(i)->next!=MAX_ALLOC_NUM){
    		j=mmu().allocMap()->alloc(i)->next;
    		mmu().allocMap()->alloc(j)->prev=i;
    	}	
    	if(_no_free_less(data_start))
    		mmu().allocMap()->searchPos(i);	
	}
	else if(startnum!=MAX_ALLOC_NUM && endnum==MAX_ALLOC_NUM)
	{
		if(mmu().allocMap()->alloc(startnum)->end>data_start)
		     pagenum = (data_end-mmu().allocMap()->alloc(startnum)->end)/ADD_PAGE_SIZE;
		mmu().allocMap()->alloc(startnum)->page_num += pagenum;
		mmu().allocMap()->alloc(startnum)->end = data_end;
		//printf("%x,%x,%d\n",mmu().alloc(startnum)->start,mmu().alloc(startnum)->end,startnum);
	}
	else if(startnum==MAX_ALLOC_NUM && endnum!=MAX_ALLOC_NUM)
	{
		if(data_end>mmu().allocMap()->alloc(endnum)->start)
		   pagenum= (data_start-mmu().allocMap()->alloc(endnum)->start)/ADD_PAGE_SIZE;
		//printf("aaa,%d\n",mmu().alloc(0)->next);
		mmu().allocMap()->alloc(endnum)->page_num += pagenum;
		mmu().allocMap()->alloc(endnum)->start = data_start;
		//printf("bbb,%d\n",mmu().searchPos());
	}
	else
	{
		if(startnum!=endnum){
			if(data_start<mmu().allocMap()->alloc(startnum)->end)
		   		pagenum-=(data_start-mmu().allocMap()->alloc(startnum)->end)/ADD_PAGE_SIZE;
			if(data_end>mmu().allocMap()->alloc(endnum)->start)
		   		pagenum-=(data_end-mmu().allocMap()->alloc(endnum)->start)/ADD_PAGE_SIZE;   
			mmu().allocMap()->alloc(startnum)->page_num += pagenum;
			mmu().allocMap()->alloc(startnum)->page_num += mmu().allocMap()->alloc(endnum)->page_num;
			mmu().allocMap()->alloc(startnum)->end = mmu().allocMap()->alloc(endnum)->end;
			mmu().allocMap()->alloc(startnum)->next =mmu().allocMap()->alloc(endnum)->next;
			i=mmu().allocMap()->alloc(endnum)->next;
			if(i!=MAX_ALLOC_NUM)
				mmu().allocMap()->alloc(i)->prev=startnum;
			mmu().allocMap()->alloc(endnum)->flag=LIST_NOT_INIT;
		}
	}
	INT err = 0;
	INT ret = 0;
	setReturn(ret, err);
	return ESTATUS_NORMAL;
}

template<class MMUClass, class REGClass, class INSTRClass>
UINT VRuntime<MMUClass, REGClass, INSTRClass>::_vrtdevswitch() {
	INT enable = getArgWord(0);
	if(enable==0) {
		status().event(EVENT_SUSPENSE_SYS);
	}
	else {
		status().event(EVENT_RESUME_SYS);
	}
	return ESTATUS_NORMAL;	
}

#endif /*VRT_H_*/
