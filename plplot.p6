#!/usr/bin/env perl6

#
# To run:
# sudo apt install libplplot-dev
#
# LGPL
#

use v6;

use NativeCall;

sub library {
    return "libplplotd.so";
}

sub plinit 
    is symbol('c_plinit')
    is native(&library) { * }

sub plgver(CArray[int8] is rw)
    is symbol('c_plgver')
    is native(&library) { * }

sub plenv(num64, num64, num64, num64, int32, int32)
    is native(&library) { * }

sub pllab(Str, Str, Str)
    is native(&library) { * }

sub plline(int32, CArray[num64], CArray[num64])
    is native(&library) { * }

sub plend
    is native(&library) { * }

constant NSIZE = 101;

my $xmin = 0.0;
my $xmax = 1.0;
my $ymin = 0.0;
my $ymax = 100.0;

#my $ver = CArray[int8];
#plgver( $ver );
#say sprintf( "PLplot library version: %s\n", $ver );

my $x = CArray[num64].new;
my $y = CArray[num64].new;

# Prepare data to be plotted.
for 0..NSIZE -> $i {
    $x[$i] = Num($i) / ( NSIZE - 1 );
    $y[$i] = Num($ymax * $x[$i] * $x[$i]);
}

=begin todo
    // Parse and process command line arguments
    plparseopts( &argc, argv, PL_PARSE_FULL );
=end todo


# Initialize plplot
plinit;

# Create a labelled box to hold the plot.
plenv( $xmin, $xmax, $ymin, $ymax, 0, 0 );
pllab( "x", "y=100 x#u2#d", "Simple PLplot demo of a 2D line plot" );

# Plot the data that was prepared above.
plline( NSIZE, $x, $y );

# Close PLplot library
plend;
