
#include <stdio.h>

#include <opencv2/opencv.hpp>

using namespace std;

extern "C" {

  void* imread(char *filename, int flags ) {
    //void* mat = cv::imread(filename, flags);
    //return &mat;
    return NULL;
  }

  void imshow(char *winname, void* mat) {
    printf("imshow!\n");
    fflush(stdout);
    cv::imshow(winname, (cv::InputArray)mat);
  }

  void namedWindow(char *winname, int flags ) {
    printf("namedWindow\n");
    fflush(stdout);
    cv::namedWindow(winname, flags);
  }
}

