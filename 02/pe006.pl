#! /usr/bin/env perl
$dec = 16;
$val = 1.0;
$str = "abc";

print "$val $str $dec\n";
printf "%.04f %s 0x%x\n", $val, $str, $dec;
