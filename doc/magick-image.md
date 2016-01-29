### GetImageFromMagickWand
- C:

```C
Image *GetImageFromMagickWand(const MagickWand *wand)
```
- Perl 6:

```Perl6
sub GetImageFromMagickWand(
   MagickWandPointer $wand
)
returns Image *
is native(&library)
is export { * };
```

GetImageFromMagickWand() returns the current image from the magick wand.- wand: the magick wand. 

### MagickAdaptiveBlurImage
- C:

```C
MagickBooleanType MagickAdaptiveBlurImage(MagickWand *wand,
  const double radius,const double sigma)
MagickBooleanType MagickAdaptiveBlurImageChannel(MagickWand *wand,
  const ChannelType channel,const double radius,const double sigma)
```
- Perl 6:

```Perl6
sub MagickAdaptiveBlurImage(
   MagickWandPointer $wand,
   double $radius,
   double $sigma
)
returns uint32 
is native(&library)
is export { * };

sub MagickAdaptiveBlurImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   double $radius,
   double $sigma
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickAdaptiveBlurImage() adaptively blurs the image by blurring less intensely near image edges and more intensely far from edges. We blur the image with a Gaussian operator of the given radius and standard deviation (sigma).  For reasonable results, radius should be larger than sigma.  Use a radius of 0 and MagickAdaptiveBlurImage() selects a suitable radius for you.- wand: the magick wand. - channel: the image channel(s). - radius: the radius of the Gaussian, in pixels, not counting the center pixel. - sigma: the standard deviation of the Gaussian, in pixels. 

### MagickAdaptiveResizeImage
- C:

```C
MagickBooleanType MagickAdaptiveSharpenImage(MagickWand *wand,
  const double radius,const double sigma)
MagickBooleanType MagickAdaptiveSharpenImageChannel(MagickWand *wand,
  const ChannelType channel,const double radius,const double sigma)
```
- Perl 6:

```Perl6
sub MagickAdaptiveSharpenImage(
   MagickWandPointer $wand,
   double $radius,
   double $sigma
)
returns uint32 
is native(&library)
is export { * };

sub MagickAdaptiveSharpenImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   double $radius,
   double $sigma
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickAdaptiveResizeImage() adaptively resize image with data dependent triangulation.MagickBooleanType MagickAdaptiveResizeImage(MagickWand \*wand, const size_t columns,const size_t rows)- wand: the magick wand. - columns: the number of columns in the scaled image. - rows: the number of rows in the scaled image. <h2><a href="http://www.imagemagick.org/api/MagickWand/magick-image_8c.html" id="MagickAdaptiveSharpenImage">MagickAdaptiveSharpenImage</a></h2>MagickAdaptiveSharpenImage() adaptively sharpens the image by sharpening more intensely near image edges and less intensely far from edges. We sharpen the image with a Gaussian operator of the given radius and standard deviation (sigma).  For reasonable results, radius should be larger than sigma.  Use a radius of 0 and MagickAdaptiveSharpenImage() selects a suitable radius for you.- wand: the magick wand. - channel: the image channel(s). - radius: the radius of the Gaussian, in pixels, not counting the center pixel. - sigma: the standard deviation of the Gaussian, in pixels. 

### MagickAdaptiveThresholdImage
- C:

```C
MagickBooleanType MagickAdaptiveThresholdImage(MagickWand *wand,
  const size_t width,const size_t height,const ssize_t offset)
```
- Perl 6:

```Perl6
sub MagickAdaptiveThresholdImage(
   MagickWandPointer $wand,
   int32 $width,
   int32 $height,
   sint32 $offset
)
returns uint32 
is native(&library)
is export { * };
```

MagickAdaptiveThresholdImage() selects an individual threshold for each pixel based on the range of intensity values in its local neighborhood.  This allows for thresholding of an image whose global intensity histogram doesn't contain distinctive peaks.- wand: the magick wand. - width: the width of the local neighborhood. - height: the height of the local neighborhood. - offset: the mean offset. 

### MagickAddImage
- C:

```C
MagickBooleanType MagickAddImage(MagickWand *wand,
  const MagickWand *add_wand)
```
- Perl 6:

```Perl6
sub MagickAddImage(
   MagickWandPointer $wand,
   MagickWandPointer $add_wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickAddImage() adds a clone of the images from the second wand and inserts them into the first wand.Use MagickSetLastIterator(), to append new images into an existing wand, current image will be set to last image so later adds with also be appened to end of wand.Use MagickSetFirstIterator() to prepend new images into wand, any more images added will also be prepended before other images in the wand. However the order of a list of new images will not change.Otherwise the new images will be inserted just after the current image, and any later image will also be added after this current image but before the previously added images.  Caution is advised when multiple image adds are inserted into the middle of the wand image list.- wand: the magick wand. - add_wand: A wand that contains the image list to be added 

### MagickAddNoiseImage
- C:

```C
MagickBooleanType MagickAddNoiseImage(MagickWand *wand,
  const NoiseType noise_type)
MagickBooleanType MagickAddNoiseImageChannel(MagickWand *wand,
  const ChannelType channel,const NoiseType noise_type)
```
- Perl 6:

```Perl6
sub MagickAddNoiseImage(
   MagickWandPointer $wand,
   NoiseType $noise_type
)
returns uint32 
is native(&library)
is export { * };

sub MagickAddNoiseImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   NoiseType $noise_type
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickAddNoiseImage() adds random noise to the image.- wand: the magick wand. - channel: the image channel(s). - noise_type:  The type of noise: Uniform, Gaussian, Multiplicative, Impulse, Laplacian, or Poisson. 

### MagickAffineTransformImage
- C:

```C
MagickBooleanType MagickAffineTransformImage(MagickWand *wand,
  const DrawingWand *drawing_wand)
```
- Perl 6:

```Perl6
sub MagickAffineTransformImage(
   MagickWandPointer $wand,
   DrawingWandPointer $drawing_wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickAffineTransformImage() transforms an image as dictated by the affine matrix of the drawing wand.- wand: the magick wand. - drawing_wand: the draw wand. 

### MagickAnnotateImage
- C:

```C
MagickBooleanType MagickAnnotateImage(MagickWand *wand,
  const DrawingWand *drawing_wand,const double x,const double y,
  const double angle,const char *text)
```
- Perl 6:

```Perl6
sub MagickAnnotateImage(
   MagickWandPointer $wand,
   DrawingWandPointer $drawing_wand,
   double $x,
   double $y,
   double $angle,
   Str $text
)
returns uint32 
is native(&library)
is export { * };
```

MagickAnnotateImage() annotates an image with text.- wand: the magick wand. - drawing_wand: the draw wand. - x: x ordinate to left of text - y: y ordinate to text baseline - angle: rotate text relative to this angle. - text: text to draw 

### MagickAnimateImages
- C:

```C
MagickBooleanType MagickAnimateImages(MagickWand *wand,
  const char *server_name)
```
- Perl 6:

```Perl6
sub MagickAnimateImages(
   MagickWandPointer $wand,
   Str $server_name
)
returns uint32 
is native(&library)
is export { * };
```

MagickAnimateImages() animates an image or image sequence.- wand: the magick wand. - server_name: the X server name. 

### MagickAppendImages
- C:

```C
MagickWand *MagickAppendImages(MagickWand *wand,
  const MagickBooleanType stack)
```
- Perl 6:

```Perl6
sub MagickAppendImages(
   MagickWandPointer $wand,
   uint32 $stack
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickAppendImages() append the images in a wand from the current image onwards, creating a new wand with the single image result.  This is affected by the gravity and background settings of the first image.Typically you would call either MagickResetIterator() or MagickSetFirstImage() before calling this function to ensure that all the images in the wand's image list will be appended together.- wand: the magick wand. - stack: By default, images are stacked left-to-right. Set stack to MagickTrue to stack them top-to-bottom. 

### MagickAutoGammaImage
- C:

```C
MagickBooleanType MagickAutoGammaImage(MagickWand *wand)
MagickBooleanType MagickAutoGammaImageChannel(MagickWand *wand,
  const ChannelType channel)
```
- Perl 6:

```Perl6
sub MagickAutoGammaImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };

sub MagickAutoGammaImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickAutoGammaImage() extracts the 'mean' from the image and adjust the image to try make set its gamma appropriatally.- wand: the magick wand. - channel: the image channel(s). 

### MagickAutoLevelImage
- C:

```C
MagickBooleanType MagickAutoLevelImage(MagickWand *wand)
MagickBooleanType MagickAutoLevelImageChannel(MagickWand *wand,
  const ChannelType channel)
```
- Perl 6:

```Perl6
sub MagickAutoLevelImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };

sub MagickAutoLevelImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickAutoLevelImage() adjusts the levels of a particular image channel by scaling the minimum and maximum values to the full quantum range.- wand: the magick wand. - channel: the image channel(s). 

### MagickAutoOrientImage
- C:

```C
MagickBooleanType MagickAutoOrientImage(MagickWand *image)
```
- Perl 6:

```Perl6
sub MagickAutoOrientImage(
   MagickWandPointer $image
)
returns uint32 
is native(&library)
is export { * };
```

MagickAutoOrientImage() adjusts an image so that its orientation is suitable $  for viewing (i.e. top-left orientation).- wand: the magick wand. 

### MagickBlackThresholdImage
- C:

```C
MagickBooleanType MagickBlackThresholdImage(MagickWand *wand,
  const PixelWand *threshold)
```
- Perl 6:

```Perl6
sub MagickBlackThresholdImage(
   MagickWandPointer $wand,
   PixelWandPointer $threshold
)
returns uint32 
is native(&library)
is export { * };
```

MagickBlackThresholdImage() is like MagickThresholdImage() but  forces all pixels below the threshold into black while leaving all pixels above the threshold unchanged.- wand: the magick wand. - threshold: the pixel wand. 

### MagickBlueShiftImage
- C:

```C
MagickBooleanType MagickBlueShiftImage(MagickWand *wand,
  const double factor)
```
- Perl 6:

```Perl6
sub MagickBlueShiftImage(
   MagickWandPointer $wand,
   double $factor
)
returns uint32 
is native(&library)
is export { * };
```

MagickBlueShiftImage() mutes the colors of the image to simulate a scene at nighttime in the moonlight.- wand: the magick wand. - factor: the blue shift factor (default 1.5) 

### MagickBlurImage
- C:

```C
MagickBooleanType MagickBlurImage(MagickWand *wand,const double radius,
  const double sigma)
MagickBooleanType MagickBlurImageChannel(MagickWand *wand,
  const ChannelType channel,const double radius,const double sigma)
```
- Perl 6:

```Perl6
sub MagickBlurImage(
   MagickWandPointer $wand,
   double $radius,
   double $sigma
)
returns uint32 
is native(&library)
is export { * };

sub MagickBlurImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   double $radius,
   double $sigma
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickBlurImage() blurs an image.  We convolve the image with a gaussian operator of the given radius and standard deviation (sigma).  For reasonable results, the radius should be larger than sigma.  Use a radius of 0 and BlurImage() selects a suitable radius for you.- wand: the magick wand. - channel: the image channel(s). - radius: the radius of the , in pixels, not counting the center pixel. - sigma: the standard deviation of the , in pixels. 

### MagickBorderImage
- C:

```C
MagickBooleanType MagickBorderImage(MagickWand *wand,
  const PixelWand *bordercolor,const size_t width,
  const size_t height)
```
- Perl 6:

```Perl6
sub MagickBorderImage(
   MagickWandPointer $wand,
   PixelWandPointer $bordercolor,
   int32 $width,
   int32 $height
)
returns uint32 
is native(&library)
is export { * };
```

MagickBorderImage() surrounds the image with a border of the color defined by the bordercolor pixel wand.- wand: the magick wand. - bordercolor: the border color pixel wand. - width: the border width. - height: the border height. 

### Use_MagickBrightnessContrastImage
- C:

```C
MagickBooleanType MagickBrightnessContrastImage(MagickWand *wand,
  const double brightness,const double contrast)
MagickBooleanType MagickBrightnessContrastImageChannel(MagickWand *wand,
  const ChannelType channel,const double brightness,
  const double contrast)
```
- Perl 6:

```Perl6
sub MagickBrightnessContrastImage(
   MagickWandPointer $wand,
   double $brightness,
   double $contrast
)
returns uint32 
is native(&library)
is export { * };

sub MagickBrightnessContrastImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   double $brightness,
   double $contrast
)
returns 
uint32 
is native(&library)
is export { * };
```

Use MagickBrightnessContrastImage() to change the brightness and/or contrast of an image.  It converts the brightness and contrast parameters into slope and intercept and calls a polynomical function to apply to the image.- wand: the magick wand. - channel: the image channel(s). - brightness: the brightness percent (-100 .. 100). - contrast: the contrast percent (-100 .. 100). 

### MagickCharcoalImage
- C:

```C
MagickBooleanType MagickCharcoalImage(MagickWand *wand,
  const double radius,const double sigma)
```
- Perl 6:

```Perl6
sub MagickCharcoalImage(
   MagickWandPointer $wand,
   double $radius,
   double $sigma
)
returns uint32 
is native(&library)
is export { * };
```

MagickCharcoalImage() simulates a charcoal drawing.- wand: the magick wand. - radius: the radius of the Gaussian, in pixels, not counting the center pixel. - sigma: the standard deviation of the Gaussian, in pixels. 

### MagickChopImage
- C:

```C
MagickBooleanType MagickChopImage(MagickWand *wand,const size_t width,
  const size_t height,const ssize_t x,const ssize_t y)
