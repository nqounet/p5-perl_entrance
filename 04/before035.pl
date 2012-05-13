#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


use Data::Dumper::Concise;


my %hash = ( key1 => 'value1', key2 => 'value2' );
my $hash_ref = \%hash;
    # ハッシュのリファレンスを作成
for my $key ( keys %{$hash_ref} ) {
    # ハッシュ全体をデリファレンス
  print "$key : $hash_ref->{$key}\n";
    # ハッシュの要素を表示する
}
