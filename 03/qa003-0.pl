#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

use Data::Dumper::Concise;

for my $num (1 .. 36) {
  if ( $num % 15 == 0 ) {
    print "FizzBuzz\n";
  }
  elsif ( $num % 5 == 0 ) {
    print "Buzz\n";
  }
  elsif ( $num % 3 == 0 ) {
    print "Fizz\n";
  }
  else {
    print "$num\n";
  }
}

