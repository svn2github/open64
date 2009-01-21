/*
 *  File: gdbserver.h
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
#ifndef GDBSERVER_H_
#define GDBSERVER_H_

#include "defs.h"
#include "simdefs.h"

#include "memory.h"
#include "breakpoint.h"
#include "bmmu.h"
#include "regmapitem.h"

#include "arch4gdb.h"

// TCP connection needed headers.
#include <netinet/in.h>
#include <sys/socket.h>
#include <netdb.h>
#include <netinet/tcp.h>
#include <sys/ioctl.h>

//signal and error related
#include <signal.h>
#include <errno.h>

/* Show debug information? */  
static bool remoteDebug = false;

#if 0
static FILE *fpDBG = fopen("GDBDBG.log", "wb");
#else
static FILE *fpDBG = stderr;
#endif

#define DBG_GDBSVR(args...); \
	{if ( remoteDebug ) {\
		fprintf (fpDBG, "SRV_DBG:" args);\
		fflush(NULL);\
		}\
	}
	
/* BUFMAX defines the maximum number of characters in inbound/outbound buffers*/
/* at least NUMREGBYTES*2 are needed for register packets */
#define BUFMAX BUFSIZ /* Default 8190 here. */

enum comm_mode_t {
	COMM_MODE_TCP,
	COMM_MODE_PIPE
};

struct symbol_t {
	char *sym_name;
	UINT sym_value;
};

#define GDBSERVER_CLASS_LIST_DEF class MMUClass, class MACHINEClass
#define GDBSERVER_CLASS_LIST_INI MMUClass, MACHINEClass

template<GDBSERVER_CLASS_LIST_DEF>
class GDBServer{
	private:

	SLArch _slArch;
	enum comm_mode_t _connMode;
	INT		_portNum;
	INT		_init;
	INT		_remoteDesc;
	INT		_HWThread;
	INT		_symListIdx;
	bool	_xRSP;
	
	static const char hexchars[17];
	static const struct symbol_t _symListTpl[13];
	struct symbol_t _symList[13];
	
	char T_packet[9];
	char _inBuffer[BUFMAX+8];
	char _outBuffer[BUFMAX+8];
	char _bufCache[BUFMAX+8];
	
	MMUClass& _mmu;
	MACHINEClass& _machine;
	BreakPoint<MMUClass>* _breakpoint[MAX_MEM_VIEW];

	public:
	
	GDBServer(MMUClass& mmu, MACHINEClass& machine);
	void reset(enum sl_abi abi = SL_ABI_AUTO, 
				enum comm_mode_t connMode = COMM_MODE_TCP,
				INT portNum = 10086);
	static void* startThread(void * p_GDBServer);
	
	static INT		hex (char ch);
	static char *	hex2mem (char *buf, char *mem, UINT count);
	static char *	mem2hex (char *mem, char *buf, UINT count);
	static UINT		hex2int (char *buf);
	static void		int2hex (UINT i, char *buf);
	UINT			hex2simMem (char *buf, UINT mem, UINT count);
	char *			simMem2hex (UINT mem, char *buf, UINT count);
	
	void	remoteOpen (void);
	void 	remoteClose (void);
	void	threadExit (void);
	
	UINT	putDebugChar (char ch);
	char	getDebugChar (void);
	INT		putPacket (char *buffer);
	char *	getPacket (void);
	
	static void	writeAnswer (char *buf, char *src);	
	static void	writeAnswerHex (char *buf, char *src);
	static INT	getRequestHex (char *buf, char *src);
	INT 		reportExeStatus(char *buf);
	void		replySignal (char *buf, char sign, UINT singal);
	
	INT 	writeReg(UINT regNum, char *hbuf);
	INT 	readReg(UINT regNum, char *hbuf);
	INT 	initSymbols (struct symbol_t *symbolList);
	void 	qFeedback (char *ptr);
	INT 	handleRSP (void);
	
	MMUClass& mmu(void) { return _mmu; }
	MACHINEClass& machine(void) { return _machine; }
	BreakPoint<MMUClass>* breakpoint(void) { return _breakpoint[machine().curthread()]; }
};

template<GDBSERVER_CLASS_LIST_DEF>
const char GDBServer<GDBSERVER_CLASS_LIST_INI>::hexchars[17] = "0123456789abcdef";

template<GDBSERVER_CLASS_LIST_DEF>
const struct symbol_t GDBServer<GDBSERVER_CLASS_LIST_INI>::_symListTpl[13] = {
	{"_init", 0}, {"__start", 0}, {"__ground_zero", 0}, {"main", 0}, {"__stack", 0}, 
	{"__etext", 0},	{"_end", 0}, {"_allocStart", 0}, {"_ftext", 0},
	{"__exception_handler", 0}, {"__interrupt_handler", 0}, 
	{"_fbss", 0}, {NULL, 0},
};

template<GDBSERVER_CLASS_LIST_DEF>
GDBServer<GDBSERVER_CLASS_LIST_INI>::GDBServer(MMUClass& mmu, MACHINEClass& machine): _mmu(mmu), _machine(machine)
{
	for(INT i = 0; i<MAX_MEM_VIEW; i++) {
		_breakpoint[i] = new BreakPoint<MMUClass>((MMUClass&)_mmu);
	}
	reset();
}

