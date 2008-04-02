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

#  hpe.pl
#  A hot path enumeration tool for ORC asm code.
#  Author: chao(jczhang@ict.ac.cn)
#  Date: Apr. 12, 2002       
#use strict;
use Getopt::Long;
use File::Basename;
 
# the main driver
{
    # some global variables
    @cfg, @loop, @hotpath, %pu, $pu_name, $file, $basename;
    &Set_Default_Opt();
    &Get_Opt();
    ($basename, $dir, $ext) = fileparse($file, '\..*');

    open(ASM_FILE, $file) || die "open file error: $!\n";
    
    my $line = <ASM_FILE>;
    if($line =~ /ia64-orc-linux/) { 
	    &Parse_ORC_Asm();
    } else {
	    &Parse_OTHER_Asm();
    }
    
    close(ASM_FILE);
    &Dump_Code();
}

######################### ORC asm file parser ###########################
#                                                                       #
#     Parse_ORC_Asm                                                     #
#########################################################################
my (@bb_lentry_label, %label_to_loop, %shared);
sub Parse_ORC_Asm {
	# some patterns used by ORC
	my $PRED_SUCC_PTN	= "^\/\/ Block: ([0-9]+) *Pred: ([ 0-9]*) *Succ: ([ 0-9]*)";
	my $FREQ_PROB_PTN	= "^\/\/ Freq *([0-9]+\.[0-9]+).*Prob *([ \.0-9]*)";
	my $LINENUM_PTN	    = "\/\/ \\[[0-9]+:([0-9]+)\\]";
	while( my $line = <ASM_FILE> ) {
    	if($line =~ /\s*\.proc\s+(\w+)/) { # Begining of a pu
        	my $code;
	        my $pre_block;
			my %src_lines;
    	    $pu_name = $1;
    	    if($PU_NAME and $PU_NAME ne $pu_name) { next; }

	        $cfg[0]->{"attr"} = 0x04;
			$cfg[0]->{"code"} = "";
			@{$cfg[0]->{"succ"}} = (1);
			@{$cfg[0]->{"prob"}} = (1);
			%{$cfg[0]->{"source"}} = ();

    	    while( $line = <ASM_FILE> ) {
        	    if( $line =~ /$PRED_SUCC_PTN/ ) {
            	    my $cur_block = $1;
                	my @pred = split(/[ \t]+/, $2);
					if($cur_block == 1) { @pred = (0); };
	                my @succ = split(/[ \t]+/, $3);
    	            my $attr = 0;
        	        my $freq;
            	    my @prob;
	                if($cur_block != 1) { 
						$cfg[$pre_block]->{"code"} = $code; 
						$cfg[$pre_block]->{"source"} = { %src_lines };
            	    	$code = "";
						%src_lines = ();
					}
    	            $pre_block = $cur_block;
					$code .= $line;
        	        $line = <ASM_FILE>;
					$code .= $line;
            	    $line =~ /$FREQ_PROB_PTN/;
                	$freq = $1;
	                @prob = split(/[ \t]+/, $2);
    	            $line = <ASM_FILE>;
					$code .= $line;
            	    if( $line =~ /^\/\/ <lentry>/ ) { $attr |= 0x04; }
                	$cfg[$cur_block] = {
	                    "pred"=>[ @pred ], "succ"=>[ @succ ],
    	                "freq"=>$freq, "prob"=>[ @prob ],
        	            "attr"=>$attr,
            	         # "code"=>$code is defined when we meet the next BB or end of pu
                    	 };
	                next;
    	        }
        	    if( $line =~ /\s*\.endp/ ) {
            	    $cfg[$pre_block]->{"code"} = $code;
					$cfg[$pre_block]->{"source"} = { %src_lines };
                	$code = "";
	                last;
    	        }
        	    $code .= $line;
				if ( $line =~ /$LINENUM_PTN/ or $line =~ /^\t\.loc\t[0-9]+\t([0-9]+)\t[0-9]/ ) {
					if(defined $src_lines{$1}) { $src_lines{$1}++; }
					else { $src_lines{$1} = 1; }
				}
	        }
			$cfg[0]->{"freq"} = $cfg[1]->{"freq"};
			Dump_PU();
    	    if($PU_NAME and $PU_NAME eq $pu_name) { last; }
    	}
	}
}

