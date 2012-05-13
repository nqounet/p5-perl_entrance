#!/usr/bin/env perl
use utf8;
use strict;
use warnings;
use feature qw(say);

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力

use Data::Dumper::Concise;

use Config::Pit;
my $config = pit_get(
  'nqounet@twitter.com',
  require => {
    consumer_key        => 'consumer_key',
    consumer_secret     => 'consumer_secret',
    access_token        => 'access_token',
    access_token_secret => 'access_token_secret',
  }
);

use Net::Twitter::Lite;
my $ntl = Net::Twitter::Lite->new(%{$config});

my $status;
# $status = $ntl->followers_ids();
$status = $ntl->update({status => q{今日は Perl入学式 です！ #Perl入学式}});

print Dumper $status;