template<GDBSERVER_CLASS_LIST_DEF>
void GDBServer<GDBSERVER_CLASS_LIST_INI>::reset(enum sl_abi abi, enum comm_mode_t connMode, INT portNum)
{	
	_slArch.setAbi(abi);
	_connMode = connMode;
	_portNum = portNum;
	_init = 0;
	_remoteDesc = -1;
	_HWThread = 0;
	_symListIdx = 0;
	for (INT i=0; _symListTpl[i].sym_name != NULL; i++)
		_symList[i].sym_name = _symListTpl[i].sym_name;
}

template<GDBSERVER_CLASS_LIST_DEF>
void* GDBServer<GDBSERVER_CLASS_LIST_INI>::startThread(void * pGDBServer) 
{
	if (pGDBServer == NULL) pthread_exit(NULL);
	GDBServer<GDBSERVER_CLASS_LIST_INI>* _pGDBServer = (GDBServer<GDBSERVER_CLASS_LIST_INI>*) pGDBServer;
	while (1) {
		_pGDBServer->remoteOpen ();
		if( _pGDBServer->handleRSP() < 0 ) 
			_pGDBServer->threadExit ();
		_pGDBServer->remoteClose();
	}
}

/* Hex and ASCII tools. */

template<GDBSERVER_CLASS_LIST_DEF>
INT GDBServer<GDBSERVER_CLASS_LIST_INI>::hex (char ch)
{
	if (ch >= 'a' && ch <= 'f')
		return ch-'a'+10;
	if (ch >= '0' && ch <= '9')
		return ch-'0';
	if (ch >= 'A' && ch <= 'F')
		return ch-'A'+10;
	return -1;
}

template<GDBSERVER_CLASS_LIST_DEF>
char * GDBServer<GDBSERVER_CLASS_LIST_INI>::hex2mem (char *buf, char *mem, UINT count)
{
	char ch;
	for (; count>0; count--) {
		ch = hex(*buf++) << 4;
		ch |= hex(*buf++);
		*mem++ = ch;
	}
	return mem;
}

template<GDBSERVER_CLASS_LIST_DEF>
char * GDBServer<GDBSERVER_CLASS_LIST_INI>::mem2hex (char *mem, char *buf, UINT count)
{
	char ch;
	while (count-- > 0) {
		ch = *mem++;
		*buf++ = hexchars[(ch >> 4)& 0xf];
		*buf++ = hexchars[ch & 0xf];
	}
	*buf = 0;
	return buf;
}

template<GDBSERVER_CLASS_LIST_DEF>
UINT GDBServer<GDBSERVER_CLASS_LIST_INI>::hex2int (char *buf)
{
	INT i = 0;
	char ch;
	UINT count = 0;
	while (count < 8) {
		ch = hex(buf[count]);
		if (ch < 0)
			break;
		i = (i << 4) | ch;
		count++;
	}
	return i;
}

template<GDBSERVER_CLASS_LIST_DEF>
void GDBServer<GDBSERVER_CLASS_LIST_INI>::int2hex (UINT i, char *buf)
{
	UINT count;
	for (count=0; count < 4; count++) {
		*buf++ = hexchars[(i >> 4) & 0x0f];
		*buf++ = hexchars[i & 0x0f];
		i >>= 8;
	}
}

template<GDBSERVER_CLASS_LIST_DEF>
UINT GDBServer<GDBSERVER_CLASS_LIST_INI>::hex2simMem (char *buf, UINT mem, UINT count)
{
	hex2mem(buf, _bufCache, count);
	for (INT i=0; i<count; i++) {
		mmu().setByte(mem++, _bufCache[i]);
	}
	return mem;
}

template<GDBSERVER_CLASS_LIST_DEF>
char * GDBServer<GDBSERVER_CLASS_LIST_INI>::simMem2hex (UINT mem, char *buf, UINT count)
{
	for (INT i=0; i<count; i++) {
		_bufCache[i] = mmu().getByte(mem+i);
	}
	return mem2hex (_bufCache, buf, count);
}

