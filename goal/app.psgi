#!/usr/bin/env perl

use Plack::App::WrapCGI;

my $app = Plack::App::WrapCGI->new(script => "bbs.cgi")->to_app;
