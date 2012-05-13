#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

use Data::Dumper::Concise;

my $str = 'Perl';
my $count = 0;
my @inputs;

while ( chomp(my $input = <STDIN>) ) {
  $count++;
  push @inputs, $input;
  if ( $input eq $str ) {
    print "正解です！\n";
    print "正解までに $count 回入力しました！\n";
    my $answer = join "', '", @inputs;
    print "正解までに入力した文字列は '$answer' です！\n";
    last;
  }
}

