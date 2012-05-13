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
my %nqounet = (
  name => 'nqounet',
  mail => \@mails,
  web  => \@webs,
);


print "$nqounet{web}->[2]\n";
  # http://www.shin-osaka.in
  # %nqounetの「web」というキーの値が配列のリファレンス
  # その配列のリファレンスをデリファレンスした3番目の値
print "$nqounet{mail}->[0]\n";
  # nobu at nishimiyahara.net
  # %nqounetの「mail」というキーの値が配列のリファレンス
  # その配列のリファレンスをデリファレンスした最初の値


my %papix = (
  name => 'papix',
  mail => [],                   # 空の配列のリファレンス
  web  => ['http://papix.net'], # 配列のリファレンス
);
my $perl_entrance = { # ハッシュのリファレンス
  old_type => \%nqounet,
  new_type => \%papix,
};
print "$perl_entrance->{new_type}->{web}->[0]\n";
  # http://papix.net


print "$nqounet{web}->[2]\n";
print "$nqounet{web}[2]\n";
  # ブレースとブラケットの間の矢印は省略できる
print "$perl_entrance->{new_type}->{web}->[0]\n";
print "$perl_entrance->{new_type}{web}[0]\n";
  # ブレース同士、ブラケット同士も同じ
# print "$perl_entrance{new_type}{web}[0]\n"; # エラー
  # %perl_entranceというハッシュの「new_type」をキーとする値を参照している
