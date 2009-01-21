/*
 *  File: simconfig.cpp
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
#include "simconfig.h"
#include "configfile.h"
#include "argparser.h"

#include <cstdlib>

SimConfig::SimConfig() : _ntimers(0), _nuarts(0), _netcard(false), _ngpios(0),_gdbport(-1), _shell(false)
{
}

inline void SimConfig::showRegAddr()
{
	printf("Address of memory mapped registers:\n");
	printf("DMA_BASE_ADDR   \t: 0x%08x\n", DMA_BASE_ADDR);

	printf("PIC_CORE_BASE_ADDR\t: 0x%08x\n", PIC_CORE_BASE_ADDR);
	printf("PIC_DSP_BASE_ADDR\t: 0x%08x\n", PIC_DSP_BASE_ADDR);

	printf("TIMER0_BASE_ADDR\t: 0x%08x\n", TIMER0_BASE_ADDR);
	printf("TIMER1_BASE_ADDR\t: 0x%08x\n", TIMER1_BASE_ADDR);
	printf("TIMER2_BASE_ADDR\t: 0x%08x\n", TIMER2_BASE_ADDR);
	printf("TIMER3_BASE_ADDR\t: 0x%08x\n", TIMER3_BASE_ADDR);

	//printf("UART1_BASE_ADDR  \t: 0x%08x\n", UART1_BASE_ADDR);
	printf("UART2_BASE_ADDR  \t: 0x%08x\n", UART2_BASE_ADDR);
	printf("UART3_BASE_ADDR  \t: 0x%08x\n", UART3_BASE_ADDR);

	printf("KEYPAD_BASE_ADDR\t: 0x%08x\n", KEYPAD_BASE_ADDR);

	printf("GPIO0_BASE_ADDR  \t: 0x%08x\n", GPIO0_BASE_ADDR);
	printf("GPIO1_BASE_ADDR  \t: 0x%08x\n", GPIO1_BASE_ADDR);
	printf("GPIO2_BASE_ADDR  \t: 0x%08x\n", GPIO2_BASE_ADDR);
	printf("GPIO3_BASE_ADDR  \t: 0x%08x\n", GPIO3_BASE_ADDR);
	printf("GPIO4_BASE_ADDR  \t: 0x%08x\n", GPIO4_BASE_ADDR);

	printf("DARAM_BASE_ADDR  \t: 0x%08x\n", DARAM_BASE_ADDR);
	printf("BOOTROM_BASE_ADDR\t: 0x%08x\n", BOOTROM_BASE_ADDR);
	printf("FLASH_BASE_ADDR  \t: 0x%08x\n", FLASH_BASE_ADDR);
	printf("DRAM_BASE_ADDR   \t: 0x%08x\n", DRAM_BASE_ADDR);
}

void SimConfig::showOptions()
{
	printf("  ssim [options] [executable-file]\n\n");
	printf("Options:\n\n");
	printf("  -h, --help\t: print this help.\n");
	printf("  -v, --verbose\t: show simulation internal info.\n");
	printf("  -u, --nports\t: number of UART port [0-3]\n");
	printf("  -t, --ntimers\t: enable timers [0-4]\n");
	printf("  -N, --network\t; enable network.\n");
	printf("  -T, --trace\t: trace file\n");
	printf("  -d, --gdbport\t: run as a GDB target\n");
	printf("  -s, --shell\t: Use interactive shell\n");
	printf("  -cmd, --cmd\t: Execute commands.\n");
	printf("  -xc, --xc\t: Load file for core thread and run.\n");
	printf("  -xb, --xb\t: Load file for bb thread and run.\n");
	printf("  -b, --batch\t: Execute command file.\n");
	printf("\n\n");
}

void SimConfig::readConfigFile(string& filename)
{
	ConfigFile cf(filename);

	/* Memory setting
	 * No checking is done here, the checking will be done when the
	 * memory object create.
	 */
	_sram.size = cf.Value("memory", "sram_size", 0);
	_sram.start = cf.Value("memory", "sram_start", 0);

	_onchipregs.size = (cf.Value("memory", "onchipregs_size", 0));
	_onchipregs.start = (cf.Value("memory", "onchipregs_start", 0));

	_ram.size = cf.Value("memory", "ram_size", 0);
	_ram.start = cf.Value("memory", "ram_start", 0);

	_rom.size = cf.Value("memory", "rom_size", 0);
	_rom.start = cf.Value("memory", "rom_start", 0);

	/* Perippheral setting
	 */
	nuarts(cf.Value("peripheral", "uart"));
	ngpios(cf.Value("peripheral", "gpio"));
	
	gdbport(cf.Value("debug", "gdbport"));
}

