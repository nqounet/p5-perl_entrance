#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


my $str = "<title>1<title>2</title>3</title>";
$str =~ /<title>(.)<\/title>/;
print "1番目のマッチ：$1\n";      # 2
$str =~ /<title>(.*)<\/title>/;
print "2番目のマッチ：$1\n";      # 1<title>2</title>3
$str =~ /<title>(.*?)<\/title>/;
print "3番目のマッチ：$1\n";      # 1<title>2
