#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


print "値を入力してください>>>";
my $input = <STDIN>;          # 入力待ち
print "入力は $input です\n";   # [改行]を含む
chomp($input);                # [改行]を取り除く
print "入力は $input です\n";
print "値2を入力してください>>>";
chomp( my $input2 = <STDIN> ); # 入力待ちと同時でもOK
# print "入力は$input2です\n";   # 変数名:$input2です
print "入力2は${input2}です\n";   # 変数名:$input2
print "入力1は${input}2です\n";   # 変数名:$input
