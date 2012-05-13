#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


my $str = 'Yes';
if ( $str =~ /[yY]/ ) {
  print "$str には「y」が含まれています\n";
}
else {
  print "$str には「y」が含まれていません\n";
}

my $exp = qr/y/i;
if ( $str =~ $exp ) {
  print "$str は $exp が含まれています\n";
}
else {
  print "$str は $exp が含まれていません\n";
}

