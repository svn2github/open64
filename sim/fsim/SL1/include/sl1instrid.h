/*
 *  File: sl1instrid.h
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

#ifndef SL1INSTRID_H_
#define SL1INSTRID_H_

/*sl1 core Instr id*/
#define illegal_id 0x0
#define G0_id 0x0
#define G1_id 0x1
#define G2_id 0x2
#define C1_id 0x3
#define C3_id 0x4
#define C4_id 0x5
#define addi_id 0xc
#define andi_id 0xd
#define breq_id 0xe
#define brne_id 0xf
#define jp_id 0x10
#define jplnk_id 0x11
#define ldb_id 0x12
#define ldh_id 0x13
#define ldub_id 0x14
#define lduh_id 0x15
#define ldw_id 0x16
#define mvupi_id 0x17
#define nori_id 0x18
#define ori_id 0x19
#define setlti_id 0x1a
#define setltui_id 0x1b
#define stb_id 0x1c
#define sth_id 0x1d
#define stw_id 0x1e
#define xori_id 0x1f
#define add16_id 0x20
#define add16i_id 0x21
#define and16_id 0x22
#define and16i_id 0x23
#define ldw16_id 0x24
#define stw16_id 0x25
#define mv16_id 0x26
#define mv16i_id 0x27
#define or16i_id 0x28
#define mvfc16_id 0x29
#define or16_id 0x2a
#define mvtc16_id 0x2b
#define pop16_id 0x2c
#define push16_id 0x2d
#define shra16i_id 0x2e
#define shll16_id 0x2f
#define shll16i_id 0x30
#define br16eqz_id 0x31
#define br16nez_id 0x32
#define shrl16i_id 0x33
#define sub16_id 0x34
#define sub16i_id 0x35
#define xor16_id 0x36
#define xor16i_id 0x37
#define nop16_id 0x38
#define rete16_id 0x39
#define abs16_id 0x3a
#define jr16_id 0x3b
#define jr16lnk_id 0x3c
#define ret16_id 0x3d
#define inv16_id 0x3e
#define ldub16rs_id 0x3f
#define lduh16rs_id 0x40
#define add16sp_id 0x42
#define nop_id 0x43
#define add_id 0x44
#define and_id 0x45
#define depb_id 0x46
#define extrb_id 0x47
#define extrbu_id 0x48
#define mvfc_id 0x4e
#define mvtc_id 0x51
#define nor_id 0x52
#define or_id 0x53
#define setlt_id 0x55
#define setltu_id 0x56
#define shll_id 0x57
#define shlli_id 0x58
#define shra_id 0x59
#define shrai_id 0x5a
#define shrl_id 0x5b
#define shrli_id 0x5c
#define sub_id 0x5e
#define xor_id 0x5f
#define mcreq_id 0x63
#define mcrne_id 0x64
#define mcrgt_id 0x65
#define mcrge_id 0x66
#define mcrlt_id 0x67
#define mcrle_id 0x68
#define mczceq_id 0x6b
#define mczcne_id 0x6c
#define mczcgt_id 0x6d
#define mczcge_id 0x6e
#define mczclt_id 0x6f
#define mczcle_id 0x70
#define mczeq_id 0x73
#define mczne_id 0x74
#define mczgt_id 0x75
#define mczge_id 0x76
#define mczlt_id 0x77
#define mczle_id 0x78
#define mczneq_id 0x7b
#define mcznne_id 0x7c
#define mczngt_id 0x7d
#define mcznge_id 0x7e
#define mcznlt_id 0x7f
#define mcznle_id 0x80
#define mcabs_id 0x81
#define brgez_id 0x82
#define brgtz_id 0x83
#define brlez_id 0x84
#define brltz_id 0x85
#define break_id 0x86
#define dcflush_id 0x87
#define ret_id 0x89
#define rete_id 0x8a
#define syscall_id 0x8b
#define jr_id 0x8c
#define jrlnk_id 0x8d
#define loop_id 0x8e
#define break16_id 0x8f
#define mvtci_id 0x90

/*sl1 bb Instr id*/
#define c3saadds_id 0x300
#define c3saadda_id 0x301
#define c3aadda_id 0x302
#define c3bitr_id 0x303
#define c3sadda_id 0x304
#define c3saddaa_id 0x305
#define c3ld_id 0x306
#define c3shav_id 0x307
#define c3mac_id 0x308
#define c3maca_id 0x309
#define c3macar_id 0x30a
#define c3maci_id 0x30b
#define c3samulsh_id 0x30c
#define c3samulha_id 0x30d
#define c3shlai_id 0x30e
#define c3shlafai_id 0x30f
#define c3shrafai_id 0x310
#define c3shrai_id 0x311
#define c3macn_id 0x312
#define c3macna_id 0x313
#define c3macnar_id 0x314
#define c3macni_id 0x315
#define c3mula_id 0x316
#define c3mulaa_id 0x317
#define c3mulaar_id 0x318
#define c3mulai_id 0x319
#define c3shlatai_id 0x31a
#define c3shratai_id 0x31b
#define c3nega_id 0x31d
#define c3mulan_id 0x31e
#define c3lead_id 0x320
#define c3mvfs_id 0x321
#define c3mvts_id 0x322
#define c3dmac_id 0x323
#define c3dmacn_id 0x324
#define c3dmaca_id 0x325
#define c3dmacna_id 0x326
#define c3dadd_id 0x327
#define c3dsub_id 0x328
#define c3revb_id 0x329
#define c3round_id 0x32a
#define c3dmula_id 0x32b
#define c3dmulan_id 0x32c
#define c3dmulaa_id 0x32d
#define c3dmulana_id 0x32e
#define c3fftld_id 0x32f
#define c3fftst_id 0x330
#define c3subc_id 0x331
#define c3cs_id 0x332
#define c3dshlli_id 0x333
#define c3dshrli_id 0x334
#define c3st_id 0x335
#define c3sasubsh_id 0x336
#define c3sasuba_id 0x337
#define c3muls_id 0x338
#define c3mulus_id 0x339
#define c3saaddha_id 0x33a
#define c3sasubha_id 0x33b
#define c3saaddsh_id 0x33c
#define c3sasubs_id 0x33d
#define c3ffe_id 0x33e

#endif /*SL1INSTRID_H_*/
