#!/usr/bin/env perl6

#
# How to run it:
# $ make && LD_LIBRARY_PATH=. ./opencv_test.p6
#

use NativeCall;

constant LIB = "opencv_perl6";

sub imread(Str $filename, int32 $flags)
  returns Pointer
  is native(LIB, v1)
  { * }

sub mat_rows(Pointer $img)
  returns uint32
  is native(LIB, v1)
  { * }

sub mat_cols(Pointer $img)
  returns uint32
  is native(LIB, v1)
  { * }

sub mat_data(Pointer $img)
  returns Pointer
  is native(LIB, v1)
  { * }

sub mat_clone(Pointer $img)
  returns Pointer
  is native(LIB, v1)
  { * }

sub imwrite(Str $filename, Pointer $img)
  returns uint32 
  is native(LIB, v1)
  { * }

# void imshow(const string& winname, InputArray mat)
sub imshow(Str $filename, Pointer $mat)
  is native(LIB, v1)
  { * }

# void namedWindow(const string& winname, int flags=WINDOW_AUTOSIZE )
sub namedWindow(Str $winname, uint32 $flags)
  is native(LIB, v1)
  { * }

# int waitKey(int delay=0)¶
sub waitKey(uint32 $delay)
  returns int32
  is native(LIB, v1)
  { * }

sub fastNlMeansDenoisingColored(
    Pointer $src,
    Pointer $dst,
    uint32 $h,
    uint32 $hColor,
    uint32 $templateWindowSize,
    uint32 $searchWindowSize
  )
  returns int32
  is native(LIB, v1)
  { * }

#my $filename = "camelia-logo.png";
my $filename = "aero1.jpg";
my $img = imread($filename, 1);
my $data = mat_data($img);
die "Could not read $filename" unless $data;
say "Matrix cols = " ~ mat_cols($img);
say "Matrix rows = " ~ mat_rows($img);
my $denoised_img = mat_clone($img);
fastNlMeansDenoisingColored($img, $denoised_img, 10, 10, 7, 21);
namedWindow("Original", 1);
imshow("Original", $img);
namedWindow("Denoised", 1);
imshow("Denoised", $denoised_img);
waitKey(0);
