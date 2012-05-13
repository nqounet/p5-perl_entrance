#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


use Data::Dumper qw(Dumper); # Dumperという関数を生成

my %nqounet = (
  twitter => 'nqounet',
  age     => '38',
  lang    => 'Perl',
);
print Dumper( \%nqounet );
# 変数の前に「\（バックスラッシュ）」をつける（解説は後ほど）
