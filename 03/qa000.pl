#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

print "値１を入力してください>>>";
chomp( my $x = <STDIN> );

print "値２を入力してください>>>";
chomp( my $y = <STDIN> );


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

if ( $x != $y ) {
  print "$x != $y は真です。\n";
}
else {
  print "$x != $y は偽です。\n";
}

if ( $x ne $y ) {
  print "$x ne $y は真です。\n";
}
else {
  print "$x ne $y は偽です。\n";
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

if (  ($x cmp $y) == 0 ) {
  print "$x cmp $y は0なので、$x と $y は文字列として同じです。\n";
}
elsif ( ($x cmp $y) == -1 ) {
  print "$x cmp $y は-1なので、$y の方が文字列として大きいです。\n";
}
else {
  print "$x cmp $y は1なので、$x の方が文字列として大きいです。\n";
}

