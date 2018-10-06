
use v6;

for "/usr/include/SDL2".IO.dir -> $c-header {

#  next if $c-header ne "/usr/include/SDL2/SDL_version.h";

  my $content = $c-header.IO.slurp;
    my @matches = $content ~~ m:global/ '/**' (.+?) '*/' \s 'extern' .+? \s ( 'SDL_' \w+) '(' .+? ')' ';' /;
  my @records;
  for @matches {
    my $doc = (~$_[0]).lines.map( { $_.subst( '*', '').trim } ).join("\n");
    if $doc.lines.elems > 10 {
      $doc = "..." #TODO fix greedy Perl 6 match
    }
    my %record = %(
      doc  => $doc,
      name => ~$_[1]
    );
    push @records, %record
  }
  
  for @records -> %record {
    say %record;
    say "--" x 40;
  }

}
