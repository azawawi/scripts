#!/usr/bin/env perl6

use v6;

my $html = "wand.html".IO.slurp;

# Find all API documentation
my @matches = $html.comb(
  / ( '<h2><a href="' .+? '" id="' (.+?) '">' .+? '</a></h2>')
    (.+?)
    '<pre class="text">' (.+?) '</pre>' (.+? '</dl>')/, :match );

for @matches -> $match {
  my $id    = ~$match[0][0];
  my $doc = $match[1] ~ $match[3];
  my $proto = $match[2];

  # Remove unneeded markup
  $doc ~~ s:g| '<p>' (.+?) '</p>' |$0|;
  $doc ~~ s:g| '<dt>' (.+?) '</dt>' \s* '<dd>' (.+?) '</dd>' |- $0    $1|;
  $proto ~~ s:g| \n | |;

  # Print out results
  say "-" x 80;
  say sprintf("%s => %s\n%s", $id, $proto, $doc);
}
