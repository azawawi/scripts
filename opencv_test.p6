#!/usr/bin/env perl6

use NativeCall;

constant LIB = "opencv_perl6";

sub imread(Str $filename, int32 $flags)
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

my $img = imread("camelia-logo.png1", 1);
say $img;

namedWindow("Foo1", 1);

imshow("Foo1", $img);

waitKey(0);

#say cvSaveImage("output.png", $img, 0);

#cvNamedWindow("Foo2", 1);
#cvMoveWindow("Foo1", 0, 0);
#cvMoveWindow("Foo2", 200, 200);
#cvShowImage("Foo1", $img);
#cvShowImage("Foo2", $img);

#cvDestroyAllWindows();

