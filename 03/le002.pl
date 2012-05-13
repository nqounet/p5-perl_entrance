#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

my $x = 1;
my $y = '1';

if ( $x == $y ) {
  print "$x == $y は真です。\n";
}
else {
  print "$x == $y は偽です。\n";
}

if ( $x eq $y ) {
  print "$x eq $y は真です。\n";
}
else {
  print "$x eq $y は偽です。\n";
}

if (  ($x <=> $y) == 0 ) {
  print "$x <=> $y は0なので、$x と $y は数値として同じです。\n";
}
elsif ( ($x <=> $y) == -1 ) {
  print "$x <=> $y は-1なので、$y の方が数値として大きいです。\n";
}
else {
  print "$x <=> $y は1なので、$x の方が数値として大きいです。\n";
}
