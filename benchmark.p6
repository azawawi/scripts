#!/usr/bin/env perl6

use v6;
use File::Find;

sub MAIN(Str $folder) {
  # Find modules in current folder
  say "Finding modules in in $folder";
  my $modules = find(dir => $folder, name => / ('.pm6'|'pm') $ /);

  die "No modules found in current folder" if @$modules.elems == 0;

  # Benchmark
  say "Benchmarking perl6 compile time(s) for " ~ @$modules.elems ~ " modules";
  my %timings;
  my $max_col_width = 0;
  for @$modules -> $module {
    $max_col_width = $module.chars if $max_col_width < $module.chars;
    my $cmd = "perl6 -I$folder/lib -c $module";
    my $t0 = now;
    my $o = qqx/$cmd/;
    my $diff = now - $t0;
    %timings{~$module} = $diff;
    printf( " '%s' took %.2f seconds\n", $cmd, $diff );
  }

  # Sort module compile timings descending and print them out
  my @keys = %timings.keys;
  my @sorted-modules = @keys.sort( { %timings{$^a} <=> %timings{$^b} } ).reverse;
  for @sorted-modules -> $module {
    printf("%-$($max_col_width)s => %.2f\n", $module, %timings{$module});
  }
}