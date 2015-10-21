#!/usr/bin/env perl6

use v6;
use File::Find;

# Find modules in current folder
say "Finding modules in your current folder";
my $modules = find(dir => '.', name => / '.pm6' $ /);

die "No modules found in current folder" if @$modules.elems == 0;

# Benchmark
say "Benchmarking perl6 compile time(s) for " ~ @$modules.elems ~ " modules";
my %timings;
my $max_col_width = 0;
for @$modules -> $module {
  $max_col_width = $module.chars if $max_col_width < $module.chars;
  my $cmd = "perl6 -Ilib -c $module";
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
  printf("%-$($max_col_width)s => %s\n", $module, %timings{$module});
}
