#!/usr/bin/env perl
#ｕｔｆ８
use utf8;
use strict;
use warnings;
use feature qw(say);

use Encode qw(encode_utf8);

# binmode STDOUT, ':utf8';

my $hello = "ハローワールド";

say encode_utf8($hello);

$hello =~ s/ワールド/世界/;

say $hello;

say unpack "H*", encode_utf8($hello);
