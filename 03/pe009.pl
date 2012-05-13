use strict;
use warnings;
use utf8;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

my @array;	# 配列の宣言. 変数と同じくmyが必要.
my @array2;

for( ; ; ) {	# 無限ループを発生
  print "文字を入力してください>>>";
	chomp(my $input = <STDIN>);	# 文字を入力し...
	if($input eq 'end') {	# 入力した文字が'end'なら, ループを終了
		last;
	} else {
		push(@array, $input); # そうでないなら, @arrayの末尾に, $inputの中身(入力した文字列)を挿入する
		unshift(@array2, $input); # @arrayの先頭に, $inputの中身を挿入する
	}
}

my $pop = shift(@array2); # @array2の先頭の要素を取り除き, その中身を$popに代入する

print "@array\n";
# 例えば, 'Perl', 'Ruby', 'Python', 'end'と入力した場合, 
# "Perl Ruby Python"と表示されるはずです.
print "@array2 / $pop\n";
# 例えば, 'Perl', 'Ruby', 'Python', 'end'と入力した場合, 
# "Ruby Perl / Python"と表示されるはずです.
