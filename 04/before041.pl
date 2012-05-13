#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


use Data::Dumper::Concise;


my $hash_ref = +{ # 「+」は省略可能
  key1 => 'value1',
  key2 => 'value2',
};
print "key1 : $hash_ref->{key1}\n";
for my $key ( keys %{$hash_ref} ) {
  print "$key : $hash_ref->{$key}\n";
}