######################### OTHER asm file parser ###########################
#                                                                       #
#     Parse_OTHER_Asm                                                     #
#########################################################################
sub Parse_OTHER_Asm {
	# some patterns used by other compilers 
	my $PRED_SUCC_PTN	= "^\/\/ Block ([0-9]+):.*Pred: ([ 0-9]*).*Succ: ([ 0-9]*)";
	my $FREQ_PROB_PTN	= "^\/\/ Freq *([0-9]*\.[0-9]+e[-|\+][0-9]+), Prob *([ [0|1]?\.[0-9]+]*)";
	my $LINENUM_PTN 	= "\/\/[0-9]+: *([0-9]+) *"; 
 
	while( my $line = <ASM_FILE> ) {
	    if( $line =~ /\s*\.proc\s+(\w+)/ ) {
			$pu_name = $1;
    	    if($PU_NAME and $PU_NAME ne $pu_name) { next; }
        	my $code;
			my $pre_block;
			my %src_lines;
	        while( $line = <ASM_FILE> ) {
    	        if( $line =~ /$PRED_SUCC_PTN/ ) {
        	        my $attr = 0;
            	    my $cur_block = $1;
                	my @pred = split(/[ \t]+/, $2);
	                my @succ = split(/[ \t]+/, $3);
					if($cur_block) { 
						$cfg[$pre_block]->{"code"} = $code; 
						$cfg[$pre_block]->{"source"} = { %src_lines };
            	    	$code = "";
						%src_lines = ();
					}
					$pre_block = $cur_block;
    	            if($line =~ /lentry/) { $attr |= 0x04; }  
 
		            $code .= $line;
        	        $line = <ASM_FILE>;
            	    $line =~ /$FREQ_PROB_PTN/;
                	$code .= "$line";
 
	                my $freq = $1;
    	            my @prob = split(/[ \t]+/, $2);
        	        if(@succ > 1) { $prob[@prob] = 1 - $prob[0]; }
            	    $cfg[$cur_block] = {
                	      "pred"=>[ @pred ], "succ"=>[ @succ ],
                    	  "freq"=>$freq, "prob"=>[ @prob ],
	                      "attr"=>$attr, 
    	                   # "loop"=>$loop is defined in Del_Inner_Loop_BB
        	               };
                	next;
	            } elsif( $line =~ /\s*\.endp/ ) { 
					$cfg[$pre_block]->{"code"} = $code;
					$cfg[$pre_block]->{"source"} = { %src_lines };
					last; 
				}
    	        $code .= $line;
				if ( $line =~ /$LINENUM_PTN/ ) {
					if(defined $src_lines{$1}) { $src_lines{$1}++; }
					else { $src_lines{$1} = 1; }
				}
			} # while
			Dump_PU();
    	    if($PU_NAME and $PU_NAME eq $pu_name) { last; }
	    }
	}
}


############### Functions for finding loops and loop levels #############
#		Construct_Loop						                            #
#		Identify_Loop						                            #
#		Fill_Block_List, Insert					                        #
#		Identify_Loop_Level					                            #
#		Del_Inner_Loop_BB					                            #
#########################################################################
{
my @visited;
sub Construct_Loop {
    my %lentry_list = ();
    $loop[0] = {
            "lentry" => 0,  "ltail" => 0,
            "lexit" => [ ], "block_list"=> { },
            "inner_loop" => [ ],
        };
    for(my $i = 0; $i < @cfg; $i++) { $visited[$i] = 0; }
    &Identify_Loop(0, %lentry_list);
    &Fill_Block_List();
	&Find_Lexit();
    &Identify_Loop_Level();
    &Del_Inner_Loop_BB();
    &Fill_Lexit();
}

sub Find_Lexit {
	foreach my $loopi (@loop) {
		foreach my $bb ( keys(%{$loopi->{"block_list"}}) ) {
			foreach my $succ (@{$cfg[$bb]->{"succ"}}) {
				if(!(defined $loopi->{"block_list"}{$succ})) {
					$cfg[$bb]->{"attr"} |= 0x01;
				}
			}
		}
	}
}
 
sub Identify_Loop {
    my ($bb, %lentry_list) = @_;
    if(!$visited[$bb]) {
        $visited[$bb] = 1;
        if($cfg[$bb]->{"attr"} & 0x04) {
            $lentry_list{$bb} = 1;
        }
        foreach my $succ (@{$cfg[$bb]->{"succ"}}) {
        	if($lentry_list{$succ}) {
				$loop[@loop] = {
                     "lentry" => $succ,  "ltail" => $bb,
                     "lexit" => [ ], "block_list"=> { },
                     "inner_loop" => [ ],
                    };
				$cfg[$bb]->{"attr"} |= 0x02;
            } else { Identify_Loop($succ, %lentry_list); }
		}
    }
}
}
 
