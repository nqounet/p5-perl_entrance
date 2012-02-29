#!/usr/bin/env perl
#ｕｔｆ８

use strict;
use warnings;
use feature qw(say);

my $hello = "ハローワールド";

say $hello;

$hello =~ s/ワールド/世界/;

say $hello;

say unpack "H*", $hello;
