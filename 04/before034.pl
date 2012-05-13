#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


use Data::Dumper::Concise;


my @array     = ('a', 'b', 'c');
my $array_ref = \@array;        # 配列のリファレンス
print join("\n", @{$array_ref}); # 配列全体をデリファレンス
print "\n";
print "$array_ref->[0]\n";  # 配列のリファレンスの最初の要素
print "$array_ref->[1]\n";  # 配列のリファレンスの2つめの要素
print "$array_ref->[-1]\n"; # 配列のリファレンスの最後の要素
