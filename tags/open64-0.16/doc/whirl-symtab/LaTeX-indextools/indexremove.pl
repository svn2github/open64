#!/usr/local/bin/perl

# Reads list of files from indexfiles.txt
#
# Removes any line beginning with
#      \index
# and places it in indexstripped.txt

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
	$indexstripped = "indexstripped.txt" ;

	(! -f $indexstripped) || die ("? File $indexstripped already exists\n") ;

	open(FL, "<$filelist") || die ("? Can't open $filelist\n") ;
	@files = undef ;
	@files = <FL> ;
	chomp(@files) ;
	close(FL) ;
	$filec = @files ;

	###########

	open(FS, ">$indexstripped") || die ("? Can't open $indexstripped\n") ;
	for ($f=0; $f<$filec; $f++)
	{
		$fn = $files[$f] ;
		open(TEX, "<$fn") || die ("? Can't open $fn\n") ;
		@lines = undef ;
		@lines = <TEX> ;
		close(TEX) ;
		$linec = @lines ;

		open(TEX, ">$fn") || die ("? Can't open $fn\n") ;
		$l=0 ;
		while ($l < $linec)
		{
			if ($lines[$l] =~ /^\\index/)
			{
				@stripped = undef ;
				$stripped[0] = $lines[$l] ;
				$stripc = 1 ;
				$l++ ;
				while ($lines[$l] =~ /^\\index/)
				{
					$stripped[$stripc] = $lines[$l] ;
					$stripc++ ;
					$l++ ;
				}
				($theword, $junk) = split(/ /, $lines[$l]) ;
				for ($s=0; $s<$stripc; $s++)
				{ print FS ("$fn\t$theword\t$stripped[$s]") ; }
			}
			print TEX ("$lines[$l]") ;
			$l++ ;
		}
		close(TEX) ;
	}
	close(FS) ;

	###########

exit ;

