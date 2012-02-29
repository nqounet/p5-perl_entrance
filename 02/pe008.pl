#! /usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8";
binmode STDOUT, ":utf8";

print "a を入力してください>>";
my $numa = <STDIN>;
print "b を入力してください>>";
my $numb = <STDIN>;

# print ($numa + $numb) / 2;
print (($numa + $numb) / 2);
print "\n";