/* Open remote connection, depending on communication mode. */
template<GDBSERVER_CLASS_LIST_DEF>
void GDBServer<GDBSERVER_CLASS_LIST_INI>::remoteOpen (void)
{
	if (_connMode == COMM_MODE_TCP ) {
		if (_portNum < 1024 || _portNum >= 65536) {
			fprintf (stderr, "GDBSVR: Given port number:%d invalide, using default.\n", _portNum);fflush(NULL);
			_portNum = 10086;
		}
		INT save_fcntl_flags;
		struct sockaddr_in sockaddr;
		INT tmp;
		struct protoent *protoent;
		INT tmp_desc;
		tmp_desc = socket (PF_INET, SOCK_STREAM, 0);
		if (tmp_desc < 0) {
			perror ("GDBSVR: Can't open socket");
			fprintf (stderr, "GDBSVR: GDB server stoped.\n");fflush(NULL);
			pthread_exit(NULL);
		}
		/* Allow rapid reuse of this port. */
		tmp = 1;
		setsockopt (tmp_desc, SOL_SOCKET, SO_REUSEADDR, (char *) &tmp,
			    sizeof (tmp));
		sockaddr.sin_family = PF_INET;
		sockaddr.sin_port = htons (_portNum);
		sockaddr.sin_addr.s_addr = INADDR_ANY;
		if (bind (tmp_desc, (struct sockaddr *) &sockaddr, sizeof (sockaddr))
			|| listen (tmp_desc, 1)) {
			perror ("GDBSVR: Can't bind address.");
			fprintf (stderr, "GDBSVR: GDB server stoped.\n");fflush(NULL);
			pthread_exit(NULL);
		}
		fprintf (stderr, "GDBSVR: Listening on tcp port:%d.\n",
				_portNum);fflush(NULL);
		tmp = sizeof (sockaddr);
		/* If communication mode is tcp, set remote file descriptor to tcp socket. */
		_remoteDesc = accept (tmp_desc, (struct sockaddr *) &sockaddr, (socklen_t *) &tmp);
		if (_remoteDesc == -1) {
			perror ("GDBSVR: Accept failed");
			fprintf (stderr, "GDBSVR: GDB server stoped.\n");fflush(NULL);
			pthread_exit(NULL);
		}
		/* Enable TCP keep alive process. */
		tmp = 1;
		setsockopt (tmp_desc, SOL_SOCKET, SO_KEEPALIVE, (char *) &tmp,
					sizeof (tmp));
		/* Tell TCP not to delay small packets.  This greatly speeds up
	   	 * interactive response. */
		tmp = 1;
		setsockopt (_remoteDesc, 6 /* PROTO_TCP */ , TCP_NODELAY,
					(char *) &tmp, sizeof (tmp));
		close (tmp_desc);	/* No longer need this */
		/* If we don't do this, then gdbserver simply exits when the 
		 * remote side dies.  */
		signal (SIGPIPE, SIG_IGN);	
		fprintf (stderr, "GDBSVR: Connected to GDB using tcp port:%d.\n", 
				 _portNum);fflush(NULL);
	} else if (_connMode == COMM_MODE_PIPE ) {
		_remoteDesc = dup(1);
		DBG_GDBSVR ("slSetGDBSvrEnv (): Duplicate stdout fileno:%d errno:%d\n", _remoteDesc, errno);		
		close(1);
		//FILE *fp = freopen("gdbserverSTDOUT.log", "w", stdout);
		FILE *fp = freopen("/dev/null", "w", stdout);
		if (fp == NULL) {
			fprintf(stderr, "GDBSVR: Redirect stdout error. \n");fflush(NULL);
			threadExit ();
		}
		DBG_GDBSVR("Fileno for old stdout:%d fileno for new stdout:%d\n", _remoteDesc, fileno(stdout));
		//fprintf(stdout, "GDB REMOTE DEBUGGING USING PIPE LOG START:\n");
		fprintf (stderr, "GDBSVR: Connected to GDB using pipe.\n");fflush(NULL);
	}
}

/* Close remote connection, depending on communication mode. */
template<GDBSERVER_CLASS_LIST_DEF>
void GDBServer<GDBSERVER_CLASS_LIST_INI>::remoteClose (void)
{
	fprintf (stderr, "GDBSVR: Disconnected from GDB.\n");fflush(NULL);
	if (_connMode == COMM_MODE_TCP ) {
		close (_remoteDesc);
	} else if (_connMode == COMM_MODE_PIPE ) {
		close(fileno(stdout));
		dup2(_remoteDesc,1);
		close (_remoteDesc);
	}
}

/* Exit gdb server thread. Because gdb server works as a background 
 * thread of fsim process, we don't use exit(). */
template<GDBSERVER_CLASS_LIST_DEF>
void GDBServer<GDBSERVER_CLASS_LIST_INI>::threadExit (void)
{
	remoteClose();
	fprintf (stderr, "GDBSVR: GDB server stoped.\n");fflush(NULL);
	pthread_exit(NULL);
}

/* Send a character to GDB by writting it into remote file. */
template<GDBSERVER_CLASS_LIST_DEF>
UINT GDBServer<GDBSERVER_CLASS_LIST_INI>::putDebugChar (char ch)
{
	INT retval = 0;
	if (_remoteDesc > 0)
		retval = write(_remoteDesc, &ch, 1);
	/*DBG_GDBSVR ("putDebugChar(%c) ret: %d\n", ch, retval);*/
	if ( retval < 0 ) {
		fprintf(stdout, "GDBSVR: putDebugChar(%c) error.\n", ch);fflush(NULL);
		/* Here exit, because we can't easily go back to while loop 
		 * in RunFsimDaemon(). */
		threadExit ();
	} 
	return retval;
}

/* Get a character from GDB by reading from remote file. */
template<GDBSERVER_CLASS_LIST_DEF>
char GDBServer<GDBSERVER_CLASS_LIST_INI>::getDebugChar (void)
{
	static char buf[BUFSIZ];
	static INT	bufcnt = 0;
	static char *bufp;
	if (bufcnt-- > 0)
		return *bufp++ & 0x7f;
	bufcnt = read (_remoteDesc, buf, sizeof (buf));
	/*DBG_GDBSVR ("getDebugChar() ret: %d\n", bufcnt);*/
	if (bufcnt <= 0) { 
		fprintf(stderr, "GDBSVR: getDebugChar(): Can't read character.\n");fflush(NULL);
		/* Needn't exit, just go back to while loop in RunFsimDaemon(). */
		return -1;
	}
	bufp = buf;
	bufcnt--;
	return *bufp++ & 0x7f;
}

