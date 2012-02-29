#! /usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8";
binmode STDOUT, ":utf8";

print "時間xを入力してください(h)>>";
my $numxh = <STDIN>;
chomp $numxh;
print "分xを入力してください（m）>>";
my $numxm = <STDIN>;
chomp $numxm;
print "秒xを入力してください（s）>>";
my $numxs = <STDIN>;
chomp $numxs;

print "時間yを入力してください(h)>>";
my $numyh = <STDIN>;
chomp $numyh;
print "分yを入力してください（m）>>";
my $numym = <STDIN>;
chomp $numym;
print "秒yを入力してください（s）>>";
my $numys = <STDIN>;
chomp $numys;

my $answerx = $numxh * 3600 + $numxm * 60 + $numxs;
my $answery = $numyh * 3600 + $numym * 60 + $numys;
my $answer  = $answery - $answerx;

print "$numxh 時間 $numxm 分 $numxs 秒と";
print "$numyh 時間 $numym 分 $numys 秒の差は";
print "$answer 秒です。\n";

