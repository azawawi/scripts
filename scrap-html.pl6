#!/usr/bin/env perl6

use v6;
use LWP::Simple;

"output".IO.mkdir;

use HTTP::UserAgent;

my %urls = (
  'magick-wand'     => 'http://www.imagemagick.org/api/magick-wand.php',
  'magick-property' => 'http://www.imagemagick.org/api/magick-property.php',
  'magick-image'    => 'http://www.imagemagick.org/api/magick-image.php',
  'pixel-iterator'  => 'http://www.imagemagick.org/api/pixel-iterator.php',
  'pixel-wand'      => 'http://www.imagemagick.org/api/pixel-wand.php',
  'drawing-wand'    => 'http://www.imagemagick.org/api/drawing-wand.php',
  'mogrify'         => 'http://www.imagemagick.org/api/mogrify.php',
  'wand-view'       => 'http://www.imagemagick.org/api/wand-view.php',
);

for %urls.kv -> $doc-name, $url {
  my $html = get-html($url);
  say "Generating documentation for: " ~ $doc-name;
  generate-doc($html, $doc-name);
}

sub generate-doc(Str $html, Str $doc-name) {
  my IO::Handle $pod-fh = "output/$doc-name.md".IO.open(:w);

  # Find all API documentation
  my @matches = $html.comb(
    / ( '<h2><a href="' .+? '" id="' (.+?) '">' .+? '</a></h2>')
      (.+?)
      '<p>The format of the' \s+ \w+ \s+ [ 'method' | 'function' ] \s+ 'is:</p>' \s+
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
    $doc   ~~ s:g| '<dl class="dl-horizontal">'                  ||;
    $doc   ~~ s:g| \n                                            ||;
    $doc   ~~ s:g| '</dl>'                                       ||;
    $doc   ~~ s:g| '*'                                           |\\*|;

    $proto = $proto.trim;

    my $p6-proto;
    if $proto ~~ /^(.+?)(\w+)\((.*?)\)$/ {
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
            warn sprintf("No match for %s at %s", $p, $id);
          }
          @p.push($p);
      }
      $params = @p.map( { "   " ~ $_ } ).join(",\n");

      my $suffix = "is native(&library)\nis export \{ * \};";
      if $return-type eq '' {
        $p6-proto = sprintf("sub %s\(\n%s\n)\n%s" , $sub-name, $params, $suffix);
      } else {
        $p6-proto = sprintf("sub %s\(\n%s\n)\nreturns %s\n%s", $sub-name, $params, $return-type, $suffix);
      }
    } else {
      warn "Failed at converting '$id', prototype: '$proto'";
    }

    # Write POD to file
    $pod-fh.say( sprintf("### %s\n- C:\n\n```\n%s\n```\n- Perl 6:\n\n```\n%s\n```\n\n%s\n", $id, $proto, $p6-proto, $doc) );
  }

  $pod-fh.close;
}

sub convert-c-to-perl6-type(Str $type is copy) {
  $type    ~~ s| 'const '            ||;
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

sub get-html(Str $url) {
  my $ua = HTTP::UserAgent.new;
  $ua.timeout = 5;

  my $response = $ua.get($url);
  die $response.status-line unless $response.is-success;

  return $response.content;
}
