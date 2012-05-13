use strict;
use warnings;
use utf8;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

print "所持金はいくら?>>>";
chomp(my $money = <STDIN>);

print "あなたの名前は?>>>";
chomp(my $name = <STDIN>);

if( $name eq 'papix') {	# 文字列を比較するので, == ではなく eq を使う.
	print "ダイエットしろ!\n";
} elsif( $money >= 1000 ) {
	print "晩ご飯を食べる.\n";
} else {
	print "何も食べない.\n";
}
