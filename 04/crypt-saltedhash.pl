#!/usr/bin/env perl
use utf8;
use strict;
use warnings;
use feature qw(say);

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力

# use Data::Dumper::Concise;


use Crypt::SaltedHash;

my $csh = Crypt::SaltedHash->new(algorithm => 'MD5');# or 'SHA'

print "文字を入力してください>>>";
chomp(my $plain = <STDIN>);

print "照合する場合は対象文字列を入力してください>>>";
chomp(my $input = <STDIN>);

if ($input eq '') {
  $csh->add($plain);
  say join "\n", $plain, '↓', $csh->generate;
}
else {
  if ($csh->validate($input, $plain)) {
    say qq{OK : $plain は $input と照合されました};
  }
  else {
    say qq{NG : $plain は $input と照合されませんでした};
  }
}