{
my (@stack, %block_list);
sub Fill_Block_List {
    # initial loop 0's block set to be all blocks.
    for(my $i = 0; $i < @cfg; $i++) {
        if(defined $cfg[$i]) { $loop[0]->{"block_list"}{$i} = 1; }
    }
 
    for(my $i = 1; $i < @loop; $i++) {
        $block_list{$loop[$i]->{"lentry"}} = 1;
        Insert($loop[$i]->{"ltail"});
        while(@stack) {
            my $m = pop(@stack);
            my @pred = @{$cfg[$m]->{"pred"}};
            # we can navigate to the root block if there is a multi-entry loop.
            if(!@pred) { # $m is the root block?
               print STDERR "Multi-entry loop found in loop $i, $pu_name!!!\n";
               return;
            }
            foreach my $m(@pred) { Insert($m); }
        }
        $loop[$i]->{"block_list"} = { %block_list };
        @stack = ();           
		%block_list = ();
    }
}
 
sub Insert {
    my ($m) = @_;
    if(!$block_list{$m}) {
        $block_list{$m} = 1;
        push(@stack, $m);
    }
}
}
 
sub Identify_Loop_Level {
    @loop = sort By_Block_Size @loop;
    for(my $i = @loop - 1; $i >0; $i--) {
        for (my $j = $i - 1; $j >= 0; $j--) {
            if ( $loop[$j]->{"block_list"}{$loop[$i]->{"lentry"}} and
                $loop[$j]->{"block_list"}{$loop[$i]->{"ltail"}} ) {
                push(@{$loop[$j]->{"inner_loop"}}, $i);
                last;
            }
        }
    }
}
 
sub Del_Inner_Loop_BB {
    for(my $i = 0; $i < @loop; $i++ ) {
        foreach my $inner_loop(@{$loop[$i]->{"inner_loop"}}) {
            foreach my $bb(keys(%{$loop[$inner_loop]->{"block_list"}})) {
                delete $loop[$i]->{"block_list"}{$bb};
            }
        }
        foreach my $bb ( keys(%{$loop[$i]->{"block_list"}}) ) {
            if(!defined $cfg[$bb]->{"loop"}) {
                $cfg[$bb]->{"loop"} = $i;
            } else { 
                # A block is member of to two loops! Does it matter?
                print STDERR  "Overlapped loops found in $pu_name!!!";
                print STDERR  "loop $i and loop $cfg[$bb]->{\"loop\"} share block $bb\n"; 
            }
        }
    }
}
 
sub Fill_Lexit {
    for(my $i = 0; $i < @loop; $i++ ) {
        foreach my $bb(keys(%{$loop[$i]->{"block_list"}})) {
            if( $cfg[$bb]->{"attr"} & 0x01 ) {
                push(@{$loop[$i]->{"lexit"}}, $bb);
            }
        }
    }
} 

################### Functions for hot paths enumeration #################
#		Hot_Path_Enum						                            #
#		Enum_Path:						                                #
#		By_Path_Freq:						                            #
#		By_Block_Size:						                            #
#########################################################################

sub Hot_Path_Enum {
    my ($cur_loop) = @_;
    my $cur_block = $loop[$cur_loop]->{"lentry"};
    my @cur_path = ();
    my $cur_path_freq = $cfg[$cur_block]->{"freq"};
    Enum_Path($cur_block, $cur_path_freq, $cur_loop, @cur_path);
 
    foreach my $inner_loop( @{$loop[$cur_loop]->{"inner_loop"}} ) {
        Hot_Path_Enum($inner_loop);
    }
}
 
