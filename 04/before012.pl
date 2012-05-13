#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


for my $i (1 .. 10) { # 1 から 10 まで
  print "$i\n"; # 1[改行]2[改行]3[改行]...
}
my @array = ('a', 'b', 'c'); # 配列を定義
for my $item ( @array ) {    # 配列の要素
  print $item . "\n"; # a[改行]b[改行]
  if ($item eq 'b') { # $itemが「b」という文字列の場合
    last;             # ループを抜ける（終了する）
  }
}
