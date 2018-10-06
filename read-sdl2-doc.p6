
use v6;

for "/usr/include/SDL2".IO.dir -> $c-header {

#  next if $c-header ne "/usr/include/SDL2/SDL_version.h";

  # Read c header file
  my $content = $c-header.IO.slurp;

  # Match all documentation / externs
  my @matches = $content ~~ m:global/ 
    '/**' (.+?) '*/' \s                              # Documentation
    'extern' .+? \s ( 'SDL_' \w+) '(' .+? ')' ';' /; # SDL C-function signature
    
  # Loop through all matches
  for @matches {
    # Tidy documentation. Remove leading '* '
    my $doc = (~$_[0]).lines.map( { $_.subst( '*', '').trim } ).join("\n");

    # Handle documentation special case
    if $doc.lines.elems > 10 {
      #TODO fix greedy Perl 6 match
      $doc = "..."
    }

    # Build a hash record
    my %record = %(
      doc  => $doc,
      name => ~$_[1]
    );

    # Print for debugging purposes
    say %record;
    say "--" x 40;
  }

}
