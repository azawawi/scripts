#!/usr/bin/env perl6

# See http://askubuntu.com/questions/589469/how-to-automatically-update-atom-editor

use v6;

use Net::Curl::Easy;

my $o = Net::Curl::Easy.new(:url('https://github.com/atom/atom/releases/latest'));
my $latest = $o.download;
say $latest;
if $latest ~~ / '<a href="' ('/atom/atom/releases/download/v' (.+) '/atom-amd64.deb' ) '" rel="nofollow">' / {
  say $/[0];
}
