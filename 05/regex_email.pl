#!/usr/bin/env perl
use utf8;
use 5.010;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力

# [メールアドレスの正規表現](http://www.din.or.jp/~ohzaki/mail_regex.htm)

die 'Email Please!' unless @ARGV;

my $quoted_pair = qq{\\\\[\\x09 -~]};

my $atext = qq{[-!#-'*+/-9=?A-Z^-~]};
my $dot_atom_text = qq{$atext+(?:\\.$atext+)*};
my $dot_atom = $dot_atom_text;

my $qtext = qq{[!#-\\[\\]-~]};
my $qcontent = qq{(?:$qtext|$quoted_pair)};
my $quoted_string = qq{"$qcontent*"};

my $local_part = qq{(?:$dot_atom|$quoted_string)};
my $domain = $dot_atom;
my $addr_spec = qq{$local_part\@$domain};
my $mail_regex = $addr_spec;

# print "$mail_regex\n";

my $email = $ARGV[0];

if ( $email =~ /\A$mail_regex\z/o ) {
  print "OK : `$email`はメールアドレスです\n";
}
else {
  print "NG : `$email`はメールアドレスではありません\n";
}
