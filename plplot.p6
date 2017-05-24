#!/usr/bin/env perl6

#
# To run:
# sudo apt install libplplot-dev
#
# LGPL
#
# Types:
# http://plplot.sourceforge.net/docbook-manual/plplot-html-5.12.0/c.html 
#

use v6;

use NativeCall;

sub library {
    return "libplplotd.so";
}

sub plsdev(Str)
    is symbol('c_plsdev')
    is native(&library) { * }

sub plsfnam(Str)
    is symbol('c_plsfnam')
    is native(&library) { * }

sub plparseopts(Pointer, Pointer, int32) returns int32
    is symbol('c_plparseopts')
    is native(&library) { * }

sub plinit 
    is symbol('c_plinit')
    is native(&library) { * }

sub plgver(CArray[int8] is rw)
    is symbol('c_plgver')
    is native(&library) { * }

sub plenv(num64, num64, num64, num64, int32, int32)
    is symbol('c_plenv')
    is native(&library) { * }

sub pllab(Str, Str, Str)
    is symbol('c_pllab')
    is native(&library) { * }

sub plline(int32, CArray[num64], CArray[num64])
    is symbol('c_plline')
    is native(&library) { * }

sub plend
    is symbol('c_plend')
    is native(&library) { * }

constant NSIZE = 101;

my $xmin = 0.0e0;
my $xmax = 1.0e0;
my $ymin = 0.0e0;
my $ymax = 100.0e0;

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

# Set Output device and filename
plsdev("png");
plsfnam("output.png");

# Initialize plplot
plinit;


# Create a labelled box to hold the plot.
plenv( $xmin, $xmax, $ymin, $ymax, Int(0), Int(0) );
pllab( "x", "y=100 x#u2#d", "Simple PLplot demo of a 2D line plot" );

# Plot the data that was prepared above.
plline( NSIZE, $x, $y );

# Close PLplot library
plend;
