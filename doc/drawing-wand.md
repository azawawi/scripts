### ClearDrawingWand
- C:

```C
void ClearDrawingWand(DrawingWand *wand)
```
- Perl 6:

```Perl6
sub ClearDrawingWand(
   DrawingWandPointer $wand
)
is native(&library)
is export { * };
```

ClearDrawingWand() clears resources associated with the drawing wand.- wand: the drawing wand to clear. 

### CloneDrawingWand
- C:

```C
DrawingWand *CloneDrawingWand(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub CloneDrawingWand(
   DrawingWandPointer $wand
)
returns DrawingWandPointer
is native(&library)
is export { * };
```

CloneDrawingWand() makes an exact copy of the specified wand.- wand: the magick wand. 

### DestroyDrawingWand
- C:

```C
DrawingWand *DestroyDrawingWand(DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DestroyDrawingWand(
   DrawingWandPointer $wand
)
returns DrawingWandPointer
is native(&library)
is export { * };
```

DestroyDrawingWand() frees all resources associated with the drawing wand. Once the drawing wand has been freed, it should not be used and further unless it re-allocated.- wand: the drawing wand to destroy. 

### DrawAffine
- C:

```C
void DrawAffine(DrawingWand *wand,const AffineMatrix *affine)
```
- Perl 6:

```Perl6
sub DrawAffine(
   DrawingWandPointer $wand,
   AffineMatrix * $affine
)
is native(&library)
is export { * };
```

DrawAffine() adjusts the current affine transformation matrix with the specified affine transformation matrix. Note that the current affine transform is adjusted rather than replaced.- wand: Drawing wand - affine: Affine matrix parameters 

### DrawAnnotation
- C:

```C
void DrawAnnotation(DrawingWand *wand,const double x,
  const double y,const unsigned char *text)
```
- Perl 6:

```Perl6
sub DrawAnnotation(
   DrawingWandPointer $wand,
   double $x,
   double $y,
   unsigned Str $text
)
is native(&library)
is export { * };
```

DrawAnnotation() draws text on the image.- wand: the drawing wand. - x: x ordinate to left of text - y: y ordinate to text baseline - text: text to draw 

### DrawArc
- C:

```C
void DrawArc(DrawingWand *wand,const double sx,const double sy,
  const double ex,const double ey,const double sd,const double ed)
```
- Perl 6:

```Perl6
sub DrawArc(
   DrawingWandPointer $wand,
   double $sx,
   double $sy,
   double $ex,
   double $ey,
   double $sd,
   double $ed
)
is native(&library)
is export { * };
```

DrawArc() draws an arc falling within a specified bounding rectangle on the image.- wand: the drawing wand. - sx: starting x ordinate of bounding rectangle - sy: starting y ordinate of bounding rectangle - ex: ending x ordinate of bounding rectangle - ey: ending y ordinate of bounding rectangle - sd: starting degrees of rotation - ed: ending degrees of rotation 

### DrawBezier
- C:

```C
void DrawBezier(DrawingWand *wand,
  const size_t number_coordinates,const PointInfo *coordinates)
```
- Perl 6:

```Perl6
sub DrawBezier(
   DrawingWandPointer $wand,
   int32 $number_coordinates,
   PointInfo * $coordinates
)
is native(&library)
is export { * };
```

DrawBezier() draws a bezier curve through a set of points on the image.- wand: the drawing wand. - number_coordinates: number of coordinates - coordinates: coordinates 

### DrawCircle
- C:

```C
void DrawCircle(DrawingWand *wand,const double ox,
  const double oy,const double px, const double py)
```
- Perl 6:

```Perl6
sub DrawCircle(
   DrawingWandPointer $wand,
   double $ox,
   double $oy,
   double $px,
   double $py
)
is native(&library)
is export { * };
```

DrawCircle() draws a circle on the image.- wand: the drawing wand. - ox: origin x ordinate - oy: origin y ordinate - px: perimeter x ordinate - py: perimeter y ordinate 

### DrawClearException
- C:

```C
MagickBooleanType DrawClearException(DrawWand *wand)
```
- Perl 6:

```Perl6
sub DrawClearException(
   DrawWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

DrawClearException() clear any exceptions associated with the wand.- wand: the drawing wand. 

### DrawComposite
- C:

```C
MagickBooleanType DrawComposite(DrawingWand *wand,
  const CompositeOperator compose,const double x,
  const double y,const double width,const double height,
  MagickWand *magick_wand)
```
- Perl 6:

```Perl6
sub DrawComposite(
   DrawingWandPointer $wand,
   CompositeOperator $compose,
   double $x,
   double $y,
   double $width,
   double $height,
   MagickWandPointer $magick_wand
)
returns uint32 
is native(&library)
is export { * };
```

DrawComposite() composites an image onto the current image, using the specified composition operator, specified position, and at the specified size.- wand: the drawing wand. - compose: composition operator - x: x ordinate of top left corner - y: y ordinate of top left corner - width: Width to resize image to prior to compositing.  Specify zero to use existing width. - height: Height to resize image to prior to compositing.  Specify zero to use existing height. - magick_wand: Image to composite is obtained from this wand. 

### DrawColor
- C:

```C
void DrawColor(DrawingWand *wand,const double x,const double y,
  const PaintMethod paint_method)
```
- Perl 6:

```Perl6
sub DrawColor(
   DrawingWandPointer $wand,
   double $x,
   double $y,
   PaintMethod $paint_method
)
is native(&library)
is export { * };
```

DrawColor() draws color on image using the current fill color, starting at specified position, and using specified paint method. The available paint methods are:<pre class="text">    PointMethod: Recolors the target pixel    ReplaceMethod: Recolor any pixel that matches the target pixel.    FloodfillMethod: Recolors target pixels and matching neighbors.    ResetMethod: Recolor all pixels.</pre>- wand: the drawing wand. - x: x ordinate. - y: y ordinate. - paint_method: paint method. 

### DrawComment
- C:

```C
void DrawComment(DrawingWand *wand,const char *comment)
```
- Perl 6:

```Perl6
sub DrawComment(
   DrawingWandPointer $wand,
   Str $comment
)
is native(&library)
is export { * };
```

DrawComment() adds a comment to a vector output stream.- wand: the drawing wand. - comment: comment text 

### DrawEllipse
- C:

```C
void DrawEllipse(DrawingWand *wand,const double ox,const double oy,
   const double rx,const double ry,const double start,const double end)
```
- Perl 6:

```Perl6
sub DrawEllipse(
   DrawingWandPointer $wand,
   double $ox,
   double $oy,
   double $rx,
   double $ry,
   double $start,
   double $end
)
is native(&library)
is export { * };
```

DrawEllipse() draws an ellipse on the image.- wand: the drawing wand. - ox: origin x ordinate - oy: origin y ordinate - rx: radius in x - ry: radius in y - start: starting rotation in degrees - end: ending rotation in degrees 

### DrawGetBorderColor
- C:

```C
void DrawGetBorderColor(const DrawingWand *wand,
  PixelWand *border_color)
