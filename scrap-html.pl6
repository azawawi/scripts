#!/usr/bin/env perl6

use v6;
use HTTP::UserAgent;

"output".IO.mkdir;

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
  my IO::Handle $markdown-fh = "output/$doc-name.md".IO.open(:w);
  my IO::Handle $pod-fh = "output/$doc-name.pm6".IO.open(:w);

  # Find all API documentation
  my @matches = $html.comb(
    / ( '<h2><a href="' .+? '" id="' (.+?) '">' .+? '</a></h2>')
      (.+?)
      '<p>The format of the' \s+ \w+ \s+ [ 'method' | 'function' ] \s+ 'is:</p>' \s+
      '<pre class="text">' (.+?) '</pre>' (.+?)/, :match );

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

    my Str @p6-protos;
    for $proto.comb( / (.+?) (\w+) \( (.*?) \) /, :match ) -> $proto-match {
      my Str $return-type = to-perl6-type(~$proto-match[0]);
      my Str $sub-name    = ~$proto-match[1];
      my Str $params      = ~$proto-match[2];

      my @p;
      if $params eq 'void' {
        $params = '';
      } else {
        for $params.split(',') -> $param {
            my Str $p = $param.chomp;
            if $p ~~ /^(.+?)(\w+)$/ {
              my Str $type = ~$0.trim;
              my Str $name = ~$1.trim;

              warn "Failed at converting '$type' at '$id'" if $type eq to-perl6-type($type);
              $type = to-perl6-type($type);

              $p = sprintf(q{%s $%s}, $type, $name);
            } else {
              warn sprintf("No match for %s at %s", $p, $id);
            }
            @p.push($p);
        }
        $params = @p.map( { "   " ~ $_ } ).join(",\n");
      }

      my $suffix = "is native(&library)\nis export \{ * \};";
      $params = sprintf("\n%s\n", $params) if $params ne '';
      if $return-type eq '' {
        @p6-protos.push( sprintf("sub %s\(%s)\n%s" , $sub-name, $params, $suffix) );
      } else {
        @p6-protos.push( sprintf("sub %s\(%s)\nreturns %s\n%s", $sub-name, $params, $return-type, $suffix) );
      }
    }

    # Write POD to file
    my $p6-proto = @p6-protos.join("\n\n");
    $markdown-fh.say(
      sprintf(
        "### %s\n- C:\n\n```C\n%s\n```\n- Perl 6:\n\n```Perl6\n%s\n```\n\n%s\n",
        $id, $proto, $p6-proto, $doc
      )
    );
    $pod-fh.say(
      sprintf(
        "=begin pod\n=head1 %s\n\n%s\n\n%s\n=end pod\n%s\n\n",
        $id, to-pod-codeblock($proto), $doc, $p6-proto
      )
    );
  }

  $markdown-fh.close;
  $pod-fh.close;
}

sub to-pod-codeblock(Str $code) {
  return $code.lines.map( { " " x 4 ~ $_ } ).join("\n");
}

sub to-perl6-type(Str $type is copy) {
  $type    ~~ s| 'const '            ||;
  $type    ~~ s| 'void *'            |Pointer[void]|;
  $type    ~~ s| 'MagickWand *'      |Pointer|;
  $type    ~~ s| 'DrawWand *'        |Pointer|;
  $type    ~~ s| 'DrawingWand *'     |Pointer|;
  $type    ~~ s| 'PixelWand *'       |Pointer|;
  $type    ~~ s| 'Image *'           |Pointer|;
  $type    ~~ s| 'ExceptionType *'   |Pointer|;
  $type    ~~ s| 'MagickBooleanType' |uint32|;
  $type    ~~ s| 'double *'          |CArray[num64]|;
  $type    ~~ s| 'double'            |num64|;
  $type    ~~ s| 'char *'            |Str|;
  $type    ~~ s| 'ssize_t'           |uint32|;
  $type    ~~ s| 'size_t *'          |Pointer[size_t]|;
  $type    ~~ s| 'size_t'            |int32|;
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