/* Send the packet in buffer. Return 0 on success. */
template<GDBSERVER_CLASS_LIST_DEF>
INT GDBServer<GDBSERVER_CLASS_LIST_INI>::putPacket (char *buf)
{
	char ch, checksum = 0;
	char *p;
	UINT count;
	INT	 retval;

	/* Encapsulating and giving it a checksum.  */
	/*  $<packet info>#<checksum>. */
	p = buf;
	*p++ = '$';
	*p++ = _HWThread + '0';
	*p++ = '$';
	for (count = 0; count < BUFMAX && *p != 0; p++, count++)
		checksum += *p;
	*p++ = '#';
	*p++ = hexchars[(checksum >> 4) & 0xf];
	*p++ = hexchars[checksum & 0xf];
	*p = 0;
	do {
		if (_remoteDesc > 0) {
			if (_xRSP) {
				retval = write(_remoteDesc, buf, count+6);
				DBG_GDBSVR ("putPacket(%s) ret: %d\n", buf, retval);
			} else {
				retval = write(_remoteDesc, buf+2, count+4);
				DBG_GDBSVR ("putPacket(%s) ret: %d\n", buf+2, retval);
			}
		}
		if ( retval < 0 ) {
			fprintf(stderr, "GDBSVR: putPacket(%s) error.\n", buf);fflush(NULL);
			threadExit ();
		} 
	} while (getDebugChar() != '+');
	/* If we are doing machine test using gdbserver, this allowed gdbserver 
	 * exits when program exits. */
	if (buf[1] == 'W' || buf[1] == 'D') {
#if 0		
		exit (0);
#else
		return 1;
#endif		
	}
	return 0;
}

/* scan for the sequence $<data>#<checksum> */
template<GDBSERVER_CLASS_LIST_DEF>
char * GDBServer<GDBSERVER_CLASS_LIST_INI>::getPacket (void)
{
	char *buffer = _inBuffer;
	char checksum;
	char xmitcsum;
	INT count;
	char ch;
	while (1) {
		/* wait around for the start character, ignore all other characters */
		while ((ch = getDebugChar ()) != '$') 
			if (ch < 0 )
				return NULL;
			else if(ch == 0x3) {
				buffer[0] = 'k';
				buffer[1] = '\0';
				return &buffer[0];
			}
retry:
		checksum = 0;
		xmitcsum = (char)-1;
		count = 0;
		/* now, read until a # or end of buffer is found */
		while (count < BUFMAX - 1) {
			ch = getDebugChar ();
			if (ch == '#') break;
			if (ch == '$') {
				if (count == 1) {
					checksum = 0;
					buffer[count++] = ch;
					continue;
				} else {
					goto retry;
				}
			}				
			checksum += ch;
			buffer[count++] = ch;
		}
		buffer[count] = 0;
		/*DBG_GDBSVR ("getPacket () got: %s\n", buffer);*/
		if (ch == '#'){
			ch = getDebugChar ();
			xmitcsum = hex (ch) << 4;
			ch = getDebugChar ();
			xmitcsum += hex (ch);
			if (checksum != xmitcsum) {
				DBG_GDBSVR ("checksum:%x, xmitcsum: %x\n", checksum, xmitcsum);
				putDebugChar ('-');	/* failed checksum */
			} else {
				putDebugChar ('+');	/* successful transfer */
				/* if a sequence char is present, reply the sequence ID */
				if (buffer[2] == ':') {
					putDebugChar (buffer[0]);
					putDebugChar (buffer[1]);
					return &buffer[3];
				}
				return &buffer[0];
			}
		}
	}
	return NULL;
}

template<GDBSERVER_CLASS_LIST_DEF>
void GDBServer<GDBSERVER_CLASS_LIST_INI>::replySignal (char *buf, char sign, UINT singal)
{
	*buf++ = sign;
	*buf++ = hexchars[(singal >> 4) & 0xf];
	*buf++ = hexchars[singal & 0xf];
	if (sign == 'T') {
		INT regnum = _slArch.getPCIdx();
		*buf++ = hexchars[(regnum >> 4) & 0xf];
		*buf++ = hexchars[regnum & 0xf];
		*buf++ = ':';
		readReg(regnum, buf);
		buf += 8;
		*buf++ = ';';
		regnum = _slArch.getSPIdx();
		*buf++ = hexchars[(regnum >> 4) & 0xf];
		*buf++ = hexchars[regnum & 0xf];
		*buf++ = ':';
		readReg(regnum, buf);
		buf += 8;
		*buf++ = ';';
	}
	*buf = 0;
}

template<GDBSERVER_CLASS_LIST_DEF>
void GDBServer<GDBSERVER_CLASS_LIST_INI>::writeAnswer (char *buf, char *src)
{
  while (*src) {
    *buf++ = *src;
    src++;
  }
  *buf = 0;
}

template<GDBSERVER_CLASS_LIST_DEF>
void GDBServer<GDBSERVER_CLASS_LIST_INI>::writeAnswerHex (char *buf, char *src)
{
  while (*src) {
    *buf++ = hexchars[(*src >> 4) & 0xf];
    *buf++ = hexchars[*src & 0xf];
    src++;
  }
  *buf = 0;
}

template<GDBSERVER_CLASS_LIST_DEF>
INT GDBServer<GDBSERVER_CLASS_LIST_INI>::getRequestHex (char *buf, char *src)
{
	INT count = 0;
	while (*src) {
		buf[count] = (hex(*src++) << 4) & 0xf0;
		buf[count++] |= hex(*src++) & 0xf;
	}
	buf[count] = 0;
	return count;
}

