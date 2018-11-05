#!/usr/bin/env perl6

use v6;

#
# A simple Tika server wrapper that provides the following methods:
# - meta
# - text
# - version
#
unit class TikaWrapper;

use HTTP::UserAgent;

has Str $.hostname = 'localhost';
has Int $.port     = 9998;
has Proc::Async $!tika-server-process;
has HTTP::UserAgent $!ua;

method BUILD {
	$!ua          = HTTP::UserAgent.new;
	$!ua.timeout  = 10;
}

method start {
	my $proc = Proc::Async.new('java', '-jar', 'tika-server-1.19.1.jar');
	
	$proc.stdout.tap(
		-> $v   { print "Output: $v" },
		quit => { say 'caught exception ' ~ .^name }
	);
	$proc.stderr.tap(
		-> $v { print "Error:  $v" }
	);

	say $proc;
	$!tika-server-process = $proc;

	say "Starting Tika Server...";
	my $promise = $proc.start;
	say "Started!";
	#TODO what to do with promise
}

method stop {
	say "Stopping Tika Server...";
	$!tika-server-process.kill if $!tika-server-process.defined;
	say "Stopped!";
}

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
	my $response = $!ua.get(self._url("version"));
    die $response.status-line unless $response.is-success;
	my $version = $response.content;
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
  "http://$!hostname:$!port/$endpoint"
}

method _truncate(Str $string, Int $length) {
  if $string.chars <= $length {
    $string
  } else {
    $string[0, $string.rindex(/\s/, $length - 3)].rtrim ~ '...'
  }
}

my $t = TikaWrapper.new;
$t.start;

# Handle Ctrl-C
signal(SIGINT).tap: {
	$t.stop if $t.defined;
	exit;
}

#TODO find if server is up or not...
sleep 2;

say "Found {$t.version} server";
#my @files = 'demo.docx', 'a.docx';
#for @files -> $filename {
#  my $content-type = $t.mime-type($filename);
#  say "Detected stream type $content-type";
#
#  my $metadata = $t.meta($filename, $content-type);
#  say "Metadata for $filename:\n{$t._truncate($metadata, 40)}";
#
#  my $text = $t.text($filename);
#  say "Found {$text.chars} plain text";
#
#  my $language = $t.language($text);
#  say "Detected language #{$language}";
#}

sleep 15;
LEAVE {
	$t.stop if $t.defined;
}
