#!/usr/pkg/bin/perl

$a = 7;
$b = 8;
$c = 9;
$d = 10;
$e = 11;
$f = 12;
$g = 14;
$h = 15;
$i = 16;
$j = 17;
$k = 18;
$l = 19;

@coeffs = ($a, $b, $c, $d, $e, $f, $g, $h, $i, $j, $k, $l);

sub eqn1() {
    my ($a, $b, $c) = @_;
    return (4+$a+$b+$c+2);
}

sub eqn2() {
    my ($a, $d, $e) = @_;
    return (1 + $a + $d + $e + 5);
}

sub eqn3() {
    my ($e, $f, $g) = @_;
    return (4 + $e + $f + $g + 6);
}

sub eqn4() {
    my ($g, $h, $i) = @_;
    return (5 + $g + $h + $i + 3);
}

sub eqn5() {
    my ($i, $j, $k) = @_;
    return (6 + $i + $j + $k + 2);
}

sub eqn6() {
    my ($k, $l, $c) = @_;
    return (1 + $k + $l + $c + 3);
}

sub eqn7() {
    my ($d, $j) = @_;
    return (4 + $d + 13 + $j);
}

sub eqn8() {
    my ($f, $l) = @_;
    return (5 + $f + 13 + $l);
}

sub swap() {
	my ($i1, $i2, @coeffs) = @_;
	my $temp = $coeffs[$i1];
	$coeffs[$i1] = $coeffs[$i2];
	$coeffs[$i2] = $temp;
	return(@coeffs);
}

sub permutation() {
	my ($perm, @set) = @_;
	print "$perm\n" || return unless (@set);
	&permutation($perm.$set[$_],@set[0..$_-1],@set[$_+1..$#set]) foreach (0..$#set);
}

@pSet = &permutation('', @coeffs);

$done = 0;
$i1 = 0;
$i2 = 1;
print "Program started...\n";
while ($done == 0) {
	$ans7 = &eqn7($d,$j);
	$ans8 = &eqn8($f, $l);
	$ans6 = &eqn6($k,$l, $c);
	$ans5 = &eqn5($i, $j, $k);
	$ans4 = &eqn4($g, $h, $i);
	$ans3 = &eqn3($e, $f, $g);
	$ans2 = &eqn2($a, $d, $e);
	$ans1 = &eqn1($a, $b, $c);
    if (&eqn7($d, $j) == 46) {
        if (&eqn8($f, $l) == 46) {
            if (&eqn6($k, $l, $c) == 46) {
                if (&eqn5($i, $j, $k) == 46) {
                    if (&eqn4($g, $h, $i) == 46) {
                        if (&eqn3($e, $f, $g) == 46) {
                            if (&eqn2($a, $d, $e) == 46) {
                                if (&eqn1($a, $b, $c) == 46) {
                                    $done == 1;
                                    print "$a, $b, $c, $d, $e, $f, $g, $h, $i, $j, $k, $l\n";
   							    } 
			    			}
						}
		    		}
				}
	     	}
         }
    }
	print "answers: $ans1, $ans2, $ans3, $ans4, $ans5, $ans6, $ans7, $ans8\n";
	print "$a, $b, $c, $d, $e, $f, $g, $h, $i, $j, $k, $l\n";
	print "i1 = $i1, i2 = $i2\n";
	@coeffs = &swap($i1, $i2, @coeffs);
	$a = $coeffs[0];
	$b = $coeffs[1];
	$c = $coeffs[2];
	$d = $coeffs[3];
	$e = $coeffs[4];
	$f = $coeffs[5];
	$g = $coeffs[6];
	$h = $coeffs[7];
	$i = $coeffs[8];
	$j = $coeffs[9];
	$k = $coeffs[10];
	$l = $coeffs[11];
	
	if ($i2 >= 11 && $i1 < 11) {
		$i1 = $i1 + 1;
		$i2 = $i1 + 1;
	} else {
		$i2 = $i2+1;
	}
	if ($i1 >= 11) {
		$i1 = 0;
		$i2 = 1;
	}
	$mychar = <STDIN>;
} 
