#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


my @array = ('a', 'b', 'c');
my @array2 = reverse(@array);  # 要素を逆並びにする
print "@array2\n";             # c b a[改行]
my @array3 = sort(@array2);    # 要素を順序良く並べる
print "@array3\n";             # a b c[改行]
my $str = join(":", @array);   # 要素を連結する
print "$str\n";                # a:b:c[改行]
my @array4 = split(/:/, $str); # 文字列を分割する
print "@array4\n";             # a b c[改行]
