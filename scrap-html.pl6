#!/usr/bin/env perl6

use v6;

"output".IO.mkdir;

for ".".IO.dir -> $file-name {
  next unless $file-name ~~ / '.html' $ /;
  say "Generating documentation for: " ~ $file-name;
  generate-doc($file-name);
}

sub generate-doc($file-name) {
  my Str $html          = $file-name.IO.slurp;
  my $out-file-name     = $file-name.subst( / '.html' $/, '');
  my IO::Handle $pod-fh = "output/$out-file-name.md".IO.open(:w);

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
    $doc   ~~ s:g| '<p>' (.+?) '</p>' |$0|;
    $doc   ~~ s:g| '<dt>' (.+?) '</dt>' \s* '<dd>' (.+?) '</dd>' |- $0: $1|;
    $doc   ~~ s:g| '<dd>' \s* '</dd>' ||;
    $doc   ~~ s:g| 'A description of each parameter follows:' ||;
    $doc   ~~ s:g| 'The format of the ' (.+?) ' method is:' ||;
    $doc   ~~ s:g| '<dl class="dl-horizontal">' ||;
    $doc   ~~ s:g| \n ||;
    $doc   ~~ s:g| '</dl>' ||;
    $proto ~~ s:g| \n ||;

    # Write POD to file
    $pod-fh.say( sprintf("### %s\n- C:\n\n  `%s`\n- Perl 6:\n\n  `%s`\n%s\n", $id, $proto, $proto, $doc) );
  }

  $pod-fh.close;
}
