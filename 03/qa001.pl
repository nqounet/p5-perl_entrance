#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

use Data::Dumper::Concise;

my $sum = 0;
for ( 1..10 ) {
  chomp(my $input = <STDIN>);
  $sum += $input;
}

print $sum;


