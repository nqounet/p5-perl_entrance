#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


my $str = 'Yes';
if ( $str =~ /[yY]/ ) { # [...]の中身のいずれか1文字にマッチ
  print "$str には「y」または「Y」が含まれています\n";
}
if ( $str =~ /y/i ) { # iオプションは大文字小文字を無視してマッチ
  print "$str には「y」または「Y」が含まれています\n";
}
