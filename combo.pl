#!/usr/pkg/bin/perl

# Test my algorithm for generating all combinations
=pod 
1 2 3 
1 3 2
2 1 3
2 3 1
3 1 2
3 2 1

=cut

@list = (1,2,3,4);
@base = @list;
$length = $#list;
$i1 = 0;
$i2 = 1;

sub swap() {
	my ($i1, $i2, @list) = @_;
	my $temp = @list[$i1];
	$list[$i1] = $list[$i2];
	$list[$i2] = $temp;
	return(@list);
}
$max = 1;

for ($i = 0; $i <= $length; $i++) {
	$max = $max * $list[$i];
}

for ($i = 0; $i < $max; $i++) {
	print "$i:";
	for ($j = 0; $j <= $length; $j++) {
		print " $list[$j]";
	}
	print "\n";
	@list = &swap($i1, $i2, @base);
	if ($i2 >= $length && $i1 < $length) {
		$i1 = $i1 + 1;
		$i2 = $i1 + 1;
	} else {
		$i2 = $i2 + 1;
	}
	if ($i1 >= $length) {
		$i1 = 0;
		$i2 = 1;
	}
}
