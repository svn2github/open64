#!/usr/local/bin/perl

# Reads list of files from indexfiles.txt
# Writes a whimsical list of index words to indexcandidates.txt.

#     Copyright (c) 2001
#
#          San Diego State University (SDSU)
#          San Diego, California, USA
#
#     Users and possessors of this source code are hereby granted a
#     nonexclusive, royalty-free copyright and design patent license to
#     use this code in individual software.  License is not granted for
#     commercial resale, in whole or in part, without prior written
#     permission from SDSU.  This source is provided "AS IS" without express
#     or implied warranty of any kind.
#
#     Richard Frost
#     Computational Sciences
#     College of Science
#     San Diego State University
#     San Diego, CA 92182
#     http://www.rohan.sdsu.edu/~frostr/
#     frostr@sdsu.edu


	###########

	$filelist = "indexfiles.txt" ;
	$indexlist = "indexcandidates.txt" ;

	(! -f $indexlist) || die ("? File $indexlist already exists\n") ;

	open(FL, "<$filelist") || die ("? Can't open $filelist\n") ;
	@files = undef ;
	@files = <FL> ;
	chomp(@files) ;
	close(FL) ;
	$filec = @files ;

	###########

	for ($f=0; $f<$filec; $f++)
	{
		$fn = $files[$f] ;
		open(TEX, "<$fn") || die ("? Can't open $fn\n") ;
		@lines = undef ;
		@lines = <TEX> ;
		close(TEX) ;
		chomp(@lines) ;
		$linec = @lines ;
		for ($l=0; $l<$linec; $l++)
		{
			if ($lines[$l] !~ /^\\index/)
			{
				@words = undef ;
				$wordstr = $lines[$l] ;
				$wordstr = wordfilter($wordstr) ;
				@words = split(/ /, $wordstr) ;
				$wordc = @words ;
				for ($w=0; $w<$wordc; $w++)
					{ $wordhash{$words[$w]} = 1 ; }
			}
		}
	}

	###########

	open(FI, ">$indexlist") || die ("? Can't open $indexlist\n") ;
	@words = undef ;
	@words = sort {uc($a) cmp uc($b)} (keys %wordhash) ;
	$wordc = @words ;
	for ($w=0; $w<$wordc; $w++)
		{ print FI ("$words[$w]\n") ; }
	close(FI) ;


	###########

exit ;


###########

sub wordfilter
{
    my ($text) = @_ ;
    $text =~ s/[\`,\%,\*,\?,\~,\',\",\[,\],\|,\_,\!,\{,\},\(,\),\.,\-,\+,\^,\&,\;,\:,\<,\>,\=,\/]+/ /g ;
    $text =~ s/\\\S*/ /g ;
    $text =~ s/\$\S*/ /g ;
    $text =~ s/\S*\$/ /g ;
    $text =~ s/\b\d+\S*/ /g ;
    $text =~ s/\S+\d+\S*\b/ /g ;
    $text =~ s/\b\S{1,2}\b/ /g ;
    $text =~ s/\b[a-z]{3}\b/ /g ;
    $text =~ s/\b[A-Z][a-z]{2}\b/ /g ;
    $text =~ s/\b[a-z]+([A-Z]+[a-z]*)+\b/ /g ;
    $text =~ s/\b[A-Z]+([a-z]+[A-Z]+)+[a-z]*\b/ /g ;
    return whiteout($text) ;
}

sub whiteout
{
    my ($text) = @_ ;
    $text =~ s/[\s]{1,}/ /mg ;
    $text =~ s/[ ]{1,}/ /g ;
    $text =~ s/^[ ]{1,}//g ;
    $text =~ s/[ ]{1,}$//g ;
    return $text ;
}

