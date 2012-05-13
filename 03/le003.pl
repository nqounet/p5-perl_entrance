#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

use Data::Dumper::Concise;

my @x;
$x[10] = 99;

print Dumper @x;
print Dumper \@x;