template<GDBSERVER_CLASS_LIST_DEF>
INT GDBServer<GDBSERVER_CLASS_LIST_INI>::reportExeStatus(char *buf)
{
	INT s = machine().status().last_state();
	DBG_GDBSVR ("execution status:[0x%x]\n", s);
	if (s == ESTATUS_NORMAL) {
		replySignal (buf, 'T', SIGTRAP);
		return 0;
	}
	if((s&ESTATUS_EXIT_0)>0) {
		/* While action on GDB's command, FSIM should not save 
		   breakpoints information.*/
		try {
			breakpoint()->clearAllBreak();
		} catch (BreakPointInvalidAddrException ex) {
			//ex.toString(out());
			return -1;
		}
		replySignal (buf, 'W', 0);
		return 0;
	} else if((s&ESTATUS_INSTR_BREAK)>0) {
		replySignal (buf, 'T', SIGTRAP);
		return 0;
	} else if((s&ESTATUS_MEM_WBREAK)>0) {
		replySignal (buf, 'T', SIGTRAP);
		return 0;
	}
	return 0;
}

template<GDBSERVER_CLASS_LIST_DEF>
INT GDBServer<GDBSERVER_CLASS_LIST_INI>::writeReg(UINT regNum, char *hbuf)
{
	union {
		UINT i_val[8];
		UINT16 si_val[16];
		char c_val[32];
	} val;
	char *p = val.c_val;
	if ( _slArch.getRegSize(regNum) == 4 ) {
		hex2mem(hbuf, p, 4);
		if (_slArch.getPCIdx() == regNum) {
			machine().setPC(val.i_val[0]);
		} else {
			machine().getReg().setRegByName((char *)_slArch.getRegName(regNum), val.i_val[0]);
		}
	} else if (_slArch.getRegSize(regNum) == 32){
		hex2mem(hbuf, p, 32);
		char simd_i_j[11];
		for (INT j=0; j<16; j++) {
			sprintf(simd_i_j, "simd_%02d_%02d", regNum - _slArch.getRF0Idx(), j);
			machine().getReg().setRegByName(simd_i_j, (DWORD) val.si_val[j]);
		}
	}
	return 0;
}

template<GDBSERVER_CLASS_LIST_DEF>
INT GDBServer<GDBSERVER_CLASS_LIST_INI>::readReg(UINT regNum, char *hbuf)
{
	WORD v;
	RegMap& regMap = machine().getRegMap();
	RegMapIter regMapIter;
	if (regNum == _slArch.getPCIdx()) {
		v = machine().getPC();
		int2hex (v, hbuf);
	} else if (_slArch.getRegName(regNum) == NULL) {
		int2hex (0, hbuf);
	} else if (_slArch.getRegSize(regNum) == 4) {
		regMapIter = regMap.find(_slArch.getRegName(regNum));
		if(regMapIter != regMap.end()){
			pair<DWORD, UINT> data = regMapIter->second->getValue();
			int2hex (data.first, hbuf);
		}
	} else if (_slArch.getRegSize(regNum) == 32) {
		char simd_i_j[11];
		for (INT j=0; j < 16; j++) {
			sprintf((char *)simd_i_j, "simd_%02d_%02d", regNum - _slArch.getRF0Idx(), j);
			regMapIter = regMap.find(simd_i_j);
			if(regMapIter != regMap.end()){
				pair<DWORD, UINT> data = regMapIter->second->getValue();
				int2hex (data.first, hbuf+j*4);
			}
		}
	} else {
		return -1;
	}
	return 0;
}

