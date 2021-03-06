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
  mail => @mails,
  web  => @webs,
);
print Dumper \%nqounet;
