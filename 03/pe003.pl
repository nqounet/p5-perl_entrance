use strict;
use warnings;
use utf8;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

print "所持金はいくら?>>>";
chomp(my $money = <STDIN>);

print "空腹度はいくら?>>>";
chomp(my $hungry = <STDIN>);

print "所持金は${money}円, 空腹度は${hungry}なので...\n";

if(( $money >= 1000 ) && ( $hungry >= 80)) {	# (財布に1000円以上) かつ (空腹度が80以上) 
	print "晩ご飯を食べる.\n";
} else {
	print "何も食べない.\n";
}
