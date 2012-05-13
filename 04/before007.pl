#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8"; # 標準入力
binmode STDOUT, ":utf8"; # 標準出力
binmode STDERR, ":utf8"; # 標準エラー出力


my $x = 'xyz';
my $y = 'xyz';
if ( $x eq $y ) { print "$x と $y は同じ\n";    }
if ( $x ne $y ) { print "$x と $y は違う\n";    }
if ( $x gt $y ) { print "$x は $y より大きい\n"; }
if ( $x lt $y ) { print "$x は $y より小さい\n"; }
if ( $x ge $y ) { print "$x は $y 以上\n";      }
if ( $x le $y ) { print "$x は $y 以下\n";      }


my $result = $x cmp $y; # $x cmp $y の結果を代入
if ( $result == 0 ) {     # 条件１
    print "$x と $y は同じ\n";
}
elsif ( $result < 0 ) {   # 条件２
    print "$x は $y より小さい\n";
}
else {                    # すべての条件に当てはまらない
    print "$x は $y より大きい\n";
}
