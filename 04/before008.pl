#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


my $x = 1;
my $y = 2;
if ( $x == 1 && $y == 2 ) {
    print "$x は 1 かつ $y は 2 です\n";
}
if ( $x == 2 || $y == 2 ) {
    print "$x は 2 または $y は 2 です\n";
}
if ( ! $y == 1 ) {
    print "$y は 1 ではありません\n";
}
