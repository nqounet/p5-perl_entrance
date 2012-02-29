#! /usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8";
binmode STDOUT, ":utf8";

print "時間を入力してください(h)>>";
my $numxh = <STDIN>;
chomp $numxh;
print "分を入力してください（m）>>";
my $numxm = <STDIN>;
chomp $numxm;
print "秒を入力してください（s）>>";
my $numxs = <STDIN>;
chomp $numxs;

my $answer = $numxh * 3600 + $numxm * 60 + $numxs;

print "$numxh 時間 $numxm 分 $numxs 秒は $answer 秒です。\n";

