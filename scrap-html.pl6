#!/usr/bin/env perl6

use v6;

my $html = "wand.html".IO.slurp;

my @matches = $html.comb( / ( '<h2><a href="' .+? '" id="' (.+?) '">' .+? '</a></h2>') (.+?) '<pre class="text">' (.*?) '</pre>'/, :match );
for @matches -> $match {
  my $id    = ~$match[0][0];
  my $proto = $match[1];
#  say $id;
  $proto = $proto.subst( / '<p>' (.+?) '</p>' /, "");
#  say "-> " ~ $proto;
}

my $foo = "<p>The format of the IsMagickWandInstantiated method is:</p>";
#say $foo;
my $z = $foo ~~ s| '<p>' (.+) '</p>' |z|;
say $z;