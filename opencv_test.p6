#!/usr/bin/env perl6

use NativeCall;

class cvMat is repr('CStruct') {
#  int $type;
#  int $step;
#  Pointer $refcount;
  
#  class MyUnion is repr('CUnion') {
#    has int32 $.flags32;
#    has int64 $.flags64;
#  }
}

# C: CvMat* cvLoadImageM(const char* filename, int iscolor=CV_LOAD_IMAGE_COLOR )
sub cvLoadImage(Str $filename, uint32 $flags)
  returns Pointer
  is native('opencv_highgui', v2.4)
  { * }

# C: int cvSaveImage(const char* filename, const CvArr* image, const int* params=0 )¶
sub cvSaveImage(Str $filename, Pointer $image, int $params)#, Int $flags=0)
  returns int
  is native('opencv_highgui', v2.4)
  { * }
  
# C: void cvDestroyAllWindows()
sub cvDestroyAllWindows()
  is native('opencv_highgui', v2.4)
  { * }

#C: void cvShowImage(const char* name, const CvArr* image)
sub cvShowImage(Str $name, Pointer $image)
  is native('opencv_highgui', v2.4)
  { * }

#C: int cvNamedWindow(const char* name, int flags=CV_WINDOW_AUTOSIZE )¶
sub cvNamedWindow(Str $name, uint32 $flags)
  is native('opencv_highgui', v2.4)
  { * }

# C: int cvWaitKey(int delay=0 )
sub cvWaitKey(uint32 $delay)
  returns int32
  is native('opencv_highgui', v2.4)
  { * }

sub cvMoveWindow(Str $name, int $x, int $y)
  is native('opencv_highgui', v2.4)
  { * }
  
#C++: Mat imread(const string& filename, int flags=1 )¶
sub cv_imread(Str $filename, uint32 $flags)
  returns Pointer
  is native('opencv_highgui', v2.4)
  { * }

my $img = cvLoadImage("camelia-logo.png", 1);
#my $img = cv_imread("camelia-logo.png", 1);
say $img;

say cvSaveImage("output.png", $img, 0);
cvNamedWindow("Foo", 1);
cvShowImage("Foo", $img);
cvShowImage("Foo 2", $img);
cvMoveWindow("Foo", 0, 0);
cvWaitKey(0);
#sleep 5;
#sleep 1;
#cvDestroyAllWindows();

