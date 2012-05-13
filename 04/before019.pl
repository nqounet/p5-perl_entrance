#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


my $delimiter = 'デリミタ';
my $str = "通常は\"のようにエスケープします。\n";
$str .= qq|qqを使うとエスケープ"なし"で大丈夫。\n|;
        # ダブルクォート同等
$str .= qq{変数（${delimiter}）も展開されます。\n};
$str .= q!qだけの場合は、変数（${delimiter}）や\nも展開されません。!;
        # シングルクォート同等
$str .= q|ただし、デリミタの文字（\|）を使う場合はエスケープが必要です。|;
print "$str\n";

