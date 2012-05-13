use strict;
use warnings;
use utf8;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

print "所持金はいくら?>>>";
chomp(my $money = <STDIN>);	# 変数の宣言と代入とchompを1行で処理する

print "所持金は${money}円なので...\n";
if( $money > 0 ) {
	print "何か食べに行く.\n";
} else {
	print "何も食べない.\n";
}