template<GDBSERVER_CLASS_LIST_DEF>
INT GDBServer<GDBSERVER_CLASS_LIST_INI>::initSymbols (struct symbol_t *symbolList)
{
	DBG_GDBSVR ("initSymbols(): in.\n");
	
	ADDR ucLibcInit  = SYM_UNDEF;
	ADDR groundAddr = SYM_UNDEF;
	ADDR startAddr = SYM_UNDEF;
	ADDR mainAddr = SYM_UNDEF;
	ADDR sp = SYM_UNDEF;
	ADDR textEnd = SYM_UNDEF;
	ADDR dataEnd = SYM_UNDEF;
	ADDR allocStart = SYM_UNDEF;
	ADDR exceptionHandler = SYM_UNDEF;
	ADDR interruptHandler = SYM_UNDEF;
	ADDR bssStart = SYM_UNDEF;
	
	ADDR pc = SYM_UNDEF;
	ADDR textStart = SYM_UNDEF;
	ADDR dataStart = 0;
	
	if (symbolList != NULL) {
		/* If symbolList is given by GDB. */
		struct symbol_t *p = symbolList;
		while (p->sym_name != NULL) {
			if (strcmp(p->sym_name, "_init") == 0) {
				ucLibcInit = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "__ground_zero") == 0) {
				groundAddr = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "__start") == 0) {
				startAddr = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "main") == 0) {
				mainAddr = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "__stack") == 0) {
				sp = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "__etext") == 0) {
				textEnd = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "_end") == 0) {
				dataEnd = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "_allocStart") == 0) {
				allocStart = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "__exception_handler") == 0) {
				exceptionHandler = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "__interrupt_handler") == 0) {
				interruptHandler = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			} else if (strcmp(p->sym_name, "_fbss") == 0) {
				bssStart = p->sym_value == 0 ? SYM_UNDEF : p->sym_value;
			}
			if (bssStart != SYM_UNDEF && dataEnd != SYM_UNDEF && dataEnd > bssStart) {
				mmu().initBlock(bssStart, 0, dataEnd - bssStart);
			}
			p++;
		} 
	} else {
		fprintf(stderr, "error: NULL symbol list.\n");fflush(NULL);
		return -1;
	}

	if (groundAddr != SYM_UNDEF)
		pc = groundAddr;
	else
		pc = (startAddr != SYM_UNDEF) ? startAddr : mainAddr;
	if(pc != SYM_UNDEF) {
		machine().setPC(pc);
		machine().setStartPC(pc);
	} else {
		fprintf(stderr, "error: Can't init PC.\n");fflush(NULL);
		return -1;
	}
	
	// set stack pointer
	if(sp != SYM_UNDEF) {
		machine().getReg().setSP(sp);		
		machine().getReg().spBase(sp);
	} else {
		fprintf(stderr, "error: Can't init SP.\n");fflush(NULL);
		return -1;
	}
		
	// set text section range	
	if (ucLibcInit != SYM_UNDEF)
		textStart = ucLibcInit;
	else
		textStart = pc;
	if(textEnd == SYM_UNDEF) {
		fprintf(stderr, "error: Can't init text end.\n");fflush(NULL);
		return -1;
	}	
	mmu().setTextRange(textStart, textEnd);
	
	// set data section range
	if(dataEnd == SYM_UNDEF) {
		fprintf(stderr, "error: Can't init data end.\n");fflush(NULL);
		return -1;
	}	
	/*symName = "__data_start";
	dataStart = symtable()->getValue(symName);
	if(dataStart==SYM_UNDEF) {
		fprintf(out(), "Loading ELF error: can't find symbol '__data_start'\n");
		return SHELL_ERROR;
	}	*/
	mmu().setDataRange(dataStart,dataEnd);
	
	// set allocate range
	UINT allocLimit = (UINT) - 1;
	if (allocStart != SYM_UNDEF) {
		allocLimit = dataEnd - allocStart;
	} else {
		allocStart = dataEnd;
	}
	mmu().allocMap()->setAllocRange(allocStart, allocLimit);
	DBG_GDBSVR ("initSymbols(): out.\n");
	
	return 0;
}

template<GDBSERVER_CLASS_LIST_DEF>
void GDBServer<GDBSERVER_CLASS_LIST_INI>::qFeedback (char *ptr)
{
	char *p = ptr;
	char *q = p;
	UINT thread_num, ret;
	char * const oBuf = &_outBuffer[3];
	switch (*ptr) {
		case 'C':
		{
			writeAnswer (oBuf, "QC1");
		}		
		break;
		
		case 'f':
			if (strcmp(ptr, "fThreadInfo") == 0) {
				writeAnswer (oBuf, "m1");
			}
		break;
		
		case 'O':
			if (strcmp(ptr, "Offsets") == 0) {
				writeAnswer (oBuf, "Text=0000;Data=0000;Bss=0000");
			}
		break;		
		
		case 'R':
			if (strncmp(ptr, "Rcmd",4) == 0) {
				while (*p != '\0' && *p++ != ',') ;
				getRequestHex (_bufCache, p);
				ret = 1;//fsim_daemon_run_tcl((unsigned char *)_bufCache);
				if (ret == 0) {
					writeAnswer (oBuf, "OK");
				} else if (ret < 0) {
					replySignal (oBuf, 'E', 0);
				} else {
					writeAnswerHex (oBuf, "Run cmd not supported.");
				}
			}
		break;
		
		case 's':
			if (strcmp(ptr, "sThreadInfo") == 0)
				writeAnswer (oBuf, "l");
		break;
		
		case 'S':
			if (strcmp(ptr, "Supported") == 0) {
				 /* Max characters 0x1ff0(8176) < BUFSIZ(8190) */
				writeAnswer (oBuf, "PacketSize=1ff0");
			}
			if (strncmp(ptr, "Symbol:", 7) ==0) {
				ptr += 7;
				if (*ptr == ':') {
					if (*(ptr+1) != '\0') {
						_symList[_symListIdx].sym_value = 0;
						_symListIdx++;
					}
					if (_symList[_symListIdx].sym_name != NULL) {
							writeAnswer (oBuf, "qSymbol:");
							writeAnswerHex (oBuf+8, _symList[_symListIdx].sym_name);
					} else {
						_symListIdx = 0;
						writeAnswer (oBuf, "OK");
					}
				} else { 
					p = strchr (ptr, ':');
					*p++ = '\0';
					q = p;
					while (*q != '\0' && *q != '#') q++;
					*q = '\0';
					getRequestHex (_bufCache, p);
					if (strcmp (_bufCache, _symList[_symListIdx].sym_name) == 0) {
						_symList[_symListIdx].sym_value = hex2int (ptr);
						DBG_GDBSVR ("Symbol:%s=%d\n",
									_symList[_symListIdx].sym_name,
									_symList[_symListIdx].sym_value);fflush(NULL);
					} 
					_symListIdx++;
					if (_symList[_symListIdx].sym_name != NULL) {
						writeAnswer (oBuf, "qSymbol:");
						writeAnswerHex (oBuf+8, _symList[_symListIdx].sym_name);
					} else {
						_symListIdx = 0;
						writeAnswer (oBuf, "OK");
					}
				}
			}
		break;
				
		case 'T':
			if (strncmp(ptr, "ThreadExtraInfo", 15) == 0) {
				thread_num = 0;
				while (*p != '\0' && *p++ != ',') ;
				thread_num = hex2int (p);
				thread_num > 0 ? thread_num-- : thread_num;
				if(thread_num != 0) break;
				char ack[9] = "SL";
				if (_slArch.getAbi() == SL_ABI_V32) {
					ack[2] = '2'; ack[3] = 'T'; ack[4] = 'h';
					ack[5] = 0x30 + _HWThread;  //NUM2ASCII: SL2Thx
					ack[6] = '\0'; 
					if (_HWThread < 4) 
						writeAnswerHex (oBuf, ack);
					else
						writeAnswerHex (oBuf, "err");
				} else if (_slArch.getAbi() == SL_ABI_AUTO 
						|| _slArch.getAbi() == SL_ABI_B32) {
					switch (_HWThread) {
						case 0:
							writeAnswerHex (oBuf, "SL1-core");
						break;
						case 1:
							writeAnswerHex (oBuf, "SL1-bb");
						break;
							default:
						writeAnswerHex (oBuf, "err");
					}
				} else {
					replySignal (oBuf, 'E', 0);
				}
			} 
		break;
		
		default:
			replySignal (oBuf, 'E', 0);
	}
}



