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
    my $doc   = $match[1] ~ $match[3];
    my $proto = $match[2];

    # Remove unneeded markup
    $doc   ~~ s:g| '<p>' (.+?) '</p>'                            |$0|;
    $doc   ~~ s:g| '<dt>' (.+?) '</dt>' \s* '<dd>' (.+?) '</dd>' |- $0: $1|;
    $doc   ~~ s:g| '<dd>' \s* '</dd>'                            ||;
    $doc   ~~ s:g| 'A description of each parameter follows:'    ||;
    $doc   ~~ s:g| 'The format of the ' (.+?) ' method is:'      ||;
    $doc   ~~ s:g| '<dl class="dl-horizontal">'                  ||;
    $doc   ~~ s:g| \n                                            ||;
    $doc   ~~ s:g| '</dl>'                                       ||;
    $proto ~~ s:g| \n                                            ||;

    my $p6-proto = $proto;
    if $p6-proto ~~ /^(.+?)(\w+)\((.*?)\)$/ {
      my Str $return-type = ~$0;
      my Str $sub-name    = ~$1;
      my Str $params      = ~$2;

      $return-type    = convert-c-to-perl6-type($return-type);

      my @p;
      for $params.split(',') -> $param {
          my Str $p = $param;
          if $p ~~ /^(.+?)(\w+)$/ {
            my Str $type = ~$0;
            my Str $name = ~$1;

            warn "Failed at converting '$type' at '$id'" if $type eq convert-c-to-perl6-type($type);
            $type = convert-c-to-perl6-type($type);

            $p = sprintf(q{%s $%s}, $type, $name);
          } else {
            die sprintf("No match for %s", $p);
          }
          @p.push($p);
      }

      #die if $sub-name eq 'DestroyDrawingWand';

      my $suffix = 'is native(&library) is export { * };';
      if $return-type eq '' {
        $p6-proto = sprintf(q{sub %s(%s) %s} , $sub-name, $params, $suffix);
      } else {
        $p6-proto = sprintf(q{sub %s(%s) returns %s %s}, $sub-name, $params, $return-type, $suffix);
      }
    }

    # Write POD to file
    $pod-fh.say( sprintf("### %s\n- C:\n\n  ```C\n%s\n```\n- Perl 6:\n\n  ```Perl6\n%s\n```\n\n%s\n", $id, $proto, $p6-proto, $doc) );
  }

  $pod-fh.close;
}

sub convert-c-to-perl6-type(Str $type is copy) {
  $type    ~~ s| 'const'             |DrawingWandPointer|;
  $type    ~~ s| 'MagickWand *'      |MagickWandPointer|;
  $type    ~~ s| 'DrawWand *'        |DrawWandPointer|;
  $type    ~~ s| 'DrawingWand *'     |DrawingWandPointer|;
  $type    ~~ s| 'PixelWand *'       |PixelWandPointer|;
  $type    ~~ s| 'MagickBooleanType' |uint32|;
  $type    ~~ s| 'double '           |num64|;
  $type    ~~ s| 'char *'            |Str|;
  $type    ~~ s| 'size_t'            |int32|;
  $type    ~~ s| 'ssize_t'           |uint32|;
  $type    ~~ s| 'void '             ||;
  return $type;
}
