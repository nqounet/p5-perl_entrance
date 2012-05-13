use strict;
use warnings;
use utf8;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

my $age;			# 変数宣言
$age = 22;			# 値の代入
my $school = 'マクド出禁学院大学'; # 変数宣言と値の代入は同時に可能
print "名前を入力してください";
my $name = <STDIN>; # 文字の入力

# chomp($name);	# 末尾の"\n"(改行コード)のみを取ってくれる関数

print "私の名前は${name}です. 年齢は${age}歳です. ${school}に通っています.\n";

my $x = 10;
my $y = 2;

my $num = $x + $y;	# 数値の計算
my $div = $x / 10;

print "$x + $y = $num\n";
print "$x / 10 = $div\n";
