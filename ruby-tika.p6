#!/usr/bin/env perl6

use v6;

# use 'net/http';
# use 'rest-client'
# use 'mime-types';

#
# A simple Tika server wrapper that provides the following methods:
# - meta
# - text
# - version
#
unit class TikaWrapper;

has Str $.hostname = 'localhost';
has Int $.port     = 9998;

method rmeta {
  # TODO: rmeta
  ...
}

method unpack {
  ...
}

method parsers {
  ...
}

method detectors {
  ...
}

method version {
#    uri = URI("http://#{@hostname}:#{@port}/version")
#    Net::HTTP.get(uri)
  ...
}

method meta(Str $filename, $content-type = Nil) {
#    content_type ||= MIME::Types.type_for(filename).first.content_type
#    res = RestClient::Resource.new(_url('meta'))
#    res.put File.read(filename), content_type: content_type
}

method text(Str $filename, $content-type = Nil) {
#    content_type ||= MIME::Types.type_for(filename).first.content_type
#    res = RestClient::Resource.new(_url('tika'))
#    res.put File.read(filename), content_type: content_type
}

method mime-type(Str $filename) {
#    res = RestClient::Resource.new(_url('detect/stream'))
#    res.put File.read(filename),
#           'Content-Disposition' => "attachment; filename=#{filename}"
}

method language(Str $string) {
#  res = RestClient::Resource.new(_url('language/string'))
#  res.put string
}

method _url(Str $endpoint) {
  "http://$.hostname:$.port/$.endpoint"
}

method _truncate(Str $string, Int $length) {
  if $string.chars <= $length {
    $string
  } else {
    $string[0, $string.rindex(/\s/, $length - 3)].rtrim ~ '...'
  }
}


my $t = TikaWrapper.new;
say "Found {$t.version} server";
my @files = 'demo.docx', 'a.docx';
for @files -> $filename {
  my $content-type = $t.mime-type($filename);
  say "Detected stream type $content-type";

  my $metadata = $t.meta($filename, $content-type);
  say "Metadata for $filename:\n{$t._truncate($metadata, 40)}";

  my $text = $t.text($filename);
  say "Found {$text.chars} plain text";

  my $language = $t.language($text);
  say "Detected language #{$language}";
}
