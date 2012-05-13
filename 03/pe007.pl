use strict;
use warnings;
use utf8;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

my $word1 = 'perl';

for(my $count = 1 ; $count <= 10 ; $count++ ) {
	print "${count}回目>>>";
	chomp(my $word2 = <STDIN>);

	if($word1 eq $word2) {
		print "正解です!\n";
		last;
	}
}
