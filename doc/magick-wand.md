### ClearMagickWand
- C:

```
void ClearMagickWand(MagickWand *wand)
```
- Perl 6:

```
sub ClearMagickWand(
   MagickWandPointer $wand
)
is native(&library)
is export { * };
```

ClearMagickWand() clears resources associated with the wand, leaving the wand blank, and ready to be used for a new set of images.- wand: the magick wand. 

### CloneMagickWand
- C:

```
MagickWand *CloneMagickWand(const MagickWand *wand)
```
- Perl 6:

```
sub CloneMagickWand(
   MagickWandPointer $wand
)
returns MagickWandPointer
is native(&library)
is export { * };
```

CloneMagickWand() makes an exact copy of the specified wand.- wand: the magick wand. 

### DestroyMagickWand
- C:

```
MagickWand *DestroyMagickWand(MagickWand *wand)
```
- Perl 6:

```
sub DestroyMagickWand(
   MagickWandPointer $wand
)
returns MagickWandPointer
is native(&library)
is export { * };
```

DestroyMagickWand() deallocates memory associated with an MagickWand.- wand: the magick wand. 

### IsMagickWand
- C:

```
MagickBooleanType IsMagickWand(const MagickWand *wand)
```
- Perl 6:

```
sub IsMagickWand(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

IsMagickWand() returns MagickTrue if the wand is verified as a magick wand.- wand: the magick wand. 

### MagickClearException
- C:

```
MagickBooleanType MagickClearException(MagickWand *wand)
```
- Perl 6:

```
sub MagickClearException(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickClearException() clears any exceptions associated with the wand.- wand: the magick wand. 

### MagickGetException
- C:

```
char *MagickGetException(const MagickWand *wand,ExceptionType *severity)
```
- Perl 6:

```
sub MagickGetException(
   MagickWandPointer $wand,
   ExceptionType * $severity
)
returns Str
is native(&library)
is export { * };
```

MagickGetException() returns the severity, reason, and description of any error that occurs when using other methods in this API.- wand: the magick wand. - severity: the severity of the error is returned here. 

### MagickGetExceptionType
- C:

```
ExceptionType MagickGetExceptionType(const MagickWand *wand)
```
- Perl 6:

```
sub MagickGetExceptionType(
   MagickWandPointer $wand
)
returns ExceptionType 
is native(&library)
is export { * };
```

MagickGetExceptionType() returns the exception type associated with the wand.  If no exception has occurred, UndefinedExceptionType is returned.- wand: the magick wand. 

### MagickGetIteratorIndex
- C:

```
ssize_t MagickGetIteratorIndex(MagickWand *wand)
```
- Perl 6:

```
sub MagickGetIteratorIndex(
   MagickWandPointer $wand
)
returns sint32 
is native(&library)
is export { * };
```

MagickGetIteratorIndex() returns the position of the iterator in the image list.- wand: the magick wand. 

### MagickQueryConfigureOption
- C:

```
char *MagickQueryConfigureOption(const char *option)
```
- Perl 6:

```
sub MagickQueryConfigureOption(
   Str $option
)
returns Str
is native(&library)
is export { * };
```

MagickQueryConfigureOption() returns the value associated with the specified configure option.- option: the option name. 

### MagickQueryConfigureOptions
- C:

```
char **MagickQueryConfigureOptions(const char *pattern,
  size_t *number_options)
```
- Perl 6:

```
sub MagickQueryConfigureOptions(
   Str $pattern,
   Pointer[int32] $number_options
)
returns Str*
is native(&library)
is export { * };
```

MagickQueryConfigureOptions() returns any configure options that match the specified pattern (e.g.  "\*" for all).  Options include NAME, VERSION, LIB_VERSION, etc.- pattern: Specifies a pointer to a text string containing a pattern. - number_options:  Returns the number of configure options in the list. 

### MagickQueryFontMetrics
- C:

```
double *MagickQueryFontMetrics(MagickWand *wand,
  const DrawingWand *drawing_wand,const char *text)
```
- Perl 6:

```
sub MagickQueryFontMetrics(
   MagickWandPointer $wand,
   DrawingWandPointer $drawing_wand,
   Str $text
)
returns num64*
is native(&library)
is export { * };
```

MagickQueryFontMetrics() returns a 13 element array representing the following font metrics:<pre class="text">    Element Description    -------------------------------------------------    0 character width    1 character height    2 ascender    3 descender    4 text width    5 text height    6 maximum horizontal advance    7 bounding box: x1    8 bounding box: y1    9 bounding box: x2   10 bounding box: y2   11 origin: x   12 origin: y</pre>- wand: the Magick wand. - drawing_wand: the drawing wand. - text: the text. 

### MagickQueryMultilineFontMetrics
- C:

```
double *MagickQueryMultilineFontMetrics(MagickWand *wand,
  const DrawingWand *drawing_wand,const char *text)
```
- Perl 6:

```
sub MagickQueryMultilineFontMetrics(
   MagickWandPointer $wand,
   DrawingWandPointer $drawing_wand,
   Str $text
)
returns num64*
is native(&library)
is export { * };
```

MagickQueryMultilineFontMetrics() returns a 13 element array representing the following font metrics:<pre class="text">    Element Description    -------------------------------------------------    0 character width    1 character height    2 ascender    3 descender    4 text width    5 text height    6 maximum horizontal advance    7 bounding box: x1    8 bounding box: y1    9 bounding box: x2   10 bounding box: y2   11 origin: x   12 origin: y</pre>This method is like MagickQueryFontMetrics() but it returns the maximum text width and height for multiple lines of text.- wand: the Magick wand. - drawing_wand: the drawing wand. - text: the text. 

### MagickQueryFonts
- C:

```
char **MagickQueryFonts(const char *pattern,size_t *number_fonts)
```
- Perl 6:

```
sub MagickQueryFonts(
   Str $pattern,
   Pointer[int32] $number_fonts
)
returns Str*
is native(&library)
is export { * };
```

MagickQueryFonts() returns any font that match the specified pattern (e.g. "\*" for all).- pattern: Specifies a pointer to a text string containing a pattern. - number_fonts:  Returns the number of fonts in the list. 

### MagickQueryFormats
- C:

```
char **MagickQueryFormats(const char *pattern,size_t *number_formats)
```
- Perl 6:

```
sub MagickQueryFormats(
   Str $pattern,
   Pointer[int32] $number_formats
)
returns Str*
is native(&library)
is export { * };
```

MagickQueryFormats() returns any image formats that match the specified pattern (e.g.  "\*" for all).- pattern: Specifies a pointer to a text string containing a pattern. - number_formats:  This integer returns the number of image formats in the list. 

### MagickRelinquishMemory
- C:

```
void *MagickRelinquishMemory(void *resource)
```
- Perl 6:

```
sub MagickRelinquishMemory(
   Pointer[void] $resource
)
returns Pointer[void]
is native(&library)
is export { * };
```

MagickRelinquishMemory() relinquishes memory resources returned by such methods as MagickIdentifyImage(), MagickGetException(), etc.- resource: Relinquish the memory associated with this resource. 

### MagickResetIterator
- C:

```
void MagickResetIterator(MagickWand *wand)
```
- Perl 6:

```
sub MagickResetIterator(
   MagickWandPointer $wand
)
is native(&library)
is export { * };
```

MagickResetIterator() resets the wand iterator.It is typically used either before iterating though images, or before calling specific functions such as  MagickAppendImages() to append all images together.Afterward you can use MagickNextImage() to iterate over all the images in a wand container, starting with the first image.Using this before MagickAddImages() or MagickReadImages() will cause new images to be inserted between the first and second image.- wand: the magick wand. 

### MagickSetFirstIterator
- C:

```
void MagickSetFirstIterator(MagickWand *wand)
```
- Perl 6:

```
sub MagickSetFirstIterator(
   MagickWandPointer $wand
)
is native(&library)
is export { * };
```

MagickSetFirstIterator() sets the wand iterator to the first image.After using any images added to the wand using MagickAddImage() or MagickReadImage() will be prepended before any image in the wand.Also the current image has been set to the first image (if any) in the Magick Wand.  Using MagickNextImage() will then set teh current image to the second image in the list (if present).This operation is similar to MagickResetIterator() but differs in how MagickAddImage(), MagickReadImage(), and MagickNextImage() behaves afterward.- wand: the magick wand. 

### MagickSetIteratorIndex
- C:

```
MagickBooleanType MagickSetIteratorIndex(MagickWand *wand,
  const ssize_t index)
```
- Perl 6:

```
sub MagickSetIteratorIndex(
   MagickWandPointer $wand,
   sint32 $index
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetIteratorIndex() set the iterator to the given position in the image list specified with the index parameter.  A zero index will set the first image as current, and so on.  Negative indexes can be used to specify an image relative to the end of the images in the wand, with -1 being the last image in the wand.If the index is invalid (range too large for number of images in wand) the function will return MagickFalse, but no 'exception' will be raised, as it is not actually an error.  In that case the current image will not change.After using any images added to the wand using MagickAddImage() or MagickReadImage() will be added after the image indexed, regardless of if a zero (first image in list) or negative index (from end) is used.Jumping to index 0 is similar to MagickResetIterator() but differs in how MagickNextImage() behaves afterward.- wand: the magick wand. - index: the scene number. 

### MagickSetLastIterator
- C:

```
void MagickSetLastIterator(MagickWand *wand)
```
- Perl 6:

```
sub MagickSetLastIterator(
   MagickWandPointer $wand
)
is native(&library)
is export { * };
```

MagickSetLastIterator() sets the wand iterator to the last image.The last image is actually the current image, and the next use of MagickPreviousImage() will not change this allowing this function to be used to iterate over the images in the reverse direction. In this sense it is more like  MagickResetIterator() than MagickSetFirstIterator().Typically this function is used before MagickAddImage(), MagickReadImage() functions to ensure new images are appended to the very end of wand's image list.- wand: the magick wand. 

### MagickWandGenesis
- C:

```
void MagickWandGenesis(void)
```
- Perl 6:

```
sub MagickWandGenesis(
   v $oid
)
is native(&library)
is export { * };
```

MagickWandGenesis() initializes the MagickWand environment.<h2><a href="http://www.imagemagick.org/api/MagickWand/magick-wand_8c.html" id="MagickWandTerminus">MagickWandTerminus</a></h2>MagickWandTerminus() terminates the MagickWand environment.The format of the MaickWandTerminus method is:<pre class="text">void MagickWandTerminus(void)</pre><h2><a href="http://www.imagemagick.org/api/MagickWand/magick-wand_8c.html" id="NewMagickWand">NewMagickWand</a></h2>NewMagickWand() returns a wand required for all other methods in the API. A fatal exception is thrown if there is not enough memory to allocate the wand.   Use DestroyMagickWand() to dispose of the wand when it is no longer needed.The format of the NewMagickWand method is:<pre class="text">MagickWand \*NewMagickWand(void)</pre><h2><a href="http://www.imagemagick.org/api/MagickWand/magick-wand_8c.html" id="NewMagickWandFromImage">NewMagickWandFromImage</a></h2>NewMagickWandFromImage() returns a wand with an image.The format of the NewMagickWandFromImage method is:<pre class="text">MagickWand \*NewMagickWandFromImage(const Image \*image)</pre>- image: the image. 

