#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


my @nqounet = (
  'nqounet',
  '38',
  'Perl',
);
print "twitter : $nqounet[0]\n";
print "age : $nqounet[1]\n";
print "lang : $nqounet[2]\n";
