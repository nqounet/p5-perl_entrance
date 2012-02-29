#! /usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8";
binmode STDOUT, ":utf8";

print "身長を入力してください（cm）>>";
my $numa = <STDIN>;
print "体重を入力してください（kg）>>";
my $numb = <STDIN>;

my $answer = $numb / ($numa / 100) ** 2;

print "BMIは $answer です。\n";
