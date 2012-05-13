#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


use Data::Dumper::Concise;


my $scalar     = 'string';
my $scalar_ref = \$scalar; # スカラーのリファレンス
print $scalar;
print "\n";
print $scalar_ref;
print "\n";
print ${$scalar_ref};
print "\n";