sub Enum_Path {
    my ($cur_block, $cur_path_freq, $cur_loop, @cur_path) = @_;
 	
    if( !$loop[$cur_loop]->{"block_list"}{$cur_block} ) { return; }
    push(@cur_path, $cur_block);
    if( !@{$cfg[$cur_block]->{"succ"}} ) {
		$hotpath[@hotpath] = {
				"loop_id" => $cur_loop,
				"path_freq" => $cur_path_freq,
				"block_list" => [ @cur_path ],
				};
        return;
    }
    my $count = 0;
    my $already_dump = 0;
	my $tmp_path_freq;
    foreach my $succ ( @{$cfg[$cur_block]->{"succ"}} ) {
        # If $succ is the  lentry of an inner loop
        if ( $cfg[$succ]->{"attr"} & 0x04 and $succ != $loop[$cur_loop]->{"lentry"}) {
            $tmp_path_freq = $cur_path_freq * ${$cfg[$cur_block]->{"prob"}}[$count];
            # find the (largest) loop id beginnig with $succ
			my $idx;
            foreach my $inner_loop ( @{$loop[$cur_loop]->{"inner_loop"}} ) {
                if( $succ == $loop[$inner_loop]->{"lentry"} ) { $idx = $inner_loop ; last }
            }
            # find all post exits
            foreach my $lexit ( @{$loop[$idx]->{"lexit"}} ) {
                my $j = 0;
                foreach my $post_exit ( @{$cfg[$lexit]->{"succ"}} ) {
					# if $post_exit isn't in current path and lexit->post_exit is not back edge 
                    if( !Is_Member_Of($post_exit, @cur_path) and $post_exit != $succ ) {
                        $tmp_path_freq *= @{$cfg[$lexit]->{"prob"}}[$j];
                        #if($succ != $lexit) { push(@cur_path, $lexit); }
                        Enum_Path($post_exit, $tmp_path_freq, $cur_loop, @cur_path);
                    }
                    $j++; 
                }
            }
	        $count++;
    	    next;
        }
        # If $succ is out of the current loop or is a back edge
        if (!$loop[$cur_loop]->{"block_list"}{$succ} or
			$succ == $loop[$cur_loop]->{"lentry"} ) {
            if( !$already_dump ) {
				$hotpath[@hotpath] = {
					"loop_id" => $cur_loop,
					"path_freq" => $cur_path_freq,
					"block_list" => [ @cur_path ],
					};
                $already_dump = 1;
            }
        	$count++;
	        next;
        }
        if ( ${$cfg[$cur_block]->{"prob"}}[$count] < $PROB_THRESHD ) {
			$count++; 
			next;
		}
        $tmp_path_freq = $cur_path_freq * ${$cfg[$cur_block]->{"prob"}}[$count];
        Enum_Path($succ, $tmp_path_freq, $cur_loop, @cur_path);
        $count++;
    }
}   

sub By_Path_Freq {
	if( $a->{"path_freq"} < $b->{"path_freq"} ) {
		return 1;
	} elsif( $a->{"path_freq"} > $b->{"path_freq"} ) {
		return -1;
	} else {
		return 0;
	}
}

sub By_Block_Size {
	if( scalar(keys(%{$a->{"block_list"}})) < scalar(keys(%{$b->{"block_list"}})) ) {
		return 1;
	} elsif( scalar(keys(%{$a->{"block_list"}})) > scalar(keys(%{$b->{"block_list"}})) ) {
		return -1;
	} else {
		return 0;
	}
}

sub By_PU_Freq {
	if( $pu{$a}->{"hotpath"}[0]->{"path_freq"} < $pu{$b}->{"hotpath"}[0]->{"path_freq"} ) {
		return 1;
	} elsif( $pu{$a}->{"hotpath"}[0]->{"path_freq"} > $pu{$b}->{"hotpath"}[0]->{"path_freq"} ) {
		return -1;
	} else {
		return 0;
	}
}

########### Functions for dumping CFGs, loops and hot paths #####################
#		Dump_CFG :							                                    #
#		Dump_Loop:							                                    #
#		Dump_Hot_Path:							                                #
#		Dump_Code:							                                    #
#		Davinci_CFG:							                                #
#################################################################################

