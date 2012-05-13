#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


use Data::Dumper::Concise;


my $str = 'これは文字列です';
my $num = 123;
print "文字列（ $str ）と数値（ $num ）\n";
