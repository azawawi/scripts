#!/usr/bin/env perl6

use NativeCall;

constant LIB = "opencv_perl6";

sub imread(Str $filename, int32 $flags)
  returns Pointer
  is native(LIB)
  { * }

# void imshow(const string& winname, InputArray mat)
sub imshow(Str $filename, Pointer $mat)
  is native(LIB)
  { * }

# void namedWindow(const string& winname, int flags=WINDOW_AUTOSIZE )
sub namedWindow(Str $winname, uint32 $flags)
  is native(LIB)
  { * }

# C: int cvWaitKey(int delay=0 )
sub cvWaitKey(uint32 $delay)
  returns int32
  is native("")
  { * }

my $img = imread("camelia-logo.png", 1);
say $img;

#namedWindow("Foo1", 1);
#imshow("Foo1", $img);

#say cvSaveImage("output.png", $img, 0);

#cvNamedWindow("Foo2", 1);
#cvMoveWindow("Foo1", 0, 0);
#cvMoveWindow("Foo2", 200, 200);
#cvShowImage("Foo1", $img);
#cvShowImage("Foo2", $img);
#cvWaitKey(0);
#cvDestroyAllWindows();

