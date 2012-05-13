#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


my %hash  = (
  'key1' => 'value1', # '=>'はファットカンマ
  key2   => 'value2', # ほぼ「,（カンマ）」と同じ意味
  # 左側の値を文字列として解釈するので、クォートしなくてもよい
);
print "$hash{key1}\n";   # value1[改行]
print "$hash{'key2'}\n"; # value2[改行]
