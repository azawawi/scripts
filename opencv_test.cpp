
/*
$ g++ -lopencv_highgui test.cpp -lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_ml -lopencv_video -lopencv_features2d -lopencv_calib3d -lopencv_objdetect -lopencv_contrib -lopencv_legacy -lopencv_stitching
$ ./a.out

*/
#include <iostream>
#include <opencv/cv.h>
#include <opencv/highgui.h>

int main() {
  std::cout << "Hello world\n";
  
  cv::Mat img = cv::imread("messi5.jpg", CV_LOAD_IMAGE_UNCHANGED);
  imshow("Foo", img);
  cv::waitKey(0);
}