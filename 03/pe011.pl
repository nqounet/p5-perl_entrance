use strict;
use warnings;
use utf8;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

my @array = ('Nanoha', 'Hayate', 'Testarossa');	# 配列の宣言. 変数と同じくmyが必要

my @array2 = sort @array;
# @arrayの中身がソートされて,
# @array2 = ('Hayate', 'Nanoha', 'Testarossa'); になります
# @arrayは変更されません.
print "@array\n";
print "@array2\n";

my $num = @array;
# $numに, @arrayの要素数(この場合, 3)が代入されます
print "$num\n";

my $str = join(',', @array);
# $strに, @arrayに含まれる要素を","を区切り記号にして代入します.
# この場合, $str = 'Nanoha,Hayate,Testarossa'となります
print "$str\n";

my $word = 'Eila:Sanya:Nipa';
my @array3 = split(/:/, $word);
# この場合, @array3 = ('Eila', 'Sanya', 'Nipa'); となります.
print "@array3\n";

