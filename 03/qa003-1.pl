#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

use Data::Dumper::Concise;

print "1から何までのFizzBuzz問題を解きますか？>>>";
chomp(my $times = <STDIN>);

if ($times < 1) {
  print "Error!\n";
}
else {
  for my $num (1 .. $times) {
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
}