sub Dump_PU {
	Dump_CFG();
	Construct_Loop();
	Dump_Loop();
    Hot_Path_Enum(0);

	#delete those low-freq paths if they're $FREQ_RATIO times lower than the highest.
	@hotpath = sort By_Path_Freq  @hotpath; #sort from hot to cold
	my $highest_freq = $hotpath[0]->{"path_freq"};
	while(@hotpath) {
		my $freq = $hotpath[@hotpath-1] -> {"path_freq"};
		if($freq == 0 or $highest_freq/$freq > $FREQ_RATIO ) { pop(@hotpath); }
		else { last; }
	}
	if($ENABLE_DAV) { Davinci_CFG(); }
	Dump_Hot_Path();
	# if defined an instruction pattern, then do instruction counting.
	if($INSN_PTN) { Insn_Count(); }
	$pu{"$pu_name"}->{"cfg"} = [ @cfg ];
    $pu{"$pu_name"}->{"loop"} = [ @loop ];
    $pu{"$pu_name"}->{"hotpath"} = [ @hotpath ];
    @cfg = ();
    @loop = ();
    @hotpath =();
}

sub Dump_CFG {
	printf "\n\n				/** $pu_name **/\n";
	printf "-----------------------------CFG of PU $pu_name---------------------------------\n";
    printf "Block#    Freq       Succ    Prob               Pred\n";
    my $count = 0;
    while($count < @cfg) {
        if (defined $cfg[$count]) {
			my $indent = 0;
            printf "%6d", $count;
		    # some ugly indent code	
            printf "%12.2e", $cfg[$count]->{"freq"};
			foreach my $succ (@{$cfg[$count]->{"succ"}}) {
            	printf "%4d", $succ;
				$indent++;
			}
			Indent(4*(2-$indent));
			
			$indent = 0;
			foreach my $prob (@{$cfg[$count]->{prob}}) {
				printf "%8.3f",  $prob;
				$indent++;
			}
			Indent(8*(2-$indent));
            
			Indent(4);
			foreach my $pred (@{$cfg[$count]->{"pred"}}) {
	            printf "%4d", $pred;
			}
			printf "\n";
        }
        $count++;
    }
	
}

sub Indent {
	my ($count) = @_;
	while($count > 0) {
		printf " ";
		$count--;
	}
}
sub Dump_Loop {
	print "-----------------------------Loops of PU $pu_name-------------------------------\n";
    print " Loop#    Lentry     Ltail   Lexit       Inner Loop     Block List\n";
    my $count = 0;
	foreach my $loopf (@loop) {
		my $indent = 0;
        printf "%6d", $count;
		printf "%7d", $loopf->{"lentry"};
		printf "%11d", $loopf->{"ltail"};
		Indent(4);
		foreach my $exit (@{$loopf->{"lexit"}}) {
			printf "%4d", $exit;
			$indent++;
		}
		Indent(4*(4-$indent)); 
		$indent = 0;
		foreach my $inner (@{$loopf->{"inner_loop"}}) {
			printf "%3d", $inner;
			$indent++;
		}
		Indent(3*(5-$indent)+1); 
		my @tmp = keys(%{$loopf->{block_list}});
        print "@tmp\n";
		$count++;
    }
} 

sub Dump_Hot_Path {
	print "-----------------------------Hot paths of PU $pu_name---------------------------\n";
	print " Path#    Loop#      Freq       Hot Path & (Source Line#)\n";
	$count = 0;
	foreach my $pathf (@hotpath) {
		my %src_lines;
		printf "%6d", $count+1; # start from 1 to consitent with the top n meaning.
		printf "%7d", $pathf->{"loop_id"};
		printf "%16.2e", $pathf->{"path_freq"};
		Indent(4);
		foreach my $bb( @{$pathf->{"block_list"}} ) {
			while( my ($line, $count) = each(%{$cfg[$bb]->{"source"}}) ) {
				$src_lines{$line} += $count; 
			}
		}
		my @bbs = sort{ $a <=> $b } keys(%src_lines);
		print "@{$pathf->{\"block_list\"}}    (@bbs)\n";
		$count++;
	}
	
}

