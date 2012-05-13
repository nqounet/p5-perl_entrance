#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

use Data::Dumper::Concise;

my @nums;
my $sum = 0;
for my $num ( 1..10 ) {
  print "数値を入力してください（${num}回目）>>>";
  chomp(my $input = <STDIN>);
  push @nums, $input;
  $sum += $input;
}

my $answer = join (' + ', @nums);

print "$answer = $sum です。\n";

