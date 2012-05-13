#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


my %nqounet;
$nqounet{'name'} = 'Nobutaka Wakabayashi';
$nqounet{'born'} = '石川県';
print "$nqounet{'name'}\n";
print "$nqounet{'born'}\n";
