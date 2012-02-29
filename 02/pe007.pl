#! /usr/bin/env perl
use strict;
use warnings;
use utf8;

=com

# binmode STDOUT, ":encoding(utf8)";
binmode STDOUT, ":utf8";

my $greeting = "<一度目の挨拶>\n";
print $greeting;

ここはコメント
=cut

print "#print"; # コメント;
print qq{pr"int\n};
print q{pri"nt\n};

print qq/ds\n/;
