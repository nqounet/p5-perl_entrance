#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


print "値を入力してください>>>";
chomp( my $in = <STDIN> );
if ( $in eq 'a' ) {
  # $in eq 'a' が「真」の場合
  print "入力値${in}は'a'です\n";
}
else {
  # $in eq 'a' が「偽」の場合
  print "入力値${in}は'a'ではありません\n";
}
