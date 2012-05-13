#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


use List::Util qw(max min);
my @array = (2, 99, 87, 32, -11);
my $max = max(@array);
print $max . "\n"; # 99[改行]
my $min = min(@array);
print $min . "\n"; # -11[改行]
