#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


my %hash1 = ('one', 'two', 'three', 'four');
my %hash2 = ('1', '2', '3', '4');
print "%hash1\n"; # %hash1[改行]
print %hash1; # threefouronetwo
print "\n";
print %hash2; # 1234
print "\n";