sub Dump_Code {
	my $count = 1;
	if( $PU_NAME ) {
		open(TXT_OUT, ">$PU_NAME.hp");
	} else {
		open(TXT_OUT, ">$basename.hp");
	}

	# find the highest freq 	
	my $highest_freq = 0;
	while( my ($pu_name, $puf) = each(%pu) ) {
		if( $puf->{"hotpath"}[0]->{"path_freq"} > $highest_freq ) { 
			$highest_freq = $puf->{"hotpath"}[0]->{"path_freq"}; 
		}
	}

	# prune out those low-freq pus if they're $FREQ_RATIO times lower than the highest.
	while( my ($pu_name, $puf) = each(%pu) ) {
		my $path_freq = $puf->{"hotpath"}[0]->{"path_freq"};
		if( $path_freq == 0 || $highest_freq/$path_freq > $FREQ_RATIO) { 
			delete $pu{$pu_name};
		}
	}
	
	my @names = sort By_PU_Freq keys(%pu);
	# give some summary info
	printf TXT_OUT "\t\t  ##### PUs in %s #####\n", $file;
	foreach my $pu_name(@names) {
		printf TXT_OUT "\t\t\t%d\t%s\n", $count, $pu_name;
		$count++;
	}
	$count = 1;
	foreach my $pu_name (@names) {
		my $puf = $pu{$pu_name};
		printf TXT_OUT	"\n        ###### %d. TOP HOTTEST PATHS OF $pu_name ######       \n", $count;
		for(my $i = 1; $i < @{$puf->{"hotpath"}}; $i++) {
			if(defined $puf->{"hotpath"}[$i-1] ) {
				my $freq = $puf->{"hotpath"}[$i-1]->{"path_freq"};
				my @block_list = @{$puf->{"hotpath"}[$i-1]->{"block_list"}};
				print TXT_OUT	"*** No.$i: Freq = $freq, Block List = @block_list ***\n\n";
				foreach my $bb(@block_list) {
					my $code = $puf->{"cfg"}[$bb]->{"code"};
					print TXT_OUT	"$code\n\n";
				}
			}
		}
		$count++;
	}
	close TXT_OUT;
}

sub Davinci_CFG {
	# create a DaVinci file to display the CFG and mark the hottest path red
	@block_list = @{$hotpath[0]->{"block_list"}};
	open(DAV_OUT, ">$pu_name.$basename.daV");
	print DAV_OUT "[\n";
	my $count = 0;
	foreach my $bb(@cfg) {
		if(defined $bb) {
			print DAV_OUT "l(\"$count\"\, n(\"node\"\, [a(\"OBJECT\"\, \"$count\")\,\n";
			if(Is_Member_Of($count, @block_list)) {
				print DAV_OUT "a(\"COLOR\"\, \"red\")]\,\n";
			} else {
				print DAV_OUT "]\,\n";
			}
			print DAV_OUT "\t[\n";
			my $i = 0;
			foreach my $succ(@{$bb->{"succ"}}) {
				print DAV_OUT "\te(\"$count->$succ\"\,"; 
				if(Is_Member_Of($count, @block_list) and Is_Member_Of($succ, @block_list)) {
					print DAV_OUT "[a(\"EDGECOLOR\"\, \"red\")]\, r(\"$succ\"))\,\n";
				} else {
					print DAV_OUT "[]\, r(\"$succ\"))\,\n"; 
				}
			}
			print DAV_OUT  "\t]))\,\n";
		}
		$count++;
	}
	print DAV_OUT "]\n";
	close DAV_OUT;
}

sub Is_Member_Of {
	my ($e, @array) = @_;
	foreach my $tmp(@array) {
		if($tmp == $e) { return 1; }
	}
	return 0;
}


