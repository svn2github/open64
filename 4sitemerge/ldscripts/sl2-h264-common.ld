PROVIDE (__H264Bitstream = 0x400000);

__text_start = 0x18000;

/* Starting address of the argc, argv */
__main_arg = 0x14400;

/* Base address of the JaVi internal registers */
__javi_regs = 0x2000;

/* The starting offset of EI registers */
__amba_offset = 0x64;

/* The starting offset of DMA registers */
__dma_offset = 0x0;

__buf_map = 0x3000000;

/* stack start from the top of sdram memory 
 * and sdram size is 64M. 
 */
__stack = 0x20000000;
PROVIDE (__stack = 0x20000000);

/*
 * Initalize some symbols to be zero so we can reference them in the
 * crt0 without core dumping. These functions are all optional, but
 * we do this so we can have our crt0 always use them if they exist.
 * This is so BSPs work better when using the crt0 installed with gcc.
 * We have to initalize them twice, so we multiple object file
 * formats, as some prepend an underscore.
 */
PROVIDE (hardware_exit_hook = 0);
PROVIDE (hardware_init_hook = 0);
PROVIDE (software_init_hook = 0);


ENTRY(__start)

PHDRS
{
    SBUF    PT_LOAD;
    VBUF    PT_LOAD FLAGS(4);
    RAM     PT_LOAD;
}

MEMORY
{
	sbuf : ORIGIN = 0x00004000, LENGTH = 16K
	vbuf : ORIGIN = 0x00008000, LENGTH = 32K
	lut : ORIGIN = 0x00010000, LENGTH = 16K
	ram : ORIGIN = 0x00014800, LENGTH = 64M
}

SECTIONS 
{
    
    .init :
    {
      KEEP (*(.init))
    } >ram :RAM 
    .text :
    {
        _ftext = . ;
        *(.text)
        *(.text.*)
        *(.gnu.linkonce.t.*)
        _ecode = .;
    } >ram :RAM
    .fini           :
    {
      KEEP (*(.fini))
    } >ram : RAM 
    PROVIDE (__etext = .);
    PROVIDE (_etext = .);
    PROVIDE (etext = .);
    __etext = .;
    .rdata  : { *(.rdata) *(.rdata.*) *(.gnu.linkonce.r*) } >ram :RAM
    .data :
    {
        _fdata = . ;
        *(.data)
        *(.data.*)
        *(.gnu.linkonce.d.*)
    } >ram :RAM
	_fbss = .;
	.bss :
    {
        *(.dynbss)
        *(.bss)
        *(.bss.*)
        *(.gnu.linkonce.b.*)
        . = ALIGN(32 / 8);
    } >ram :RAM

	. = ALIGN(32 / 8); 
	_end = .;
	PROVIDE (__end = .);
	PROVIDE (end = .);

    __sbuf_dram_start = LOADADDR(.sbuf);  
	.sbuf :
	{	
		_gp = ALIGN(16) + 0x7ff0;
		__sbuf_start = .;
		*(.sbuf)
	} >sbuf AT>ram :SBUF
	.sdata : 
	{
        *(.sdata)
        *(.sdata1)
        *(.sdata.*)
        *(.gnu.linkonce.s.*)
	    _edata = .;
            __sbuf_end = .;
	} >sbuf AT>ram :SBUF
	.sbss :
	{
        PROVIDE (__sbss_start = .);
        PROVIDE (___sbss_start = .);
        *(.dynsbss)
        *(.sbss .sbss.* .gnu.linkonce.sb.*)
        *(.scommon)
        PROVIDE (__sbss_end = .);
        PROVIDE (___sbss_end = .);
        } >sbuf AT>ram :SBUF

 	__vbuf_dram_start = LOADADDR(.vbuf); 
	.vbuf :
	{
		__vbuf_start = .;
		*(.vs1data)
		*(.vs2data)
		*(.vs4data)
		__vbuf_end = .;
	} >vbuf AT>ram :VBUF 

	.lut :
	{	
		__lut_start = .;
		__H264LUT = __lut_start;
	} >lut AT>ram :RAM

	/* Stabs debugging sections.  */
	.stab 0 : { *(.stab) }
	.stabstr 0 : { *(.stabstr) }
	.stab.excl 0 : { *(.stab.excl) }
	.stab.exclstr 0 : { *(.stab.exclstr) }
	.stab.index 0 : { *(.stab.index) }
	.stab.indexstr 0 : { *(.stab.indexstr) }
	.comment 0 : { *(.comment) }
	/* DWARF debug sections.
     Symbols in the DWARF debugging sections are relative to the beginning
     of the section so we begin them at 0.  */
	/* DWARF 1 */
	.debug          0 : { *(.debug) }
	.line           0 : { *(.line) }
	/* GNU DWARF 1 extensions */
	.debug_srcinfo  0 : { *(.debug_srcinfo) }
	.debug_sfnames  0 : { *(.debug_sfnames) }
	/* DWARF 1.1 and DWARF 2 */
	.debug_aranges  0 : { *(.debug_aranges) }
	.debug_pubnames 0 : { *(.debug_pubnames) }
	/* DWARF 2 */
	.debug_info     0 : { *(.debug_info .gnu.linkonce.wi*) }
	.debug_abbrev   0 : { *(.debug_abbrev) }
	.debug_line     0 : { *(.debug_line) }
	.debug_frame    0 : { *(.debug_frame) }
	.debug_str      0 : { *(.debug_str) }
	.debug_loc      0 : { *(.debug_loc) }
	.debug_macinfo  0 : { *(.debug_macinfo) }
	/* SGI/MIPS DWARF 2 extensions */
	.debug_weaknames 0 : { *(.debug_weaknames) }
	.debug_funcnames 0 : { *(.debug_funcnames) }
	.debug_typenames 0 : { *(.debug_typenames) }
	.debug_varnames  0 : { *(.debug_varnames) }
	/* Merge .reginfo when partial linking, omit from final link */
	/DISCARD/ : { *(.reginfo) }
	/* These must appear regardless of  .  */
	.gptab.sdata : { *(.gptab.data) *(.gptab.sdata) }
	.gptab.sbss : { *(.gptab.bss) *(.gptab.sbss) }
	.pdr 0 : { *(.pdr) }
}

