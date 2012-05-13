#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


use Data::Dumper::Concise;


my @array = ('a', 'b', 'c');
print "$array[0]\n";
print "@{array}\n";
for my $item ( @array ) {
  print "$item\n";
}
