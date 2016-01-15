all: 
	g++ -Wall -shared -fPIC -o libopencv_perl6.so.1 opencv_test.cpp -lopencv_highgui -lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_ml -lopencv_video -lopencv_features2d -lopencv_calib3d -lopencv_objdetect -lopencv_contrib -lopencv_legacy -lopencv_stitching
