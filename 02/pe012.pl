#! /usr/bin/env perl
use utf8;
use 5.12.1;

use Data::Dumper::Concise;

my %hash;
$hash{qw/1 2 3/} = 'hoge';
say $hash{qw/1 2 3/};
say Dumper \%hash;

my $var = scalar (2,4,6,8);
say $var;

