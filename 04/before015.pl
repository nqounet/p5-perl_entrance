#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


use LWP::UserAgent;
use URI;
my $ua = LWP::UserAgent->new;
$ua->agent('perl-entrance/0.04');

# my $url = URI->new('http://ja.wikipedia.org/wiki/Perl');
my $url = URI->new('http://www.perl-entrance.org/p/modernperl20123.html');
my $res = $ua->get($url);
die $res->status_line unless $res->is_success;
my $html = $res->decoded_content;
print "$html\n";


my $title;
if ( $html =~ /<title>(.*?)<\/title>/ms ) {
  $title = $1;
}
else {
  print "titleタグがありません。\n";
}
print "$title\n";

