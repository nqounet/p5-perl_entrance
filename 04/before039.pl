#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


use Data::Dumper::Concise;


my $array_ref = +['a', 'b', 'c']; # 「+」は省略可能
print "$array_ref->[0]\n";
print "@{$array_ref}\n";
for my $item ( @{$array_ref} ) {
  print "$item\n";
}
