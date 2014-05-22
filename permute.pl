#!/usr/bin/env perl
use strict;
use Algorithm::Permute;

my @array = (1,2,3,4);
my $p_iterator = Algorithm::Permute->new(\@array);

while (my @perm = $p_iterator->next) {
	print "next permutation: (@perm)\n";

}



