#!/usr/bin/env perl6

# JNI shared library found at /usr/lib/jni/libopencv_java248.so
# JAR file found at /usr/share/OpenCV/java/opencv-248.jar

use v6;
use NativeCall;

say "I am going to connect to Java API :)";

constant LIB = '/usr/lib/jni/libopencv_java248.so';

sub get-number-of-cpus()
  is symbol('Java_org_opencv_core_Core_getNumberOfCPUs_10')
  returns uint32
  is native(LIB)
  { * }

  #my $img = imread("camelia-logo.png1", 1);
  #say $img;
  
  say get-number-of-cpus();
