
#include <stdio.h>

#include <opencv2/opencv.hpp>

using namespace std;

extern "C" {

  void* imread(char *filename, int flags ) {
    static cv::Mat mat = cv::imread(filename, flags);
    return (void *)&mat;
  }

  void imshow(char *winname, char* mat) {
    cv::imshow(winname, (cv::InputArray)*mat);
  }

  void namedWindow(char *winname, int flags ) {
    cv::namedWindow(winname, flags);
  }

  void waitKey(int delay) {
    cv::waitKey(delay);
  }

}