template<GDBSERVER_CLASS_LIST_DEF>
INT GDBServer<GDBSERVER_CLASS_LIST_INI>::handleRSP (void)
{
	char *p, *q;
	UINT decode_num, addr, count;
	INT ret1, ret2;
	char * const oBuf = &_outBuffer[3];

	char *ptr;
	while( ptr = getPacket()) {
		DBG_GDBSVR ("HandleRSP () got: %s\n", ptr);
		
		if (*(ptr+1) == '$') {
			_HWThread = *ptr -'0';
			ptr += 2;
			_xRSP = true;
		} else {
			_xRSP = false;
		}
		machine().curthread(_HWThread);
			
		switch(*ptr++) {
			case 'p':
			{
				decode_num = hex2int (ptr);
				readReg(decode_num, oBuf);
				*(oBuf + 2*_slArch.getRegSize (decode_num)) = 0;
 			}
			break;
		
			case 'm':
			{
				DBG_GDBSVR ("HandleRSP () got 'm' packet.\n");
				addr = hex2int (ptr);
				p = ptr;
				while (*p != 0 && *p++ != ',') ;
				count = hex2int(p);
				if (count >= BUFMAX/2) {
					replySignal (oBuf, 'E', 0);
					break;
				}
				simMem2hex (addr, oBuf, count);
			}
			break;

			case 'P':
			{
				decode_num = hex2int (ptr);
				p = ptr;
				while (*p != 0 && *p++ != '=') ;
				for (q = p; *q != '#' && *q != 0; q++) ;
				*q = 0;
				if (writeReg(decode_num, p) != 0)
					replySignal (oBuf, 'E', 0);
				else
					writeAnswer (oBuf, "OK");
			}
			break;
				
			case 'M':
			{
				p = ptr;
				while (*p != 0 && *p++ != ',') ;
				q = p;
				while (*q != 0 && *q++ != ':') ;
				addr = hex2int(ptr);
				count = hex2int(p);
				if (count >= BUFMAX/2) {
					replySignal (oBuf, 'E', 0);
					break;
				}
				ret1 = hex2simMem(q, addr, count);
				if ((ret1 - addr) != count)
					replySignal (oBuf, 'E', 0);
				else
					writeAnswer (oBuf, "OK");
			}
			break;
			
			case 'Z':
			{
				addr = hex2int (ptr+2);
				switch (*ptr) {
					case '0':
						try {
							breakpoint()->setInstrBreak(addr);
						} catch (BreakPointInvalidAddrException ex) {
							//ex.toString(out());
							replySignal (oBuf, 'E', 0);
						}
					break;
					case '2':
						try {
							breakpoint()->setWriteBreak(addr);
						} catch (BreakPointInvalidAddrException ex) {
							//ex.toString(out());
							replySignal (oBuf, 'E', 0);
						}
					break;
					case '3':
						try {
							breakpoint()->setReadBreak(addr);
						} catch (BreakPointInvalidAddrException ex) {
							//ex.toString(out());
							replySignal (oBuf, 'E', 0);
						}
					break;
					case '4':
						try {
							breakpoint()->setWriteBreak(addr);
							breakpoint()->setReadBreak(addr);
						} catch (BreakPointInvalidAddrException ex) {
							//ex.toString(out());
							replySignal (oBuf, 'E', 0);
						}
					break;
					default:
						IsTrue((0), ("Invalid break type\n"));
					break;
				}
				writeAnswer (oBuf, "OK");
			}
			break;			
   			 				
			case 'z':
			{
				addr = hex2int (ptr+2);
				switch (*ptr) {
					case '0':
						breakpoint()->clearInstrBreak(addr);
					break;
					case '2':
						breakpoint()->clearWriteBreak(addr);
					break;
					case '3':
						breakpoint()->clearReadBreak(addr);
					break;
					case '4':
						breakpoint()->clearWriteBreak(addr);
						breakpoint()->clearReadBreak(addr);
					break;
					default:
						IsTrue((0), ("Invalid break type\n"));
					break;
				}				
				writeAnswer (oBuf, "OK");
			}
			break;

			case 'c':
			{
				addr = 0;
				p = ptr;
				while (*p != 0 && *p != '#' && *p != ';') p++;
				if (*p != ';') {
					addr = (hex2int(ptr) != 0) ? hex2int(ptr) : machine().getPC();
				} else {
					/* TODO: 'c' packet signal support. */
				}
  		   		count = 0;
 		   		decode_num = 0;
 		   		/* Get _ftext's value. */
 		   		while (_symList[count].sym_name != NULL) {
 		   			if (strcmp(_symList[count].sym_name, "_ftext") == 0) {
 		   				decode_num = _symList[count].sym_value;
 		   				break;
 		   			}
 		   			count++;
 		   		}
 		   		/* If continue at address _fstext(text section's start address), 
 		   		   then reload elf from _symList. */
   		 		if (decode_num != 0 && addr == decode_num) {
   		 			DBG_GDBSVR ("HandleRSP (): Load a program.\n");
   		 			if (initSymbols(_symList) != 0){
   		 				replySignal (oBuf, 'E', 0);
   		 				break;
   		 			}
					addr = machine().getPC();
   		 		}
   		 		DBG_GDBSVR ("HandleRSP (): 'c' at addr:0x%x.\n", addr);
   		 		if (addr == 0) {
   		 			replySignal (oBuf, 'E', 0);
   		 			break;
   		 		}
   		 		machine().runMem(addr, UINT32_MAX, false);
   		 		reportExeStatus(oBuf);
			}
   			break;

			case 'g':
			{
				p = oBuf;
				for (decode_num = 0; decode_num < _slArch.getNumRegs(); decode_num++) {
					readReg(decode_num, p);
					p += _slArch.getRegSize (decode_num);
				}
				*p = 0;
			}
			break; 	

			case 'D':
			{
				writeAnswer (oBuf, "OK");
				putPacket(_outBuffer);
				return 0;
			}
			break;
				
			case 'H':
			{
				if (*(ptr+1) == '0' || (*(ptr+1) == '-' && *(ptr+2) == '1')) {
					writeAnswer (oBuf, "OK");
					break;
				}
				decode_num = 1;
				p = ptr + 1;
				decode_num = hex2int (p);
				decode_num > 0 ? decode_num-- : decode_num ;
				if(decode_num == 0) {
					if (*ptr == 'c') {
						writeAnswer (oBuf, "OK");
 					} else if (*ptr == 'g') {
						writeAnswer (oBuf, "OK");
					}
					break;
				} 
				replySignal (oBuf, 'E', 0);
			}
			break;
	
			case 'k':
			{
				continue;				
			}
			break;
   	
			case 'q':
			{
				qFeedback(ptr);
			}
			break;
			
			case 'R':
			{
				decode_num = 0;
				decode_num = hex2int(ptr);
				DBG_GDBSVR ("HandleRSP (): 'R' got:0x%x.\n", decode_num);
				if (decode_num == 0) {
					/* Get _ftext's value. */
					while (_symList[count].sym_name != NULL) {
						if (strcmp(_symList[count].sym_name, "_ftext") == 0) {
							decode_num = _symList[count].sym_value;
							break;
						}
						count++;
					}
				}
				DBG_GDBSVR ("HandleRSP (): 'R' from symbol:0x%x.\n", decode_num);
				addr = decode_num;
   		 		if (addr == 0) {
   		 			replySignal (oBuf, 'E', 0);
   		 			break;
   		 		}
   		 		DBG_GDBSVR ("HandleRSP (): 'R' at addr:0x%x.\n", addr);
   		 		machine().setPC(addr);
   		 		continue;
			}
	
			case 's':
			{
				if (*ptr) {
   		 			fprintf(stderr, "error: 's' with args not support.\n");fflush(NULL);
   		 			break;
   		 		}
 	  			machine().runSingle(1);
 	  			reportExeStatus(oBuf);
			}
  			break;
  		
  			case 'T':
  			{
  				p = ptr;
  				while (*p != '\0' && *p == '0') p++;
  				decode_num;
  				decode_num = hex2int (p);
  				decode_num > 0 ? decode_num-- : decode_num ;
  				if(!decode_num) {
					writeAnswer (oBuf, "OK");
  				}
  			}
  			break;
			
			case 'v':
			{
				char *execQueryCmd="Cont?";
				char *execActionCmd = "Cont";
				if (strncmp(ptr, execQueryCmd, strlen(execQueryCmd)) == 0) {
					writeAnswer (oBuf, "vCont;s;c");
				} else if (strncmp(ptr, execActionCmd, strlen(execActionCmd)) == 0) {
					replySignal (oBuf, 'E', 0);
					fprintf(stderr, "GDBSVR: 'vCont' command not implemented\n");fflush(NULL);
				}
			}
			break;
	
			case 'X':
				writeAnswer (oBuf, "");
			break;
	
			case '?':
			{
				try {
					breakpoint()->clearAllBreak();
				} catch (BreakPointInvalidAddrException ex) {
					//ex.toString(out());
					replySignal (oBuf, 'E', 0);
				}
				writeAnswer (oBuf, "T05");
			}
			break;

			case '!':
			{
				writeAnswer (oBuf, "OK");
			}
			break;
							
			default:
			break;
		}
		/* reply to the request */
		putPacket(_outBuffer);
		*oBuf = 0;
	}
	return 0;
}

#endif /*GDBSERVER_H_*/
