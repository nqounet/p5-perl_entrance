#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


my $perl = '嫌い';
my $like = '好き';
while ( $perl ne $like ) {
  # 条件が真（$perl と $like が違う）の場合はループ内へ
  print "Perlは${like}ですか？[y/N]>>>";
  chomp(my $in = <STDIN>);
  if ( $in eq 'y' || $in eq 'Y' ) {
    $perl = $like;
  }
}
# 条件が偽の場合はループの外へ
print "Perlは${perl}ですよね〜。\n";
