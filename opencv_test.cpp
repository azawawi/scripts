
/*
$ g++ -lopencv_highgui opencv_test.cpp -lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_ml -lopencv_video -lopencv_features2d -lopencv_calib3d -lopencv_objdetect -lopencv_contrib -lopencv_legacy -lopencv_stitching -o opencv_test
$ ./opencv_test

*/
#include <iostream>
#include <opencv/cv.h>
#include <opencv/highgui.h>

using namespace std;
using namespace cv;

int main() {
  cout << "Hello world\n";
  
  Mat img = imread("camelia-logo.png", CV_LOAD_IMAGE_UNCHANGED);
  imshow("Foo", img);
  waitKey(0);
}