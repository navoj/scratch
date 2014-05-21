#!/usr/bin/env perl
use Algorithm::Permute;

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

$p_iterator = Algorithm::Permute->new( \@coeffs );
$done = 0;
$i1 = 0;
$i2 = 1;
print "Program started...\n";
while (@perm = $p_iterator->next) {
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
$a = $perm[0];
$b = $perm[1];
$c = $perm[2];
$d = $perm[3];
$e = $perm[4];
$f = $perm[5];
$g = $perm[6];
$h = $perm[7];
$i = $perm[8];
$j = $perm[9];
$k = $perm[10];
$l = $perm[11];
	
$mychar = <STDIN>;
} 
