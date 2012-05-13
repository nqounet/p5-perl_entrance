#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

use Data::Dumper::Concise;

my @nums;
my $sum = 0;
while ( chomp(my $input = <STDIN>) ) {
  last if $input eq 'end';
  push @nums, $input;
  $sum += $input;
}

my $answer = join (' + ', @nums);

print "$answer = $sum です。\n";

