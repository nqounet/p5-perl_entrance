use strict;
use warnings;
use utf8;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

my @array;	# 配列の宣言. 変数と同じくmyが必要.

for( ; ; ) {	# 無限ループを発生
	print "文字を入力してください>>>";
	chomp(my $input = <STDIN>);	# 文字を入力し...
	if($input eq 'end') {	# 入力した文字が'end'なら, ループを終了
		last;
	} else {
		push(@array, $input); # そうでないなら, @arrayの末尾に, $inputの中身(入力した文字列)を挿入する
	}
}

my $num = 1;
for my $word (@array) {
	print "$num : $word\n";
	$num++;
}
