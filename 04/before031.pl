#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


use Data::Dumper::Concise;


my $scalar = 'string';
my @array  = ('a', 'b', 'c');
my %hash   = (key1 => 'value1', key2 => 'value2');
my $scalar_ref = \$scalar; # スカラーのリファレンス
my $array_ref  = \@array;  # 配列のリファレンス
my $hash_ref   = \%hash;   # ハッシュのリファレンス
my $scalar_ref_direct = \'Perl';
my $array_ref_direct  = +['d', 'e', 'f'];
                        # 「+」は省略可能
my $hash_ref_direct   = +{ key => 'value' };
                        # 「+」は省略可能

print $scalar;
print "\n";
print @array;
print "\n";
print %hash;
print "\n";
print $scalar_ref;
print "\n";
print $array_ref;
print "\n";
print $hash_ref;
print "\n";
print $scalar_ref_direct;
print "\n";
print $array_ref_direct;
print "\n";
print $hash_ref_direct;
print "\n";