int SimConfig::nuarts()
{
	return _nuarts;
}

void SimConfig::nuarts(int n)
{
	_nuarts = n;
}

int SimConfig::ngpios()
{
	return _ngpios;
}

void SimConfig::ngpios(int n)
{
	_ngpios = n;
}

int SimConfig::ntimers()
{
	return _ntimers;
}

void SimConfig::ntimers(int n)
{
	_ntimers = n;
}

bool SimConfig::netcard()
{
    return _netcard;
}

void SimConfig::netcard(bool enable)
{
    _netcard = enable;
}

string SimConfig::exename()
{
	return _exename;
}

void SimConfig::exename(string name)
{
	_exename = name;
}

string SimConfig::configname()
{
	return _configname;
}

void SimConfig::configname(string name)
{
	_configname = name;
	readConfigFile(_configname);
}

string SimConfig::tracename()
{
	return _trname;
}

void SimConfig::tracename(string name)
{
	_trname = name;
}

string SimConfig::cmdfilename()
{
	return _cmdfilename;
}

void SimConfig::cmdfilename(string name)
{
	_cmdfilename = name;
}

string SimConfig::cmdline()
{
	return _cmdline;
}

void SimConfig::cmdline(string name)
{
	_cmdline = name;
}

string SimConfig::xcname()
{
	return _xcname;
}

void SimConfig::xcname(string name)
{
	_xcname = name;
}

string SimConfig::xbname()
{
	return _xbname;
}

void SimConfig::xbname(string name)
{
	_xbname = name;
}


int SimConfig::gdbport()
{
	return _gdbport;
}

void SimConfig::gdbport(int portn)
{
	_gdbport = portn;
}

bool SimConfig::shell()
{
	return _shell;
}

void SimConfig::shell(bool enable)
{
	_shell = enable;
}

SimConfig::CONFIG_STATUS SimConfig::parseArgs(int argc, char *argv[])
{
	const Arg_parser::Option options[] =
	{
		{'L',"cmd",3,"cmd",Arg_parser::yes},
		{'C',"xc",2,"xc",Arg_parser::yes},
		{'B',"xb",2,"xb",Arg_parser::yes},
		{'h',"h", 1,"help", Arg_parser::no},
		{'v',"v", 1,"verbose", Arg_parser::no},
		{'d',"d", 1,"gdbport", Arg_parser::maybe},
		{'u',"u", 1,"nports", Arg_parser::yes},
		{'t',"t", 1,"ntimers", Arg_parser::yes},
		{'N',"N", 1, "netcard",Arg_parser::no},
		{'T',"T", 1,"trace", Arg_parser::yes},
		{'c',"c", 1,"config", Arg_parser::yes},
		{'s',"s", 1,"shell", Arg_parser::no},
		{'b',"b", 1,"batch", Arg_parser::yes},
		{ 0,NULL,0,NULL,Arg_parser::yes}
	};
	/* skip the first argument */
	Arg_parser parser(argc, argv, options);
	if (parser.error().size()) {
		return CONFIG_ERR_UNKNOWN;
	}
	for (int argind = 0; argind < parser.arguments(); ++argind) {
		const int code = parser.code(argind);
//		if (!code) break;		// no more options
		switch(code) {
		case 0:
			exename(parser.argument(argind));
			break;
		case 'd': 
			{
			int port = std::atoi(parser.argument(argind).c_str());
			if (port == 0)
				gdbport(10086);
			else
				gdbport(port);
			}
			break;
		case 'u':
			nuarts(std::atoi(parser.argument(argind).c_str()));
			break;
		case 't':
			ntimers(std::atoi(parser.argument(argind).c_str()));
			break;
		case 'c':
			configname(parser.argument(argind));
			break;
		case 'T':
			tracename(parser.argument(argind));
			break;
		case 'v':
			showRegAddr();
			break;
		case 'N':
			netcard(true);
			break;
		case 's':
			shell(true);
			break;
		case 'b':
			cmdfilename(parser.argument(argind));
			break;
		case 'L':
			cmdline(parser.argument(argind));
			break;
		case 'C':
			xcname(parser.argument(argind));
			break;
		case 'B':
			xbname(parser.argument(argind));
			break;	
		case 'h':
			return CONFIG_HELP;
		default:
			return CONFIG_ERR_UNKNOWN;
		}
	}
	if (shell() | gdbport())
		return CONFIG_OK;
	if (exename().size() == 0)
		return CONFIG_ERR_EXENAME;
	return CONFIG_OK;
}
