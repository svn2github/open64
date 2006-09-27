#!/usr/bin/perl

# Reads list of files from indexfiles.txt
# Reads list of index words from indexwords.txt
# Inserts
#      \index{something}
# on the line before "something" if it occurs in both input files.

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
	$wordlist = "indexwords.txt" ;

	open(FL, "<$filelist") || die ("? Can't open $filelist\n") ;
	@files = undef ;
	@files = <FL> ;
	chomp(@files) ;
	close(FL) ;
	$filec = @files ;

	open(WL, "<$wordlist") || die ("? Can't open $wordlist\n") ;
	@words = undef ;
	@words = <WL> ;
	chomp(@words) ;
	close(WL) ;
	$wordc = @words ;

	@sortedwords = reverse sort @words;
	@words = @sortedwords;

	# quote backslash characters in words
	for ($w=0; $w<$wordc; $w++) {
	  $words[$w] =~ s/\\/\\\\/g; 
	}


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

		open(TEX, ">$fn") || die ("? Can't open $fn\n") ;
		for ($l=0; $l<$linec; $l++)
		{
			$linesplit = undef ;
			@tokens = undef ;
			@tokens = split(/ /, swhiteout($lines[$l])) ;
			$tokenc = @tokens ;
			$tt = 0 ;
			for ($t=0; $t<$tokenc; $t++)
			{
				@inserts = undef ;
				$ic = 0 ;
				for ($w=0; $w<$wordc; $w++)
				{
				   # print $tokens[$t], " ", $words[$w];
				   if ($tokens[$t] =~ /^$words[$w]$/)
				   {
				      $inserts[$ic] = "\\index{$sortedwords[$w]}%" ;
				      # print " matched! inserting ", $inserts[$ic], "\n"; 
				      $ic++ ;
				      last;
				   }
				}
				if ($ic > 0)
				{
				   if ($tt < $t)
				   {
				      print TEX ("$tokens[$tt]") ;
				      $tt++ ;
				      while ($tt < $t)
				      {
				         print TEX (" $tokens[$tt]") ;
				         $tt++ ;
				      }
				   }
				   if ($t > 0)
				   {
				      print TEX ("\n") ;
				      $linesplit = 1 ;
				   }
				   for ($i=0; $i<$ic; $i++)
				      { print TEX ("$inserts[$i]\n") ; }
				}
			}
			if (defined($linesplit))
			{
				if ($tt < $tokenc)
				{
				   print TEX ("$tokens[$tt]") ;
				   $tt++ ;
				   while ($tt < $tokenc)
				   {
				      print TEX (" $tokens[$tt]") ;
				      $tt++ ;
				   }
				}
				print TEX ("\n") ;
			}
			else
				{ print TEX ("$lines[$l]\n") ; }
		}
		close(TEX) ;
	}
	close(FS) ;

	###########

exit ;

######################

sub swhiteout
{
    my ($text) = @_ ;
    $text =~ s/[\s]{1,}/ /g ;
    $text =~ s/[ ]{1,}/ /g ;
    $text =~ s/^[ ]{1,}//g ;
    $text =~ s/[ ]{1,}$//g ;
    return $text ;
}