```
- Perl 6:

```Perl6
sub DrawGetBorderColor(
   DrawingWandPointer $wand,
   PixelWandPointer $border_color
)
is native(&library)
is export { * };
```

DrawGetBorderColor() returns the border color used for drawing bordered objects.- wand: the drawing wand. - border_color: Return the border color. 

### DrawGetClipPath
- C:

```C
char *DrawGetClipPath(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetClipPath(
   DrawingWandPointer $wand
)
returns Str
is native(&library)
is export { * };
```

DrawGetClipPath() obtains the current clipping path ID. The value returned must be deallocated by the user when it is no longer needed.- wand: the drawing wand. 

### DrawGetClipRule
- C:

```C
FillRule DrawGetClipRule(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetClipRule(
   DrawingWandPointer $wand
)
returns FillRule 
is native(&library)
is export { * };
```

DrawGetClipRule() returns the current polygon fill rule to be used by the clipping path.- wand: the drawing wand. 

### DrawGetClipUnits
- C:

```C
ClipPathUnits DrawGetClipUnits(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetClipUnits(
   DrawingWandPointer $wand
)
returns ClipPathUnits 
is native(&library)
is export { * };
```

DrawGetClipUnits() returns the interpretation of clip path units.- wand: the drawing wand. 

### DrawGetDensity
- C:

```C
char *DrawGetDensity(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetDensity(
   DrawingWandPointer $wand
)
returns Str
is native(&library)
is export { * };
```

DrawGetDensity() obtains the vertical and horizontal resolution. The value returned must be deallocated by the user when it is no longer needed.- wand: the drawing wand. 

### DrawGetException
- C:

```C
char *DrawGetException(const DrawWand *wand,
  ExceptionType *severity)
```
- Perl 6:

```Perl6
sub DrawGetException(
   DrawWandPointer $wand,
   ExceptionType * $severity
)
returns Str
is native(&library)
is export { * };
```

DrawGetException() returns the severity, reason, and description of any error that occurs when using other methods in this API.- wand: the drawing wand. - severity: the severity of the error is returned here. 

### DrawGetExceptionType
- C:

```C
ExceptionType DrawGetExceptionType(const DrawWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetExceptionType(
   DrawWandPointer $wand
)
returns ExceptionType 
is native(&library)
is export { * };
```

DrawGetExceptionType() the exception type associated with the wand.  If no exception has occurred, UndefinedExceptionType is returned.- wand: the magick wand. 

### DrawGetFillColor
- C:

```C
void DrawGetFillColor(const DrawingWand *wand,
  PixelWand *fill_color)
```
- Perl 6:

```Perl6
sub DrawGetFillColor(
   DrawingWandPointer $wand,
   PixelWandPointer $fill_color
)
is native(&library)
is export { * };
```

DrawGetFillColor() returns the fill color used for drawing filled objects.- wand: the drawing wand. - fill_color: Return the fill color. 

### DrawGetFillOpacity
- C:

```C
double DrawGetFillOpacity(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetFillOpacity(
   DrawingWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

DrawGetFillOpacity() returns the opacity used when drawing using the fill color or fill texture.  Fully opaque is 1.0.- wand: the drawing wand. 

### DrawGetFillRule
- C:

```C
FillRule DrawGetFillRule(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetFillRule(
   DrawingWandPointer $wand
)
returns FillRule 
is native(&library)
is export { * };
```

DrawGetFillRule() returns the fill rule used while drawing polygons.- wand: the drawing wand. 

### DrawGetFont
- C:

```C
char *DrawGetFont(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetFont(
   DrawingWandPointer $wand
)
returns Str
is native(&library)
is export { * };
```

DrawGetFont() returns a null-terminaged string specifying the font used when annotating with text. The value returned must be freed by the user when no longer needed.- wand: the drawing wand. 

### DrawGetFontFamily
- C:

```C
char *DrawGetFontFamily(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetFontFamily(
   DrawingWandPointer $wand
)
returns Str
is native(&library)
is export { * };
```

DrawGetFontFamily() returns the font family to use when annotating with text. The value returned must be freed by the user when it is no longer needed.- wand: the drawing wand. 

### DrawGetFontResolution
- C:

```C
DrawBooleanType DrawGetFontResolution(const DrawingWand *wand,
  double *x,double *y)
```
- Perl 6:

```Perl6
sub DrawGetFontResolution(
   DrawingWandPointer $wand,
   num64* $x,
   num64* $y
)
returns DrawBooleanType 
is native(&library)
is export { * };
```

DrawGetFontResolution() gets the image X and Y resolution.- wand: the magick wand. - x: the x-resolution. - y: the y-resolution. 

### DrawGetFontSize
- C:

```C
double DrawGetFontSize(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetFontSize(
   DrawingWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

DrawGetFontSize() returns the font pointsize used when annotating with text.- wand: the drawing wand. 

### DrawGetFontStretch
- C:

```C
StretchType DrawGetFontStretch(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetFontStretch(
   DrawingWandPointer $wand
)
returns StretchType 
is native(&library)
is export { * };
```

DrawGetFontStretch() returns the font stretch used when annotating with text.- wand: the drawing wand. 

### DrawGetFontStyle
- C:

```C
StyleType DrawGetFontStyle(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetFontStyle(
   DrawingWandPointer $wand
)
returns StyleType 
is native(&library)
is export { * };
```

DrawGetFontStyle() returns the font style used when annotating with text.- wand: the drawing wand. 

### DrawGetFontWeight
- C:

```C
size_t DrawGetFontWeight(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetFontWeight(
   DrawingWandPointer $wand
)
returns int32 
is native(&library)
is export { * };
```

DrawGetFontWeight() returns the font weight used when annotating with text.- wand: the drawing wand. 

### DrawGetGravity
- C:

```C
GravityType DrawGetGravity(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetGravity(
   DrawingWandPointer $wand
)
returns GravityType 
is native(&library)
is export { * };
```

DrawGetGravity() returns the text placement gravity used when annotating with text.- wand: the drawing wand. 

### DrawGetOpacity
- C:

```C
double DrawGetOpacity(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetOpacity(
   DrawingWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

DrawGetOpacity() returns the opacity used when drawing with the fill or stroke color or texture.  Fully opaque is 1.0.- wand: the drawing wand. 

### DrawGetStrokeAntialias
- C:

```C
MagickBooleanType DrawGetStrokeAntialias(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetStrokeAntialias(
   DrawingWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

DrawGetStrokeAntialias() returns the current stroke antialias setting. Stroked outlines are antialiased by default.  When antialiasing is disabled stroked pixels are thresholded to determine if the stroke color or underlying canvas color should be used.- wand: the drawing wand. 

### DrawGetStrokeColor
- C:

```C
void DrawGetStrokeColor(const DrawingWand *wand,
  PixelWand *stroke_color)
```
- Perl 6:

```Perl6
sub DrawGetStrokeColor(
   DrawingWandPointer $wand,
   PixelWandPointer $stroke_color
)
is native(&library)
is export { * };
```

DrawGetStrokeColor() returns the color used for stroking object outlines.- wand: the drawing wand. - stroke_color: Return the stroke color. 

### DrawGetStrokeDashArray
- C:

```C
double *DrawGetStrokeDashArray(const DrawingWand *wand,
  size_t *number_elements)
```
- Perl 6:

```Perl6
sub DrawGetStrokeDashArray(
   DrawingWandPointer $wand,
   Pointer[int32] $number_elements
)
returns num64*
is native(&library)
is export { * };
```

DrawGetStrokeDashArray() returns an array representing the pattern of dashes and gaps used to stroke paths (see DrawSetStrokeDashArray). The array must be freed once it is no longer required by the user.- wand: the drawing wand. - number_elements: address to place number of elements in dash array 

### DrawGetStrokeDashOffset
- C:

```C
double DrawGetStrokeDashOffset(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetStrokeDashOffset(
   DrawingWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

DrawGetStrokeDashOffset() returns the offset into the dash pattern to start the dash.- wand: the drawing wand. 

### DrawGetStrokeLineCap
- C:

```C
LineCap DrawGetStrokeLineCap(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetStrokeLineCap(
   DrawingWandPointer $wand
)
returns LineCap 
is native(&library)
is export { * };
```

DrawGetStrokeLineCap() returns the shape to be used at the end of open subpaths when they are stroked. Values of LineCap are UndefinedCap, ButtCap, RoundCap, and SquareCap.- wand: the drawing wand. 

### DrawGetStrokeLineJoin
- C:

```C
LineJoin DrawGetStrokeLineJoin(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetStrokeLineJoin(
   DrawingWandPointer $wand
)
returns LineJoin 
is native(&library)
is export { * };
```

DrawGetStrokeLineJoin() returns the shape to be used at the corners of paths (or other vector shapes) when they are stroked. Values of LineJoin are UndefinedJoin, MiterJoin, RoundJoin, and BevelJoin.- wand: the drawing wand. 

### DrawGetStrokeMiterLimit
- C:

```C
size_t DrawGetStrokeMiterLimit(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetStrokeMiterLimit(
   DrawingWandPointer $wand
)
returns int32 
is native(&library)
is export { * };
```

DrawGetStrokeMiterLimit() returns the miter limit. When two line segments meet at a sharp angle and miter joins have been specified for 'lineJoin', it is possible for the miter to extend far beyond the thickness of the line stroking the path. The miterLimit' imposes a limit on the ratio of the miter length to the 'lineWidth'.- wand: the drawing wand. 

### DrawGetStrokeOpacity
- C:

```C
double DrawGetStrokeOpacity(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetStrokeOpacity(
   DrawingWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

DrawGetStrokeOpacity() returns the opacity of stroked object outlines.- wand: the drawing wand. 

### DrawGetStrokeWidth
- C:

```C
double DrawGetStrokeWidth(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetStrokeWidth(
   DrawingWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

DrawGetStrokeWidth() returns the width of the stroke used to draw object outlines.- wand: the drawing wand. 

### DrawGetTextAlignment
- C:

```C
AlignType DrawGetTextAlignment(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetTextAlignment(
   DrawingWandPointer $wand
)
returns AlignType 
is native(&library)
is export { * };
```

DrawGetTextAlignment() returns the alignment applied when annotating with text.- wand: the drawing wand. 

### DrawGetTextAntialias
- C:

```C
MagickBooleanType DrawGetTextAntialias(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetTextAntialias(
   DrawingWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

DrawGetTextAntialias() returns the current text antialias setting, which determines whether text is antialiased.  Text is antialiased by default.- wand: the drawing wand. 

### DrawGetTextDecoration
- C:

```C
DecorationType DrawGetTextDecoration(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetTextDecoration(
   DrawingWandPointer $wand
)
returns DecorationType 
is native(&library)
is export { * };
```

DrawGetTextDecoration() returns the decoration applied when annotating with text.- wand: the drawing wand. 

### DrawGetTextDirection
- C:

```C
DirectionType DrawGetTextDirection(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetTextDirection(
   DrawingWandPointer $wand
)
returns DirectionType 
is native(&library)
is export { * };
```

DrawGetTextDirection() returns the direction that will be used when annotating with text.- wand: the drawing wand. 

### DrawGetTextEncoding
- C:

```C
char *DrawGetTextEncoding(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetTextEncoding(
   DrawingWandPointer $wand
)
returns Str
is native(&library)
is export { * };
```

DrawGetTextEncoding() returns a null-terminated string which specifies the code set used for text annotations. The string must be freed by the user once it is no longer required.- wand: the drawing wand. 

### DrawGetTextKerning
- C:

```C
double DrawGetTextKerning(DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetTextKerning(
   DrawingWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

DrawGetTextKerning() gets the spacing between characters in text.- wand: the drawing wand. 

### DrawGetTextInterlineSpacing
- C:

```C
double DrawGetTextInterwordSpacing(DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetTextInterwordSpacing(
   DrawingWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

DrawGetTextInterlineSpacing() gets the spacing between lines in text.- wand: the drawing wand. 

### DrawGetTextInterwordSpacing
- C:

```C
double DrawGetTextInterwordSpacing(DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetTextInterwordSpacing(
   DrawingWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

DrawGetTextInterwordSpacing() gets the spacing between words in text.- wand: the drawing wand. 

### DrawGetVectorGraphics
- C:

```C
char *DrawGetVectorGraphics(DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawGetVectorGraphics(
   DrawingWandPointer $wand
)
returns Str
is native(&library)
is export { * };
```

DrawGetVectorGraphics() returns a null-terminated string which specifies the vector graphics generated by any graphics calls made since the wand was instantiated.  The string must be freed by the user once it is no longer required.- wand: the drawing wand. 

### DrawGetTextUnderColor
- C:

```C
void DrawGetTextUnderColor(const DrawingWand *wand,
  PixelWand *under_color)
```
- Perl 6:

```Perl6
sub DrawGetTextUnderColor(
   DrawingWandPointer $wand,
   PixelWandPointer $under_color
)
is native(&library)
is export { * };
```

DrawGetTextUnderColor() returns the color of a background rectangle to place under text annotations.- wand: the drawing wand. - under_color: Return the under color. 

### DrawLine
- C:

```C
void DrawLine(DrawingWand *wand,const double sx,const double sy,
  const double ex,const double ey)
```
- Perl 6:

```Perl6
sub DrawLine(
   DrawingWandPointer $wand,
   double $sx,
   double $sy,
   double $ex,
   double $ey
)
is native(&library)
is export { * };
```

DrawLine() draws a line on the image using the current stroke color, stroke opacity, and stroke width.- wand: the drawing wand. - sx: starting x ordinate - sy: starting y ordinate - ex: ending x ordinate - ey: ending y ordinate 

### DrawMatte
- C:

```C
void DrawMatte(DrawingWand *wand,const double x,const double y,
  const PaintMethod paint_method)
```
- Perl 6:

```Perl6
sub DrawMatte(
   DrawingWandPointer $wand,
   double $x,
   double $y,
   PaintMethod $paint_method
)
is native(&library)
is export { * };
```

DrawMatte() paints on the image's opacity channel in order to set effected pixels to transparent. to influence the opacity of pixels. The available paint methods are:<pre class="text">    PointMethod: Select the target pixel    ReplaceMethod: Select any pixel that matches the target pixel.    FloodfillMethod: Select the target pixel and matching neighbors.    FillToBorderMethod: Select the target pixel and neighbors not matchingborder color.    ResetMethod: Select all pixels.</pre>- wand: the drawing wand. - x: x ordinate - y: y ordinate - paint_method: paint method. 

### DrawPathClose
- C:

```C
void DrawPathClose(DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawPathClose(
   DrawingWandPointer $wand
)
is native(&library)
is export { * };
```

DrawPathClose() adds a path element to the current path which closes the current subpath by drawing a straight line from the current point to the current subpath's most recent starting point (usually, the most recent moveto point).- wand: the drawing wand. 

### DrawPathCurveToAbsolute
- C:

```C
void DrawPathCurveToAbsolute(DrawingWand *wand,const double x1,
  const double y1,const double x2,const double y2,const double x,
  const double y)
```
- Perl 6:

```Perl6
sub DrawPathCurveToAbsolute(
   DrawingWandPointer $wand,
   double $x1,
   double $y1,
   double $x2,
   double $y2,
   double $x,
   double $y
)
is native(&library)
is export { * };
```

DrawPathCurveToAbsolute() draws a cubic Bezier curve from the current point to (x,y) using (x1,y1) as the control point at the beginning of the curve and (x2,y2) as the control point at the end of the curve using absolute coordinates. At the end of the command, the new current point becomes the final (x,y) coordinate pair used in the polybezier.- wand: the drawing wand. - x1: x ordinate of control point for curve beginning - y1: y ordinate of control point for curve beginning - x2: x ordinate of control point for curve ending - y2: y ordinate of control point for curve ending - x: x ordinate of the end of the curve - y: y ordinate of the end of the curve 

### DrawPathCurveToRelative
- C:

```C
void DrawPathCurveToRelative(DrawingWand *wand,const double x1,
  const double y1,const double x2,const double y2,const double x,
  const double y)
```
- Perl 6:

```Perl6
sub DrawPathCurveToRelative(
   DrawingWandPointer $wand,
   double $x1,
   double $y1,
   double $x2,
   double $y2,
   double $x,
   double $y
)
is native(&library)
is export { * };
```

DrawPathCurveToRelative() draws a cubic Bezier curve from the current point to (x,y) using (x1,y1) as the control point at the beginning of the curve and (x2,y2) as the control point at the end of the curve using relative coordinates. At the end of the command, the new current point becomes the final (x,y) coordinate pair used in the polybezier.- wand: the drawing wand. - x1: x ordinate of control point for curve beginning - y1: y ordinate of control point for curve beginning - x2: x ordinate of control point for curve ending - y2: y ordinate of control point for curve ending - x: x ordinate of the end of the curve - y: y ordinate of the end of the curve 

### DrawPathCurveToQuadraticBezierAbsolute
- C:

```C
void DrawPathCurveToQuadraticBezierAbsolute(DrawingWand *wand,
  const double x1,const double y1,const double x,const double y)
```
- Perl 6:

```Perl6
sub DrawPathCurveToQuadraticBezierAbsolute(
   DrawingWandPointer $wand,
   double $x1,
   double $y1,
   double $x,
   double $y
)
is native(&library)
is export { * };
```

DrawPathCurveToQuadraticBezierAbsolute() draws a quadratic Bezier curve from the current point to (x,y) using (x1,y1) as the control point using absolute coordinates. At the end of the command, the new current point becomes the final (x,y) coordinate pair used in the polybezier.- wand: the drawing wand. - x1: x ordinate of the control point - y1: y ordinate of the control point - x: x ordinate of final point - y: y ordinate of final point 

### DrawPathCurveToQuadraticBezierRelative
- C:

```C
void DrawPathCurveToQuadraticBezierRelative(DrawingWand *wand,
  const double x1,const double y1,const double x,const double y)
```
- Perl 6:

```Perl6
sub DrawPathCurveToQuadraticBezierRelative(
   DrawingWandPointer $wand,
   double $x1,
   double $y1,
   double $x,
   double $y
)
is native(&library)
is export { * };
```

DrawPathCurveToQuadraticBezierRelative() draws a quadratic Bezier curve from the current point to (x,y) using (x1,y1) as the control point using relative coordinates. At the end of the command, the new current point becomes the final (x,y) coordinate pair used in the polybezier.- wand: the drawing wand. - x1: x ordinate of the control point - y1: y ordinate of the control point - x: x ordinate of final point - y: y ordinate of final point 

### DrawPathCurveToQuadraticBezierSmoothAbsolute
- C:

```C
void DrawPathCurveToQuadraticBezierSmoothAbsolute(
  DrawingWand *wand,const double x,const double y)
```
- Perl 6:

```Perl6
sub DrawPathCurveToQuadraticBezierSmoothAbsolute(
   DrawingWandPointer $wand,
   double $x,
   double $y
)
is native(&library)
is export { * };
```

DrawPathCurveToQuadraticBezierSmoothAbsolute() draws a quadratic Bezier curve (using absolute coordinates) from the current point to (x,y). The control point is assumed to be the reflection of the control point on the previous command relative to the current point. (If there is no previous command or if the previous command was not a DrawPathCurveToQuadraticBezierAbsolute, DrawPathCurveToQuadraticBezierRelative, DrawPathCurveToQuadraticBezierSmoothAbsolute or DrawPathCurveToQuadraticBezierSmoothRelative, assume the control point is coincident with the current point.). At the end of the command, the new current point becomes the final (x,y) coordinate pair used in the polybezier.- wand: the drawing wand. - x: x ordinate of final point - y: y ordinate of final point 

### DrawPathCurveToQuadraticBezierSmoothRelative
- C:

```C
void DrawPathCurveToQuadraticBezierSmoothRelative(DrawingWand *wand,
  const double x,const double y)
```
- Perl 6:

```Perl6
sub DrawPathCurveToQuadraticBezierSmoothRelative(
   DrawingWandPointer $wand,
   double $x,
   double $y
)
is native(&library)
is export { * };
```

DrawPathCurveToQuadraticBezierSmoothRelative() draws a quadratic Bezier curve (using relative coordinates) from the current point to (x,y). The control point is assumed to be the reflection of the control point on the previous command relative to the current point. (If there is no previous command or if the previous command was not a DrawPathCurveToQuadraticBezierAbsolute, DrawPathCurveToQuadraticBezierRelative, DrawPathCurveToQuadraticBezierSmoothAbsolute or DrawPathCurveToQuadraticBezierSmoothRelative, assume the control point is coincident with the current point.). At the end of the command, the new current point becomes the final (x,y) coordinate pair used in the polybezier.- wand: the drawing wand. - x: x ordinate of final point - y: y ordinate of final point 

### DrawPathCurveToSmoothAbsolute
- C:

```C
void DrawPathCurveToSmoothAbsolute(DrawingWand *wand,
  const double x2,const double y2,const double x,const double y)
```
- Perl 6:

```Perl6
sub DrawPathCurveToSmoothAbsolute(
   DrawingWandPointer $wand,
   double $x2,
   double $y2,
   double $x,
   double $y
)
is native(&library)
is export { * };
```

DrawPathCurveToSmoothAbsolute() draws a cubic Bezier curve from the current point to (x,y) using absolute coordinates. The first control point is assumed to be the reflection of the second control point on the previous command relative to the current point. (If there is no previous command or if the previous command was not an DrawPathCurveToAbsolute, DrawPathCurveToRelative, DrawPathCurveToSmoothAbsolute or DrawPathCurveToSmoothRelative, assume the first control point is coincident with the current point.) (x2,y2) is the second control point (i.e., the control point at the end of the curve). At the end of the command, the new current point becomes the final (x,y) coordinate pair used in the polybezier.- wand: the drawing wand. - x2: x ordinate of second control point - y2: y ordinate of second control point - x: x ordinate of termination point - y: y ordinate of termination point 

### DrawPathCurveToSmoothRelative
- C:

```C
void DrawPathCurveToSmoothRelative(DrawingWand *wand,
  const double x2,const double y2,const double x,const double y)
```
- Perl 6:

```Perl6
sub DrawPathCurveToSmoothRelative(
   DrawingWandPointer $wand,
   double $x2,
   double $y2,
   double $x,
   double $y
)
is native(&library)
is export { * };
```

DrawPathCurveToSmoothRelative() draws a cubic Bezier curve from the current point to (x,y) using relative coordinates. The first control point is assumed to be the reflection of the second control point on the previous command relative to the current point. (If there is no previous command or if the previous command was not an DrawPathCurveToAbsolute, DrawPathCurveToRelative, DrawPathCurveToSmoothAbsolute or DrawPathCurveToSmoothRelative, assume the first control point is coincident with the current point.) (x2,y2) is the second control point (i.e., the control point at the end of the curve). At the end of the command, the new current point becomes the final (x,y) coordinate pair used in the polybezier.- wand: the drawing wand. - x2: x ordinate of second control point - y2: y ordinate of second control point - x: x ordinate of termination point - y: y ordinate of termination point 

### DrawPathEllipticArcAbsolute
- C:

```C
void DrawPathEllipticArcAbsolute(DrawingWand *wand,
  const double rx,const double ry,const double x_axis_rotation,
  const MagickBooleanType large_arc_flag,
  const MagickBooleanType sweep_flag,const double x,const double y)
```
- Perl 6:

```Perl6
sub DrawPathEllipticArcAbsolute(
   DrawingWandPointer $wand,
   double $rx,
   double $ry,
   double $x_axis_rotation,
   uint32 $large_arc_flag,
   uint32 $sweep_flag,
   double $x,
   double $y
)
is native(&library)
is export { * };
```

DrawPathEllipticArcAbsolute() draws an elliptical arc from the current point to (x, y) using absolute coordinates. The size and orientation of the ellipse are defined by two radii (rx, ry) and an xAxisRotation, which indicates how the ellipse as a whole is rotated relative to the current coordinate system. The center (cx, cy) of the ellipse is calculated automagically to satisfy the constraints imposed by the other parameters. largeArcFlag and sweepFlag contribute to the automatic calculations and help determine how the arc is drawn. If largeArcFlag is true then draw the larger of the available arcs. If sweepFlag is true, then draw the arc matching a clock-wise rotation.- wand: the drawing wand. - rx: x radius - ry: y radius - x_axis_rotation: indicates how the ellipse as a whole is rotated relative to the current coordinate system - large_arc_flag: If non-zero (true) then draw the larger of the available arcs - sweep_flag: If non-zero (true) then draw the arc matching a clock-wise rotation 

### DrawPathEllipticArcRelative
- C:

```C
void DrawPathEllipticArcRelative(DrawingWand *wand,
  const double rx,const double ry,const double x_axis_rotation,
  const MagickBooleanType large_arc_flag,
  const MagickBooleanType sweep_flag,const double x,const double y)
```
- Perl 6:

```Perl6
sub DrawPathEllipticArcRelative(
   DrawingWandPointer $wand,
   double $rx,
   double $ry,
   double $x_axis_rotation,
   uint32 $large_arc_flag,
   uint32 $sweep_flag,
   double $x,
   double $y
)
is native(&library)
is export { * };
```

DrawPathEllipticArcRelative() draws an elliptical arc from the current point to (x, y) using relative coordinates. The size and orientation of the ellipse are defined by two radii (rx, ry) and an xAxisRotation, which indicates how the ellipse as a whole is rotated relative to the current coordinate system. The center (cx, cy) of the ellipse is calculated automagically to satisfy the constraints imposed by the other parameters. largeArcFlag and sweepFlag contribute to the automatic calculations and help determine how the arc is drawn. If largeArcFlag is true then draw the larger of the available arcs. If sweepFlag is true, then draw the arc matching a clock-wise rotation.- wand: the drawing wand. - rx: x radius - ry: y radius - x_axis_rotation: indicates how the ellipse as a whole is rotated relative to the current coordinate system - large_arc_flag: If non-zero (true) then draw the larger of the available arcs - sweep_flag: If non-zero (true) then draw the arc matching a clock-wise rotation 

### DrawPathFinish
- C:

```C
void DrawPathFinish(DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawPathFinish(
   DrawingWandPointer $wand
)
is native(&library)
is export { * };
```

DrawPathFinish() terminates the current path.- wand: the drawing wand. 

### DrawPathLineToAbsolute
- C:

```C
void DrawPathLineToAbsolute(DrawingWand *wand,const double x,
  const double y)
```
- Perl 6:

```Perl6
sub DrawPathLineToAbsolute(
   DrawingWandPointer $wand,
   double $x,
   double $y
)
is native(&library)
is export { * };
```

DrawPathLineToAbsolute() draws a line path from the current point to the given coordinate using absolute coordinates. The coordinate then becomes the new current point.- wand: the drawing wand. - x: target x ordinate - y: target y ordinate 

### DrawPathLineToRelative
- C:

```C
void DrawPathLineToRelative(DrawingWand *wand,const double x,
  const double y)
```
- Perl 6:

```Perl6
sub DrawPathLineToRelative(
   DrawingWandPointer $wand,
   double $x,
   double $y
)
is native(&library)
is export { * };
```

DrawPathLineToRelative() draws a line path from the current point to the given coordinate using relative coordinates. The coordinate then becomes the new current point.- wand: the drawing wand. - x: target x ordinate - y: target y ordinate 

### DrawPathLineToHorizontalAbsolute
- C:

```C
void DrawPathLineToHorizontalAbsolute(DrawingWand *wand,
  const double x)
```
- Perl 6:

```Perl6
sub DrawPathLineToHorizontalAbsolute(
   DrawingWandPointer $wand,
   double $x
)
is native(&library)
is export { * };
```

DrawPathLineToHorizontalAbsolute() draws a horizontal line path from the current point to the target point using absolute coordinates.  The target point then becomes the new current point.- wand: the drawing wand. - x: target x ordinate 

### DrawPathLineToHorizontalRelative
- C:

```C
void DrawPathLineToHorizontalRelative(DrawingWand *wand,
  const double x)
```
- Perl 6:

```Perl6
sub DrawPathLineToHorizontalRelative(
   DrawingWandPointer $wand,
   double $x
)
is native(&library)
is export { * };
```

DrawPathLineToHorizontalRelative() draws a horizontal line path from the current point to the target point using relative coordinates.  The target point then becomes the new current point.- wand: the drawing wand. - x: target x ordinate 

### DrawPathLineToVerticalAbsolute
- C:

```C
void DrawPathLineToVerticalAbsolute(DrawingWand *wand,
  const double y)
```
- Perl 6:

```Perl6
sub DrawPathLineToVerticalAbsolute(
   DrawingWandPointer $wand,
   double $y
)
is native(&library)
is export { * };
```

DrawPathLineToVerticalAbsolute() draws a vertical line path from the current point to the target point using absolute coordinates.  The target point then becomes the new current point.- wand: the drawing wand. - y: target y ordinate 

### DrawPathLineToVerticalRelative
- C:

```C
void DrawPathLineToVerticalRelative(DrawingWand *wand,
  const double y)
```
- Perl 6:

```Perl6
sub DrawPathLineToVerticalRelative(
   DrawingWandPointer $wand,
   double $y
)
is native(&library)
is export { * };
```

DrawPathLineToVerticalRelative() draws a vertical line path from the current point to the target point using relative coordinates.  The target point then becomes the new current point.- wand: the drawing wand. - y: target y ordinate 

### DrawPathMoveToAbsolute
- C:

```C
void DrawPathMoveToAbsolute(DrawingWand *wand,const double x,
  const double y)
```
- Perl 6:

```Perl6
sub DrawPathMoveToAbsolute(
   DrawingWandPointer $wand,
   double $x,
   double $y
)
is native(&library)
is export { * };
```

DrawPathMoveToAbsolute() starts a new sub-path at the given coordinate using absolute coordinates. The current point then becomes the specified coordinate.- wand: the drawing wand. - x: target x ordinate - y: target y ordinate 

### DrawPathMoveToRelative
- C:

```C
void DrawPathMoveToRelative(DrawingWand *wand,const double x,
  const double y)
```
- Perl 6:

```Perl6
sub DrawPathMoveToRelative(
   DrawingWandPointer $wand,
   double $x,
   double $y
)
is native(&library)
is export { * };
```

DrawPathMoveToRelative() starts a new sub-path at the given coordinate using relative coordinates. The current point then becomes the specified coordinate.- wand: the drawing wand. - x: target x ordinate - y: target y ordinate 

### DrawPathStart
- C:

```C
void DrawPathStart(DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawPathStart(
   DrawingWandPointer $wand
)
is native(&library)
is export { * };
```

DrawPathStart() declares the start of a path drawing list which is terminated by a matching DrawPathFinish() command. All other DrawPath commands must be enclosed between a DrawPathStart() and a DrawPathFinish() command. This is because path drawing commands are subordinate commands and they do not function by themselves.- wand: the drawing wand. 

### DrawPoint
- C:

```C
void DrawPoint(DrawingWand *wand,const double x,const double y)
```
- Perl 6:

```Perl6
sub DrawPoint(
   DrawingWandPointer $wand,
   double $x,
   double $y
)
is native(&library)
is export { * };
```

DrawPoint() draws a point using the current fill color.- wand: the drawing wand. - x: target x coordinate - y: target y coordinate 

### DrawPolygon
- C:

```C
void DrawPolygon(DrawingWand *wand,
  const size_t number_coordinates,const PointInfo *coordinates)
```
- Perl 6:

```Perl6
sub DrawPolygon(
   DrawingWandPointer $wand,
   int32 $number_coordinates,
   PointInfo * $coordinates
)
is native(&library)
is export { * };
```

DrawPolygon() draws a polygon using the current stroke, stroke width, and fill color or texture, using the specified array of coordinates.- wand: the drawing wand. - number_coordinates: number of coordinates - coordinates: coordinate array 

### DrawPolyline
- C:

```C
void DrawPolyline(DrawingWand *wand,
  const size_t number_coordinates,const PointInfo *coordinates)
```
- Perl 6:

```Perl6
sub DrawPolyline(
   DrawingWandPointer $wand,
   int32 $number_coordinates,
   PointInfo * $coordinates
)
is native(&library)
is export { * };
```

DrawPolyline() draws a polyline using the current stroke, stroke width, and fill color or texture, using the specified array of coordinates.- wand: the drawing wand. - number_coordinates: number of coordinates - coordinates: coordinate array 

### DrawPopClipPath
- C:

```C
void DrawPopClipPath(DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawPopClipPath(
   DrawingWandPointer $wand
)
is native(&library)
is export { * };
```

DrawPopClipPath() terminates a clip path definition.- wand: the drawing wand. 

### DrawPopDefs
- C:

```C
void DrawPopDefs(DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawPopDefs(
   DrawingWandPointer $wand
)
is native(&library)
is export { * };
```

DrawPopDefs() terminates a definition list.- wand: the drawing wand. 

### DrawPopPattern
- C:

```C
MagickBooleanType DrawPopPattern(DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawPopPattern(
   DrawingWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

DrawPopPattern() terminates a pattern definition.- wand: the drawing wand. 

### DrawPushClipPath
- C:

```C
void DrawPushClipPath(DrawingWand *wand,const char *clip_mask_id)
```
- Perl 6:

```Perl6
sub DrawPushClipPath(
   DrawingWandPointer $wand,
   Str $clip_mask_id
)
is native(&library)
is export { * };
```

DrawPushClipPath() starts a clip path definition which is comprized of any number of drawing commands and terminated by a DrawPopClipPath() command.- wand: the drawing wand. - clip_mask_id: string identifier to associate with the clip path for later use. 

### DrawPushDefs
- C:

```C
void DrawPushDefs(DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawPushDefs(
   DrawingWandPointer $wand
)
is native(&library)
is export { * };
```

DrawPushDefs() indicates that commands up to a terminating DrawPopDefs() command create named elements (e.g. clip-paths, textures, etc.) which may safely be processed earlier for the sake of efficiency.- wand: the drawing wand. 

### DrawPushPattern
- C:

```C
MagickBooleanType DrawPushPattern(DrawingWand *wand,
  const char *pattern_id,const double x,const double y,
  const double width,const double height)
```
- Perl 6:

```Perl6
sub DrawPushPattern(
   DrawingWandPointer $wand,
   Str $pattern_id,
   double $x,
   double $y,
   double $width,
   double $height
)
returns uint32 
is native(&library)
is export { * };
```

DrawPushPattern() indicates that subsequent commands up to a DrawPopPattern() command comprise the definition of a named pattern. The pattern space is assigned top left corner coordinates, a width and height, and becomes its own drawing space.  Anything which can be drawn may be used in a pattern definition. Named patterns may be used as stroke or brush definitions.- wand: the drawing wand. - pattern_id: pattern identification for later reference - x: x ordinate of top left corner - y: y ordinate of top left corner - width: width of pattern space - height: height of pattern space 

### DrawRectangle
- C:

```C
void DrawRectangle(DrawingWand *wand,const double x1,
  const double y1,const double x2,const double y2)
```
- Perl 6:

```Perl6
sub DrawRectangle(
   DrawingWandPointer $wand,
   double $x1,
   double $y1,
   double $x2,
   double $y2
)
is native(&library)
is export { * };
```

DrawRectangle() draws a rectangle given two coordinates and using the current stroke, stroke width, and fill settings.- x1: x ordinate of first coordinate - y1: y ordinate of first coordinate - x2: x ordinate of second coordinate - y2: y ordinate of second coordinate 

### DrawResetVectorGraphics
- C:

```C
void DrawResetVectorGraphics(DrawingWand *wand)
```
- Perl 6:

```Perl6
sub DrawResetVectorGraphics(
   DrawingWandPointer $wand
)
is native(&library)
is export { * };
```

DrawResetVectorGraphics() resets the vector graphics associated with the specified wand.- wand: the drawing wand. 

### DrawRotate
- C:

```C
void DrawRotate(DrawingWand *wand,const double degrees)
```
- Perl 6:

```Perl6
sub DrawRotate(
   DrawingWandPointer $wand,
   double $degrees
)
is native(&library)
is export { * };
```

DrawRotate() applies the specified rotation to the current coordinate space.- wand: the drawing wand. - degrees: degrees of rotation 

### DrawRoundRectangle
- C:

```C
void DrawRoundRectangle(DrawingWand *wand,double x1,double y1,
  double x2,double y2,double rx,double ry)
```
- Perl 6:

```Perl6
sub DrawRoundRectangle(
   DrawingWandPointer $wand,
   double $x1,
   double $y1,
   double $x2,
   double $y2,
   double $rx,
   double $ry
)
is native(&library)
is export { * };
```

DrawRoundRectangle() draws a rounted rectangle given two coordinates, x &amp; y corner radiuses and using the current stroke, stroke width, and fill settings.- wand: the drawing wand. - x1: x ordinate of first coordinate - y1: y ordinate of first coordinate - x2: x ordinate of second coordinate - y2: y ordinate of second coordinate - rx: radius of corner in horizontal direction - ry: radius of corner in vertical direction 

### DrawScale
- C:

```C
void DrawScale(DrawingWand *wand,const double x,const double y)
```
- Perl 6:

```Perl6
sub DrawScale(
   DrawingWandPointer $wand,
   double $x,
   double $y
)
is native(&library)
is export { * };
```

DrawScale() adjusts the scaling factor to apply in the horizontal and vertical directions to the current coordinate space.- wand: the drawing wand. - x: horizontal scale factor - y: vertical scale factor 

### DrawSetBorderColor
- C:

```C
void DrawSetBorderColor(DrawingWand *wand,const PixelWand *border_wand)
```
- Perl 6:

```Perl6
sub DrawSetBorderColor(
   DrawingWandPointer $wand,
   PixelWandPointer $border_wand
)
is native(&library)
is export { * };
```

DrawSetBorderColor() sets the border color to be used for drawing bordered objects.- wand: the drawing wand. - border_wand: border wand. 

### DrawSetClipPath
- C:

```C
MagickBooleanType DrawSetClipPath(DrawingWand *wand,
  const char *clip_mask)
```
- Perl 6:

```Perl6
sub DrawSetClipPath(
   DrawingWandPointer $wand,
   Str $clip_mask
)
returns uint32 
is native(&library)
is export { * };
```

DrawSetClipPath() associates a named clipping path with the image.  Only the areas drawn on by the clipping path will be modified as ssize_t as it remains in effect.- wand: the drawing wand. - clip_mask: name of clipping path to associate with image 

### DrawSetClipRule
- C:

```C
void DrawSetClipRule(DrawingWand *wand,const FillRule fill_rule)
```
- Perl 6:

```Perl6
sub DrawSetClipRule(
   DrawingWandPointer $wand,
   FillRule $fill_rule
)
is native(&library)
is export { * };
```

DrawSetClipRule() set the polygon fill rule to be used by the clipping path.- wand: the drawing wand. - fill_rule: fill rule (EvenOddRule or NonZeroRule) 

### DrawSetClipUnits
- C:

```C
void DrawSetClipUnits(DrawingWand *wand,
  const ClipPathUnits clip_units)
```
- Perl 6:

```Perl6
sub DrawSetClipUnits(
   DrawingWandPointer $wand,
   ClipPathUnits $clip_units
)
is native(&library)
is export { * };
```

DrawSetClipUnits() sets the interpretation of clip path units.- wand: the drawing wand. - clip_units: units to use (UserSpace, UserSpaceOnUse, or ObjectBoundingBox) 

### DrawSetDensity
- C:

```C
MagickBooleanType DrawSetDensity(DrawingWand *wand,
  const char *density)
```
- Perl 6:

```Perl6
sub DrawSetDensity(
   DrawingWandPointer $wand,
   Str $density
)
returns uint32 
is native(&library)
is export { * };
```

DrawSetDensity() sets the vertical and horizontal resolution.- wand: the drawing wand. - density: the vertical and horizontal resolution. 

### DrawSetFillColor
- C:

```C
void DrawSetFillColor(DrawingWand *wand,const PixelWand *fill_wand)
```
- Perl 6:

```Perl6
sub DrawSetFillColor(
   DrawingWandPointer $wand,
   PixelWandPointer $fill_wand
)
is native(&library)
is export { * };
```

DrawSetFillColor() sets the fill color to be used for drawing filled objects.- wand: the drawing wand. - fill_wand: fill wand. 

### DrawSetFillOpacity
- C:

```C
void DrawSetFillOpacity(DrawingWand *wand,const double fill_opacity)
```
- Perl 6:

```Perl6
sub DrawSetFillOpacity(
   DrawingWandPointer $wand,
   double $fill_opacity
)
is native(&library)
is export { * };
```

DrawSetFillOpacity() sets the opacity to use when drawing using the fill color or fill texture.  Fully opaque is 1.0.- wand: the drawing wand. - fill_opacity: fill opacity 

### DrawSetFontResolution
- C:

```C
MagickBooleanType DrawSetFontResolution(DrawingWand *wand,
  const double x_resolution,const double y_resolution)
```
- Perl 6:

```Perl6
sub DrawSetFontResolution(
   DrawingWandPointer $wand,
   double $x_resolution,
   double $y_resolution
)
returns uint32 
is native(&library)
is export { * };
```

DrawSetFontResolution() sets the image resolution.- wand: the magick wand. - x_resolution: the image x resolution. - y_resolution: the image y resolution. 

### DrawSetOpacity
- C:

```C
void DrawSetOpacity(DrawingWand *wand,const double opacity)
```
- Perl 6:

```Perl6
sub DrawSetOpacity(
   DrawingWandPointer $wand,
   double $opacity
)
is native(&library)
is export { * };
```

DrawSetOpacity() sets the opacity to use when drawing using the fill or stroke color or texture.  Fully opaque is 1.0.- wand: the drawing wand. - opacity: fill opacity 

### DrawSetFillPatternURL
- C:

```C
MagickBooleanType DrawSetFillPatternURL(DrawingWand *wand,
  const char *fill_url)
```
- Perl 6:

```Perl6
sub DrawSetFillPatternURL(
   DrawingWandPointer $wand,
   Str $fill_url
)
returns uint32 
is native(&library)
is export { * };
```

DrawSetFillPatternURL() sets the URL to use as a fill pattern for filling objects. Only local URLs ("#identifier") are supported at this time. These local URLs are normally created by defining a named fill pattern with DrawPushPattern/DrawPopPattern.- wand: the drawing wand. - fill_url: URL to use to obtain fill pattern. 

### DrawSetFillRule
- C:

```C
void DrawSetFillRule(DrawingWand *wand,const FillRule fill_rule)
```
- Perl 6:

```Perl6
sub DrawSetFillRule(
   DrawingWandPointer $wand,
   FillRule $fill_rule
)
is native(&library)
is export { * };
```

DrawSetFillRule() sets the fill rule to use while drawing polygons.- wand: the drawing wand. - fill_rule: fill rule (EvenOddRule or NonZeroRule) 

### DrawSetFont
- C:

```C
MagickBooleanType DrawSetFont(DrawingWand *wand,const char *font_name)
```
- Perl 6:

```Perl6
sub DrawSetFont(
   DrawingWandPointer $wand,
   Str $font_name
)
returns uint32 
is native(&library)
is export { * };
```

DrawSetFont() sets the fully-sepecified font to use when annotating with text.- wand: the drawing wand. - font_name: font name 

### DrawSetFontFamily
- C:

```C
MagickBooleanType DrawSetFontFamily(DrawingWand *wand,
  const char *font_family)
```
- Perl 6:

```Perl6
sub DrawSetFontFamily(
   DrawingWandPointer $wand,
   Str $font_family
)
returns uint32 
is native(&library)
is export { * };
```

DrawSetFontFamily() sets the font family to use when annotating with text.- wand: the drawing wand. - font_family: font family 

### DrawSetFontSize
- C:

```C
void DrawSetFontSize(DrawingWand *wand,const double pointsize)
```
- Perl 6:

```Perl6
sub DrawSetFontSize(
   DrawingWandPointer $wand,
   double $pointsize
)
is native(&library)
is export { * };
```

DrawSetFontSize() sets the font pointsize to use when annotating with text.- wand: the drawing wand. - pointsize: text pointsize 

### DrawSetFontStretch
- C:

```C
void DrawSetFontStretch(DrawingWand *wand,
  const StretchType font_stretch)
```
- Perl 6:

```Perl6
sub DrawSetFontStretch(
   DrawingWandPointer $wand,
   StretchType $font_stretch
)
is native(&library)
is export { * };
```

DrawSetFontStretch() sets the font stretch to use when annotating with text. The AnyStretch enumeration acts as a wild-card "don't care" option.- wand: the drawing wand. - font_stretch: font stretch (NormalStretch, UltraCondensedStretch, CondensedStretch, SemiCondensedStretch, SemiExpandedStretch, ExpandedStretch, ExtraExpandedStretch, UltraExpandedStretch, AnyStretch) 

### DrawSetFontStyle
- C:

```C
void DrawSetFontStyle(DrawingWand *wand,const StyleType style)
```
- Perl 6:

```Perl6
sub DrawSetFontStyle(
   DrawingWandPointer $wand,
   StyleType $style
)
is native(&library)
is export { * };
```

DrawSetFontStyle() sets the font style to use when annotating with text. The AnyStyle enumeration acts as a wild-card "don't care" option.- wand: the drawing wand. - style: font style (NormalStyle, ItalicStyle, ObliqueStyle, AnyStyle) 

### DrawSetFontWeight
- C:

```C
void DrawSetFontWeight(DrawingWand *wand,
  const size_t font_weight)
```
- Perl 6:

```Perl6
sub DrawSetFontWeight(
   DrawingWandPointer $wand,
   int32 $font_weight
)
is native(&library)
is export { * };
```

DrawSetFontWeight() sets the font weight to use when annotating with text.- wand: the drawing wand. - font_weight: font weight (valid range 100-900) 

### DrawSetGravity
- C:

```C
void DrawSetGravity(DrawingWand *wand,const GravityType gravity)
```
- Perl 6:

```Perl6
sub DrawSetGravity(
   DrawingWandPointer $wand,
   GravityType $gravity
)
is native(&library)
is export { * };
```

DrawSetGravity() sets the text placement gravity to use when annotating with text.- wand: the drawing wand. - gravity: positioning gravity (NorthWestGravity, NorthGravity, NorthEastGravity, WestGravity, CenterGravity, EastGravity, SouthWestGravity, SouthGravity, SouthEastGravity) 

### DrawSetStrokeColor
- C:

```C
void DrawSetStrokeColor(DrawingWand *wand,
  const PixelWand *stroke_wand)
```
- Perl 6:

```Perl6
sub DrawSetStrokeColor(
   DrawingWandPointer $wand,
   PixelWandPointer $stroke_wand
)
is native(&library)
is export { * };
```

DrawSetStrokeColor() sets the color used for stroking object outlines.- wand: the drawing wand. - stroke_wand: stroke wand. 

### DrawSetStrokePatternURL
- C:

```C
MagickBooleanType DrawSetStrokePatternURL(DrawingWand *wand,
  const char *stroke_url)
```
- Perl 6:

```Perl6
sub DrawSetStrokePatternURL(
   DrawingWandPointer $wand,
   Str $stroke_url
)
returns uint32 
is native(&library)
is export { * };
```

DrawSetStrokePatternURL() sets the pattern used for stroking object outlines.- wand: the drawing wand. - stroke_url: URL specifying pattern ID (e.g. "#pattern_id") 

### DrawSetStrokeAntialias
- C:

```C
void DrawSetStrokeAntialias(DrawingWand *wand,
  const MagickBooleanType stroke_antialias)
```
- Perl 6:

```Perl6
sub DrawSetStrokeAntialias(
   DrawingWandPointer $wand,
   uint32 $stroke_antialias
)
is native(&library)
is export { * };
```

DrawSetStrokeAntialias() controls whether stroked outlines are antialiased. Stroked outlines are antialiased by default.  When antialiasing is disabled stroked pixels are thresholded to determine if the stroke color or underlying canvas color should be used.- wand: the drawing wand. - stroke_antialias: set to false (zero) to disable antialiasing 

### DrawSetStrokeDashArray
- C:

```C
MagickBooleanType DrawSetStrokeDashArray(DrawingWand *wand,
  const size_t number_elements,const double *dasharray)
```
- Perl 6:

```Perl6
sub DrawSetStrokeDashArray(
   DrawingWandPointer $wand,
   int32 $number_elements,
   num64* $dasharray
)
returns uint32 
is native(&library)
is export { * };
```

DrawSetStrokeDashArray() specifies the pattern of dashes and gaps used to stroke paths. The stroke dash array represents an array of numbers that specify the lengths of alternating dashes and gaps in pixels. If an odd number of values is provided, then the list of values is repeated to yield an even number of values. To remove an existing dash array, pass a zero number_elements argument and null dasharray.  A typical stroke dash array might contain the members 5 3 2.- wand: the drawing wand. - number_elements: number of elements in dash array - dasharray: dash array values 

### DrawSetStrokeDashOffset
- C:

```C
void DrawSetStrokeDashOffset(DrawingWand *wand,
  const double dash_offset)
```
- Perl 6:

```Perl6
sub DrawSetStrokeDashOffset(
   DrawingWandPointer $wand,
   double $dash_offset
)
is native(&library)
is export { * };
```

DrawSetStrokeDashOffset() specifies the offset into the dash pattern to start the dash.- wand: the drawing wand. - dash_offset: dash offset 

### DrawSetStrokeLineCap
- C:

```C
void DrawSetStrokeLineCap(DrawingWand *wand,
  const LineCap linecap)
```
- Perl 6:

```Perl6
sub DrawSetStrokeLineCap(
   DrawingWandPointer $wand,
   LineCap $linecap
)
is native(&library)
is export { * };
```

DrawSetStrokeLineCap() specifies the shape to be used at the end of open subpaths when they are stroked. Values of LineCap are UndefinedCap, ButtCap, RoundCap, and SquareCap.- wand: the drawing wand. - linecap: linecap style 

### DrawSetStrokeLineJoin
- C:

```C
void DrawSetStrokeLineJoin(DrawingWand *wand,
  const LineJoin linejoin)
```
- Perl 6:

```Perl6
sub DrawSetStrokeLineJoin(
   DrawingWandPointer $wand,
   LineJoin $linejoin
)
is native(&library)
is export { * };
```

DrawSetStrokeLineJoin() specifies the shape to be used at the corners of paths (or other vector shapes) when they are stroked. Values of LineJoin are UndefinedJoin, MiterJoin, RoundJoin, and BevelJoin.- wand: the drawing wand. - linejoin: line join style 

### DrawSetStrokeMiterLimit
- C:

```C
void DrawSetStrokeMiterLimit(DrawingWand *wand,
  const size_t miterlimit)
```
- Perl 6:

```Perl6
sub DrawSetStrokeMiterLimit(
   DrawingWandPointer $wand,
   int32 $miterlimit
)
is native(&library)
is export { * };
```

DrawSetStrokeMiterLimit() specifies the miter limit. When two line segments meet at a sharp angle and miter joins have been specified for 'lineJoin', it is possible for the miter to extend far beyond the thickness of the line stroking the path. The miterLimit' imposes a limit on the ratio of the miter length to the 'lineWidth'.- wand: the drawing wand. - miterlimit: miter limit 

### DrawSetStrokeOpacity
- C:

```C
void DrawSetStrokeOpacity(DrawingWand *wand,
  const double stroke_opacity)
```
- Perl 6:

```Perl6
sub DrawSetStrokeOpacity(
   DrawingWandPointer $wand,
   double $stroke_opacity
)
is native(&library)
is export { * };
```

DrawSetStrokeOpacity() specifies the opacity of stroked object outlines.- wand: the drawing wand. - stroke_opacity: stroke opacity.  The value 1.0 is opaque. 

### DrawSetStrokeWidth
- C:

```C
void DrawSetStrokeWidth(DrawingWand *wand,
  const double stroke_width)
```
- Perl 6:

```Perl6
sub DrawSetStrokeWidth(
   DrawingWandPointer $wand,
   double $stroke_width
)
is native(&library)
is export { * };
```

DrawSetStrokeWidth() sets the width of the stroke used to draw object outlines.- wand: the drawing wand. - stroke_width: stroke width 

### DrawSetTextAlignment
- C:

```C
void DrawSetTextAlignment(DrawingWand *wand,const AlignType alignment)
```
- Perl 6:

```Perl6
sub DrawSetTextAlignment(
   DrawingWandPointer $wand,
   AlignType $alignment
)
is native(&library)
is export { * };
```

DrawSetTextAlignment() specifies a text alignment to be applied when annotating with text.- wand: the drawing wand. - alignment: text alignment.  One of UndefinedAlign, LeftAlign, CenterAlign, or RightAlign. 

### DrawSetTextAntialias
- C:

```C
void DrawSetTextAntialias(DrawingWand *wand,
  const MagickBooleanType text_antialias)
```
- Perl 6:

```Perl6
sub DrawSetTextAntialias(
   DrawingWandPointer $wand,
   uint32 $text_antialias
)
is native(&library)
is export { * };
```

DrawSetTextAntialias() controls whether text is antialiased.  Text is antialiased by default.- wand: the drawing wand. - text_antialias: antialias boolean. Set to false (0) to disable antialiasing. 

### DrawSetTextDecoration
- C:

```C
void DrawSetTextDecoration(DrawingWand *wand,
  const DecorationType decoration)
```
- Perl 6:

```Perl6
sub DrawSetTextDecoration(
   DrawingWandPointer $wand,
   DecorationType $decoration
)
is native(&library)
is export { * };
```

DrawSetTextDecoration() specifies a decoration to be applied when annotating with text.- wand: the drawing wand. - decoration: text decoration.  One of NoDecoration, UnderlineDecoration, OverlineDecoration, or LineThroughDecoration 

### DrawSetTextDirection
- C:

```C
void DrawSetTextDirection(DrawingWand *wand,
  const DirectionType direction)
```
- Perl 6:

```Perl6
sub DrawSetTextDirection(
   DrawingWandPointer $wand,
   DirectionType $direction
)
is native(&library)
is export { * };
```

DrawSetTextDirection() specifies the direction to be used when annotating with text.- wand: the drawing wand. - direction: text direction. One of RightToLeftDirection, LeftToRightDirection 

### DrawSetTextEncoding
- C:

```C
void DrawSetTextEncoding(DrawingWand *wand,const char *encoding)
```
- Perl 6:

```Perl6
sub DrawSetTextEncoding(
   DrawingWandPointer $wand,
   Str $encoding
)
is native(&library)
is export { * };
```

DrawSetTextEncoding() specifies the code set to use for text annotations. The only character encoding which may be specified at this time is "UTF-8" for representing Unicode as a sequence of bytes. Specify an empty string to set text encoding to the system's default. Successful text annotation using Unicode may require fonts designed to support Unicode.- wand: the drawing wand. - encoding: character string specifying text encoding 

### DrawSetTextKerning
- C:

```C
void DrawSetTextKerning(DrawingWand *wand,const double kerning)
```
- Perl 6:

```Perl6
sub DrawSetTextKerning(
   DrawingWandPointer $wand,
   double $kerning
)
is native(&library)
is export { * };
```

DrawSetTextKerning() sets the spacing between characters in text.- wand: the drawing wand. - kerning: text kerning 

### DrawSetTextInterlineSpacing
- C:

```C
void DrawSetTextInterlineSpacing(DrawingWand *wand,
  const double interline_spacing)
```
- Perl 6:

```Perl6
sub DrawSetTextInterlineSpacing(
   DrawingWandPointer $wand,
   double $interline_spacing
)
is native(&library)
is export { * };
```

DrawSetTextInterlineSpacing() sets the spacing between line in text.- wand: the drawing wand. - interline_spacing: text line spacing 

### DrawSetTextInterwordSpacing
- C:

```C
void DrawSetTextInterwordSpacing(DrawingWand *wand,
  const double interword_spacing)
```
- Perl 6:

```Perl6
sub DrawSetTextInterwordSpacing(
   DrawingWandPointer $wand,
   double $interword_spacing
)
is native(&library)
is export { * };
```

DrawSetTextInterwordSpacing() sets the spacing between words in text.- wand: the drawing wand. - interword_spacing: text word spacing 

### DrawSetTextUnderColor
- C:

```C
void DrawSetTextUnderColor(DrawingWand *wand,
  const PixelWand *under_wand)
```
- Perl 6:

```Perl6
sub DrawSetTextUnderColor(
   DrawingWandPointer $wand,
   PixelWandPointer $under_wand
)
is native(&library)
is export { * };
```

DrawSetTextUnderColor() specifies the color of a background rectangle to place under text annotations.- wand: the drawing wand. - under_wand: text under wand. 

### DrawSetVectorGraphics
- C:

```C
MagickBooleanType DrawSetVectorGraphics(DrawingWand *wand,
  const char *xml)
```
- Perl 6:

```Perl6
sub DrawSetVectorGraphics(
   DrawingWandPointer $wand,
   Str $xml
)
returns uint32 
is native(&library)
is export { * };
```

DrawSetVectorGraphics() sets the vector graphics associated with the specified wand.  Use this method with DrawGetVectorGraphics() as a method to persist the vector graphics state.- wand: the drawing wand. - xml: the drawing wand XML. 

### DrawSkewX
- C:

```C
void DrawSkewX(DrawingWand *wand,const double degrees)
```
- Perl 6:

```Perl6
sub DrawSkewX(
   DrawingWandPointer $wand,
   double $degrees
)
is native(&library)
is export { * };
```

DrawSkewX() skews the current coordinate system in the horizontal direction.- wand: the drawing wand. - degrees: number of degrees to skew the coordinates 

### DrawSkewY
- C:

```C
void DrawSkewY(DrawingWand *wand,const double degrees)
```
- Perl 6:

```Perl6
sub DrawSkewY(
   DrawingWandPointer $wand,
   double $degrees
)
is native(&library)
is export { * };
```

DrawSkewY() skews the current coordinate system in the vertical direction.- wand: the drawing wand. - degrees: number of degrees to skew the coordinates 

### DrawTranslate
- C:

```C
void DrawTranslate(DrawingWand *wand,const double x,
  const double y)
```
- Perl 6:

```Perl6
sub DrawTranslate(
   DrawingWandPointer $wand,
   double $x,
   double $y
)
is native(&library)
is export { * };
```

DrawTranslate() applies a translation to the current coordinate system which moves the coordinate system origin to the specified coordinate.- wand: the drawing wand. - x: new x ordinate for coordinate system origin - y: new y ordinate for coordinate system origin 

### DrawSetViewbox
- C:

```C
void DrawSetViewbox(DrawingWand *wand,ssize_t x1,
  ssize_t y1,ssize_t x2,ssize_t y2)
```
- Perl 6:

```Perl6
sub DrawSetViewbox(
   DrawingWandPointer $wand,
   sint32 $x1,
   sint32 $y1,
   sint32 $x2,
   sint32 $y2
)
is native(&library)
is export { * };
```

DrawSetViewbox() sets the overall canvas size to be recorded with the drawing vector data.  Usually this will be specified using the same size as the canvas image.  When the vector data is saved to SVG or MVG formats, the viewbox is use to specify the size of the canvas image that a viewer will render the vector data on.- wand: the drawing wand. - x1: left x ordinate - y1: top y ordinate - x2: right x ordinate - y2: bottom y ordinate 

### IsDrawingWand
- C:

```C
MagickBooleanType IsDrawingWand(const DrawingWand *wand)
```
- Perl 6:

```Perl6
sub IsDrawingWand(
   DrawingWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

IsDrawingWand() returns MagickTrue if the wand is verified as a drawing wand.- wand: the drawing wand. 

### NewDrawingWand
- C:

```C
DrawingWand *NewDrawingWand(void)
```
- Perl 6:

```Perl6
sub NewDrawingWand(
   v $oid
)
returns DrawingWandPointer
is native(&library)
is export { * };
```

NewDrawingWand() returns a drawing wand required for all other methods in the API.<h2><a href="http://www.imagemagick.org/api/MagickWand/drawing-wand_8c.html" id="PeekDrawingWand">PeekDrawingWand</a></h2>PeekDrawingWand() returns the current drawing wand.The format of the PeekDrawingWand method is:<pre class="text">DrawInfo \*PeekDrawingWand(const DrawingWand \*wand)</pre>- wand: the drawing wand. 

### PopDrawingWand
- C:

```C
MagickBooleanType PopDrawingWand(DrawingWand *wand)
```
- Perl 6:

```Perl6
sub PopDrawingWand(
   DrawingWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

PopDrawingWand() destroys the current drawing wand and returns to the previously pushed drawing wand. Multiple drawing wands may exist. It is an error to attempt to pop more drawing wands than have been pushed, and it is proper form to pop all drawing wands which have been pushed.- wand: the drawing wand. 

### PushDrawingWand
- C:

```C
MagickBooleanType PushDrawingWand(DrawingWand *wand)
```
- Perl 6:

```Perl6
sub PushDrawingWand(
   DrawingWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

PushDrawingWand() clones the current drawing wand to create a new drawing wand.  The original drawing wand(s) may be returned to by invoking PopDrawingWand().  The drawing wands are stored on a drawing wand stack. For every Pop there must have already been an equivalent Push.- wand: the drawing wand. 

