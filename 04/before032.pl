#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


use Data::Dumper::Concise;


my @mails = (
  'nobu at nishimiyahara.net',
  'coworking at shin-osaka.in',
);
my @webs = (
  'http://nqou.net',
  'http://www.nishimiyahara.net',
  'http://www.shin-osaka.in',
);
my %nqounet = ( # 「@」 を 「%」 に戻す
  name => 'nqounet',
  mail => \@mails, # 変数の前に「\」をつける
  web  => \@webs,  # 変数の前に「\」をつける
);

for my $key ( keys %nqounet ) {
  print "$key : $nqounet{$key}\n";
}


# 「$nqounet{mail}」は配列のリファレンス
for my $mail ( @{$nqounet{mail}} ){
    # リファレンスを「@{...}」で囲う
  print "$mail\n";
}

