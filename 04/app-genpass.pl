#!/usr/bin/env perl
use utf8;
use strict;
use warnings;
use feature qw(say);

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力

# use Data::Dumper::Concise;


use App::Genpass;

my $genpass = App::Genpass->new();
say $genpass->generate;

$genpass = App::Genpass->new( readable => 1, length => 12, repeat => 0 );
say for $genpass->generate(10);
