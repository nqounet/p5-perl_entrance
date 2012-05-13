#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


my @array = ('a', 'b', 'c'); # 配列の宣言と代入
print "$array[0]\n";  # a[改行] : 最初の要素
print "$array[1]\n";  # b[改行] : 2つめの要素
print "$array[-1]\n"; # c[改行] : 最後の要素
print "@{array}\n";  # a b c[改行] : 中身を表示
print '@{array}\n';  # @{array}\n : 展開されない
my $array = @array;  # スカラ変数と同じ名前でもOK
print "$array\n";    # 3[改行] : 配列の要素数
