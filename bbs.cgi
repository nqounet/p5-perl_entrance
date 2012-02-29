#!/Users/nobu/perl5/perlbrew/perls/perl-5.14.2/bin/perl
use utf8;

#ｕｔｆ８
# use CGI::Carp qw/fatalsToBrowser/;

use strict;
use warnings;

use CGI::Simple;
$CGI::Simple::PARAM_UTF8 = 1;

use Path::Class qw(file);
use Data::Section::Simple qw(get_data_section);
use Data::Recursive::Encode;
use Text::MicroTemplate qw(:all);

use Encode qw(decode_utf8 encode_utf8);

my $q    = CGI::Simple->new;
my $file = file('bbs.dat');
$file->touch;
my @messages = split /\n/, decode_utf8($file->slurp);
my $template = Data::Recursive::Encode->decode_utf8(get_data_section);

if ($q->request_method eq "POST") {
  my $msg = $q->param("msg");
  if ($msg ne "") {
    unshift @messages, $msg;
    my $fh = $file->openw;
    $fh->print(join "\n", @messages);
  }
  print $q->redirect($q->url);
}
else {
  my $form     = render_mt($template->{'form.mt'});
  my $messages = render_mt($template->{'messages.mt'}, \@messages);
  my $tx       = {
    title    => 'Perl入学式 1行掲示板',
    form     => $form,
    messages => $messages,
  };
  my $html = render_mt($template->{'default.mt'}, $tx);

  print $q->header(
    -type    => 'text/html',
    -charset => 'utf-8',
  );
  print encode_utf8($html->as_string);
}

__DATA__

@@ default.mt
<html>
<head>
<meta charset="utf8">
<title><?= $_[0]->{title} ?></title>
</head>
<body>
<h1><?= $_[0]->{title} ?></h1>
<?= $_[0]->{form} ?>
<?= $_[0]->{messages} ?>
</body>
</html>

@@ form.mt
<form method="post">
<p>
<input type="text" name="msg" value="">
<input type="submit" value="投稿する">
</p>
</form>

@@ messages.mt
<ul>
? for my $msg ( @{$_[0]} ) {
  <li><?= $msg ?></li>
? }
</ul>
