

use v6;

use File::Find;

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
