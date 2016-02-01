#!/usr/bin/env perl6

=begin pod

=head1 NAME

generate-pod.pl6 - A script to generate Perl 6 POD for a lib folder

=head1 SYNPOSIS

=begin code
$ ./generate-pod.pl6
=end code


=end pod

use v6;

use File::Find;

die "./lib folder is not found" unless "lib".IO ~~ :e;

my Str $out-folder = "output";
$out-folder.IO.mkdir;

my @list = find(dir => 'lib');
for @list -> $file {
  next unless $file ~~ / '.pm6' $ /;
  say $file;

  my Str $out-file-name = 
    $*SPEC.catfile($out-folder, $file.basename.subst(/ '.pm6' $ /, '.md'));
  #say ;
  my $cmd = "perl6 -Ilib --doc=Markdown {~$file} > $out-file-name";
  shell($cmd);
}