###################### Functions for instruction counting #######################
#		Insn_Count;							                                    #
#################################################################################
sub Insn_Count {
	$count = 0;
	while( $count < @cfg ) {
		@code = split( /\n/, $cfg[$count]->{"code"} );
		foreach $_ (@code) {
			if( $_ =~ /$INSN_PTN/ ) { $inum++; };
		}
		$cfg[$count]->{"inum"} = $inum;
		$inum = 0;
		$count++;
	}
	$count = 0;
	while( $count < @hotpath ) {
		@block_list = @{$hotpath[$count]->{"block_list"}};
		foreach $bb (@block_list) {
			$inum_p += $cfg[$bb]->{"inum"};
			$inum_w += $cfg[$bb]->{"freq"} * $cfg[$bb]->{"inum"};
		}
		$hotpath[$count]->{"inum_p"} = $inum_p;
		$hotpath[$count]->{"inum_w"} = $inum_w;
		$inum_p = 0;
		$inum_w = 0;
		$count++;
	}
	print "\n--------------------Insn. $INSN_PTN Statistic Info. in PU $pu_name------------------\n";
	print " Path#    Insn# W/O Weight	  Insn# W/ Weight\n";
	$count = 0;
	while( $count < @hotpath ) {
		printf "%6d%13d%27.3e\n", $count, $hotpath[$count]->{"inum_p"}, $hotpath[$count]->{"inum_w"};
		$count++;
	}
}

sub Set_Default_Opt
{
    # change the default values if you need
    $PROB_THRESHD = 0.4;
    $FREQ_RATIO = 100;
}

sub Get_Opt
{
    GetOptions(
    "pt|prob_threshold=f"  =>\$PROB_THRESHD,
    "fr|freq_ratio=i"      =>\$FREQ_RATIO,
    "pu|pu_name=s"         =>\$PU_NAME,
    "i|insn_ptn=s"         =>\$INSN_PTN,
    "d|davinci"            =>\$ENABLE_DAV,
    "h|help"               =>\$NEED_HELP,
    "v|verbose"            =>\$VERBOSE
    ) || exit(0);
    $NEED_HELP && &Usage();
    $VERBOSE && &Ver_Manul();
    $file = $ARGV[0] || die "hpe.pl: No input file!\n"; 
} 

sub Usage 
{
    print 
"hpe.pl: A hot path enumeration tool.
Usage: hpe.pl [options] file
Options:
  -h  --help                   Display this information
  -pt --prob_threshold <num>   A path probability threshold to suppress less executed paths. Default is 0.4
  -fr --freq_ratio     <num>   A path frequency ratio  to suppress  less  executed paths. Namely, if a path 
                               frequency is <num> times less than that of the  hottest path in the same PU, 
                               we won't output it. Default is 100
  -pu --pu_name        <str>   PU name to process. Default is null, to process all PUs
  -i  --insn_ptn       <ptn>   An instruction(a regular expression) to statistic along the hot paths
  -d  --davinci                Produce DaVinci files for PUs
  -v  --verbose                Give a verbose introduction about this tool
  
  file                         An assembly file generated by ORC
\n";
    exit(0);
}

sub Ver_Manul 
{
    print "
  Here is a detail intruduction of hpe.pl.
  Hpe.pl is used to enumerate hot paths in a PU(Program Unit) when 
doing compiler performance analysis. Given an assembly file gener-
ated by ORC or other compilers, the tool firstly  constructs  CFGs
(Control Flow Graph) for each PU in the file.  Then it identifies 
loops and loop nest info(it cannot deal with irreducible CFGs now)
in each CFG.We can see a PU as a hierarchy structure of loops with
the PU itself as the outer most loop.

  The enumeration algorithm is loop based.It starts from the entry
block of a loop, walks through each branchs. When meeting an inner 
loop,it goes to the exit blocks of the inner loop and continue its 
search untill reaches the tail block of the loop. We say a path is 
found. It  calculates  paths' frequency and output the top hottest 
paths in a .hp file.

  To improve algorithm efficiency and output clarity, The tool can 
prune some less executed paths and PUs. Firstly,if the probability 
of a branch is less then the a threshold(default is 0.4,-pt option),
it will not walk down this branch. Secondly, if a path's frequency 
is many times(default is 100,-fr option)less than that of the hot-
test one, it won't output this path even the path may be in the top
n. Finally, if the frequency of  the  hottest  path in a PU is many
times(default is 100,use the same -fr option) less then that of the 
hottest one in the file, we won't output this PU.

  An auxiliary function of the tool is instruction statistic. You 
can specify an instruction pattern(-i option)and the tool will give 
the statistic info of this instruction along each hot paths.\n\n";
   exit(0);
}
