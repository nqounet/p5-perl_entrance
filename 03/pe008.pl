use strict;
use warnings;
use utf8;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

my @array;	# 配列の宣言. 変数と同じくmyが必要.
my @array2 = ('banana', 'orange', 'apple'); # このように宣言と代入を同時に行うこともできます
# この場合, $array2[0] = 'banana', $array[1] = 'orange', $array[2] = 'apple'となります

my $word = 'strawberry';

$array[0] = $word;	# 配列arrayの0番目に, $word1のデータを代入する. @array[0]ではなく, $array[0]である点に注意

print "$array[0]\n";
print "@{array2}\n"; # こうすると, "banana orange apple"のように, 配列の中身が半角スペースを区切りにして表示されます
