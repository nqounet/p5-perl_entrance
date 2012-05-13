#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


my @array;
while (@array < 5) {
# for (1 .. 5) {
  print "数値を入力してください>>>";
  chomp(my $in = <STDIN>);
  if ($in == 0) {
    print "エラーです。\n";
  }
  else {
    push @array, $in;
  }
}
print "@array\n";

my $max = $array[0];
my $min = $array[0];
for my $num (@array) {
  if ($max < $num) {
    $max = $num;
  }
  if ($min > $num) {
    $min = $num;
  }
}

print "最大値は $max です。\n";
print "最小値は $min です。\n";
