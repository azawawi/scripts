#!/usr/bin/env perl6

use NativeCall;

# C: CvMat* cvLoadImageM(const char* filename, int iscolor=CV_LOAD_IMAGE_COLOR )
sub cvLoadImage(Str $filename, uint32 $flags)
  returns Pointer
  is native('opencv_highgui', v2.4)
  { * }

# C: int cvSaveImage(const char* filename, const CvArr* image, const int* params=0 )¶
sub cvSaveImage(Str $filename, Pointer $image, uint32 $params)#, Int $flags=0)
  returns uint32
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

sub cvMoveWindow(Str $name, uint32 $x, uint32 $y)
  is native('opencv_highgui', v2.4)
  { * }
  
class cv is repr<CPPStruct> {

  constant LIB    = "opencv_highgui.so.2.4";
  constant CPP-NS = "cv";

  multi sub trait_mod:<is>(Routine $r, Str :$cpp-symbol!) {
#    my $name = CPP-NS ~ '::' ~ $r.package.^shortname ~ '::' ~ $cpp-symbol;
#    say "name: '$name'";
  my $name = CPP-NS ~ '::' ~ $cpp-symbol;
    trait_mod:<is>($r, symbol => $name);
  }

  # cv::imread(std::string const&, int)
  # _ZN2cv6imreadERKSsi
  
  # _ZN2cv6imreadEPcj
  # _ZN2cv6imreadEPc6uint32
  
  # Mat imread(const string& filename, int flags=1 )
  method imread(Str $filename, int32 $flags)
    returns Pointer
    is cpp-symbol('imread')
    is native(LIB)
    { * }
    
  # void imshow(const string& winname, InputArray mat)
  method imshow(Str $filename, Pointer $mat)
    is cpp-symbol('imshow')  
    is native(LIB)
    { * }

  # void namedWindow(const string& winname, int flags=WINDOW_AUTOSIZE )
  method namedWindow(Str $winname, uint32 $flags)
    is cpp-symbol('namedWindow')
    is native(LIB)
    { * }
}

my $img = cv.imread("camelia-logo.png", 1);
say $img;

#cv.namedWindow("Foo1", 1);
#cv.imshow("Foo1", $img);

#say cvSaveImage("output.png", $img, 0);

#cvNamedWindow("Foo2", 1);
#cvMoveWindow("Foo1", 0, 0);
#cvMoveWindow("Foo2", 200, 200);
#cvShowImage("Foo1", $img);
#cvShowImage("Foo2", $img);
cvWaitKey(0);
#cvDestroyAllWindows();

