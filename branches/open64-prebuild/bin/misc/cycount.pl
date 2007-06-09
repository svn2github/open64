#!/usr/bin/perl
#  Copyright (C) 2000-2003, Institute of Computing Technology, Chinese Academy of Sciences
#  All rights reserved.
#
#  Redistribution and use in source and binary forms, with or without modification,
#  are permitted provided that the following conditions are met:
#
#  Redistributions of source code must retain the above copyright notice, this list
#  of conditions and the following disclaimer.
#
#  Redistributions in binary form must reproduce the above copyright notice, this list
#  of conditions and the following disclaimer in the documentation and/or other materials
#  provided with the distribution.
#
#  Neither the name of the owner nor the names of its contributors may be used to endorse or
#  promote products derived from this software without specific prior written permission.
#
#  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR
#  IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
#  FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE CONTRIBUTORS BE LIABLE FOR
#  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
#  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
#  BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
#  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
#  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. 

#  cycount.pl
#  A cycle counting tool for ORC generated asm files
#  Author: chao(jczhang@ict.ac.cn)
#  Date: Jan. 15, 2003

use Cwd;
use Env;
use Getopt::Long;  

# The main driver
{
    &Set_Default();
    &Get_Options();
    &Grep_Cycles();
    &Dump_Results();
}

sub Grep_Cycles
{
    foreach my $bmk(@bmk_list) {
        @bmk_hot_funcs = grep /^$bmk/, @SPEC2KINT_HOT_FUNC_LIST;
        foreach my $tmp_line (@bmk_hot_funcs) {
            ($tmp, $file, @hot_funcs) = split(/\s/, $tmp_line);
            foreach my $func (@hot_funcs) {
                open(ASM_FILE, "$SPEC2KINT_HOME\/$bmk\/$file.s") or 
                    print STDERR  "No such file:$SPEC2KINT_HOME\/$bmk\/$file.s\n";
                while ( $line = <ASM_FILE> ) {
                    if ($line =~ /\/\/PU cycle count: ([0-9\.]*)/) {
                        my $count = $1;
                        if (<ASM_FILE> =~ /\.endp\s+$func#/) {
                            $results{$bmk}{$func} = $count;
                            $count = 0;
                            last;
                        }
                    }
                }
                close(ASM_FILE);
            }
        }
    }
}

sub Dump_Results
{
    if ($log_file) {
        open(LOG_FILE, ">$log_file") || die "Open file error: $!\n";
    } else {
        open(LOG_FILE, ">&=STDOUT") || die "Couldn't alias STDOUT: $!\n";
    }

    my $date = `date +%Y-%m-%d" "%H:%M`;
    print LOG_FILE "    CYCLE COUNTING RESULTS ON $date";
    print LOG_FILE "==================================================\n";
    print LOG_FILE "Benchmark:PU                        Cycle#\n\n";
    foreach $bmk (sort  keys %results ) {
        foreach $func (sort  keys %{ $results{$bmk} } ) {
            printf LOG_FILE "%-40s%-30s\n", $bmk.":".$func, $results{$bmk}{$func};
        }
    }
    close(LOG_FILE); 
    # Also, we can check in the log file to a CVS repository, diff the cycle 
    # counting results day-to-day to find degradation causes.
}

sub Get_Options
{
    GetOptions(
        "d|spec_home=s"       =>\$SPEC2KINT_HOME,
        "h|help"              =>\$need_help,
        "l|log=s"             =>\$log_file
    ) || exit(0);

    $need_help && &Usage();
    if ($ARGV[0] eq "int") {
        @bmk_list = @SPEC2KINT_BMKS;
    } else {
        @bmk_list = @ARGV; 
        if (!@ARGV) { die "cycount.pl: No benchmarks specified!\n"; }
    }
}
 
sub Usage
{
    print
"cycount.pl: A cycle counting tool for ORC generated asm files
Usage: cycount.pl [options] benchmarks
Options:
  -h  --help                   Display this information
  -d  --spec_home  <dir>       Set <dir> as the SPEC2KINT home. Default is \$HOME/spec2000 
  -l  --log        <filename>  Give a log file name. Default is STDOUT
 
  benchmarks                   SPEC2KINT benchmarks. Type 'int' for all 12 SPEC2KINT benchmarks
\n";
    exit(0);
} 

# Set default value
sub Set_Default {

$SPEC2KINT_HOME = "$HOME/spec2000";
@SPEC2KINT_BMKS = ("gzip", "vpr", "gcc", "crafty", "mcf", "parser", 
                    "eon", "perlbmk", "gap", "vortex", "bzip2", "twolf"); 
# Change the hot funtion list as you need
my $SPEC2KINT_HOT_FUNC_LIST_TMP = 
"bzip2 bzip2 generateMTFValues sendMTFValues getAndMoveToFrontDecode undoReversibleTransformation_fast sortIt
crafty evaluate Evaluate
crafty boolean FirstOne
crafty make MakeMove
crafty attacks Attacked
crafty unmake UnMakeMove
crafty movgen GenerateCaptures
crafty search Search
gap gasman CollectGarb NewBag
gap list EvElmList
gap eval EvVar
gap integer ProdInt
gcc cse cse_insn
gcc global record_one_conflict find_reg
gcc sched schedule_block sched_analyze_insn
gcc flow propagate_block life_analysis
gzip trees ct_tally
gzip deflate longest_match deflate
gzip inflate inflate_codes
gzip bits send_bits
mcf mcfutil refresh_potential flow_cost
mcf pbeampp primal_bea_mpp sort_basket
mcf implicit price_out_impl replace_weaker_arc
parser fast-match form_match_list
parser prune prune_match
parser parse table_pointer
parser xalloc xalloc xfree
twolf dimbox new_dbox_a term_newpos_a term_newpos_b new_dbox
twolf ucxx2 ucxx2
twolf uloop uloop
twolf rand Yacm_random
vortex mem00 Chunk_ChkGetChunk
vortex mem10 Mem_GetWord Mem_GetAddr
vortex bmtobj Part_Delete
vortex tm TmFetchCoreDb
vortex oa1 OaGet
vpr route get_heap_head expand_neighbours add_to_heap alloc_heap_data route_net node_to_heap free_heap_data alloc_linked_f_pointer
perlbmk regexec regmatch
eon mrGrid mrGrid
eon mrSurfaceList mrSurfaceList viewingHit shadowHit
eon mrCookPixelRenderer mrCookPixelRenderer
eon ggGeometry ggRayXZRectangleIntersect ggRayBoxIntersect
eon mrInstance mrInstance
eon mrKajiyaPixelRenderer mrKajiyaPixelRenderer 
eon mrRushmeierPixelRenderer mrRushmeierPixelRenderer 
";
@SPEC2KINT_HOT_FUNC_LIST = split(/\n/, $SPEC2KINT_HOT_FUNC_LIST_TMP);
}