```
- Perl 6:

```Perl6
sub MagickChopImage(
   MagickWandPointer $wand,
   int32 $width,
   int32 $height,
   sint32 $x,
   sint32 $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickChopImage() removes a region of an image and collapses the image to occupy the removed portion- wand: the magick wand. - width: the region width. - height: the region height. - x: the region x offset. - y: the region y offset. 

### MagickClampImage
- C:

```C
MagickBooleanType MagickClampImage(MagickWand *wand)
MagickBooleanType MagickClampImageChannel(MagickWand *wand,
  const ChannelType channel)
```
- Perl 6:

```Perl6
sub MagickClampImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };

sub MagickClampImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickClampImage() restricts the color range from 0 to the quantum depth.- wand: the magick wand. - channel: the channel. 

### MagickClipImage
- C:

```C
MagickBooleanType MagickClipImage(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickClipImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickClipImage() clips along the first path from the 8BIM profile, if present.- wand: the magick wand. 

### MagickClipImagePath
- C:

```C
MagickBooleanType MagickClipImagePath(MagickWand *wand,
  const char *pathname,const MagickBooleanType inside)
```
- Perl 6:

```Perl6
sub MagickClipImagePath(
   MagickWandPointer $wand,
   Str $pathname,
   uint32 $inside
)
returns uint32 
is native(&library)
is export { * };
```

MagickClipImagePath() clips along the named paths from the 8BIM profile, if present. Later operations take effect inside the path.  Id may be a number if preceded with #, to work on a numbered path, e.g., "#1" to use the first path.- wand: the magick wand. - pathname: name of clipping path resource. If name is preceded by #, use clipping path numbered by name. - inside: if non-zero, later operations take effect inside clipping path. Otherwise later operations take effect outside clipping path. 

### MagickClutImage
- C:

```C
MagickBooleanType MagickClutImage(MagickWand *wand,
  const MagickWand *clut_wand)
MagickBooleanType MagickClutImageChannel(MagickWand *wand,
  const ChannelType channel,const MagickWand *clut_wand)
```
- Perl 6:

```Perl6
sub MagickClutImage(
   MagickWandPointer $wand,
   MagickWandPointer $clut_wand
)
returns uint32 
is native(&library)
is export { * };

sub MagickClutImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   MagickWandPointer $clut_wand
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickClutImage() replaces colors in the image from a color lookup table.- wand: the magick wand. - clut_image: the clut image. 

### MagickCoalesceImages
- C:

```C
MagickWand *MagickCoalesceImages(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickCoalesceImages(
   MagickWandPointer $wand
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickCoalesceImages() composites a set of images while respecting any page offsets and disposal methods.  GIF, MIFF, and MNG animation sequences typically start with an image background and each subsequent image varies in size and offset.  MagickCoalesceImages() returns a new sequence where each image in the sequence is the same size as the first and composited with the next image in the sequence.- wand: the magick wand. 

### MagickColorDecisionListImage
- C:

```C
MagickBooleanType MagickColorDecisionListImage(MagickWand *wand,
  const char *color_correction_collection)
```
- Perl 6:

```Perl6
sub MagickColorDecisionListImage(
   MagickWandPointer $wand,
   Str $color_correction_collection
)
returns uint32 
is native(&library)
is export { * };
```

MagickColorDecisionListImage() accepts a lightweight Color Correction Collection (CCC) file which solely contains one or more color corrections and applies the color correction to the image.  Here is a sample CCC file:<pre class="text">    &lt;ColorCorrectionCollection xmlns="urn:ASC:CDL:v1.2"&gt;    &lt;ColorCorrection id="cc03345"&gt;          &lt;SOPNode&gt;               &lt;Slope&gt; 0.9 1.2 0.5 &lt;/Slope&gt;               &lt;Offset&gt; 0.4 -0.5 0.6 &lt;/Offset&gt;               &lt;Power&gt; 1.0 0.8 1.5 &lt;/Power&gt;          &lt;/SOPNode&gt;          &lt;SATNode&gt;               &lt;Saturation&gt; 0.85 &lt;/Saturation&gt;          &lt;/SATNode&gt;    &lt;/ColorCorrection&gt;    &lt;/ColorCorrectionCollection&gt;</pre>which includes the offset, slope, and power for each of the RGB channels as well as the saturation.- wand: the magick wand. - color_correction_collection: the color correction collection in XML. 

### MagickColorizeImage
- C:

```C
MagickBooleanType MagickColorizeImage(MagickWand *wand,
  const PixelWand *colorize,const PixelWand *opacity)
```
- Perl 6:

```Perl6
sub MagickColorizeImage(
   MagickWandPointer $wand,
   PixelWandPointer $colorize,
   PixelWandPointer $opacity
)
returns uint32 
is native(&library)
is export { * };
```

MagickColorizeImage() blends the fill color with each pixel in the image.- wand: the magick wand. - colorize: the colorize pixel wand. - opacity: the opacity pixel wand. 

### MagickColorMatrixImage
- C:

```C
MagickBooleanType MagickColorMatrixImage(MagickWand *wand,
  const KernelInfo *color_matrix)
```
- Perl 6:

```Perl6
sub MagickColorMatrixImage(
   MagickWandPointer $wand,
   KernelInfo * $color_matrix
)
returns uint32 
is native(&library)
is export { * };
```

MagickColorMatrixImage() apply color transformation to an image. The method permits saturation changes, hue rotation, luminance to alpha, and various other effects.  Although variable-sized transformation matrices can be used, typically one uses a 5x5 matrix for an RGBA image and a 6x6 for CMYKA (or RGBA with offsets).  The matrix is similar to those used by Adobe Flash except offsets are in column 6 rather than 5 (in support of CMYKA images) and offsets are normalized (divide Flash offset by 255).- wand: the magick wand. - color_matrix:  the color matrix. 

### MagickCombineImages
- C:

```C
MagickWand *MagickCombineImages(MagickWand *wand,
  const ChannelType channel)
```
- Perl 6:

```Perl6
sub MagickCombineImages(
   MagickWandPointer $wand,
   ChannelType $channel
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickCombineImages() combines one or more images into a single image.  The grayscale value of the pixels of each image in the sequence is assigned in order to the specified  hannels of the combined image.   The typical ordering would be image 1 =&gt; Red, 2 =&gt; Green, 3 =&gt; Blue, etc.- wand: the magick wand. - channel: the channel. 

### MagickCommentImage
- C:

```C
MagickBooleanType MagickCommentImage(MagickWand *wand,
  const char *comment)
```
- Perl 6:

```Perl6
sub MagickCommentImage(
   MagickWandPointer $wand,
   Str $comment
)
returns uint32 
is native(&library)
is export { * };
```

MagickCommentImage() adds a comment to your image.- wand: the magick wand. - comment: the image comment. 

### MagickCompareImageChannels
- C:

```C
MagickWand *MagickCompareImageChannels(MagickWand *wand,
  const MagickWand *reference,const ChannelType channel,
  const MetricType metric,double *distortion)
```
- Perl 6:

```Perl6
sub MagickCompareImageChannels(
   MagickWandPointer $wand,
   MagickWandPointer $reference,
   ChannelType $channel,
   MetricType $metric,
   num64* $distortion
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickCompareImageChannels() compares one or more image channels of an image to a reconstructed image and returns the difference image.- wand: the magick wand. - reference: the reference wand. - channel: the channel. - metric: the metric. - distortion: the computed distortion between the images. 

### MagickCompareImageLayers
- C:

```C
MagickWand *MagickCompareImageLayers(MagickWand *wand,
  const ImageLayerMethod method)
```
- Perl 6:

```Perl6
sub MagickCompareImageLayers(
   MagickWandPointer $wand,
   ImageLayerMethod $method
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickCompareImageLayers() compares each image with the next in a sequence and returns the maximum bounding region of any pixel differences it discovers.- wand: the magick wand. - method: the compare method. 

### MagickCompareImages
- C:

```C
MagickWand *MagickCompareImages(MagickWand *wand,
  const MagickWand *reference,const MetricType metric,double *distortion)
```
- Perl 6:

```Perl6
sub MagickCompareImages(
   MagickWandPointer $wand,
   MagickWandPointer $reference,
   MetricType $metric,
   num64* $distortion
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickCompareImages() compares an image to a reconstructed image and returns the specified difference image.- wand: the magick wand. - reference: the reference wand. - metric: the metric. - distortion: the computed distortion between the images. 

### MagickCompositeImage
- C:

```C
MagickBooleanType MagickCompositeImage(MagickWand *wand,
  const MagickWand *source_wand,const CompositeOperator compose,
  const ssize_t x,const ssize_t y)
MagickBooleanType MagickCompositeImageChannel(MagickWand *wand,
  const ChannelType channel,const MagickWand *composite_wand,
  const CompositeOperator compose,const ssize_t x,const ssize_t y)
```
- Perl 6:

```Perl6
sub MagickCompositeImage(
   MagickWandPointer $wand,
   MagickWandPointer $source_wand,
   CompositeOperator $compose,
   sint32 $x,
   sint32 $y
)
returns uint32 
is native(&library)
is export { * };

sub MagickCompositeImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   MagickWandPointer $composite_wand,
   CompositeOperator $compose,
   sint32 $x,
   sint32 $y
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickCompositeImage() composite one image onto another at the specified offset.- wand: the magick wand holding the destination images - source_image: the magick wand holding source image. - compose: This operator affects how the composite is applied to the image.  The default is Over.  These are some of the compose methods availble. <dd> OverCompositeOp       InCompositeOp         OutCompositeOp AtopCompositeOp       XorCompositeOp        PlusCompositeOp MinusCompositeOp      AddCompositeOp        SubtractCompositeOp DifferenceCompositeOp BumpmapCompositeOp    CopyCompositeOp DisplaceCompositeOp </dd>- x: the column offset of the composited image. - y: the row offset of the composited image. 

### MagickCompositeImageGravity
- C:

```C
MagickBooleanType MagickCompositeImageGravity(MagickWand *wand,
  const MagickWand *source_wand,const CompositeOperator compose,
  const GravityType gravity)
```
- Perl 6:

```Perl6
sub MagickCompositeImageGravity(
   MagickWandPointer $wand,
   MagickWandPointer $source_wand,
   CompositeOperator $compose,
   GravityType $gravity
)
returns uint32 
is native(&library)
is export { * };
```

MagickCompositeImageGravity() composite one image onto another using the specified gravity.- wand: the magick wand holding the destination images - source_image: the magick wand holding source image. - compose: This operator affects how the composite is applied to the image.  The default is Over.  These are some of the compose methods availble. <dd> OverCompositeOp       InCompositeOp         OutCompositeOp AtopCompositeOp       XorCompositeOp        PlusCompositeOp MinusCompositeOp      AddCompositeOp        SubtractCompositeOp DifferenceCompositeOp BumpmapCompositeOp    CopyCompositeOp DisplaceCompositeOp </dd>- gravity: positioning gravity (NorthWestGravity, NorthGravity, NorthEastGravity, WestGravity, CenterGravity, EastGravity, SouthWestGravity, SouthGravity, SouthEastGravity) 

### MagickCompositeLayers
- C:

```C
MagickBooleanType MagickCompositeLayers(MagickWand *wand,
  const MagickWand *source_wand, const CompositeOperator compose,
  const ssize_t x,const ssize_t y)
```
- Perl 6:

```Perl6
sub MagickCompositeLayers(
   MagickWandPointer $wand,
   MagickWandPointer $source_wand,
   CompositeOperator $compose,
   sint32 $x,
   sint32 $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickCompositeLayers() composite the images in the source wand over the images in the destination wand in sequence, starting with the current image in both lists.Each layer from the two image lists are composted together until the end of one of the image lists is reached.  The offset of each composition is also adjusted to match the virtual canvas offsets of each layer. As such the given offset is relative to the virtual canvas, and not the actual image.Composition uses given x and y offsets, as the 'origin' location of the source images virtual canvas (not the real image) allowing you to compose a list of 'layer images' into the destiantioni images.  This makes it well sutiable for directly composing 'Clears Frame Animations' or 'Coaleased Animations' onto a static or other 'Coaleased Animation' destination image list.  GIF disposal handling is not looked at.Special case:- If one of the image sequences is the last image (just a single image remaining), that image is repeatally composed with all the images in the other image list.  Either the source or destination lists may be the single image, for this situation.In the case of a single destination image (or last image given), that image will ve cloned to match the number of images remaining in the source image list.This is equivelent to the "-layer Composite" Shell API operator.- wand: the magick wand holding destaintion images - source_wand: the wand holding the source images - compose, x, y:  composition arguments 

### MagickContrastImage
- C:

```C
MagickBooleanType MagickContrastImage(MagickWand *wand,
  const MagickBooleanType sharpen)
```
- Perl 6:

```Perl6
sub MagickContrastImage(
   MagickWandPointer $wand,
   uint32 $sharpen
)
returns uint32 
is native(&library)
is export { * };
```

MagickContrastImage() enhances the intensity differences between the lighter and darker elements of the image.  Set sharpen to a value other than 0 to increase the image contrast otherwise the contrast is reduced.- wand: the magick wand. - sharpen: Increase or decrease image contrast. 

### MagickContrastStretchImage
- C:

```C
MagickBooleanType MagickContrastStretchImage(MagickWand *wand,
  const double black_point,const double white_point)
MagickBooleanType MagickContrastStretchImageChannel(MagickWand *wand,
  const ChannelType channel,const double black_point,
  const double white_point)
```
- Perl 6:

```Perl6
sub MagickContrastStretchImage(
   MagickWandPointer $wand,
   double $black_point,
   double $white_point
)
returns uint32 
is native(&library)
is export { * };

sub MagickContrastStretchImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   double $black_point,
   double $white_point
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickContrastStretchImage() enhances the contrast of a color image by adjusting the pixels color to span the entire range of colors available. You can also reduce the influence of a particular channel with a gamma value of 0.- wand: the magick wand. - channel: the image channel(s). - black_point: the black point. - white_point: the white point. 

### MagickConvolveImage
- C:

```C
MagickBooleanType MagickConvolveImage(MagickWand *wand,
  const size_t order,const double *kernel)
MagickBooleanType MagickConvolveImageChannel(MagickWand *wand,
  const ChannelType channel,const size_t order,
  const double *kernel)
```
- Perl 6:

```Perl6
sub MagickConvolveImage(
   MagickWandPointer $wand,
   int32 $order,
   num64* $kernel
)
returns uint32 
is native(&library)
is export { * };

sub MagickConvolveImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   int32 $order,
   num64* $kernel
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickConvolveImage() applies a custom convolution kernel to the image.- wand: the magick wand. - channel: the image channel(s). - order: the number of columns and rows in the filter kernel. - kernel: An array of doubles representing the convolution kernel. 

### MagickCropImage
- C:

```C
MagickBooleanType MagickCropImage(MagickWand *wand,
  const size_t width,const size_t height,const ssize_t x,const ssize_t y)
```
- Perl 6:

```Perl6
sub MagickCropImage(
   MagickWandPointer $wand,
   int32 $width,
   int32 $height,
   sint32 $x,
   sint32 $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickCropImage() extracts a region of the image.- wand: the magick wand. - width: the region width. - height: the region height. - x: the region x-offset. - y: the region y-offset. 

### MagickCycleColormapImage
- C:

```C
MagickBooleanType MagickCycleColormapImage(MagickWand *wand,
  const ssize_t displace)
```
- Perl 6:

```Perl6
sub MagickCycleColormapImage(
   MagickWandPointer $wand,
   sint32 $displace
)
returns uint32 
is native(&library)
is export { * };
```

MagickCycleColormapImage() displaces an image's colormap by a given number of positions.  If you cycle the colormap a number of times you can produce a psychodelic effect.- wand: the magick wand. - pixel_wand: the pixel wand. 

### MagickConstituteImage
- C:

```C
MagickBooleanType MagickConstituteImage(MagickWand *wand,
  const size_t columns,const size_t rows,const char *map,
  const StorageType storage,void *pixels)
```
- Perl 6:

```Perl6
sub MagickConstituteImage(
   MagickWandPointer $wand,
   int32 $columns,
   int32 $rows,
   Str $map,
   StorageType $storage,
   Pointer[void] $pixels
)
returns uint32 
is native(&library)
is export { * };
```

MagickConstituteImage() adds an image to the wand comprised of the pixel data you supply.  The pixel data must be in scanline order top-to-bottom. The data can be char, short int, int, float, or double.  Float and double require the pixels to be normalized [0..1], otherwise [0..Max],  where Max is the maximum value the type can accomodate (e.g. 255 for char).  For example, to create a 640x480 image from unsigned red-green-blue character data, useMagickConstituteImage(wand,640,480,"RGB",CharPixel,pixels);- wand: the magick wand. - columns: width in pixels of the image. - rows: height in pixels of the image. - map:  This string reflects the expected ordering of the pixel array. It can be any combination or order of R = red, G = green, B = blue, A = alpha (0 is transparent), O = opacity (0 is opaque), C = cyan, Y = yellow, M = magenta, K = black, I = intensity (for grayscale), P = pad. - storage: Define the data type of the pixels.  Float and double types are expected to be normalized [0..1] otherwise [0..QuantumRange].  Choose from these types: CharPixel, DoublePixel, FloatPixel, IntegerPixel, LongPixel, QuantumPixel, or ShortPixel. - pixels: This array of values contain the pixel components as defined by map and type.  You must preallocate this array where the expected length varies depending on the values of width, height, map, and type. 

### MagickDecipherImage
- C:

```C
MagickBooleanType MagickDecipherImage(MagickWand *wand,
  const char *passphrase)
```
- Perl 6:

```Perl6
sub MagickDecipherImage(
   MagickWandPointer $wand,
   Str $passphrase
)
returns uint32 
is native(&library)
is export { * };
```

MagickDecipherImage() converts cipher pixels to plain pixels.- wand: the magick wand. - passphrase: the passphrase. 

### MagickDeconstructImages
- C:

```C
MagickWand *MagickDeconstructImages(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickDeconstructImages(
   MagickWandPointer $wand
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickDeconstructImages() compares each image with the next in a sequence and returns the maximum bounding region of any pixel differences it discovers.- wand: the magick wand. 

### MagickDeskewImage
- C:

```C
MagickBooleanType MagickDeskewImage(MagickWand *wand,
  const double threshold)
```
- Perl 6:

```Perl6
sub MagickDeskewImage(
   MagickWandPointer $wand,
   double $threshold
)
returns uint32 
is native(&library)
is export { * };
```

MagickDeskewImage() removes skew from the image.  Skew is an artifact that occurs in scanned images because of the camera being misaligned, imperfections in the scanning or surface, or simply because the paper was not placed completely flat when scanned.- wand: the magick wand. - threshold: separate background from foreground. 

### MagickDespeckleImage
- C:

```C
MagickBooleanType MagickDespeckleImage(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickDespeckleImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickDespeckleImage() reduces the speckle noise in an image while perserving the edges of the original image.- wand: the magick wand. 

### MagickDestroyImage
- C:

```C
Image *MagickDestroyImage(Image *image)
```
- Perl 6:

```Perl6
sub MagickDestroyImage(
   Image * $image
)
returns Image *
is native(&library)
is export { * };
```

MagickDestroyImage() dereferences an image, deallocating memory associated with the image if the reference count becomes zero.- image: the image. 

### MagickDisplayImage
- C:

```C
MagickBooleanType MagickDisplayImage(MagickWand *wand,
  const char *server_name)
```
- Perl 6:

```Perl6
sub MagickDisplayImage(
   MagickWandPointer $wand,
   Str $server_name
)
returns uint32 
is native(&library)
is export { * };
```

MagickDisplayImage() displays an image.- wand: the magick wand. - server_name: the X server name. 

### MagickDisplayImages
- C:

```C
MagickBooleanType MagickDisplayImages(MagickWand *wand,
  const char *server_name)
```
- Perl 6:

```Perl6
sub MagickDisplayImages(
   MagickWandPointer $wand,
   Str $server_name
)
returns uint32 
is native(&library)
is export { * };
```

MagickDisplayImages() displays an image or image sequence.- wand: the magick wand. - server_name: the X server name. 

### MagickDistortImage
- C:

```C
MagickBooleanType MagickDistortImage(MagickWand *wand,
  const DistortImageMethod method,const size_t number_arguments,
  const double *arguments,const MagickBooleanType bestfit)
```
- Perl 6:

```Perl6
sub MagickDistortImage(
   MagickWandPointer $wand,
   DistortImageMethod $method,
   int32 $number_arguments,
   num64* $arguments,
   uint32 $bestfit
)
returns uint32 
is native(&library)
is export { * };
```

MagickDistortImage() distorts an image using various distortion methods, by mapping color lookups of the source image to a new destination image usally of the same size as the source image, unless 'bestfit' is set to true.If 'bestfit' is enabled, and distortion allows it, the destination image is adjusted to ensure the whole source 'image' will just fit within the final destination image, which will be sized and offset accordingly.  Also in many cases the virtual offset of the source image will be taken into account in the mapping.- image: the image to be distorted. - method: the method of image distortion. <dd> ArcDistortion always ignores the source image offset, and always 'bestfit' the destination image with the top left corner offset relative to the polar mapping center. </dd><dd> Bilinear has no simple inverse mapping so it does not allow 'bestfit' style of image distortion. </dd><dd> Affine, Perspective, and Bilinear, do least squares fitting of the distortion when more than the minimum number of control point pairs are provided. </dd><dd> Perspective, and Bilinear, falls back to a Affine distortion when less that 4 control point pairs are provided. While Affine distortions let you use any number of control point pairs, that is Zero pairs is a no-Op (viewport only) distrotion, one pair is a translation and two pairs of control points do a scale-rotate-translate, without any shearing. </dd>- number_arguments: the number of arguments given for this distortion method. - arguments: the arguments for this distortion method. - bestfit: Attempt to resize destination to fit distorted source. 

### MagickDrawImage
- C:

```C
MagickBooleanType MagickDrawImage(MagickWand *wand,
  const DrawingWand *drawing_wand)
```
- Perl 6:

```Perl6
sub MagickDrawImage(
   MagickWandPointer $wand,
   DrawingWandPointer $drawing_wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickDrawImage() renders the drawing wand on the current image.- wand: the magick wand. - drawing_wand: the draw wand. 

### MagickEdgeImage
- C:

```C
MagickBooleanType MagickEdgeImage(MagickWand *wand,const double radius)
```
- Perl 6:

```Perl6
sub MagickEdgeImage(
   MagickWandPointer $wand,
   double $radius
)
returns uint32 
is native(&library)
is export { * };
```

MagickEdgeImage() enhance edges within the image with a convolution filter of the given radius.  Use a radius of 0 and Edge() selects a suitable radius for you.- wand: the magick wand. - radius: the radius of the pixel neighborhood. 

### MagickEmbossImage
- C:

```C
MagickBooleanType MagickEmbossImage(MagickWand *wand,const double radius,
  const double sigma)
```
- Perl 6:

```Perl6
sub MagickEmbossImage(
   MagickWandPointer $wand,
   double $radius,
   double $sigma
)
returns uint32 
is native(&library)
is export { * };
```

MagickEmbossImage() returns a grayscale image with a three-dimensional effect.  We convolve the image with a Gaussian operator of the given radius and standard deviation (sigma).  For reasonable results, radius should be larger than sigma.  Use a radius of 0 and Emboss() selects a suitable radius for you.- wand: the magick wand. - radius: the radius of the Gaussian, in pixels, not counting the center pixel. - sigma: the standard deviation of the Gaussian, in pixels. 

### MagickEncipherImage
- C:

```C
MagickBooleanType MagickEncipherImage(MagickWand *wand,
  const char *passphrase)
```
- Perl 6:

```Perl6
sub MagickEncipherImage(
   MagickWandPointer $wand,
   Str $passphrase
)
returns uint32 
is native(&library)
is export { * };
```

MagickEncipherImage() converts plaint pixels to cipher pixels.- wand: the magick wand. - passphrase: the passphrase. 

### MagickEnhanceImage
- C:

```C
MagickBooleanType MagickEnhanceImage(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickEnhanceImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickEnhanceImage() applies a digital filter that improves the quality of a noisy image.- wand: the magick wand. 

### MagickEqualizeImage
- C:

```C
MagickBooleanType MagickEqualizeImage(MagickWand *wand)
MagickBooleanType MagickEqualizeImageChannel(MagickWand *wand,
  const ChannelType channel)
```
- Perl 6:

```Perl6
sub MagickEqualizeImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };

sub MagickEqualizeImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickEqualizeImage() equalizes the image histogram.- wand: the magick wand. - channel: the image channel(s). 

### MagickEvaluateImage
- C:

```C
MagickBooleanType MagickEvaluateImage(MagickWand *wand,
  const MagickEvaluateOperator operator,const double value)
MagickBooleanType MagickEvaluateImages(MagickWand *wand,
  const MagickEvaluateOperator operator)
MagickBooleanType MagickEvaluateImageChannel(MagickWand *wand,
  const ChannelType channel,const MagickEvaluateOperator op,
  const double value)
```
- Perl 6:

```Perl6
sub MagickEvaluateImage(
   MagickWandPointer $wand,
   MagickEvaluateOperator $operator,
   double $value
)
returns uint32 
is native(&library)
is export { * };

sub MagickEvaluateImages(
   MagickWandPointer $wand,
   MagickEvaluateOperator $operator
)
returns 
uint32 
is native(&library)
is export { * };

sub MagickEvaluateImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   MagickEvaluateOperator $op,
   double $value
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickEvaluateImage() applys an arithmetic, relational, or logical expression to an image.  Use these operators to lighten or darken an image, to increase or decrease contrast in an image, or to produce the "negative" of an image.- wand: the magick wand. - channel: the channel(s). - op: A channel operator. - value: A value value. 

### MagickExportImagePixels
- C:

```C
MagickBooleanType MagickExportImagePixels(MagickWand *wand,
  const ssize_t x,const ssize_t y,const size_t columns,
  const size_t rows,const char *map,const StorageType storage,
  void *pixels)
```
- Perl 6:

```Perl6
sub MagickExportImagePixels(
   MagickWandPointer $wand,
   sint32 $x,
   sint32 $y,
   int32 $columns,
   int32 $rows,
   Str $map,
   StorageType $storage,
   Pointer[void] $pixels
)
returns uint32 
is native(&library)
is export { * };
```

MagickExportImagePixels() extracts pixel data from an image and returns it to you.  The method returns MagickTrue on success otherwise MagickFalse if an error is encountered.  The data is returned as char, short int, int, ssize_t, float, or double in the order specified by map.Suppose you want to extract the first scanline of a 640x480 image as character data in red-green-blue order:<pre class="text">MagickExportImagePixels(wand,0,0,640,1,"RGB",CharPixel,pixels);</pre>- wand: the magick wand. - x, y, columns, rows:  These values define the perimeter of a region of pixels you want to extract. - map:  This string reflects the expected ordering of the pixel array. It can be any combination or order of R = red, G = green, B = blue, A = alpha (0 is transparent), O = opacity (0 is opaque), C = cyan, Y = yellow, M = magenta, K = black, I = intensity (for grayscale), P = pad. - storage: Define the data type of the pixels.  Float and double types are expected to be normalized [0..1] otherwise [0..QuantumRange].  Choose from these types: CharPixel, DoublePixel, FloatPixel, IntegerPixel, LongPixel, QuantumPixel, or ShortPixel. - pixels: This array of values contain the pixel components as defined by map and type.  You must preallocate this array where the expected length varies depending on the values of width, height, map, and type. 

### MagickExtentImage
- C:

```C
MagickBooleanType MagickExtentImage(MagickWand *wand,const size_t width,
  const size_t height,const ssize_t x,const ssize_t y)
```
- Perl 6:

```Perl6
sub MagickExtentImage(
   MagickWandPointer $wand,
   int32 $width,
   int32 $height,
   sint32 $x,
   sint32 $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickExtentImage() extends the image as defined by the geometry, gravity, and wand background color.  Set the (x,y) offset of the geometry to move the original wand relative to the extended wand.- wand: the magick wand. - width: the region width. - height: the region height. - x: the region x offset. - y: the region y offset. 

### MagickFilterImage
- C:

```C
MagickBooleanType MagickFilterImage(MagickWand *wand,
  const KernelInfo *kernel)
MagickBooleanType MagickFilterImageChannel(MagickWand *wand,
  const ChannelType channel,const KernelInfo *kernel)
```
- Perl 6:

```Perl6
sub MagickFilterImage(
   MagickWandPointer $wand,
   KernelInfo * $kernel
)
returns uint32 
is native(&library)
is export { * };

sub MagickFilterImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   KernelInfo * $kernel
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickFilterImage() applies a custom convolution kernel to the image.- wand: the magick wand. - channel: the image channel(s). - kernel: An array of doubles representing the convolution kernel. 

### MagickFlipImage
- C:

```C
MagickBooleanType MagickFlipImage(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickFlipImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickFlipImage() creates a vertical mirror image by reflecting the pixels around the central x-axis.- wand: the magick wand. 

### MagickFloodfillPaintImage
- C:

```C
MagickBooleanType MagickFloodfillPaintImage(MagickWand *wand,
  const ChannelType channel,const PixelWand *fill,const double fuzz,
  const PixelWand *bordercolor,const ssize_t x,const ssize_t y,
  const MagickBooleanType invert)
```
- Perl 6:

```Perl6
sub MagickFloodfillPaintImage(
   MagickWandPointer $wand,
   ChannelType $channel,
   PixelWandPointer $fill,
   double $fuzz,
   PixelWandPointer $bordercolor,
   sint32 $x,
   sint32 $y,
   uint32 $invert
)
returns uint32 
is native(&library)
is export { * };
```

MagickFloodfillPaintImage() changes the color value of any pixel that matches target and is an immediate neighbor.  If the method FillToBorderMethod is specified, the color value is changed for any neighbor pixel that does not match the bordercolor member of image.- wand: the magick wand. - channel: the channel(s). - fill: the floodfill color pixel wand. - fuzz: By default target must match a particular pixel color exactly.  However, in many cases two colors may differ by a small amount. The fuzz member of image defines how much tolerance is acceptable to consider two colors as the same.  For example, set fuzz to 10 and the color red at intensities of 100 and 102 respectively are now interpreted as the same color for the purposes of the floodfill. - bordercolor: the border color pixel wand. - x,y: the starting location of the operation. - invert: paint any pixel that does not match the target color. 

### MagickFlopImage
- C:

```C
MagickBooleanType MagickFlopImage(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickFlopImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickFlopImage() creates a horizontal mirror image by reflecting the pixels around the central y-axis.- wand: the magick wand. 

### MagickForwardFourierTransformImage
- C:

```C
MagickBooleanType MagickForwardFourierTransformImage(MagickWand *wand,
  const MagickBooleanType magnitude)
```
- Perl 6:

```Perl6
sub MagickForwardFourierTransformImage(
   MagickWandPointer $wand,
   uint32 $magnitude
)
returns uint32 
is native(&library)
is export { * };
```

MagickForwardFourierTransformImage() implements the discrete Fourier transform (DFT) of the image either as a magnitude / phase or real / imaginary image pair.- wand: the magick wand. - magnitude: if true, return as magnitude / phase pair otherwise a real / imaginary image pair. 

### MagickFrameImage
- C:

```C
MagickBooleanType MagickFrameImage(MagickWand *wand,
  const PixelWand *matte_color,const size_t width,
  const size_t height,const ssize_t inner_bevel,
  const ssize_t outer_bevel)
```
- Perl 6:

```Perl6
sub MagickFrameImage(
   MagickWandPointer $wand,
   PixelWandPointer $matte_color,
   int32 $width,
   int32 $height,
   sint32 $inner_bevel,
   sint32 $outer_bevel
)
returns uint32 
is native(&library)
is export { * };
```

MagickFrameImage() adds a simulated three-dimensional border around the image.  The width and height specify the border width of the vertical and horizontal sides of the frame.  The inner and outer bevels indicate the width of the inner and outer shadows of the frame.- wand: the magick wand. - matte_color: the frame color pixel wand. - width: the border width. - height: the border height. - inner_bevel: the inner bevel width. - outer_bevel: the outer bevel width. 

### MagickFunctionImage
- C:

```C
MagickBooleanType MagickFunctionImage(MagickWand *wand,
  const MagickFunction function,const size_t number_arguments,
  const double *arguments)
MagickBooleanType MagickFunctionImageChannel(MagickWand *wand,
  const ChannelType channel,const MagickFunction function,
  const size_t number_arguments,const double *arguments)
```
- Perl 6:

```Perl6
sub MagickFunctionImage(
   MagickWandPointer $wand,
   MagickFunction $function,
   int32 $number_arguments,
   num64* $arguments
)
returns uint32 
is native(&library)
is export { * };

sub MagickFunctionImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   MagickFunction $function,
   int32 $number_arguments,
   num64* $arguments
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickFunctionImage() applys an arithmetic, relational, or logical expression to an image.  Use these operators to lighten or darken an image, to increase or decrease contrast in an image, or to produce the "negative" of an image.- wand: the magick wand. - channel: the channel(s). - function: the image function. - number_arguments: the number of function arguments. - arguments: the function arguments. 

### MagickFxImage
- C:

```C
MagickWand *MagickFxImage(MagickWand *wand,const char *expression)
MagickWand *MagickFxImageChannel(MagickWand *wand,
  const ChannelType channel,const char *expression)
```
- Perl 6:

```Perl6
sub MagickFxImage(
   MagickWandPointer $wand,
   Str $expression
)
returns MagickWandPointer
is native(&library)
is export { * };

sub MagickFxImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   Str $expression
)
returns 
MagickWandPointer
is native(&library)
is export { * };
```

MagickFxImage() evaluate expression for each pixel in the image.- wand: the magick wand. - channel: the image channel(s). - expression: the expression. 

### MagickGammaImage
- C:

```C
MagickBooleanType MagickGammaImage(MagickWand *wand,const double gamma)
MagickBooleanType MagickGammaImageChannel(MagickWand *wand,
  const ChannelType channel,const double gamma)
```
- Perl 6:

```Perl6
sub MagickGammaImage(
   MagickWandPointer $wand,
   double $gamma
)
returns uint32 
is native(&library)
is export { * };

sub MagickGammaImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   double $gamma
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickGammaImage() gamma-corrects an image.  The same image viewed on different devices will have perceptual differences in the way the image's intensities are represented on the screen.  Specify individual gamma levels for the red, green, and blue channels, or adjust all three with the gamma parameter.  Values typically range from 0.8 to 2.3.You can also reduce the influence of a particular channel with a gamma value of 0.- wand: the magick wand. - channel: the channel. - level: Define the level of gamma correction. 

### MagickGaussianBlurImage
- C:

```C
MagickBooleanType MagickGaussianBlurImage(MagickWand *wand,
  const double radius,const double sigma)
MagickBooleanType MagickGaussianBlurImageChannel(MagickWand *wand,
  const ChannelType channel,const double radius,const double sigma)
```
- Perl 6:

```Perl6
sub MagickGaussianBlurImage(
   MagickWandPointer $wand,
   double $radius,
   double $sigma
)
returns uint32 
is native(&library)
is export { * };

sub MagickGaussianBlurImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   double $radius,
   double $sigma
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickGaussianBlurImage() blurs an image.  We convolve the image with a Gaussian operator of the given radius and standard deviation (sigma). For reasonable results, the radius should be larger than sigma.  Use a radius of 0 and MagickGaussianBlurImage() selects a suitable radius for you.- wand: the magick wand. - channel: the image channel(s). - radius: the radius of the Gaussian, in pixels, not counting the center pixel. - sigma: the standard deviation of the Gaussian, in pixels. 

### MagickGetImage
- C:

```C
MagickWand *MagickGetImage(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImage(
   MagickWandPointer $wand
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickGetImage() gets the image at the current image index.- wand: the magick wand. 

### MagickGetImageAlphaChannel
- C:

```C
MagickBooleanType MagickGetImageAlphaChannel(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageAlphaChannel(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetImageAlphaChannel() returns MagickFalse if the image alpha channel is not activated.  That is, the image is RGB rather than RGBA or CMYK rather than CMYKA.- wand: the magick wand. 

### MagickGetImageClipMask
- C:

```C
MagickWand *MagickGetImageClipMask(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageClipMask(
   MagickWandPointer $wand
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickGetImageClipMask() gets the image clip mask at the current image index.- wand: the magick wand. 

### MagickGetImageBackgroundColor
- C:

```C
MagickBooleanType MagickGetImageBackgroundColor(MagickWand *wand,
  PixelWand *background_color)
```
- Perl 6:

```Perl6
sub MagickGetImageBackgroundColor(
   MagickWandPointer $wand,
   PixelWandPointer $background_color
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetImageBackgroundColor() returns the image background color.- wand: the magick wand. - background_color: Return the background color. 

### MagickGetImageBlob
- C:

```C
unsigned char *MagickGetImageBlob(MagickWand *wand,size_t *length)
```
- Perl 6:

```Perl6
sub MagickGetImageBlob(
   MagickWandPointer $wand,
   Pointer[int32] $length
)
returns unsigned Str
is native(&library)
is export { * };
```

MagickGetImageBlob() implements direct to memory image formats.  It returns the image as a blob (a formatted "file" in memory) and its length, starting from the current position in the image sequence.  Use MagickSetImageFormat() to set the format to write to the blob (GIF, JPEG,  PNG, etc.).Utilize MagickResetIterator() to ensure the write is from the beginning of the image sequence.Use MagickRelinquishMemory() to free the blob when you are done with it.- wand: the magick wand. - length: the length of the blob. 

### MagickGetImageBlob
- C:

```C
unsigned char *MagickGetImagesBlob(MagickWand *wand,size_t *length)
```
- Perl 6:

```Perl6
sub MagickGetImagesBlob(
   MagickWandPointer $wand,
   Pointer[int32] $length
)
returns unsigned Str
is native(&library)
is export { * };
```

MagickGetImageBlob() implements direct to memory image formats.  It returns the image sequence as a blob and its length.  The format of the image determines the format of the returned blob (GIF, JPEG,  PNG, etc.).  To return a different image format, use MagickSetImageFormat().Note, some image formats do not permit multiple images to the same image stream (e.g. JPEG).  in this instance, just the first image of the sequence is returned as a blob.- wand: the magick wand. - length: the length of the blob. 

### MagickGetImageBluePrimary
- C:

```C
MagickBooleanType MagickGetImageBluePrimary(MagickWand *wand,double *x,
  double *y)
```
- Perl 6:

```Perl6
sub MagickGetImageBluePrimary(
   MagickWandPointer $wand,
   num64* $x,
   num64* $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetImageBluePrimary() returns the chromaticy blue primary point for the image.- wand: the magick wand. - x: the chromaticity blue primary x-point. - y: the chromaticity blue primary y-point. 

### MagickGetImageBorderColor
- C:

```C
MagickBooleanType MagickGetImageBorderColor(MagickWand *wand,
  PixelWand *border_color)
```
- Perl 6:

```Perl6
sub MagickGetImageBorderColor(
   MagickWandPointer $wand,
   PixelWandPointer $border_color
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetImageBorderColor() returns the image border color.- wand: the magick wand. - border_color: Return the border color. 

### MagickGetImageChannelDepth
- C:

```C
size_t MagickGetImageChannelDepth(MagickWand *wand,
  const ChannelType channel)
```
- Perl 6:

```Perl6
sub MagickGetImageChannelDepth(
   MagickWandPointer $wand,
   ChannelType $channel
)
returns int32 
is native(&library)
is export { * };
```

MagickGetImageChannelDepth() gets the depth for one or more image channels.- wand: the magick wand. - channel: the image channel(s). 

### MagickGetImageChannelDistortion
- C:

```C
MagickBooleanType MagickGetImageChannelDistortion(MagickWand *wand,
  const MagickWand *reference,const ChannelType channel,
  const MetricType metric,double *distortion)
```
- Perl 6:

```Perl6
sub MagickGetImageChannelDistortion(
   MagickWandPointer $wand,
   MagickWandPointer $reference,
   ChannelType $channel,
   MetricType $metric,
   num64* $distortion
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetImageChannelDistortion() compares one or more image channels of an image to a reconstructed image and returns the specified distortion metric.- wand: the magick wand. - reference: the reference wand. - channel: the channel. - metric: the metric. - distortion: the computed distortion between the images. 

### MagickGetImageChannelDistortions
- C:

```C
double *MagickGetImageChannelDistortion(MagickWand *wand,
  const MagickWand *reference,const MetricType metric)
```
- Perl 6:

```Perl6
sub MagickGetImageChannelDistortion(
   MagickWandPointer $wand,
   MagickWandPointer $reference,
   MetricType $metric
)
returns num64*
is native(&library)
is export { * };
```

MagickGetImageChannelDistortions() compares one or more image channels of an image to a reconstructed image and returns the specified distortion metrics.Use MagickRelinquishMemory() to free the metrics when you are done with them.- wand: the magick wand. - reference: the reference wand. - metric: the metric. 

### MagickGetImageChannelFeatures
- C:

```C
ChannelFeatures *MagickGetImageChannelFeatures(MagickWand *wand,
  const size_t distance)
```
- Perl 6:

```Perl6
sub MagickGetImageChannelFeatures(
   MagickWandPointer $wand,
   int32 $distance
)
returns ChannelFeatures *
is native(&library)
is export { * };
```

MagickGetImageChannelFeatures() returns features for each channel in the image in each of four directions (horizontal, vertical, left and right diagonals) for the specified distance.  The features include the angular second moment, contrast, correlation, sum of squares: variance, inverse difference moment, sum average, sum varience, sum entropy, entropy, difference variance, difference entropy, information measures of correlation 1, information measures of correlation 2, and maximum correlation coefficient.  You can access the red channel contrast, for example, like this:<pre class="text">channel_features=MagickGetImageChannelFeatures(wand,1);contrast=channel_features[RedChannel].contrast[0];</pre>Use MagickRelinquishMemory() to free the statistics buffer.- wand: the magick wand. - distance: the distance. 

### MagickGetImageChannelKurtosis
- C:

```C
MagickBooleanType MagickGetImageChannelKurtosis(MagickWand *wand,
  const ChannelType channel,double *kurtosis,double *skewness)
```
- Perl 6:

```Perl6
sub MagickGetImageChannelKurtosis(
   MagickWandPointer $wand,
   ChannelType $channel,
   num64* $kurtosis,
   num64* $skewness
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetImageChannelKurtosis() gets the kurtosis and skewness of one or more image channels.- wand: the magick wand. - channel: the image channel(s). - kurtosis:  The kurtosis for the specified channel(s). - skewness:  The skewness for the specified channel(s). 

### MagickGetImageChannelMean
- C:

```C
MagickBooleanType MagickGetImageChannelMean(MagickWand *wand,
  const ChannelType channel,double *mean,double *standard_deviation)
```
- Perl 6:

```Perl6
sub MagickGetImageChannelMean(
   MagickWandPointer $wand,
   ChannelType $channel,
   num64* $mean,
   num64* $standard_deviation
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetImageChannelMean() gets the mean and standard deviation of one or more image channels.- wand: the magick wand. - channel: the image channel(s). - mean:  The mean pixel value for the specified channel(s). - standard_deviation:  The standard deviation for the specified channel(s). 

### MagickGetImageChannelRange
- C:

```C
MagickBooleanType MagickGetImageChannelRange(MagickWand *wand,
  const ChannelType channel,double *minima,double *maxima)
```
- Perl 6:

```Perl6
sub MagickGetImageChannelRange(
   MagickWandPointer $wand,
   ChannelType $channel,
   num64* $minima,
   num64* $maxima
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetImageChannelRange() gets the range for one or more image channels.- wand: the magick wand. - channel: the image channel(s). - minima:  The minimum pixel value for the specified channel(s). - maxima:  The maximum pixel value for the specified channel(s). 

### MagickGetImageChannelStatistics
- C:

```C
ChannelStatistics *MagickGetImageChannelStatistics(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageChannelStatistics(
   MagickWandPointer $wand
)
returns ChannelStatistics *
is native(&library)
is export { * };
```

MagickGetImageChannelStatistics() returns statistics for each channel in the image.  The statistics include the channel depth, its minima and maxima, the mean, the standard deviation, the kurtosis and the skewness. You can access the red channel mean, for example, like this:<pre class="text">channel_statistics=MagickGetImageChannelStatistics(wand);red_mean=channel_statistics[RedChannel].mean;</pre>Use MagickRelinquishMemory() to free the statistics buffer.- wand: the magick wand. 

### MagickGetImageColormapColor
- C:

```C
MagickBooleanType MagickGetImageColormapColor(MagickWand *wand,
  const size_t index,PixelWand *color)
```
- Perl 6:

```Perl6
sub MagickGetImageColormapColor(
   MagickWandPointer $wand,
   int32 $index,
   PixelWandPointer $color
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetImageColormapColor() returns the color of the specified colormap index.- wand: the magick wand. - index: the offset into the image colormap. - color: Return the colormap color in this wand. 

### MagickGetImageColors
- C:

```C
size_t MagickGetImageColors(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageColors(
   MagickWandPointer $wand
)
returns int32 
is native(&library)
is export { * };
```

MagickGetImageColors() gets the number of unique colors in the image.- wand: the magick wand. 

### MagickGetImageColorspace
- C:

```C
ColorspaceType MagickGetImageColorspace(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageColorspace(
   MagickWandPointer $wand
)
returns ColorspaceType 
is native(&library)
is export { * };
```

MagickGetImageColorspace() gets the image colorspace.- wand: the magick wand. 

### MagickGetImageCompose
- C:

```C
CompositeOperator MagickGetImageCompose(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageCompose(
   MagickWandPointer $wand
)
returns CompositeOperator 
is native(&library)
is export { * };
```

MagickGetImageCompose() returns the composite operator associated with the image.- wand: the magick wand. 

### MagickGetImageCompression
- C:

```C
CompressionType MagickGetImageCompression(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageCompression(
   MagickWandPointer $wand
)
returns CompressionType 
is native(&library)
is export { * };
```

MagickGetImageCompression() gets the image compression.- wand: the magick wand. 

### MagickGetImageCompressionQuality
- C:

```C
size_t MagickGetImageCompressionQuality(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageCompressionQuality(
   MagickWandPointer $wand
)
returns int32 
is native(&library)
is export { * };
```

MagickGetImageCompressionQuality() gets the image compression quality.- wand: the magick wand. 

### MagickGetImageDelay
- C:

```C
size_t MagickGetImageDelay(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageDelay(
   MagickWandPointer $wand
)
returns int32 
is native(&library)
is export { * };
```

MagickGetImageDelay() gets the image delay.- wand: the magick wand. 

### MagickGetImageDepth
- C:

```C
size_t MagickGetImageDepth(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageDepth(
   MagickWandPointer $wand
)
returns int32 
is native(&library)
is export { * };
```

MagickGetImageDepth() gets the image depth.- wand: the magick wand. 

### MagickGetImageDistortion
- C:

```C
MagickBooleanType MagickGetImageDistortion(MagickWand *wand,
  const MagickWand *reference,const MetricType metric,
  double *distortion)
```
- Perl 6:

```Perl6
sub MagickGetImageDistortion(
   MagickWandPointer $wand,
   MagickWandPointer $reference,
   MetricType $metric,
   num64* $distortion
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetImageDistortion() compares an image to a reconstructed image and returns the specified distortion metric.- wand: the magick wand. - reference: the reference wand. - metric: the metric. - distortion: the computed distortion between the images. 

### MagickGetImageDispose
- C:

```C
DisposeType MagickGetImageDispose(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageDispose(
   MagickWandPointer $wand
)
returns DisposeType 
is native(&library)
is export { * };
```

MagickGetImageDispose() gets the image disposal method.- wand: the magick wand. 

### MagickGetImageEndian
- C:

```C
EndianType MagickGetImageEndian(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageEndian(
   MagickWandPointer $wand
)
returns EndianType 
is native(&library)
is export { * };
```

MagickGetImageEndian() gets the image endian.- wand: the magick wand. 

### MagickGetImageFilename
- C:

```C
char *MagickGetImageFilename(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageFilename(
   MagickWandPointer $wand
)
returns Str
is native(&library)
is export { * };
```

MagickGetImageFilename() returns the filename of a particular image in a sequence.- wand: the magick wand. 

### MagickGetImageFormat
- C:

```C
char *MagickGetImageFormat(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageFormat(
   MagickWandPointer $wand
)
returns Str
is native(&library)
is export { * };
```

MagickGetImageFormat() returns the format of a particular image in a sequence.- wand: the magick wand. 

### MagickGetImageFuzz
- C:

```C
double MagickGetImageFuzz(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageFuzz(
   MagickWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

MagickGetImageFuzz() gets the image fuzz.- wand: the magick wand. 

### MagickGetImageGamma
- C:

```C
double MagickGetImageGamma(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageGamma(
   MagickWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

MagickGetImageGamma() gets the image gamma.- wand: the magick wand. 

### MagickGetImageGravity
- C:

```C
GravityType MagickGetImageGravity(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageGravity(
   MagickWandPointer $wand
)
returns GravityType 
is native(&library)
is export { * };
```

MagickGetImageGravity() gets the image gravity.- wand: the magick wand. 

### MagickGetImageGreenPrimary
- C:

```C
MagickBooleanType MagickGetImageGreenPrimary(MagickWand *wand,double *x,
  double *y)
```
- Perl 6:

```Perl6
sub MagickGetImageGreenPrimary(
   MagickWandPointer $wand,
   num64* $x,
   num64* $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetImageGreenPrimary() returns the chromaticy green primary point.- wand: the magick wand. - x: the chromaticity green primary x-point. - y: the chromaticity green primary y-point. 

### MagickGetImageHeight
- C:

```C
size_t MagickGetImageHeight(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageHeight(
   MagickWandPointer $wand
)
returns int32 
is native(&library)
is export { * };
```

MagickGetImageHeight() returns the image height.- wand: the magick wand. 

### MagickGetImageHistogram
- C:

```C
PixelWand **MagickGetImageHistogram(MagickWand *wand,
  size_t *number_colors)
```
- Perl 6:

```Perl6
sub MagickGetImageHistogram(
   MagickWandPointer $wand,
   Pointer[int32] $number_colors
)
returns PixelWandPointer*
is native(&library)
is export { * };
```

MagickGetImageHistogram() returns the image histogram as an array of PixelWand wands.- wand: the magick wand. - number_colors: the number of unique colors in the image and the number of pixel wands returned. 

### MagickGetImageInterlaceScheme
- C:

```C
InterlaceType MagickGetImageInterlaceScheme(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageInterlaceScheme(
   MagickWandPointer $wand
)
returns InterlaceType 
is native(&library)
is export { * };
```

MagickGetImageInterlaceScheme() gets the image interlace scheme.- wand: the magick wand. 

### MagickGetImageInterpolateMethod
- C:

```C
InterpolatePixelMethod MagickGetImageInterpolateMethod(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageInterpolateMethod(
   MagickWandPointer $wand
)
returns InterpolatePixelMethod 
is native(&library)
is export { * };
```

MagickGetImageInterpolateMethod() returns the interpolation method for the sepcified image.- wand: the magick wand. 

### MagickGetImageIterations
- C:

```C
size_t MagickGetImageIterations(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageIterations(
   MagickWandPointer $wand
)
returns int32 
is native(&library)
is export { * };
```

MagickGetImageIterations() gets the image iterations.- wand: the magick wand. 

### MagickGetImageLength
- C:

```C
MagickBooleanType MagickGetImageLength(MagickWand *wand,
  MagickSizeType *length)
```
- Perl 6:

```Perl6
sub MagickGetImageLength(
   MagickWandPointer $wand,
   MagickSizeType * $length
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetImageLength() returns the image length in bytes.- wand: the magick wand. - length: the image length in bytes. 

### MagickGetImageMatteColor
- C:

```C
MagickBooleanType MagickGetImagematteColor(MagickWand *wand,
  PixelWand *matte_color)
```
- Perl 6:

```Perl6
sub MagickGetImagematteColor(
   MagickWandPointer $wand,
   PixelWandPointer $matte_color
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetImageMatteColor() returns the image matte color.- wand: the magick wand. - matte_color: Return the matte color. 

### MagickGetImageOrientation
- C:

```C
OrientationType MagickGetImageOrientation(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageOrientation(
   MagickWandPointer $wand
)
returns OrientationType 
is native(&library)
is export { * };
```

MagickGetImageOrientation() returns the image orientation.- wand: the magick wand. 

### MagickGetImagePage
- C:

```C
MagickBooleanType MagickGetImagePage(MagickWand *wand,
  size_t *width,size_t *height,ssize_t *x,ssize_t *y)
```
- Perl 6:

```Perl6
sub MagickGetImagePage(
   MagickWandPointer $wand,
   Pointer[int32] $width,
   Pointer[int32] $height,
   sPointer[int32] $x,
   sPointer[int32] $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetImagePage() returns the page geometry associated with the image.- wand: the magick wand. - width: the page width. - height: the page height. - x: the page x-offset. - y: the page y-offset. 

### MagickGetImagePixelColor
- C:

```C
MagickBooleanType MagickGetImagePixelColor(MagickWand *wand,
  const ssize_t x,const ssize_t y,PixelWand *color)
```
- Perl 6:

```Perl6
sub MagickGetImagePixelColor(
   MagickWandPointer $wand,
   sint32 $x,
   sint32 $y,
   PixelWandPointer $color
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetImagePixelColor() returns the color of the specified pixel.- wand: the magick wand. - x,y: the pixel offset into the image. - color: Return the colormap color in this wand. 

### MagickGetImageRedPrimary
- C:

```C
MagickBooleanType MagickGetImageRedPrimary(MagickWand *wand,double *x,
  double *y)
```
- Perl 6:

```Perl6
sub MagickGetImageRedPrimary(
   MagickWandPointer $wand,
   num64* $x,
   num64* $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetImageRedPrimary() returns the chromaticy red primary point.- wand: the magick wand. - x: the chromaticity red primary x-point. - y: the chromaticity red primary y-point. 

### MagickGetImageRegion
- C:

```C
MagickWand *MagickGetImageRegion(MagickWand *wand,
  const size_t width,const size_t height,const ssize_t x,
  const ssize_t y)
```
- Perl 6:

```Perl6
sub MagickGetImageRegion(
   MagickWandPointer $wand,
   int32 $width,
   int32 $height,
   sint32 $x,
   sint32 $y
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickGetImageRegion() extracts a region of the image and returns it as a a new wand.- wand: the magick wand. - width: the region width. - height: the region height. - x: the region x offset. - y: the region y offset. 

### MagickGetImageRenderingIntent
- C:

```C
RenderingIntent MagickGetImageRenderingIntent(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageRenderingIntent(
   MagickWandPointer $wand
)
returns RenderingIntent 
is native(&library)
is export { * };
```

MagickGetImageRenderingIntent() gets the image rendering intent.- wand: the magick wand. 

### MagickGetImageResolution
- C:

```C
MagickBooleanType MagickGetImageResolution(MagickWand *wand,double *x,
  double *y)
```
- Perl 6:

```Perl6
sub MagickGetImageResolution(
   MagickWandPointer $wand,
   num64* $x,
   num64* $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetImageResolution() gets the image X and Y resolution.- wand: the magick wand. - x: the image x-resolution. - y: the image y-resolution. 

### MagickGetImageScene
- C:

```C
size_t MagickGetImageScene(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageScene(
   MagickWandPointer $wand
)
returns int32 
is native(&library)
is export { * };
```

MagickGetImageScene() gets the image scene.- wand: the magick wand. 

### MagickGetImageSignature
- C:

```C
char *MagickGetImageSignature(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageSignature(
   MagickWandPointer $wand
)
returns Str
is native(&library)
is export { * };
```

MagickGetImageSignature() generates an SHA-256 message digest for the image pixel stream.- wand: the magick wand. 

### MagickGetImageTicksPerSecond
- C:

```C
size_t MagickGetImageTicksPerSecond(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageTicksPerSecond(
   MagickWandPointer $wand
)
returns int32 
is native(&library)
is export { * };
```

MagickGetImageTicksPerSecond() gets the image ticks-per-second.- wand: the magick wand. 

### MagickGetImageType
- C:

```C
ImageType MagickGetImageType(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageType(
   MagickWandPointer $wand
)
returns ImageType 
is native(&library)
is export { * };
```

MagickGetImageType() gets the potential image type:Bilevel        Grayscale       GrayscaleMatte Palette        PaletteMatte    TrueColor TrueColorMatte ColorSeparation ColorSeparationMatteTo ensure the image type matches its potential, use MagickSetImageType():<pre class="text">    (void) MagickSetImageType(wand,MagickGetImageType(wand));</pre>- wand: the magick wand. 

### MagickGetImageUnits
- C:

```C
ResolutionType MagickGetImageUnits(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageUnits(
   MagickWandPointer $wand
)
returns ResolutionType 
is native(&library)
is export { * };
```

MagickGetImageUnits() gets the image units of resolution.- wand: the magick wand. 

### MagickGetImageVirtualPixelMethod
- C:

```C
VirtualPixelMethod MagickGetImageVirtualPixelMethod(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageVirtualPixelMethod(
   MagickWandPointer $wand
)
returns VirtualPixelMethod 
is native(&library)
is export { * };
```

MagickGetImageVirtualPixelMethod() returns the virtual pixel method for the sepcified image.- wand: the magick wand. 

### MagickGetImageWhitePoint
- C:

```C
MagickBooleanType MagickGetImageWhitePoint(MagickWand *wand,double *x,
  double *y)
```
- Perl 6:

```Perl6
sub MagickGetImageWhitePoint(
   MagickWandPointer $wand,
   num64* $x,
   num64* $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetImageWhitePoint() returns the chromaticy white point.- wand: the magick wand. - x: the chromaticity white x-point. - y: the chromaticity white y-point. 

### MagickGetImageWidth
- C:

```C
size_t MagickGetImageWidth(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageWidth(
   MagickWandPointer $wand
)
returns int32 
is native(&library)
is export { * };
```

MagickGetImageWidth() returns the image width.- wand: the magick wand. 

### MagickGetNumberImages
- C:

```C
size_t MagickGetNumberImages(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetNumberImages(
   MagickWandPointer $wand
)
returns int32 
is native(&library)
is export { * };
```

MagickGetNumberImages() returns the number of images associated with a magick wand.- wand: the magick wand. 

### MagickGetImageTotalInkDensity
- C:

```C
double MagickGetImageTotalInkDensity(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetImageTotalInkDensity(
   MagickWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

MagickGetImageTotalInkDensity() gets the image total ink density.- wand: the magick wand. 

### MagickHaldClutImage
- C:

```C
MagickBooleanType MagickHaldClutImage(MagickWand *wand,
  const MagickWand *hald_wand)
MagickBooleanType MagickHaldClutImageChannel(MagickWand *wand,
  const ChannelType channel,const MagickWand *hald_wand)
```
- Perl 6:

```Perl6
sub MagickHaldClutImage(
   MagickWandPointer $wand,
   MagickWandPointer $hald_wand
)
returns uint32 
is native(&library)
is export { * };

sub MagickHaldClutImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   MagickWandPointer $hald_wand
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickHaldClutImage() replaces colors in the image from a Hald color lookup table.   A Hald color lookup table is a 3-dimensional color cube mapped to 2 dimensions.  Create it with the HALD coder.  You can apply any color transformation to the Hald image and then use this method to apply the transform to the image.- wand: the magick wand. - hald_image: the hald CLUT image. 

### MagickHasNextImage
- C:

```C
MagickBooleanType MagickHasNextImage(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickHasNextImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickHasNextImage() returns MagickTrue if the wand has more images when traversing the list in the forward direction- wand: the magick wand. 

### MagickHasPreviousImage
- C:

```C
MagickBooleanType MagickHasPreviousImage(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickHasPreviousImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickHasPreviousImage() returns MagickTrue if the wand has more images when traversing the list in the reverse direction- wand: the magick wand. 

### MagickIdentifyImage
- C:

```C
const char *MagickIdentifyImage(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickIdentifyImage(
   MagickWandPointer $wand
)
returns Str
is native(&library)
is export { * };
```

MagickIdentifyImage() identifies an image by printing its attributes to the file.  Attributes include the image width, height, size, and others.- wand: the magick wand. 

### MagickImplodeImage
- C:

```C
MagickBooleanType MagickImplodeImage(MagickWand *wand,
  const double radius)
```
- Perl 6:

```Perl6
sub MagickImplodeImage(
   MagickWandPointer $wand,
   double $radius
)
returns uint32 
is native(&library)
is export { * };
```

MagickImplodeImage() creates a new image that is a copy of an existing one with the image pixels "implode" by the specified percentage.  It allocates the memory necessary for the new Image structure and returns a pointer to the new image.- wand: the magick wand. - amount: Define the extent of the implosion. 

### MagickImportImagePixels
- C:

```C
MagickBooleanType MagickImportImagePixels(MagickWand *wand,
  const ssize_t x,const ssize_t y,const size_t columns,
  const size_t rows,const char *map,const StorageType storage,
  const void *pixels)
```
- Perl 6:

```Perl6
sub MagickImportImagePixels(
   MagickWandPointer $wand,
   sint32 $x,
   sint32 $y,
   int32 $columns,
   int32 $rows,
   Str $map,
   StorageType $storage,
   Pointer[void] $pixels
)
returns uint32 
is native(&library)
is export { * };
```

MagickImportImagePixels() accepts pixel datand stores it in the image at the location you specify.  The method returns MagickFalse on success otherwise MagickTrue if an error is encountered.  The pixel data can be either char, short int, int, ssize_t, float, or double in the order specified by map.Suppose your want to upload the first scanline of a 640x480 image from character data in red-green-blue order:<pre class="text">MagickImportImagePixels(wand,0,0,640,1,"RGB",CharPixel,pixels);</pre>- wand: the magick wand. - x, y, columns, rows:  These values define the perimeter of a region of pixels you want to define. - map:  This string reflects the expected ordering of the pixel array. It can be any combination or order of R = red, G = green, B = blue, A = alpha (0 is transparent), O = opacity (0 is opaque), C = cyan, Y = yellow, M = magenta, K = black, I = intensity (for grayscale), P = pad. - storage: Define the data type of the pixels.  Float and double types are expected to be normalized [0..1] otherwise [0..QuantumRange].  Choose from these types: CharPixel, ShortPixel, IntegerPixel, LongPixel, FloatPixel, or DoublePixel. - pixels: This array of values contain the pixel components as defined by map and type.  You must preallocate this array where the expected length varies depending on the values of width, height, map, and type. 

### MagickInverseFourierTransformImage
- C:

```C
MagickBooleanType MagickInverseFourierTransformImage(
  MagickWand *magnitude_wand,MagickWand *phase_wand,
  const MagickBooleanType magnitude)
```
- Perl 6:

```Perl6
sub MagickInverseFourierTransformImage(
   MagickWandPointer $magnitude_wand,
   MagickWandPointer $phase_wand,
   uint32 $magnitude
)
returns uint32 
is native(&library)
is export { * };
```

MagickInverseFourierTransformImage() implements the inverse discrete Fourier transform (DFT) of the image either as a magnitude / phase or real / imaginary image pair.- magnitude_wand: the magnitude or real wand. - phase_wand: the phase or imaginary wand. - magnitude: if true, return as magnitude / phase pair otherwise a real / imaginary image pair. 

### MagickLabelImage
- C:

```C
MagickBooleanType MagickLabelImage(MagickWand *wand,const char *label)
```
- Perl 6:

```Perl6
sub MagickLabelImage(
   MagickWandPointer $wand,
   Str $label
)
returns uint32 
is native(&library)
is export { * };
```

MagickLabelImage() adds a label to your image.- wand: the magick wand. - label: the image label. 

### MagickLevelImage
- C:

```C
MagickBooleanType MagickLevelImage(MagickWand *wand,
  const double black_point,const double gamma,const double white_point)
MagickBooleanType MagickLevelImageChannel(MagickWand *wand,
  const ChannelType channel,const double black_point,const double gamma,
  const double white_point)
```
- Perl 6:

```Perl6
sub MagickLevelImage(
   MagickWandPointer $wand,
   double $black_point,
   double $gamma,
   double $white_point
)
returns uint32 
is native(&library)
is export { * };

sub MagickLevelImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   double $black_point,
   double $gamma,
   double $white_point
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickLevelImage() adjusts the levels of an image by scaling the colors falling between specified white and black points to the full available quantum range. The parameters provided represent the black, mid, and white points. The black point specifies the darkest color in the image. Colors darker than the black point are set to zero. Mid point specifies a gamma correction to apply to the image.  White point specifies the lightest color in the image. Colors brighter than the white point are set to the maximum quantum value.- wand: the magick wand. - channel: Identify which channel to level: RedChannel, GreenChannel, - black_point: the black point. - gamma: the gamma. - white_point: the white point. 

### MagickLinearStretchImage
- C:

```C
MagickBooleanType MagickLinearStretchImage(MagickWand *wand,
  const double black_point,const double white_point)
```
- Perl 6:

```Perl6
sub MagickLinearStretchImage(
   MagickWandPointer $wand,
   double $black_point,
   double $white_point
)
returns uint32 
is native(&library)
is export { * };
```

MagickLinearStretchImage() stretches with saturation the image intensity.You can also reduce the influence of a particular channel with a gamma value of 0.- wand: the magick wand. - black_point: the black point. - white_point: the white point. 

### MagickLiquidRescaleImage
- C:

```C
MagickBooleanType MagickMagnifyImage(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickMagnifyImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickLiquidRescaleImage() rescales image with seam carving.MagickBooleanType MagickLiquidRescaleImage(MagickWand \*wand, const size_t columns,const size_t rows,const double delta_x, const double rigidity)- wand: the magick wand. - columns: the number of columns in the scaled image. - rows: the number of rows in the scaled image. - delta_x: maximum seam transversal step (0 means straight seams). - rigidity: introduce a bias for non-straight seams (typically 0). <h2><a href="http://www.imagemagick.org/api/MagickWand/magick-image_8c.html" id="MagickLocalContrastImage">MagickLocalContrastImage</a></h2>MagickLocalContrastImage() attempts to increase the appearance of large-scale light-dark transitions. Local contrast enhancement works similarly to sharpening with an unsharp mask, however the mask is instead created using an image with a greater blur distance.MagickBooleanType MagickLocalContrastImage(MagickWand \*wand, const double radius,const double strength)- image: the image. - radius: the radius of the Gaussian, in pixels, not counting the center pixel. - strength: the strength of the blur mask in percentage. <h2><a href="http://www.imagemagick.org/api/MagickWand/magick-image_8c.html" id="MagickMagnifyImage">MagickMagnifyImage</a></h2>MagickMagnifyImage() is a convenience method that scales an image proportionally to twice its original size.- wand: the magick wand. 

### MagickMergeImageLayers
- C:

```C
MagickWand *MagickMergeImageLayers(MagickWand *wand,
  const ImageLayerMethod method)
```
- Perl 6:

```Perl6
sub MagickMergeImageLayers(
   MagickWandPointer $wand,
   ImageLayerMethod $method
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickMergeImageLayers() composes all the image layers from the current given image onward to produce a single image of the merged layers.The inital canvas's size depends on the given ImageLayerMethod, and is initialized using the first images background color.  The images are then compositied onto that image in sequence using the given composition that has been assigned to each individual image.- wand: the magick wand. - method: the method of selecting the size of the initial canvas. <dd> MergeLayer: Merge all layers onto a canvas just large enough to hold all the actual images. The virtual canvas of the first image is preserved but otherwise ignored. </dd><dd> FlattenLayer: Use the virtual canvas size of first image. Images which fall outside this canvas is clipped. This can be used to 'fill out' a given virtual canvas. </dd><dd> MosaicLayer: Start with the virtual canvas of the first image, enlarging left and right edges to contain all images. Images with negative offsets will be clipped. </dd>

### MagickMinifyImage
- C:

```C
MagickBooleanType MagickMinifyImage(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickMinifyImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickMinifyImage() is a convenience method that scales an image proportionally to one-half its original size- wand: the magick wand. 

### MagickModulateImage
- C:

```C
MagickBooleanType MagickModulateImage(MagickWand *wand,
  const double brightness,const double saturation,const double hue)
```
- Perl 6:

```Perl6
sub MagickModulateImage(
   MagickWandPointer $wand,
   double $brightness,
   double $saturation,
   double $hue
)
returns uint32 
is native(&library)
is export { * };
```

MagickModulateImage() lets you control the brightness, saturation, and hue of an image.  Hue is the percentage of absolute rotation from the current position.  For example 50 results in a counter-clockwise rotation of 90 degrees, 150 results in a clockwise rotation of 90 degrees, with 0 and 200 both resulting in a rotation of 180 degrees.To increase the color brightness by 20 and decrease the color saturation by 10 and leave the hue unchanged, use: 120,90,100.- wand: the magick wand. - brightness: the percent change in brighness. - saturation: the percent change in saturation. - hue: the percent change in hue. 

### MagickMontageImage
- C:

```C
MagickWand *MagickMontageImage(MagickWand *wand,
  const DrawingWand drawing_wand,const char *tile_geometry,
  const char *thumbnail_geometry,const MontageMode mode,
  const char *frame)
```
- Perl 6:

```Perl6
sub MagickMontageImage(
   MagickWandPointer $wand,
   DrawingWand $drawing_wand,
   Str $tile_geometry,
   Str $thumbnail_geometry,
   MontageMode $mode,
   Str $frame
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickMontageImage() creates a composite image by combining several separate images. The images are tiled on the composite image with the name of the image optionally appearing just below the individual tile.- wand: the magick wand. - drawing_wand: the drawing wand.  The font name, size, and color are obtained from this wand. - tile_geometry: the number of tiles per row and page (e.g. 6x4+0+0). - thumbnail_geometry: Preferred image size and border size of each thumbnail (e.g. 120x120+4+3&gt;). - mode: Thumbnail framing mode: Frame, Unframe, or Concatenate. - frame: Surround the image with an ornamental border (e.g. 15x15+3+3). The frame color is that of the thumbnail's matte color. 

### MagickMorphImages
- C:

```C
MagickWand *MagickMorphImages(MagickWand *wand,
  const size_t number_frames)
```
- Perl 6:

```Perl6
sub MagickMorphImages(
   MagickWandPointer $wand,
   int32 $number_frames
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickMorphImages() method morphs a set of images.  Both the image pixels and size are linearly interpolated to give the appearance of a meta-morphosis from one image to the next.- wand: the magick wand. - number_frames: the number of in-between images to generate. 

### MagickMorphologyImage
- C:

```C
MagickBooleanType MagickMorphologyImage(MagickWand *wand,
  MorphologyMethod method,const ssize_t iterations,KernelInfo *kernel)
MagickBooleanType MagickMorphologyImageChannel(MagickWand *wand,
  ChannelType channel,MorphologyMethod method,const ssize_t iterations,
  KernelInfo *kernel)
```
- Perl 6:

```Perl6
sub MagickMorphologyImage(
   MagickWandPointer $wand,
   MorphologyMethod $method,
   sint32 $iterations,
   KernelInfo * $kernel
)
returns uint32 
is native(&library)
is export { * };

sub MagickMorphologyImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   MorphologyMethod $method,
   sint32 $iterations,
   KernelInfo * $kernel
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickMorphologyImage() applies a user supplied kernel to the image according to the given mophology method.- wand: the magick wand. - channel: the image channel(s). - method: the morphology method to be applied. - iterations: apply the operation this many times (or no change). A value of -1 means loop until no change found.  How this is applied may depend on the morphology method.  Typically this is a value of 1. - kernel: An array of doubles representing the morphology kernel. 

### MagickMotionBlurImage
- C:

```C
MagickBooleanType MagickMotionBlurImage(MagickWand *wand,
  const double radius,const double sigma,const double angle)
MagickBooleanType MagickMotionBlurImageChannel(MagickWand *wand,
  const ChannelType channel,const double radius,const double sigma,
  const double angle)
```
- Perl 6:

```Perl6
sub MagickMotionBlurImage(
   MagickWandPointer $wand,
   double $radius,
   double $sigma,
   double $angle
)
returns uint32 
is native(&library)
is export { * };

sub MagickMotionBlurImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   double $radius,
   double $sigma,
   double $angle
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickMotionBlurImage() simulates motion blur.  We convolve the image with a Gaussian operator of the given radius and standard deviation (sigma). For reasonable results, radius should be larger than sigma.  Use a radius of 0 and MotionBlurImage() selects a suitable radius for you. Angle gives the angle of the blurring motion.- wand: the magick wand. - channel: the image channel(s). - radius: the radius of the Gaussian, in pixels, not counting the center pixel. - sigma: the standard deviation of the Gaussian, in pixels. - angle: Apply the effect along this angle. 

### MagickNegateImage
- C:

```C
MagickBooleanType MagickNegateImage(MagickWand *wand,
  const MagickBooleanType gray)
MagickBooleanType MagickNegateImageChannel(MagickWand *wand,
  const ChannelType channel,const MagickBooleanType gray)
```
- Perl 6:

```Perl6
sub MagickNegateImage(
   MagickWandPointer $wand,
   uint32 $gray
)
returns uint32 
is native(&library)
is export { * };

sub MagickNegateImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   uint32 $gray
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickNegateImage() negates the colors in the reference image.  The Grayscale option means that only grayscale values within the image are negated.You can also reduce the influence of a particular channel with a gamma value of 0.- wand: the magick wand. - channel: the image channel(s). - gray: If MagickTrue, only negate grayscale pixels within the image. 

### MagickNewImage
- C:

```C
MagickBooleanType MagickNewImage(MagickWand *wand,
  const size_t columns,const size_t rows,
  const PixelWand *background)
```
- Perl 6:

```Perl6
sub MagickNewImage(
   MagickWandPointer $wand,
   int32 $columns,
   int32 $rows,
   PixelWandPointer $background
)
returns uint32 
is native(&library)
is export { * };
```

MagickNewImage() adds a blank image canvas of the specified size and background color to the wand.- wand: the magick wand. - width: the image width. - height: the image height. - background: the image color. 

### MagickNextImage
- C:

```C
MagickBooleanType MagickNextImage(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickNextImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickNextImage() sets the next image in the wand as the current image.It is typically used after MagickResetIterator(), after which its first use will set the first image as the current image (unless the wand is empty).It will return MagickFalse when no more images are left to be returned which happens when the wand is empty, or the current image is the last image.When the above condition (end of image list) is reached, the iterator is automaticall set so that you can start using MagickPreviousImage() to again iterate over the images in the reverse direction, starting with the last image (again).  You can jump to this condition immeditally using MagickSetLastIterator().- wand: the magick wand. 

### MagickNormalizeImage
- C:

```C
MagickBooleanType MagickNormalizeImage(MagickWand *wand)
MagickBooleanType MagickNormalizeImageChannel(MagickWand *wand,
  const ChannelType channel)
```
- Perl 6:

```Perl6
sub MagickNormalizeImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };

sub MagickNormalizeImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickNormalizeImage() enhances the contrast of a color image by adjusting the pixels color to span the entire range of colors availableYou can also reduce the influence of a particular channel with a gamma value of 0.- wand: the magick wand. - channel: the image channel(s). 

### MagickOilPaintImage
- C:

```C
MagickBooleanType MagickOilPaintImage(MagickWand *wand,
  const double radius)
```
- Perl 6:

```Perl6
sub MagickOilPaintImage(
   MagickWandPointer $wand,
   double $radius
)
returns uint32 
is native(&library)
is export { * };
```

MagickOilPaintImage() applies a special effect filter that simulates an oil painting.  Each pixel is replaced by the most frequent color occurring in a circular region defined by radius.- wand: the magick wand. - radius: the radius of the circular neighborhood. 

### MagickOpaquePaintImage
- C:

```C
MagickBooleanType MagickOpaquePaintImage(MagickWand *wand,
  const PixelWand *target,const PixelWand *fill,const double fuzz,
  const MagickBooleanType invert)
MagickBooleanType MagickOpaquePaintImageChannel(MagickWand *wand,
  const ChannelType channel,const PixelWand *target,
  const PixelWand *fill,const double fuzz,const MagickBooleanType invert)
```
- Perl 6:

```Perl6
sub MagickOpaquePaintImage(
   MagickWandPointer $wand,
   PixelWandPointer $target,
   PixelWandPointer $fill,
   double $fuzz,
   uint32 $invert
)
returns uint32 
is native(&library)
is export { * };

sub MagickOpaquePaintImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   PixelWandPointer $target,
   PixelWandPointer $fill,
   double $fuzz,
   uint32 $invert
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickOpaquePaintImage() changes any pixel that matches color with the color defined by fill.- wand: the magick wand. - channel: the channel(s). - target: Change this target color to the fill color within the image. - fill: the fill pixel wand. - fuzz: By default target must match a particular pixel color exactly.  However, in many cases two colors may differ by a small amount. The fuzz member of image defines how much tolerance is acceptable to consider two colors as the same.  For example, set fuzz to 10 and the color red at intensities of 100 and 102 respectively are now interpreted as the same color for the purposes of the floodfill. - invert: paint any pixel that does not match the target color. 

### MagickOptimizeImageLayers
- C:

```C
MagickWand *MagickOptimizeImageLayers(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickOptimizeImageLayers(
   MagickWandPointer $wand
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickOptimizeImageLayers() compares each image the GIF disposed forms of the previous image in the sequence.  From this it attempts to select the smallest cropped image to replace each frame, while preserving the results of the animation.- wand: the magick wand. 

### MagickOptimizeImageTransparency
- C:

```C
MagickBooleanType MagickOrderedPosterizeImage(MagickWand *wand,
  const char *threshold_map)
MagickBooleanType MagickOrderedPosterizeImageChannel(MagickWand *wand,
  const ChannelType channel,const char *threshold_map)
```
- Perl 6:

```Perl6
sub MagickOrderedPosterizeImage(
   MagickWandPointer $wand,
   Str $threshold_map
)
returns uint32 
is native(&library)
is export { * };

sub MagickOrderedPosterizeImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   Str $threshold_map
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickOptimizeImageTransparency() takes a frame optimized GIF animation, and compares the overlayed pixels against the disposal image resulting from all the previous frames in the animation.  Any pixel that does not change the disposal image (and thus does not effect the outcome of an overlay) is made transparent.WARNING: This modifies the current images directly, rather than generate a new image sequence. The format of the MagickOptimizeImageTransparency method is:<pre class="text">MagickBooleanType MagickOptimizeImageTransparency(MagickWand \*wand)</pre>- wand: the magick wand. <h2><a href="http://www.imagemagick.org/api/MagickWand/magick-image_8c.html" id="MagickOrderedPosterizeImage">MagickOrderedPosterizeImage</a></h2>MagickOrderedPosterizeImage() performs an ordered dither based on a number of pre-defined dithering threshold maps, but over multiple intensity levels, which can be different for different channels, according to the input arguments.- image: the image. - channel: the channel or channels to be thresholded. - threshold_map: A string containing the name of the threshold dither map to use, followed by zero or more numbers representing the number of color levels tho dither between. <dd> Any level number less than 2 is equivalent to 2, and means only binary dithering will be applied to each color channel. </dd><dd> No numbers also means a 2 level (bitmap) dither will be applied to all channels, while a single number is the number of levels applied to each channel in sequence.  More numbers will be applied in turn to each of the color channels. </dd><dd> For example: "o3x3,6" generates a 6 level posterization of the image with a ordered 3x3 diffused pixel dither being applied between each level. While checker,8,8,4 will produce a 332 colormaped image with only a single checkerboard hash pattern (50 grey) between each color level, to basically double the number of color levels with a bare minimim of dithering. </dd>

### MagickPingImage
- C:

```C
MagickBooleanType MagickPingImage(MagickWand *wand,const char *filename)
```
- Perl 6:

```Perl6
sub MagickPingImage(
   MagickWandPointer $wand,
   Str $filename
)
returns uint32 
is native(&library)
is export { * };
```

MagickPingImage() is like MagickReadImage() except the only valid information returned is the image width, height, size, and format.  It is designed to efficiently obtain this information from a file without reading the entire image sequence into memory.- wand: the magick wand. - filename: the image filename. 

### MagickPingImageBlob
- C:

```C
MagickBooleanType MagickPingImageBlob(MagickWand *wand,
  const void *blob,const size_t length)
```
- Perl 6:

```Perl6
sub MagickPingImageBlob(
   MagickWandPointer $wand,
   Pointer[void] $blob,
   int32 $length
)
returns uint32 
is native(&library)
is export { * };
```

MagickPingImageBlob() pings an image or image sequence from a blob.- wand: the magick wand. - blob: the blob. - length: the blob length. 

### MagickPingImageFile
- C:

```C
MagickBooleanType MagickPingImageFile(MagickWand *wand,FILE *file)
```
- Perl 6:

```Perl6
sub MagickPingImageFile(
   MagickWandPointer $wand,
   FILE * $file
)
returns uint32 
is native(&library)
is export { * };
```

MagickPingImageFile() pings an image or image sequence from an open file descriptor.- wand: the magick wand. - file: the file descriptor. 

### MagickPolaroidImage
- C:

```C
MagickBooleanType MagickPolaroidImage(MagickWand *wand,
  const DrawingWand *drawing_wand,const double angle)
```
- Perl 6:

```Perl6
sub MagickPolaroidImage(
   MagickWandPointer $wand,
   DrawingWandPointer $drawing_wand,
   double $angle
)
returns uint32 
is native(&library)
is export { * };
```

MagickPolaroidImage() simulates a Polaroid picture.- wand: the magick wand. - drawing_wand: the draw wand. - angle: Apply the effect along this angle. 

### MagickPosterizeImage
- C:

```C
MagickBooleanType MagickPosterizeImage(MagickWand *wand,
  const size_t levels,const MagickBooleanType dither)
```
- Perl 6:

```Perl6
sub MagickPosterizeImage(
   MagickWandPointer $wand,
   int32 $levels,
   uint32 $dither
)
returns uint32 
is native(&library)
is export { * };
```

MagickPosterizeImage() reduces the image to a limited number of color level.- wand: the magick wand. - levels: Number of color levels allowed in each channel.  Very low values (2, 3, or 4) have the most visible effect. - dither: Set this integer value to something other than zero to dither the mapped image. 

### MagickPreviewImages
- C:

```C
MagickWand *MagickPreviewImages(MagickWand *wand,
  const PreviewType preview)
```
- Perl 6:

```Perl6
sub MagickPreviewImages(
   MagickWandPointer $wand,
   PreviewType $preview
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickPreviewImages() tiles 9 thumbnails of the specified image with an image processing operation applied at varying strengths.  This helpful to quickly pin-point an appropriate parameter for an image processing operation.- wand: the magick wand. - preview: the preview type. 

### MagickPreviousImage
- C:

```C
MagickBooleanType MagickPreviousImage(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickPreviousImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickPreviousImage() sets the previous image in the wand as the current image.It is typically used after MagickSetLastIterator(), after which its first use will set the last image as the current image (unless the wand is empty).It will return MagickFalse when no more images are left to be returned which happens when the wand is empty, or the current image is the first image.  At that point the iterator is than reset to again process images in the forward direction, again starting with the first image in list. Images added at this point are prepended.Also at that point any images added to the wand using MagickAddImages() or MagickReadImages() will be prepended before the first image. In this sense the condition is not quite exactly the same as MagickResetIterator().- wand: the magick wand. 

### MagickQuantizeImage
- C:

```C
MagickBooleanType MagickQuantizeImage(MagickWand *wand,
  const size_t number_colors,const ColorspaceType colorspace,
  const size_t treedepth,const MagickBooleanType dither,
  const MagickBooleanType measure_error)
```
- Perl 6:

```Perl6
sub MagickQuantizeImage(
   MagickWandPointer $wand,
   int32 $number_colors,
   ColorspaceType $colorspace,
   int32 $treedepth,
   uint32 $dither,
   uint32 $measure_error
)
returns uint32 
is native(&library)
is export { * };
```

MagickQuantizeImage() analyzes the colors within a reference image and chooses a fixed number of colors to represent the image.  The goal of the algorithm is to minimize the color difference between the input and output image while minimizing the processing time.- wand: the magick wand. - number_colors: the number of colors. - colorspace: Perform color reduction in this colorspace, typically RGBColorspace. - treedepth: Normally, this integer value is zero or one.  A zero or one tells Quantize to choose a optimal tree depth of Log4(number_colors).      A tree of this depth generally allows the best representation of the reference image with the least amount of memory and the fastest computational speed.  In some cases, such as an image with low color dispersion (a few number of colors), a value other than Log4(number_colors) is required.  To expand the color tree completely, use a value of 8. - dither: A value other than zero distributes the difference between an original image and the corresponding color reduced image to neighboring pixels along a Hilbert curve. - measure_error: A value other than zero measures the difference between the original and quantized images.  This difference is the total quantization error.  The error is computed by summing over all pixels in an image the distance squared in RGB space between each reference pixel value and its quantized value. 

### MagickQuantizeImages
- C:

```C
MagickBooleanType MagickQuantizeImages(MagickWand *wand,
  const size_t number_colors,const ColorspaceType colorspace,
  const size_t treedepth,const MagickBooleanType dither,
  const MagickBooleanType measure_error)
```
- Perl 6:

```Perl6
sub MagickQuantizeImages(
   MagickWandPointer $wand,
   int32 $number_colors,
   ColorspaceType $colorspace,
   int32 $treedepth,
   uint32 $dither,
   uint32 $measure_error
)
returns uint32 
is native(&library)
is export { * };
```

MagickQuantizeImages() analyzes the colors within a sequence of images and chooses a fixed number of colors to represent the image.  The goal of the algorithm is to minimize the color difference between the input and output image while minimizing the processing time.- wand: the magick wand. - number_colors: the number of colors. - colorspace: Perform color reduction in this colorspace, typically RGBColorspace. - treedepth: Normally, this integer value is zero or one.  A zero or one tells Quantize to choose a optimal tree depth of Log4(number_colors).      A tree of this depth generally allows the best representation of the reference image with the least amount of memory and the fastest computational speed.  In some cases, such as an image with low color dispersion (a few number of colors), a value other than Log4(number_colors) is required.  To expand the color tree completely, use a value of 8. - dither: A value other than zero distributes the difference between an original image and the corresponding color reduced algorithm to neighboring pixels along a Hilbert curve. - measure_error: A value other than zero measures the difference between the original and quantized images.  This difference is the total quantization error.  The error is computed by summing over all pixels in an image the distance squared in RGB space between each reference pixel value and its quantized value. 

### MagickRaiseImage
- C:

```C
MagickBooleanType MagickRaiseImage(MagickWand *wand,
  const size_t width,const size_t height,const ssize_t x,
  const ssize_t y,const MagickBooleanType raise)
```
- Perl 6:

```Perl6
sub MagickRaiseImage(
   MagickWandPointer $wand,
   int32 $width,
   int32 $height,
   sint32 $x,
   sint32 $y,
   uint32 $raise
)
returns uint32 
is native(&library)
is export { * };
```

MagickRaiseImage() creates a simulated three-dimensional button-like effect by lightening and darkening the edges of the image.  Members width and height of raise_info define the width of the vertical and horizontal edge of the effect.- wand: the magick wand. - width,height,x,y:  Define the dimensions of the area to raise. - raise: A value other than zero creates a 3-D raise effect, otherwise it has a lowered effect. 

### MagickRandomThresholdImage
- C:

```C
MagickBooleanType MagickRandomThresholdImage(MagickWand *wand,
  const double low,const double high)
MagickBooleanType MagickRandomThresholdImageChannel(MagickWand *wand,
  const ChannelType channel,const double low,const double high)
```
- Perl 6:

```Perl6
sub MagickRandomThresholdImage(
   MagickWandPointer $wand,
   double $low,
   double $high
)
returns uint32 
is native(&library)
is export { * };

sub MagickRandomThresholdImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   double $low,
   double $high
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickRandomThresholdImage() changes the value of individual pixels based on the intensity of each pixel compared to threshold.  The result is a high-contrast, two color image.- wand: the magick wand. - channel: the image channel(s). - low,high: Specify the high and low thresholds.  These values range from 0 to QuantumRange. 

### MagickReadImage
- C:

```C
MagickBooleanType MagickReadImage(MagickWand *wand,const char *filename)
```
- Perl 6:

```Perl6
sub MagickReadImage(
   MagickWandPointer $wand,
   Str $filename
)
returns uint32 
is native(&library)
is export { * };
```

MagickReadImage() reads an image or image sequence.  The images are inserted at the current image pointer position.   Use MagickSetFirstIterator(), MagickSetLastIterator, or MagickSetIteratorIndex() to specify the current image pointer position at the beginning of the image list, the end, or anywhere in-between respectively.- wand: the magick wand. - filename: the image filename. 

### MagickReadImageBlob
- C:

```C
MagickBooleanType MagickReadImageBlob(MagickWand *wand,
  const void *blob,const size_t length)
```
- Perl 6:

```Perl6
sub MagickReadImageBlob(
   MagickWandPointer $wand,
   Pointer[void] $blob,
   int32 $length
)
returns uint32 
is native(&library)
is export { * };
```

MagickReadImageBlob() reads an image or image sequence from a blob.- wand: the magick wand. - blob: the blob. - length: the blob length. 

### MagickReadImageFile
- C:

```C
MagickBooleanType MagickReadImageFile(MagickWand *wand,FILE *file)
```
- Perl 6:

```Perl6
sub MagickReadImageFile(
   MagickWandPointer $wand,
   FILE * $file
)
returns uint32 
is native(&library)
is export { * };
```

MagickReadImageFile() reads an image or image sequence from an open file descriptor.- wand: the magick wand. - file: the file descriptor. 

### MagickRemapImage
- C:

```C
MagickBooleanType MagickRemapImage(MagickWand *wand,
  const MagickWand *remap_wand,const DitherMethod method)
```
- Perl 6:

```Perl6
sub MagickRemapImage(
   MagickWandPointer $wand,
   MagickWandPointer $remap_wand,
   DitherMethod $method
)
returns uint32 
is native(&library)
is export { * };
```

MagickRemapImage() replaces the colors of an image with the closest color from a reference image.- wand: the magick wand. - affinity: the affinity wand. - method: choose from these dither methods: NoDitherMethod, RiemersmaDitherMethod, or FloydSteinbergDitherMethod. 

### MagickRemoveImage
- C:

```C
MagickBooleanType MagickRemoveImage(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickRemoveImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickRemoveImage() removes an image from the image list.- wand: the magick wand. - insert: the splice wand. 

### MagickResampleImage
- C:

```C
MagickBooleanType MagickResampleImage(MagickWand *wand,
  const double x_resolution,const double y_resolution,
  const FilterTypes filter,const double blur)
```
- Perl 6:

```Perl6
sub MagickResampleImage(
   MagickWandPointer $wand,
   double $x_resolution,
   double $y_resolution,
   FilterTypes $filter,
   double $blur
)
returns uint32 
is native(&library)
is export { * };
```

MagickResampleImage() resample image to desired resolution.Bessel   Blackman   Box Catrom   Cubic      Gaussian Hanning  Hermite    Lanczos Mitchell Point      Quandratic Sinc     TriangleMost of the filters are FIR (finite impulse response), however, Bessel, Gaussian, and Sinc are IIR (infinite impulse response).  Bessel and Sinc are windowed (brought down to zero) with the Blackman filter.- wand: the magick wand. - x_resolution: the new image x resolution. - y_resolution: the new image y resolution. - filter: Image filter to use. - blur: the blur factor where &gt; 1 is blurry, &lt; 1 is sharp. 

### MagickResetImagePage
- C:

```C
MagickBooleanType MagickResetImagePage(MagickWand *wand,
  const char *page)
```
- Perl 6:

```Perl6
sub MagickResetImagePage(
   MagickWandPointer $wand,
   Str $page
)
returns uint32 
is native(&library)
is export { * };
```

MagickResetImagePage() resets the Wand page canvas and position.- wand: the magick wand. - page: the relative page specification. 

### MagickResizeImage
- C:

```C
MagickBooleanType MagickResizeImage(MagickWand *wand,
  const size_t columns,const size_t rows,
  const FilterTypes filter,const double blur)
```
- Perl 6:

```Perl6
sub MagickResizeImage(
   MagickWandPointer $wand,
   int32 $columns,
   int32 $rows,
   FilterTypes $filter,
   double $blur
)
returns uint32 
is native(&library)
is export { * };
```

MagickResizeImage() scales an image to the desired dimensions with one of these filters:<pre class="text">    Bessel   Blackman   Box    Catrom   CubicGaussian    Hanning  Hermite    Lanczos    Mitchell PointQuandratic    Sinc     Triangle</pre>Most of the filters are FIR (finite impulse response), however, Bessel, Gaussian, and Sinc are IIR (infinite impulse response).  Bessel and Sinc are windowed (brought down to zero) with the Blackman filter.- wand: the magick wand. - columns: the number of columns in the scaled image. - rows: the number of rows in the scaled image. - filter: Image filter to use. - blur: the blur factor where &gt; 1 is blurry, &lt; 1 is sharp. 

### MagickRollImage
- C:

```C
MagickBooleanType MagickRollImage(MagickWand *wand,const ssize_t x,
  const size_t y)
```
- Perl 6:

```Perl6
sub MagickRollImage(
   MagickWandPointer $wand,
   sint32 $x,
   int32 $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickRollImage() offsets an image as defined by x and y.- wand: the magick wand. - x: the x offset. - y: the y offset. 

### MagickRotateImage
- C:

```C
MagickBooleanType MagickRotateImage(MagickWand *wand,
  const PixelWand *background,const double degrees)
```
- Perl 6:

```Perl6
sub MagickRotateImage(
   MagickWandPointer $wand,
   PixelWandPointer $background,
   double $degrees
)
returns uint32 
is native(&library)
is export { * };
```

MagickRotateImage() rotates an image the specified number of degrees. Empty triangles left over from rotating the image are filled with the background color.- wand: the magick wand. - background: the background pixel wand. - degrees: the number of degrees to rotate the image. 

### MagickRotationalBlurImage
- C:

```C
MagickBooleanType MagickRotationalBlurImage(MagickWand *wand,
  const double angle)
MagickBooleanType MagickRotationalBlurImageChannel(MagickWand *wand,
  const ChannelType channel,const double angle)
```
- Perl 6:

```Perl6
sub MagickRotationalBlurImage(
   MagickWandPointer $wand,
   double $angle
)
returns uint32 
is native(&library)
is export { * };

sub MagickRotationalBlurImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   double $angle
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickRotationalBlurImage() rotational blurs an image.- wand: the magick wand. - channel: the image channel(s). - angle: the angle of the blur in degrees. 

### MagickSampleImage
- C:

```C
MagickBooleanType MagickSampleImage(MagickWand *wand,
  const size_t columns,const size_t rows)
```
- Perl 6:

```Perl6
sub MagickSampleImage(
   MagickWandPointer $wand,
   int32 $columns,
   int32 $rows
)
returns uint32 
is native(&library)
is export { * };
```

MagickSampleImage() scales an image to the desired dimensions with pixel sampling.  Unlike other scaling methods, this method does not introduce any additional color into the scaled image.- wand: the magick wand. - columns: the number of columns in the scaled image. - rows: the number of rows in the scaled image. 

### MagickScaleImage
- C:

```C
MagickBooleanType MagickScaleImage(MagickWand *wand,
  const size_t columns,const size_t rows)
```
- Perl 6:

```Perl6
sub MagickScaleImage(
   MagickWandPointer $wand,
   int32 $columns,
   int32 $rows
)
returns uint32 
is native(&library)
is export { * };
```

MagickScaleImage() scales the size of an image to the given dimensions.- wand: the magick wand. - columns: the number of columns in the scaled image. - rows: the number of rows in the scaled image. 

### MagickSegmentImage
- C:

```C
MagickBooleanType MagickSegmentImage(MagickWand *wand,
  const ColorspaceType colorspace,const MagickBooleanType verbose,
  const double cluster_threshold,const double smooth_threshold)
```
- Perl 6:

```Perl6
sub MagickSegmentImage(
   MagickWandPointer $wand,
   ColorspaceType $colorspace,
   uint32 $verbose,
   double $cluster_threshold,
   double $smooth_threshold
)
returns uint32 
is native(&library)
is export { * };
```

MagickSegmentImage() segments an image by analyzing the histograms of the color components and identifying units that are homogeneous with the fuzzy C-means technique.A description of each parameter follows.- wand</dt>the wand.<dt>colorspace</dt>the image colorspace.<dt>verbose</dt>Set to MagickTrue to print detailed information about the identified classes.<dt>cluster_threshold</dt>This represents the minimum number of pixels contained in a hexahedra before it can be considered valid (expressed as a percentage).<dt>smooth_threshold</dt>the smoothing threshold eliminates noise in the second derivative of the histogram.  As the value is increased, you can expect a smoother second derivative.<h2><a href="http://www.imagemagick.org/api/MagickWand/magick-image_8c.html" id="MagickSelectiveBlurImage">MagickSelectiveBlurImage</a></h2>MagickSelectiveBlurImage() selectively blur an image within a contrast threshold. It is similar to the unsharpen mask that sharpens everything with contrast above a certain threshold.The format of the MagickSelectiveBlurImage method is:<pre class="text">MagickBooleanType MagickSelectiveBlurImage(MagickWand \*wand,  const double radius,const double sigma,const double threshold)MagickBooleanType MagickSelectiveBlurImageChannel(MagickWand \*wand,  const ChannelType channel,const double radius,const double sigma,  const double threshold)</pre><dt>wand: the magick wand. - channel: the image channel(s). - radius: the radius of the gaussian, in pixels, not counting the center pixel. - sigma: the standard deviation of the gaussian, in pixels. - threshold: only pixels within this contrast threshold are included in the blur operation. 

### MagickSeparateImageChannel
- C:

```C
MagickBooleanType MagickSeparateImageChannel(MagickWand *wand,
  const ChannelType channel)
```
- Perl 6:

```Perl6
sub MagickSeparateImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel
)
returns uint32 
is native(&library)
is export { * };
```

MagickSeparateImageChannel() separates a channel from the image and returns a grayscale image.  A channel is a particular color component of each pixel in the image.- wand: the magick wand. - channel: the image channel(s). 

### MagickSepiaToneImage
- C:

```C
MagickBooleanType MagickSepiaToneImage(MagickWand *wand,
  const double threshold)
```
- Perl 6:

```Perl6
sub MagickSepiaToneImage(
   MagickWandPointer $wand,
   double $threshold
)
returns uint32 
is native(&library)
is export { * };
```

MagickSepiaToneImage() applies a special effect to the image, similar to the effect achieved in a photo darkroom by sepia toning.  Threshold ranges from 0 to QuantumRange and is a measure of the extent of the sepia toning.  A threshold of 80 is a good starting point for a reasonable tone.- wand: the magick wand. - threshold:  Define the extent of the sepia toning. 

### MagickSetImage
- C:

```C
MagickBooleanType MagickSetImage(MagickWand *wand,
  const MagickWand *set_wand)
```
- Perl 6:

```Perl6
sub MagickSetImage(
   MagickWandPointer $wand,
   MagickWandPointer $set_wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImage() replaces the last image returned by MagickSetIteratorIndex(), MagickNextImage(), MagickPreviousImage() with the images from the specified wand.- wand: the magick wand. - set_wand: the set_wand wand. 

### MagickSetImageAlphaChannel
- C:

```C
MagickBooleanType MagickSetImageAlphaChannel(MagickWand *wand,
  const AlphaChannelType alpha_type)
```
- Perl 6:

```Perl6
sub MagickSetImageAlphaChannel(
   MagickWandPointer $wand,
   AlphaChannelType $alpha_type
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageAlphaChannel() activates, deactivates, resets, or sets the alpha channel.- wand: the magick wand. - alpha_type: the alpha channel type: ActivateAlphaChannel, DeactivateAlphaChannel, OpaqueAlphaChannel, or SetAlphaChannel. 

### MagickSetImageBackgroundColor
- C:

```C
MagickBooleanType MagickSetImageBackgroundColor(MagickWand *wand,
  const PixelWand *background)
```
- Perl 6:

```Perl6
sub MagickSetImageBackgroundColor(
   MagickWandPointer $wand,
   PixelWandPointer $background
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageBackgroundColor() sets the image background color.- wand: the magick wand. - background: the background pixel wand. 

### MagickSetImageBias
- C:

```C
MagickBooleanType MagickSetImageBias(MagickWand *wand,
  const double bias)
```
- Perl 6:

```Perl6
sub MagickSetImageBias(
   MagickWandPointer $wand,
   double $bias
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageBias() sets the image bias for any method that convolves an image (e.g. MagickConvolveImage()).- wand: the magick wand. - bias: the image bias. 

### MagickSetImageBluePrimary
- C:

```C
MagickBooleanType MagickSetImageBluePrimary(MagickWand *wand,
  const double x,const double y)
```
- Perl 6:

```Perl6
sub MagickSetImageBluePrimary(
   MagickWandPointer $wand,
   double $x,
   double $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageBluePrimary() sets the image chromaticity blue primary point.- wand: the magick wand. - x: the blue primary x-point. - y: the blue primary y-point. 

### MagickSetImageBorderColor
- C:

```C
MagickBooleanType MagickSetImageBorderColor(MagickWand *wand,
  const PixelWand *border)
```
- Perl 6:

```Perl6
sub MagickSetImageBorderColor(
   MagickWandPointer $wand,
   PixelWandPointer $border
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageBorderColor() sets the image border color.- wand: the magick wand. - border: the border pixel wand. 

### MagickSetImageChannelDepth
- C:

```C
MagickBooleanType MagickSetImageChannelDepth(MagickWand *wand,
  const ChannelType channel,const size_t depth)
```
- Perl 6:

```Perl6
sub MagickSetImageChannelDepth(
   MagickWandPointer $wand,
   ChannelType $channel,
   int32 $depth
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageChannelDepth() sets the depth of a particular image channel.- wand: the magick wand. - channel: the image channel(s). - depth: the image depth in bits. 

### MagickSetImageClipMask
- C:

```C
MagickBooleanType MagickSetImageClipMask(MagickWand *wand,
  const MagickWand *clip_mask)
```
- Perl 6:

```Perl6
sub MagickSetImageClipMask(
   MagickWandPointer $wand,
   MagickWandPointer $clip_mask
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageClipMask() sets image clip mask.- wand: the magick wand. - clip_mask: the clip_mask wand. 

### MagickSetImageColor
- C:

```C
MagickBooleanType MagickSetImageColor(MagickWand *wand,
  const PixelWand *color)
```
- Perl 6:

```Perl6
sub MagickSetImageColor(
   MagickWandPointer $wand,
   PixelWandPointer $color
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageColor() set the entire wand canvas to the specified color.- wand: the magick wand. - background: the image color. 

### MagickSetImageColormapColor
- C:

```C
MagickBooleanType MagickSetImageColormapColor(MagickWand *wand,
  const size_t index,const PixelWand *color)
```
- Perl 6:

```Perl6
sub MagickSetImageColormapColor(
   MagickWandPointer $wand,
   int32 $index,
   PixelWandPointer $color
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageColormapColor() sets the color of the specified colormap index.- wand: the magick wand. - index: the offset into the image colormap. - color: Return the colormap color in this wand. 

### MagickSetImageColorspace
- C:

```C
MagickBooleanType MagickSetImageColorspace(MagickWand *wand,
  const ColorspaceType colorspace)
```
- Perl 6:

```Perl6
sub MagickSetImageColorspace(
   MagickWandPointer $wand,
   ColorspaceType $colorspace
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageColorspace() sets the image colorspace.- wand: the magick wand. - colorspace: the image colorspace:   UndefinedColorspace, RGBColorspace, GRAYColorspace, TransparentColorspace, OHTAColorspace, XYZColorspace, YCbCrColorspace, YCCColorspace, YIQColorspace, YPbPrColorspace, YPbPrColorspace, YUVColorspace, CMYKColorspace, sRGBColorspace, HSLColorspace, or HWBColorspace. 

### MagickSetImageCompose
- C:

```C
MagickBooleanType MagickSetImageCompose(MagickWand *wand,
  const CompositeOperator compose)
```
- Perl 6:

```Perl6
sub MagickSetImageCompose(
   MagickWandPointer $wand,
   CompositeOperator $compose
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageCompose() sets the image composite operator, useful for specifying how to composite the image thumbnail when using the MagickMontageImage() method.- wand: the magick wand. - compose: the image composite operator. 

### MagickSetImageCompression
- C:

```C
MagickBooleanType MagickSetImageCompression(MagickWand *wand,
  const CompressionType compression)
```
- Perl 6:

```Perl6
sub MagickSetImageCompression(
   MagickWandPointer $wand,
   CompressionType $compression
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageCompression() sets the image compression.- wand: the magick wand. - compression: the image compression type. 

### MagickSetImageCompressionQuality
- C:

```C
MagickBooleanType MagickSetImageCompressionQuality(MagickWand *wand,
  const size_t quality)
```
- Perl 6:

```Perl6
sub MagickSetImageCompressionQuality(
   MagickWandPointer $wand,
   int32 $quality
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageCompressionQuality() sets the image compression quality.- wand: the magick wand. - quality: the image compression tlityype. 

### MagickSetImageDelay
- C:

```C
MagickBooleanType MagickSetImageDelay(MagickWand *wand,
  const size_t delay)
```
- Perl 6:

```Perl6
sub MagickSetImageDelay(
   MagickWandPointer $wand,
   int32 $delay
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageDelay() sets the image delay.- wand: the magick wand. - delay: the image delay in ticks-per-second units. 

### MagickSetImageDepth
- C:

```C
MagickBooleanType MagickSetImageDepth(MagickWand *wand,
  const size_t depth)
```
- Perl 6:

```Perl6
sub MagickSetImageDepth(
   MagickWandPointer $wand,
   int32 $depth
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageDepth() sets the image depth.- wand: the magick wand. - depth: the image depth in bits: 8, 16, or 32. 

### MagickSetImageDispose
- C:

```C
MagickBooleanType MagickSetImageDispose(MagickWand *wand,
  const DisposeType dispose)
```
- Perl 6:

```Perl6
sub MagickSetImageDispose(
   MagickWandPointer $wand,
   DisposeType $dispose
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageDispose() sets the image disposal method.- wand: the magick wand. - dispose: the image disposeal type. 

### MagickSetImageEndian
- C:

```C
MagickBooleanType MagickSetImageEndian(MagickWand *wand,
  const EndianType endian)
```
- Perl 6:

```Perl6
sub MagickSetImageEndian(
   MagickWandPointer $wand,
   EndianType $endian
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageEndian() sets the image endian method.- wand: the magick wand. - endian: the image endian type. 

### MagickSetImageExtent
- C:

```C
MagickBooleanType MagickSetImageExtent(MagickWand *wand,
  const size_t columns,const unsigned rows)
```
- Perl 6:

```Perl6
sub MagickSetImageExtent(
   MagickWandPointer $wand,
   int32 $columns,
   unsigned $rows
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageExtent() sets the image size (i.e. columns &amp; rows).- wand: the magick wand. - columns:  The image width in pixels. - rows:  The image height in pixels. 

### MagickSetImageFilename
- C:

```C
MagickBooleanType MagickSetImageFilename(MagickWand *wand,
  const char *filename)
```
- Perl 6:

```Perl6
sub MagickSetImageFilename(
   MagickWandPointer $wand,
   Str $filename
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageFilename() sets the filename of a particular image in a sequence.- wand: the magick wand. - filename: the image filename. 

### MagickSetImageFormat
- C:

```C
MagickBooleanType MagickSetImageFormat(MagickWand *wand,
  const char *format)
```
- Perl 6:

```Perl6
sub MagickSetImageFormat(
   MagickWandPointer $wand,
   Str $format
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageFormat() sets the format of a particular image in a sequence.- wand: the magick wand. - format: the image format. 

### MagickSetImageFuzz
- C:

```C
MagickBooleanType MagickSetImageFuzz(MagickWand *wand,
  const double fuzz)
```
- Perl 6:

```Perl6
sub MagickSetImageFuzz(
   MagickWandPointer $wand,
   double $fuzz
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageFuzz() sets the image fuzz.- wand: the magick wand. - fuzz: the image fuzz. 

### MagickSetImageGamma
- C:

```C
MagickBooleanType MagickSetImageGamma(MagickWand *wand,
  const double gamma)
```
- Perl 6:

```Perl6
sub MagickSetImageGamma(
   MagickWandPointer $wand,
   double $gamma
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageGamma() sets the image gamma.- wand: the magick wand. - gamma: the image gamma. 

### MagickSetImageGravity
- C:

```C
MagickBooleanType MagickSetImageGravity(MagickWand *wand,
  const GravityType gravity)
```
- Perl 6:

```Perl6
sub MagickSetImageGravity(
   MagickWandPointer $wand,
   GravityType $gravity
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageGravity() sets the image gravity type.- wand: the magick wand. - gravity: the image interlace scheme: NoInterlace, LineInterlace, PlaneInterlace, PartitionInterlace. 

### MagickSetImageGreenPrimary
- C:

```C
MagickBooleanType MagickSetImageGreenPrimary(MagickWand *wand,
  const double x,const double y)
```
- Perl 6:

```Perl6
sub MagickSetImageGreenPrimary(
   MagickWandPointer $wand,
   double $x,
   double $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageGreenPrimary() sets the image chromaticity green primary point.- wand: the magick wand. - x: the green primary x-point. - y: the green primary y-point. 

### MagickSetImageInterlaceScheme
- C:

```C
MagickBooleanType MagickSetImageInterlaceScheme(MagickWand *wand,
  const InterlaceType interlace)
```
- Perl 6:

```Perl6
sub MagickSetImageInterlaceScheme(
   MagickWandPointer $wand,
   InterlaceType $interlace
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageInterlaceScheme() sets the image interlace scheme.- wand: the magick wand. - interlace: the image interlace scheme: NoInterlace, LineInterlace, PlaneInterlace, PartitionInterlace. 

### MagickSetImageInterpolateMethod
- C:

```C
MagickBooleanType MagickSetImageInterpolateMethod(MagickWand *wand,
  const InterpolatePixelMethod method)
```
- Perl 6:

```Perl6
sub MagickSetImageInterpolateMethod(
   MagickWandPointer $wand,
   InterpolatePixelMethod $method
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageInterpolateMethod() sets the image interpolate pixel method.- wand: the magick wand. - method: the image interpole pixel methods: choose from Undefined, Average, Bicubic, Bilinear, Filter, Integer, Mesh, NearestNeighbor. 

### MagickSetImageIterations
- C:

```C
MagickBooleanType MagickSetImageIterations(MagickWand *wand,
  const size_t iterations)
```
- Perl 6:

```Perl6
sub MagickSetImageIterations(
   MagickWandPointer $wand,
   int32 $iterations
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageIterations() sets the image iterations.- wand: the magick wand. - delay: the image delay in 1/100th of a second. 

### MagickSetImageMatte
- C:

```C
MagickBooleanType MagickSetImageMatteColor(MagickWand *wand,
  const MagickBooleanType *matte)
```
- Perl 6:

```Perl6
sub MagickSetImageMatteColor(
   MagickWandPointer $wand,
   uint32 * $matte
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageMatte() sets the image matte channel.- wand: the magick wand. - matte: Set to MagickTrue to enable the image matte channel otherwise MagickFalse. 

### MagickSetImageMatteColor
- C:

```C
MagickBooleanType MagickSetImageMatteColor(MagickWand *wand,
  const PixelWand *matte)
```
- Perl 6:

```Perl6
sub MagickSetImageMatteColor(
   MagickWandPointer $wand,
   PixelWandPointer $matte
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageMatteColor() sets the image matte color.- wand: the magick wand. - matte: the matte pixel wand. 

### MagickSetImageOpacity
- C:

```C
MagickBooleanType MagickSetImageOpacity(MagickWand *wand,
  const double alpha)
```
- Perl 6:

```Perl6
sub MagickSetImageOpacity(
   MagickWandPointer $wand,
   double $alpha
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageOpacity() sets the image to the specified opacity level.- wand: the magick wand. - alpha: the level of transparency: 1.0 is fully opaque and 0.0 is fully transparent. 

### MagickSetImageOrientation
- C:

```C
MagickBooleanType MagickSetImageOrientation(MagickWand *wand,
  const OrientationType orientation)
```
- Perl 6:

```Perl6
sub MagickSetImageOrientation(
   MagickWandPointer $wand,
   OrientationType $orientation
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageOrientation() sets the image orientation.- wand: the magick wand. - orientation: the image orientation type. 

### MagickSetImagePage
- C:

```C
MagickBooleanType MagickSetImagePage(MagickWand *wand,
  const size_t width,const size_t height,const ssize_t x,
  const ssize_t y)
```
- Perl 6:

```Perl6
sub MagickSetImagePage(
   MagickWandPointer $wand,
   int32 $width,
   int32 $height,
   sint32 $x,
   sint32 $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImagePage() sets the page geometry of the image.- wand: the magick wand. - width: the page width. - height: the page height. - x: the page x-offset. - y: the page y-offset. 

### MagickSetImageProgressMonitor
- C:

```C
MagickProgressMonitor MagickSetImageProgressMonitor(MagickWand *wand
  const MagickProgressMonitor progress_monitor,void *client_data)
```
- Perl 6:

```Perl6
sub MagickSetImageProgressMonitor(
   MagickWandPointerwand
  MagickProgressMonitor $progress_monitor,
   Pointer[void] $client_data
)
returns MagickProgressMonitor 
is native(&library)
is export { * };
```

MagickSetImageProgressMonitor() sets the wand image progress monitor to the specified method and returns the previous progress monitor if any.  The progress monitor method looks like this:<pre class="text">    MagickBooleanType MagickProgressMonitor(const char \*text,const MagickOffsetType offset,const MagickSizeType span,void \*client_data)</pre>If the progress monitor returns MagickFalse, the current operation is interrupted.- wand: the magick wand. - progress_monitor: Specifies a pointer to a method to monitor progress of an image operation. - client_data: Specifies a pointer to any client data. 

### MagickSetImageRedPrimary
- C:

```C
MagickBooleanType MagickSetImageRedPrimary(MagickWand *wand,
  const double x,const double y)
```
- Perl 6:

```Perl6
sub MagickSetImageRedPrimary(
   MagickWandPointer $wand,
   double $x,
   double $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageRedPrimary() sets the image chromaticity red primary point.- wand: the magick wand. - x: the red primary x-point. - y: the red primary y-point. 

### MagickSetImageRenderingIntent
- C:

```C
MagickBooleanType MagickSetImageRenderingIntent(MagickWand *wand,
  const RenderingIntent rendering_intent)
```
- Perl 6:

```Perl6
sub MagickSetImageRenderingIntent(
   MagickWandPointer $wand,
   RenderingIntent $rendering_intent
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageRenderingIntent() sets the image rendering intent.- wand: the magick wand. - rendering_intent: the image rendering intent: UndefinedIntent, SaturationIntent, PerceptualIntent, AbsoluteIntent, or RelativeIntent. 

### MagickSetImageResolution
- C:

```C
MagickBooleanType MagickSetImageResolution(MagickWand *wand,
  const double x_resolution,const double y_resolution)
```
- Perl 6:

```Perl6
sub MagickSetImageResolution(
   MagickWandPointer $wand,
   double $x_resolution,
   double $y_resolution
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageResolution() sets the image resolution.- wand: the magick wand. - x_resolution: the image x resolution. - y_resolution: the image y resolution. 

### MagickSetImageScene
- C:

```C
MagickBooleanType MagickSetImageScene(MagickWand *wand,
  const size_t scene)
```
- Perl 6:

```Perl6
sub MagickSetImageScene(
   MagickWandPointer $wand,
   int32 $scene
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageScene() sets the image scene.- wand: the magick wand. - delay: the image scene number. 

### MagickSetImageTicksPerSecond
- C:

```C
MagickBooleanType MagickSetImageTicksPerSecond(MagickWand *wand,
  const ssize_t ticks_per-second)
```
- Perl 6:

```Perl6
sub MagickSetImageTicksPerSecond(
   MagickWandPointer $wand,
   sint32 ticks_per- $second
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageTicksPerSecond() sets the image ticks-per-second.- wand: the magick wand. - ticks_per_second: the units to use for the image delay. 

### MagickSetImageType
- C:

```C
MagickBooleanType MagickSetImageType(MagickWand *wand,
  const ImageType image_type)
```
- Perl 6:

```Perl6
sub MagickSetImageType(
   MagickWandPointer $wand,
   ImageType $image_type
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageType() sets the image type.- wand: the magick wand. - image_type: the image type:   UndefinedType, BilevelType, GrayscaleType, GrayscaleMatteType, PaletteType, PaletteMatteType, TrueColorType, TrueColorMatteType, ColorSeparationType, ColorSeparationMatteType, or OptimizeType. 

### MagickSetImageUnits
- C:

```C
MagickBooleanType MagickSetImageUnits(MagickWand *wand,
  const ResolutionType units)
```
- Perl 6:

```Perl6
sub MagickSetImageUnits(
   MagickWandPointer $wand,
   ResolutionType $units
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageUnits() sets the image units of resolution.- wand: the magick wand. - units: the image units of resolution : UndefinedResolution, PixelsPerInchResolution, or PixelsPerCentimeterResolution. 

### MagickSetImageVirtualPixelMethod
- C:

```C
VirtualPixelMethod MagickSetImageVirtualPixelMethod(MagickWand *wand,
  const VirtualPixelMethod method)
```
- Perl 6:

```Perl6
sub MagickSetImageVirtualPixelMethod(
   MagickWandPointer $wand,
   VirtualPixelMethod $method
)
returns VirtualPixelMethod 
is native(&library)
is export { * };
```

MagickSetImageVirtualPixelMethod() sets the image virtual pixel method.- wand: the magick wand. - method: the image virtual pixel method : UndefinedVirtualPixelMethod, ConstantVirtualPixelMethod,  EdgeVirtualPixelMethod, MirrorVirtualPixelMethod, or TileVirtualPixelMethod. 

### MagickSetImageWhitePoint
- C:

```C
MagickBooleanType MagickSetImageWhitePoint(MagickWand *wand,
  const double x,const double y)
```
- Perl 6:

```Perl6
sub MagickSetImageWhitePoint(
   MagickWandPointer $wand,
   double $x,
   double $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageWhitePoint() sets the image chromaticity white point.- wand: the magick wand. - x: the white x-point. - y: the white y-point. 

### MagickShadeImage
- C:

```C
MagickBooleanType MagickShadeImage(MagickWand *wand,
  const MagickBooleanType gray,const double azimuth,
  const double elevation)
```
- Perl 6:

```Perl6
sub MagickShadeImage(
   MagickWandPointer $wand,
   uint32 $gray,
   double $azimuth,
   double $elevation
)
returns uint32 
is native(&library)
is export { * };
```

MagickShadeImage() shines a distant light on an image to create a three-dimensional effect. You control the positioning of the light with azimuth and elevation; azimuth is measured in degrees off the x axis and elevation is measured in pixels above the Z axis.- wand: the magick wand. - gray: A value other than zero shades the intensity of each pixel. - azimuth, elevation:  Define the light source direction. 

### MagickShadowImage
- C:

```C
MagickBooleanType MagickShadowImage(MagickWand *wand,
  const double opacity,const double sigma,const ssize_t x,const ssize_t y)
```
- Perl 6:

```Perl6
sub MagickShadowImage(
   MagickWandPointer $wand,
   double $opacity,
   double $sigma,
   sint32 $x,
   sint32 $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickShadowImage() simulates an image shadow.- wand: the magick wand. - opacity: percentage transparency. - sigma: the standard deviation of the Gaussian, in pixels. - x: the shadow x-offset. - y: the shadow y-offset. 

### MagickSharpenImage
- C:

```C
MagickBooleanType MagickSharpenImage(MagickWand *wand,
  const double radius,const double sigma)
MagickBooleanType MagickSharpenImageChannel(MagickWand *wand,
  const ChannelType channel,const double radius,const double sigma)
```
- Perl 6:

```Perl6
sub MagickSharpenImage(
   MagickWandPointer $wand,
   double $radius,
   double $sigma
)
returns uint32 
is native(&library)
is export { * };

sub MagickSharpenImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   double $radius,
   double $sigma
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickSharpenImage() sharpens an image.  We convolve the image with a Gaussian operator of the given radius and standard deviation (sigma). For reasonable results, the radius should be larger than sigma.  Use a radius of 0 and MagickSharpenImage() selects a suitable radius for you.- wand: the magick wand. - channel: the image channel(s). - radius: the radius of the Gaussian, in pixels, not counting the center pixel. - sigma: the standard deviation of the Gaussian, in pixels. 

### MagickShaveImage
- C:

```C
MagickBooleanType MagickShaveImage(MagickWand *wand,
  const size_t columns,const size_t rows)
```
- Perl 6:

```Perl6
sub MagickShaveImage(
   MagickWandPointer $wand,
   int32 $columns,
   int32 $rows
)
returns uint32 
is native(&library)
is export { * };
```

MagickShaveImage() shaves pixels from the image edges.  It allocates the memory necessary for the new Image structure and returns a pointer to the new image.- wand: the magick wand. - columns: the number of columns in the scaled image. - rows: the number of rows in the scaled image. 

### MagickShearImage
- C:

```C
MagickBooleanType MagickShearImage(MagickWand *wand,
  const PixelWand *background,const double x_shear,const double y_shear)
```
- Perl 6:

```Perl6
sub MagickShearImage(
   MagickWandPointer $wand,
   PixelWandPointer $background,
   double $x_shear,
   double $y_shear
)
returns uint32 
is native(&library)
is export { * };
```

MagickShearImage() slides one edge of an image along the X or Y axis, creating a parallelogram.  An X direction shear slides an edge along the X axis, while a Y direction shear slides an edge along the Y axis.  The amount of the shear is controlled by a shear angle.  For X direction shears, x_shear is measured relative to the Y axis, and similarly, for Y direction shears y_shear is measured relative to the X axis.  Empty triangles left over from shearing the image are filled with the background color.- wand: the magick wand. - background: the background pixel wand. - x_shear: the number of degrees to shear the image. - y_shear: the number of degrees to shear the image. 

### MagickSigmoidalContrastImage
- C:

```C
MagickBooleanType MagickSigmoidalContrastImage(MagickWand *wand,
  const MagickBooleanType sharpen,const double alpha,const double beta)
MagickBooleanType MagickSigmoidalContrastImageChannel(MagickWand *wand,
  const ChannelType channel,const MagickBooleanType sharpen,
  const double alpha,const double beta)
```
- Perl 6:

```Perl6
sub MagickSigmoidalContrastImage(
   MagickWandPointer $wand,
   uint32 $sharpen,
   double $alpha,
   double $beta
)
returns uint32 
is native(&library)
is export { * };

sub MagickSigmoidalContrastImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   uint32 $sharpen,
   double $alpha,
   double $beta
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickSigmoidalContrastImage() adjusts the contrast of an image with a non-linear sigmoidal contrast algorithm.  Increase the contrast of the image using a sigmoidal transfer function without saturating highlights or shadows.  Contrast indicates how much to increase the contrast (0 is none; 3 is typical; 20 is pushing it); mid-point indicates where midtones fall in the resultant image (0 is white; 50 is middle-gray; 100 is black).  Set sharpen to MagickTrue to increase the image contrast otherwise the contrast is reduced.- wand: the magick wand. - channel: Identify which channel to level: RedChannel, GreenChannel, - sharpen: Increase or decrease image contrast. - alpha: strength of the contrast, the larger the number the more 'threshold-like' it becomes. - beta: midpoint of the function as a color value 0 to QuantumRange. 

### MagickSimilarityImage
- C:

```C
MagickWand *MagickSimilarityImage(MagickWand *wand,
  const MagickWand *reference,RectangeInfo *offset,double *similarity)
```
- Perl 6:

```Perl6
sub MagickSimilarityImage(
   MagickWandPointer $wand,
   MagickWandPointer $reference,
   RectangeInfo * $offset,
   num64* $similarity
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickSimilarityImage() compares the reference image of the image and returns the best match offset.  In addition, it returns a similarity image such that an exact match location is completely white and if none of the pixels match, black, otherwise some gray level in-between.- wand: the magick wand. - reference: the reference wand. - offset: the best match offset of the reference image within the image. - similarity: the computed similarity between the images. 

### MagickSketchImage
- C:

```C
MagickBooleanType MagickSketchImage(MagickWand *wand,
  const double radius,const double sigma,const double angle)
```
- Perl 6:

```Perl6
sub MagickSketchImage(
   MagickWandPointer $wand,
   double $radius,
   double $sigma,
   double $angle
)
returns uint32 
is native(&library)
is export { * };
```

MagickSketchImage() simulates a pencil sketch.  We convolve the image with a Gaussian operator of the given radius and standard deviation (sigma). For reasonable results, radius should be larger than sigma.  Use a radius of 0 and SketchImage() selects a suitable radius for you. Angle gives the angle of the blurring motion.- wand: the magick wand. - radius: the radius of the Gaussian, in pixels, not counting the center pixel. - sigma: the standard deviation of the Gaussian, in pixels. - angle: Apply the effect along this angle. 

### MagickSmushImages
- C:

```C
MagickWand *MagickSmushImages(MagickWand *wand,
  const MagickBooleanType stack,const ssize_t offset)
```
- Perl 6:

```Perl6
sub MagickSmushImages(
   MagickWandPointer $wand,
   uint32 $stack,
   sint32 $offset
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickSmushImages() takes all images from the current image pointer to the end of the image list and smushs them to each other top-to-bottom if the stack parameter is true, otherwise left-to-right.- wand: the magick wand. - stack: By default, images are stacked left-to-right. Set stack to MagickTrue to stack them top-to-bottom. - offset: minimum distance in pixels between images. 

### MagickSolarizeImage
- C:

```C
MagickBooleanType MagickSolarizeImage(MagickWand *wand,
  const double threshold)
MagickBooleanType MagickSolarizeImageChannel(MagickWand *wand,
  const ChannelType channel,const double threshold)
```
- Perl 6:

```Perl6
sub MagickSolarizeImage(
   MagickWandPointer $wand,
   double $threshold
)
returns uint32 
is native(&library)
is export { * };

sub MagickSolarizeImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   double $threshold
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickSolarizeImage() applies a special effect to the image, similar to the effect achieved in a photo darkroom by selectively exposing areas of photo sensitive paper to light.  Threshold ranges from 0 to QuantumRange and is a measure of the extent of the solarization.- wand: the magick wand. - channel: the image channel(s). - threshold:  Define the extent of the solarization. 

### MagickSparseColorImage
- C:

```C
MagickBooleanType MagickSparseColorImage(MagickWand *wand,
  const ChannelType channel,const SparseColorMethod method,
  const size_t number_arguments,const double *arguments)
```
- Perl 6:

```Perl6
sub MagickSparseColorImage(
   MagickWandPointer $wand,
   ChannelType $channel,
   SparseColorMethod $method,
   int32 $number_arguments,
   num64* $arguments
)
returns uint32 
is native(&library)
is export { * };
```

MagickSparseColorImage(), given a set of coordinates, interpolates the colors found at those coordinates, across the whole image, using various methods.- image: the image to be sparseed. - method: the method of image sparseion. <dd> ArcSparseColorion will always ignore source image offset, and always 'bestfit' the destination image with the top left corner offset relative to the polar mapping center. </dd><dd> Bilinear has no simple inverse mapping so will not allow 'bestfit' style of image sparseion. </dd><dd> Affine, Perspective, and Bilinear, will do least squares fitting of the distrotion when more than the minimum number of control point pairs are provided. </dd><dd> Perspective, and Bilinear, will fall back to a Affine sparseion when less than 4 control point pairs are provided. While Affine sparseions will let you use any number of control point pairs, that is Zero pairs is a No-Op (viewport only) distrotion, one pair is a translation and two pairs of control points will do a scale-rotate-translate, without any shearing. </dd>- number_arguments: the number of arguments given for this sparseion method. - arguments: the arguments for this sparseion method. 

### MagickSpliceImage
- C:

```C
MagickBooleanType MagickSpliceImage(MagickWand *wand,
  const size_t width,const size_t height,const ssize_t x,
  const ssize_t y)
```
- Perl 6:

```Perl6
sub MagickSpliceImage(
   MagickWandPointer $wand,
   int32 $width,
   int32 $height,
   sint32 $x,
   sint32 $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickSpliceImage() splices a solid color into the image.- wand: the magick wand. - width: the region width. - height: the region height. - x: the region x offset. - y: the region y offset. 

### MagickSpreadImage
- C:

```C
MagickBooleanType MagickSpreadImage(MagickWand *wand,const double radius)
```
- Perl 6:

```Perl6
sub MagickSpreadImage(
   MagickWandPointer $wand,
   double $radius
)
returns uint32 
is native(&library)
is export { * };
```

MagickSpreadImage() is a special effects method that randomly displaces each pixel in a block defined by the radius parameter.- wand: the magick wand. - radius:  Choose a random pixel in a neighborhood of this extent. 

### MagickStatisticImage
- C:

```C
MagickBooleanType MagickStatisticImage(MagickWand *wand,
  const StatisticType type,const double width,const size_t height)
MagickBooleanType MagickStatisticImageChannel(MagickWand *wand,
  const ChannelType channel,const StatisticType type,const double width,
  const size_t height)
```
- Perl 6:

```Perl6
sub MagickStatisticImage(
   MagickWandPointer $wand,
   StatisticType $type,
   double $width,
   int32 $height
)
returns uint32 
is native(&library)
is export { * };

sub MagickStatisticImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   StatisticType $type,
   double $width,
   int32 $height
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickStatisticImage() replace each pixel with corresponding statistic from the neighborhood of the specified width and height.- wand: the magick wand. - channel: the image channel(s). - type: the statistic type (e.g. median, mode, etc.). - width: the width of the pixel neighborhood. - height: the height of the pixel neighborhood. 

### MagickSteganoImage
- C:

```C
MagickWand *MagickSteganoImage(MagickWand *wand,
  const MagickWand *watermark_wand,const ssize_t offset)
```
- Perl 6:

```Perl6
sub MagickSteganoImage(
   MagickWandPointer $wand,
   MagickWandPointer $watermark_wand,
   sint32 $offset
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickSteganoImage() hides a digital watermark within the image. Recover the hidden watermark later to prove that the authenticity of an image.  Offset defines the start position within the image to hide the watermark.- wand: the magick wand. - watermark_wand: the watermark wand. - offset: Start hiding at this offset into the image. 

### MagickStereoImage
- C:

```C
MagickWand *MagickStereoImage(MagickWand *wand,
  const MagickWand *offset_wand)
```
- Perl 6:

```Perl6
sub MagickStereoImage(
   MagickWandPointer $wand,
   MagickWandPointer $offset_wand
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickStereoImage() composites two images and produces a single image that is the composite of a left and right image of a stereo pair- wand: the magick wand. - offset_wand: Another image wand. 

### MagickStripImage
- C:

```C
MagickBooleanType MagickStripImage(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickStripImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickStripImage() strips an image of all profiles and comments.- wand: the magick wand. 

### MagickSwirlImage
- C:

```C
MagickBooleanType MagickSwirlImage(MagickWand *wand,const double degrees)
```
- Perl 6:

```Perl6
sub MagickSwirlImage(
   MagickWandPointer $wand,
   double $degrees
)
returns uint32 
is native(&library)
is export { * };
```

MagickSwirlImage() swirls the pixels about the center of the image, where degrees indicates the sweep of the arc through which each pixel is moved. You get a more dramatic effect as the degrees move from 1 to 360.- wand: the magick wand. - degrees: Define the tightness of the swirling effect. 

### MagickTextureImage
- C:

```C
MagickWand *MagickTextureImage(MagickWand *wand,
  const MagickWand *texture_wand)
```
- Perl 6:

```Perl6
sub MagickTextureImage(
   MagickWandPointer $wand,
   MagickWandPointer $texture_wand
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickTextureImage() repeatedly tiles the texture image across and down the image canvas.- wand: the magick wand. - texture_wand: the texture wand 

### MagickThresholdImage
- C:

```C
MagickBooleanType MagickThresholdImage(MagickWand *wand,
  const double threshold)
MagickBooleanType MagickThresholdImageChannel(MagickWand *wand,
  const ChannelType channel,const double threshold)
```
- Perl 6:

```Perl6
sub MagickThresholdImage(
   MagickWandPointer $wand,
   double $threshold
)
returns uint32 
is native(&library)
is export { * };

sub MagickThresholdImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   double $threshold
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickThresholdImage() changes the value of individual pixels based on the intensity of each pixel compared to threshold.  The result is a high-contrast, two color image.- wand: the magick wand. - channel: the image channel(s). - threshold: Define the threshold value. 

### MagickThumbnailImage
- C:

```C
MagickBooleanType MagickThumbnailImage(MagickWand *wand,
  const size_t columns,const size_t rows)
```
- Perl 6:

```Perl6
sub MagickThumbnailImage(
   MagickWandPointer $wand,
   int32 $columns,
   int32 $rows
)
returns uint32 
is native(&library)
is export { * };
```

MagickThumbnailImage()  changes the size of an image to the given dimensions and removes any associated profiles.  The goal is to produce small low cost thumbnail images suited for display on the Web.- wand: the magick wand. - columns: the number of columns in the scaled image. - rows: the number of rows in the scaled image. 

### MagickTintImage
- C:

```C
MagickBooleanType MagickTintImage(MagickWand *wand,
  const PixelWand *tint,const PixelWand *opacity)
```
- Perl 6:

```Perl6
sub MagickTintImage(
   MagickWandPointer $wand,
   PixelWandPointer $tint,
   PixelWandPointer $opacity
)
returns uint32 
is native(&library)
is export { * };
```

MagickTintImage() applies a color vector to each pixel in the image.  The length of the vector is 0 for black and white and at its maximum for the midtones.  The vector weighting function is f(x)=(1-(4.0\*((x-0.5)\*(x-0.5)))).- wand: the magick wand. - tint: the tint pixel wand. - opacity: the opacity pixel wand. 

### MagickTransformImage
- C:

```C
MagickWand *MagickTransformImage(MagickWand *wand,const char *crop,
  const char *geometry)
```
- Perl 6:

```Perl6
sub MagickTransformImage(
   MagickWandPointer $wand,
   Str $crop,
   Str $geometry
)
returns MagickWandPointer
is native(&library)
is export { * };
```

MagickTransformImage() is a convenience method that behaves like MagickResizeImage() or MagickCropImage() but accepts scaling and/or cropping information as a region geometry specification.  If the operation fails, a NULL image handle is returned.- wand: the magick wand. - crop: A crop geometry string.  This geometry defines a subregion of the image to crop. - geometry: An image geometry string.  This geometry defines the final size of the image. 

### MagickTransformImageColorspace
- C:

```C
MagickBooleanType MagickTransformImageColorspace(MagickWand *wand,
  const ColorspaceType colorspace)
```
- Perl 6:

```Perl6
sub MagickTransformImageColorspace(
   MagickWandPointer $wand,
   ColorspaceType $colorspace
)
returns uint32 
is native(&library)
is export { * };
```

MagickTransformImageColorspace() transform the image colorspace, setting the images colorspace while transforming the images data to that colorspace.- wand: the magick wand. - colorspace: the image colorspace:   UndefinedColorspace, sRGBColorspace, RGBColorspace, GRAYColorspace, OHTAColorspace, XYZColorspace, YCbCrColorspace, YCCColorspace, YIQColorspace, YPbPrColorspace, YPbPrColorspace, YUVColorspace, CMYKColorspace, HSLColorspace, HWBColorspace. 

### MagickTransparentPaintImage
- C:

```C
MagickBooleanType MagickTransparentPaintImage(MagickWand *wand,
  const PixelWand *target,const double alpha,const double fuzz,
  const MagickBooleanType invert)
```
- Perl 6:

```Perl6
sub MagickTransparentPaintImage(
   MagickWandPointer $wand,
   PixelWandPointer $target,
   double $alpha,
   double $fuzz,
   uint32 $invert
)
returns uint32 
is native(&library)
is export { * };
```

MagickTransparentPaintImage() changes any pixel that matches color with the color defined by fill.- wand: the magick wand. - target: Change this target color to specified opacity value within the image. - alpha: the level of transparency: 1.0 is fully opaque and 0.0 is fully transparent. - fuzz: By default target must match a particular pixel color exactly.  However, in many cases two colors may differ by a small amount. The fuzz member of image defines how much tolerance is acceptable to consider two colors as the same.  For example, set fuzz to 10 and the color red at intensities of 100 and 102 respectively are now interpreted as the same color for the purposes of the floodfill. - invert: paint any pixel that does not match the target color. 

### MagickTransposeImage
- C:

```C
MagickBooleanType MagickTransposeImage(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickTransposeImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickTransposeImage() creates a vertical mirror image by reflecting the pixels around the central x-axis while rotating them 90-degrees.- wand: the magick wand. 

### MagickTransverseImage
- C:

```C
MagickBooleanType MagickTransverseImage(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickTransverseImage(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickTransverseImage() creates a horizontal mirror image by reflecting the pixels around the central y-axis while rotating them 270-degrees.- wand: the magick wand. 

### MagickTrimImage
- C:

```C
MagickBooleanType MagickTrimImage(MagickWand *wand,const double fuzz)
```
- Perl 6:

```Perl6
sub MagickTrimImage(
   MagickWandPointer $wand,
   double $fuzz
)
returns uint32 
is native(&library)
is export { * };
```

MagickTrimImage() remove edges that are the background color from the image.- wand: the magick wand. - fuzz: By default target must match a particular pixel color exactly.  However, in many cases two colors may differ by a small amount. The fuzz member of image defines how much tolerance is acceptable to consider two colors as the same.  For example, set fuzz to 10 and the color red at intensities of 100 and 102 respectively are now interpreted as the same color for the purposes of the floodfill. 

### MagickUniqueImageColors
- C:

```C
MagickBooleanType MagickUniqueImageColors(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickUniqueImageColors(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickUniqueImageColors() discards all but one of any pixel color.- wand: the magick wand. 

### MagickUnsharpMaskImage
- C:

```C
MagickBooleanType MagickUnsharpMaskImage(MagickWand *wand,
  const double radius,const double sigma,const double amount,
  const double threshold)
MagickBooleanType MagickUnsharpMaskImageChannel(MagickWand *wand,
  const ChannelType channel,const double radius,const double sigma,
  const double amount,const double threshold)
```
- Perl 6:

```Perl6
sub MagickUnsharpMaskImage(
   MagickWandPointer $wand,
   double $radius,
   double $sigma,
   double $amount,
   double $threshold
)
returns uint32 
is native(&library)
is export { * };

sub MagickUnsharpMaskImageChannel(
   MagickWandPointer $wand,
   ChannelType $channel,
   double $radius,
   double $sigma,
   double $amount,
   double $threshold
)
returns 
uint32 
is native(&library)
is export { * };
```

MagickUnsharpMaskImage() sharpens an image.  We convolve the image with a Gaussian operator of the given radius and standard deviation (sigma). For reasonable results, radius should be larger than sigma.  Use a radius of 0 and UnsharpMaskImage() selects a suitable radius for you.- wand: the magick wand. - channel: the image channel(s). - radius: the radius of the Gaussian, in pixels, not counting the center pixel. - sigma: the standard deviation of the Gaussian, in pixels. - amount: the percentage of the difference between the original and the blur image that is added back into the original. - threshold: the threshold in pixels needed to apply the diffence amount. 

### MagickVignetteImage
- C:

```C
MagickBooleanType MagickVignetteImage(MagickWand *wand,
  const double black_point,const double white_point,const ssize_t x,
  const ssize_t y)
```
- Perl 6:

```Perl6
sub MagickVignetteImage(
   MagickWandPointer $wand,
   double $black_point,
   double $white_point,
   sint32 $x,
   sint32 $y
)
returns uint32 
is native(&library)
is export { * };
```

MagickVignetteImage() softens the edges of the image in vignette style.- wand: the magick wand. - black_point: the black point. - white_point: the white point. - x, y:  Define the x and y ellipse offset. 

### MagickWaveImage
- C:

```C
MagickBooleanType MagickWaveImage(MagickWand *wand,const double amplitude,
  const double wave_length)
```
- Perl 6:

```Perl6
sub MagickWaveImage(
   MagickWandPointer $wand,
   double $amplitude,
   double $wave_length
)
returns uint32 
is native(&library)
is export { * };
```

MagickWaveImage()  creates a "ripple" effect in the image by shifting the pixels vertically along a sine wave whose amplitude and wavelength is specified by the given parameters.- wand: the magick wand. - amplitude, wave_length:  Define the amplitude and wave length of the sine wave. 

### MagickWhiteThresholdImage
- C:

```C
MagickBooleanType MagickWhiteThresholdImage(MagickWand *wand,
  const PixelWand *threshold)
```
- Perl 6:

```Perl6
sub MagickWhiteThresholdImage(
   MagickWandPointer $wand,
   PixelWandPointer $threshold
)
returns uint32 
is native(&library)
is export { * };
```

MagickWhiteThresholdImage() is like ThresholdImage() but  force all pixels above the threshold into white while leaving all pixels below the threshold unchanged.- wand: the magick wand. - threshold: the pixel wand. 

### MagickWriteImage
- C:

```C
MagickBooleanType MagickWriteImage(MagickWand *wand,
  const char *filename)
```
- Perl 6:

```Perl6
sub MagickWriteImage(
   MagickWandPointer $wand,
   Str $filename
)
returns uint32 
is native(&library)
is export { * };
```

MagickWriteImage() writes an image to the specified filename.  If the filename parameter is NULL, the image is written to the filename set by MagickReadImage() or MagickSetImageFilename().- wand: the magick wand. - filename: the image filename. 

### MagickWriteImageFile
- C:

```C
MagickBooleanType MagickWriteImageFile(MagickWand *wand,FILE *file)
```
- Perl 6:

```Perl6
sub MagickWriteImageFile(
   MagickWandPointer $wand,
   FILE * $file
)
returns uint32 
is native(&library)
is export { * };
```

MagickWriteImageFile() writes an image to an open file descriptor.- wand: the magick wand. - file: the file descriptor. 

### MagickWriteImages
- C:

```C
MagickBooleanType MagickWriteImages(MagickWand *wand,
  const char *filename,const MagickBooleanType adjoin)
```
- Perl 6:

```Perl6
sub MagickWriteImages(
   MagickWandPointer $wand,
   Str $filename,
   uint32 $adjoin
)
returns uint32 
is native(&library)
is export { * };
```

MagickWriteImages() writes an image or image sequence.- wand: the magick wand. - filename: the image filename. - adjoin: join images into a single multi-image file. 

### MagickWriteImagesFile
- C:

```C
MagickBooleanType MagickWriteImagesFile(MagickWand *wand,FILE *file)
```
- Perl 6:

```Perl6
sub MagickWriteImagesFile(
   MagickWandPointer $wand,
   FILE * $file
)
returns uint32 
is native(&library)
is export { * };
```

MagickWriteImagesFile() writes an image sequence to an open file descriptor.- wand: the magick wand. - file: the file descriptor. 

