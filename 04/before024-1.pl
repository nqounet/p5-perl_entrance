#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


my %nqounet = (
  twitter => 'nqounet',
  age     => '38',
  lang    => 'Perl',
);
for my $key ( keys %nqounet ) {
  print "$key : $nqounet{$key}\n";
}
