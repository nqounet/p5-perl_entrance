#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

use Data::Dumper::Concise;

my $str = 'Perl';
my @inputs;

# 大文字小文字を無視する版

while ( chomp(my $input = <STDIN>) ) {
  push @inputs, $input;
  if ( lc $input eq lc $str ) {
    my $count = @inputs;
    print "正解です！\n";
    print "正解までに $count 回入力しました！\n";
    my $answer = join "', '", @inputs;
    print "正解までに入力した文字列は '$answer' です！\n";
    last;
  }
  else {
    if (lc $input lt lc $str) {
      print "$input は、答えよりも辞書順で手前です。\n";
    }
    else {
      print "$input は、答えよりも辞書順で後ろです。\n";
    }
  }
}

