#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力

use Data::Dumper::Concise;

my @empty_array = ();
my @defined_only;
my @array = ('a', 'b', 'c');
push(    @array, '最後');    # 最後の要素に加える
unshift( @array, '最初');    # 最初の要素に加える
print "@array\n";         # 最初 a b c 最後[改行]
my $pop   = pop   @array; # 最後の要素を取り出す
my $shift = shift @array; # 最初の要素を取り出す
print "@array\n";         # a b c[改行]
print "$pop\n";           # 最後[改行]
print "$shift\n";         # 最初[改行]

print Dumper \@empty_array;
print Dumper \@defined_only;
