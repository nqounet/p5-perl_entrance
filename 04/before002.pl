#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


my $string;             # 「my」は変数の宣言
$string = '文字列';      # 「=」は右の値を左の変数に代入
print $string . "\n";   # 「.」は文字列の足し算（連結）
my $num    = 123;       # 変数の宣言と代入は同時でもOK
my $num2   = '123';     # 文字列？
my $sum = $num + $num2; # 「+」は数値の足し算
# 「-」は引き算、「*」は掛け算、「/」は割り算
print "$num + $num2 は $sum です。\n"; # 試してみよう
