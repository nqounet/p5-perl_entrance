#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


print "Hello World\n"; # Hello World[改行]
# 命令文の最後は「;」セミコロンを入力
# 「#」の後ろはコメントになる
# 「\n」は[改行]
print 'Hello World\n'; # Hello World\n
# シングルクォートの場合は「\n」がそのまま表示
print "はろーわーるど\n"; # 日本語もOK
