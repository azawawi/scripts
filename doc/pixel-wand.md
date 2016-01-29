### ClearPixelWand
- C:

```C
void ClearPixelWand(PixelWand *wand)
```
- Perl 6:

```Perl6
sub ClearPixelWand(
   PixelWandPointer $wand
)
is native(&library)
is export { * };
```

ClearPixelWand() clears resources associated with the wand.- wand: the pixel wand. 

### ClonePixelWand
- C:

```C
PixelWand *ClonePixelWand(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub ClonePixelWand(
   PixelWandPointer $wand
)
returns PixelWandPointer
is native(&library)
is export { * };
```

ClonePixelWand() makes an exact copy of the specified wand.- wand: the magick wand. 

### ClonePixelWands
- C:

```C
PixelWand **ClonePixelWands(const PixelWand **wands,
  const size_t number_wands)
```
- Perl 6:

```Perl6
sub ClonePixelWands(
   PixelWandPointer* $wands,
   int32 $number_wands
)
returns PixelWandPointer*
is native(&library)
is export { * };
```

ClonePixelWands() makes an exact copy of the specified wands.- wands: the magick wands. - number_wands: the number of wands. 

### DestroyPixelWand
- C:

```C
PixelWand *DestroyPixelWand(PixelWand *wand)
```
- Perl 6:

```Perl6
sub DestroyPixelWand(
   PixelWandPointer $wand
)
returns PixelWandPointer
is native(&library)
is export { * };
```

DestroyPixelWand() deallocates resources associated with a PixelWand.- wand: the pixel wand. 

### DestroyPixelWands
- C:

```C
PixelWand **DestroyPixelWands(PixelWand **wand,
  const size_t number_wands)
```
- Perl 6:

```Perl6
sub DestroyPixelWands(
   PixelWandPointer* $wand,
   int32 $number_wands
)
returns PixelWandPointer*
is native(&library)
is export { * };
```

DestroyPixelWands() deallocates resources associated with an array of pixel wands.- wand: the pixel wand. - number_wands: the number of wands. 

### IsPixelWandSimilar
- C:

```C
MagickBooleanType IsPixelWandSimilar(PixelWand *p,PixelWand *q,
  const double fuzz)
```
- Perl 6:

```Perl6
sub IsPixelWandSimilar(
   PixelWandPointer $p,
   PixelWandPointer $q,
   double $fuzz
)
returns uint32 
is native(&library)
is export { * };
```

IsPixelWandSimilar() returns MagickTrue if the distance between two colors is less than the specified distance.- p: the pixel wand. - q: the pixel wand. - fuzz: any two colors that are less than or equal to this distance squared are consider similar. 

### IsPixelWand
- C:

```C
MagickBooleanType IsPixelWand(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub IsPixelWand(
   PixelWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

IsPixelWand() returns MagickTrue if the wand is verified as a pixel wand.- wand: the magick wand. 

### NewPixelWand
- C:

```C
PixelWand *NewPixelWand(void)
```
- Perl 6:

```Perl6
sub NewPixelWand(
   v $oid
)
returns PixelWandPointer
is native(&library)
is export { * };
```

NewPixelWand() returns a new pixel wand.<h2><a href="http://www.imagemagick.org/api/MagickWand/pixel-wand_8c.html" id="NewPixelWands">NewPixelWands</a></h2>NewPixelWands() returns an array of pixel wands.The format of the NewPixelWands method is:<pre class="text">PixelWand \*\*NewPixelWands(const size_t number_wands)</pre>- number_wands: the number of wands. 

### PixelClearException
- C:

```C
MagickBooleanType PixelClearException(PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelClearException(
   PixelWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

PixelClearException() clear any exceptions associated with the iterator.- wand: the pixel wand. 

### PixelGetAlpha
- C:

```C
double PixelGetAlpha(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetAlpha(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

PixelGetAlpha() returns the normalized alpha value of the pixel wand.- wand: the pixel wand. 

### PixelGetAlphaQuantum
- C:

```C
Quantum PixelGetAlphaQuantum(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetAlphaQuantum(
   PixelWandPointer $wand
)
returns Quantum 
is native(&library)
is export { * };
```

PixelGetAlphaQuantum() returns the alpha value of the pixel wand.- wand: the pixel wand. 

### PixelGetBlack
- C:

```C
double PixelGetBlack(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetBlack(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

PixelGetBlack() returns the normalized black color of the pixel wand.- wand: the pixel wand. 

### PixelGetBlackQuantum
- C:

```C
Quantum PixelGetBlackQuantum(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetBlackQuantum(
   PixelWandPointer $wand
)
returns Quantum 
is native(&library)
is export { * };
```

PixelGetBlackQuantum() returns the black color of the pixel wand.- wand: the pixel wand. 

### PixelGetBlue
- C:

```C
double PixelGetBlue(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetBlue(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

PixelGetBlue() returns the normalized blue color of the pixel wand.- wand: the pixel wand. 

### PixelGetBlueQuantum
- C:

```C
Quantum PixelGetBlueQuantum(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetBlueQuantum(
   PixelWandPointer $wand
)
returns Quantum 
is native(&library)
is export { * };
```

PixelGetBlueQuantum() returns the blue color of the pixel wand.- wand: the pixel wand. 

### PixelGetColorAsString
- C:

```C
char *PixelGetColorAsString(PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetColorAsString(
   PixelWandPointer $wand
)
returns Str
is native(&library)
is export { * };
```

PixelGetColorAsString() returnsd the color of the pixel wand as a string.- wand: the pixel wand. 

### PixelGetColorAsNormalizedString
- C:

```C
char *PixelGetColorAsNormalizedString(PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetColorAsNormalizedString(
   PixelWandPointer $wand
)
returns Str
is native(&library)
is export { * };
```

PixelGetColorAsNormalizedString() returns the normalized color of the pixel wand as a string.- wand: the pixel wand. 

### PixelGetColorCount
- C:

```C
size_t PixelGetColorCount(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetColorCount(
   PixelWandPointer $wand
)
returns int32 
is native(&library)
is export { * };
```

PixelGetColorCount() returns the color count associated with this color.- wand: the pixel wand. 

### PixelGetCyan
- C:

```C
double PixelGetCyan(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetCyan(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

PixelGetCyan() returns the normalized cyan color of the pixel wand.- wand: the pixel wand. 

### PixelGetCyanQuantum
- C:

```C
Quantum PixelGetCyanQuantum(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetCyanQuantum(
   PixelWandPointer $wand
)
returns Quantum 
is native(&library)
is export { * };
```

PixelGetCyanQuantum() returns the cyan color of the pixel wand.- wand: the pixel wand. 

### PixelGetException
- C:

```C
char *PixelGetException(const PixelWand *wand,ExceptionType *severity)
```
- Perl 6:

```Perl6
sub PixelGetException(
   PixelWandPointer $wand,
   ExceptionType * $severity
)
returns Str
is native(&library)
is export { * };
```

PixelGetException() returns the severity, reason, and description of any error that occurs when using other methods in this API.- wand: the pixel wand. - severity: the severity of the error is returned here. 

### PixelGetExceptionType
- C:

```C
ExceptionType PixelGetExceptionType(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetExceptionType(
   PixelWandPointer $wand
)
returns ExceptionType 
is native(&library)
is export { * };
```

PixelGetExceptionType() the exception type associated with the wand.  If no exception has occurred, UndefinedExceptionType is returned.- wand: the magick wand. 

### PixelGetFuzz
- C:

```C
double PixelGetFuzz(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetFuzz(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

PixelGetFuzz() returns the normalized fuzz value of the pixel wand.- wand: the pixel wand. 

### PixelGetGreen
- C:

```C
double PixelGetGreen(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetGreen(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

PixelGetGreen() returns the normalized green color of the pixel wand.- wand: the pixel wand. 

### PixelGetGreenQuantum
- C:

```C
Quantum PixelGetGreenQuantum(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetGreenQuantum(
   PixelWandPointer $wand
)
returns Quantum 
is native(&library)
is export { * };
```

PixelGetGreenQuantum() returns the green color of the pixel wand.- wand: the pixel wand. 

### PixelGetHSL
- C:

```C
void PixelGetHSL(const PixelWand *wand,double *hue,double *saturation,
  double *lightness)
```
- Perl 6:

```Perl6
sub PixelGetHSL(
   PixelWandPointer $wand,
   num64* $hue,
   num64* $saturation,
   num64* $lightness
)
is native(&library)
is export { * };
```

PixelGetHSL() returns the normalized HSL color of the pixel wand.- wand: the pixel wand. - hue,saturation,lightness: Return the pixel hue, saturation, and brightness. 

### PixelGetIndex
- C:

```C
IndexPacket PixelGetIndex(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetIndex(
   PixelWandPointer $wand
)
returns IndexPacket 
is native(&library)
is export { * };
```

PixelGetIndex() returns the colormap index from the pixel wand.- wand: the pixel wand. 

### PixelGetMagenta
- C:

```C
double PixelGetMagenta(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetMagenta(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

PixelGetMagenta() returns the normalized magenta color of the pixel wand.- wand: the pixel wand. 

### PixelGetMagentaQuantum
- C:

```C
Quantum PixelGetMagentaQuantum(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetMagentaQuantum(
   PixelWandPointer $wand
)
returns Quantum 
is native(&library)
is export { * };
```

PixelGetMagentaQuantum() returns the magenta color of the pixel wand.- wand: the pixel wand. 

### PixelGetMagickColor
- C:

```C
void PixelGetMagickColor(PixelWand *wand,MagickPixelPacket *color)
```
- Perl 6:

```Perl6
sub PixelGetMagickColor(
   PixelWandPointer $wand,
   MagickPixelPacket * $color
)
is native(&library)
is export { * };
```

PixelGetMagickColor() gets the magick color of the pixel wand.- wand: the pixel wand. - color:  The pixel wand color is returned here. 

### PixelGetOpacity
- C:

```C
double PixelGetOpacity(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetOpacity(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

PixelGetOpacity() returns the normalized opacity value of the pixel wand.- wand: the pixel wand. 

### PixelGetOpacityQuantum
- C:

```C
Quantum PixelGetOpacityQuantum(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetOpacityQuantum(
   PixelWandPointer $wand
)
returns Quantum 
is native(&library)
is export { * };
```

PixelGetOpacityQuantum() returns the opacity value of the pixel wand.- wand: the pixel wand. 

### PixelGetQuantumColor
- C:

```C
void PixelGetQuantumColor(PixelWand *wand,PixelPacket *color)
```
- Perl 6:

```Perl6
sub PixelGetQuantumColor(
   PixelWandPointer $wand,
   PixelPacket * $color
)
is native(&library)
is export { * };
```

PixelGetQuantumColor() gets the color of the pixel wand as a PixelPacket.- wand: the pixel wand. - color:  The pixel wand color is returned here. 

### PixelGetRed
- C:

```C
double PixelGetRed(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetRed(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

PixelGetRed() returns the normalized red color of the pixel wand.- wand: the pixel wand. 

### PixelGetRedQuantum
- C:

```C
Quantum PixelGetRedQuantum(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetRedQuantum(
   PixelWandPointer $wand
)
returns Quantum 
is native(&library)
is export { * };
```

PixelGetRedQuantum() returns the red color of the pixel wand.- wand: the pixel wand. 

### PixelGetYellow
- C:

```C
double PixelGetYellow(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetYellow(
   PixelWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

PixelGetYellow() returns the normalized yellow color of the pixel wand.- wand: the pixel wand. 

### PixelGetYellowQuantum
- C:

```C
Quantum PixelGetYellowQuantum(const PixelWand *wand)
```
- Perl 6:

```Perl6
sub PixelGetYellowQuantum(
   PixelWandPointer $wand
)
returns Quantum 
is native(&library)
is export { * };
```

PixelGetYellowQuantum() returns the yellow color of the pixel wand.- wand: the pixel wand. 

### PixelSetAlpha
- C:

```C
void PixelSetAlpha(PixelWand *wand,const double alpha)
```
- Perl 6:

```Perl6
sub PixelSetAlpha(
   PixelWandPointer $wand,
   double $alpha
)
is native(&library)
is export { * };
```

PixelSetAlpha() sets the normalized alpha value of the pixel wand.- wand: the pixel wand. - alpha: the level of transparency: 1.0 is fully opaque and 0.0 is fully transparent. 

### PixelSetAlphaQuantum
- C:

```C
void PixelSetAlphaQuantum(PixelWand *wand,
  const Quantum opacity)
```
- Perl 6:

```Perl6
sub PixelSetAlphaQuantum(
   PixelWandPointer $wand,
   Quantum $opacity
)
is native(&library)
is export { * };
```

PixelSetAlphaQuantum() sets the alpha value of the pixel wand.- wand: the pixel wand. - opacity: the opacity value. 

### PixelSetBlack
- C:

```C
void PixelSetBlack(PixelWand *wand,const double black)
```
- Perl 6:

```Perl6
sub PixelSetBlack(
   PixelWandPointer $wand,
   double $black
)
is native(&library)
is export { * };
```

PixelSetBlack() sets the normalized black color of the pixel wand.- wand: the pixel wand. - black: the black color. 

### PixelSetBlackQuantum
- C:

```C
void PixelSetBlackQuantum(PixelWand *wand,const Quantum black)
```
- Perl 6:

```Perl6
sub PixelSetBlackQuantum(
   PixelWandPointer $wand,
   Quantum $black
)
is native(&library)
is export { * };
```

PixelSetBlackQuantum() sets the black color of the pixel wand.- wand: the pixel wand. - black: the black color. 

### PixelSetBlue
- C:

```C
void PixelSetBlue(PixelWand *wand,const double blue)
```
- Perl 6:

```Perl6
sub PixelSetBlue(
   PixelWandPointer $wand,
   double $blue
)
is native(&library)
is export { * };
```

PixelSetBlue() sets the normalized blue color of the pixel wand.- wand: the pixel wand. - blue: the blue color. 

### PixelSetBlueQuantum
- C:

```C
void PixelSetBlueQuantum(PixelWand *wand,const Quantum blue)
```
- Perl 6:

```Perl6
sub PixelSetBlueQuantum(
   PixelWandPointer $wand,
   Quantum $blue
)
is native(&library)
is export { * };
```

PixelSetBlueQuantum() sets the blue color of the pixel wand.- wand: the pixel wand. - blue: the blue color. 

### PixelSetColor
- C:

```C
MagickBooleanType PixelSetColor(PixelWand *wand,const char *color)
```
- Perl 6:

```Perl6
sub PixelSetColor(
   PixelWandPointer $wand,
   Str $color
)
returns uint32 
is native(&library)
is export { * };
```

PixelSetColor() sets the color of the pixel wand with a string (e.g. "blue", "#0000ff", "rgb(0,0,255)", "cmyk(100,100,100,10)", etc.).- wand: the pixel wand. - color: the pixel wand color. 

### PixelSetColorCount
- C:

```C
void PixelSetColorCount(PixelWand *wand,const size_t count)
```
- Perl 6:

```Perl6
sub PixelSetColorCount(
   PixelWandPointer $wand,
   int32 $count
)
is native(&library)
is export { * };
```

PixelSetColorCount() sets the color count of the pixel wand.- wand: the pixel wand. - count: the number of this particular color. 

### PixelSetColorFromWand
- C:

```C
void PixelSetColorFromWand(PixelWand *wand,const PixelWand *color)
```
- Perl 6:

```Perl6
sub PixelSetColorFromWand(
   PixelWandPointer $wand,
   PixelWandPointer $color
)
is native(&library)
is export { * };
```

PixelSetColorFromWand() sets the color of the pixel wand.- wand: the pixel wand. - color: set the pixel wand color here. 

### PixelSetCyan
- C:

```C
void PixelSetCyan(PixelWand *wand,const double cyan)
```
- Perl 6:

```Perl6
sub PixelSetCyan(
   PixelWandPointer $wand,
   double $cyan
)
is native(&library)
is export { * };
```

PixelSetCyan() sets the normalized cyan color of the pixel wand.- wand: the pixel wand. - cyan: the cyan color. 

### PixelSetCyanQuantum
- C:

```C
void PixelSetCyanQuantum(PixelWand *wand,const Quantum cyan)
```
- Perl 6:

```Perl6
sub PixelSetCyanQuantum(
   PixelWandPointer $wand,
   Quantum $cyan
)
is native(&library)
is export { * };
```

PixelSetCyanQuantum() sets the cyan color of the pixel wand.- wand: the pixel wand. - cyan: the cyan color. 

### PixelSetFuzz
- C:

```C
void PixelSetFuzz(PixelWand *wand,const double fuzz)
```
- Perl 6:

```Perl6
sub PixelSetFuzz(
   PixelWandPointer $wand,
   double $fuzz
)
is native(&library)
is export { * };
```

PixelSetFuzz() sets the fuzz value of the pixel wand.- wand: the pixel wand. - fuzz: the fuzz value. 

### PixelSetGreen
- C:

```C
void PixelSetGreen(PixelWand *wand,const double green)
```
- Perl 6:

```Perl6
sub PixelSetGreen(
   PixelWandPointer $wand,
   double $green
)
is native(&library)
is export { * };
```

PixelSetGreen() sets the normalized green color of the pixel wand.- wand: the pixel wand. - green: the green color. 

### PixelSetGreenQuantum
- C:

```C
void PixelSetGreenQuantum(PixelWand *wand,const Quantum green)
```
- Perl 6:

```Perl6
sub PixelSetGreenQuantum(
   PixelWandPointer $wand,
   Quantum $green
)
is native(&library)
is export { * };
```

PixelSetGreenQuantum() sets the green color of the pixel wand.- wand: the pixel wand. - green: the green color. 

### PixelSetHSL
- C:

```C
void PixelSetHSL(PixelWand *wand,const double hue,
  const double saturation,const double lightness)
```
- Perl 6:

```Perl6
sub PixelSetHSL(
   PixelWandPointer $wand,
   double $hue,
   double $saturation,
   double $lightness
)
is native(&library)
is export { * };
```

PixelSetHSL() sets the normalized HSL color of the pixel wand.- wand: the pixel wand. - hue,saturation,lightness: Return the pixel hue, saturation, and brightness. 

### PixelSetIndex
- C:

```C
void PixelSetIndex(PixelWand *wand,const IndexPacket index)
```
- Perl 6:

```Perl6
sub PixelSetIndex(
   PixelWandPointer $wand,
   IndexPacket $index
)
is native(&library)
is export { * };
```

PixelSetIndex() sets the colormap index of the pixel wand.- wand: the pixel wand. - index: the colormap index. 

### PixelSetMagenta
- C:

```C
void PixelSetMagenta(PixelWand *wand,const double magenta)
```
- Perl 6:

```Perl6
sub PixelSetMagenta(
   PixelWandPointer $wand,
   double $magenta
)
is native(&library)
is export { * };
```

PixelSetMagenta() sets the normalized magenta color of the pixel wand.- wand: the pixel wand. - magenta: the magenta color. 

### PixelSetMagentaQuantum
- C:

```C
void PixelSetMagentaQuantum(PixelWand *wand,
  const Quantum magenta)
```
- Perl 6:

```Perl6
sub PixelSetMagentaQuantum(
   PixelWandPointer $wand,
   Quantum $magenta
)
is native(&library)
is export { * };
```

PixelSetMagentaQuantum() sets the magenta color of the pixel wand.- wand: the pixel wand. - magenta: the green magenta. 

### PixelSetMagickColor
- C:

```C
void PixelSetMagickColor(PixelWand *wand,const MagickPixelPacket *color)
```
- Perl 6:

```Perl6
sub PixelSetMagickColor(
   PixelWandPointer $wand,
   MagickPixelPacket * $color
)
is native(&library)
is export { * };
```

PixelSetMagickColor() sets the color of the pixel wand.- wand: the pixel wand. - color: the pixel wand color. 

### PixelSetOpacity
- C:

```C
void PixelSetOpacity(PixelWand *wand,const double opacity)
```
- Perl 6:

```Perl6
sub PixelSetOpacity(
   PixelWandPointer $wand,
   double $opacity
)
is native(&library)
is export { * };
```

PixelSetOpacity() sets the normalized opacity value of the pixel wand.- wand: the pixel wand. - opacity: the opacity value. 

### PixelSetOpacityQuantum
- C:

```C
void PixelSetOpacityQuantum(PixelWand *wand,
  const Quantum opacity)
```
- Perl 6:

```Perl6
sub PixelSetOpacityQuantum(
   PixelWandPointer $wand,
   Quantum $opacity
)
is native(&library)
is export { * };
```

PixelSetOpacityQuantum() sets the opacity value of the pixel wand.- wand: the pixel wand. - opacity: the opacity value. 

### PixelSetQuantumColor
- C:

```C
void PixelSetQuantumColor(PixelWand *wand,const PixelPacket *color)
```
- Perl 6:

```Perl6
sub PixelSetQuantumColor(
   PixelWandPointer $wand,
   PixelPacket * $color
)
is native(&library)
is export { * };
```

PixelSetQuantumColor() sets the color of the pixel wand.- wand: the pixel wand. - color: the pixel wand color. 

### PixelSetRed
- C:

```C
void PixelSetRed(PixelWand *wand,const double red)
```
- Perl 6:

```Perl6
sub PixelSetRed(
   PixelWandPointer $wand,
   double $red
)
is native(&library)
is export { * };
```

PixelSetRed() sets the normalized red color of the pixel wand.- wand: the pixel wand. - red: the red color. 

### PixelSetRedQuantum
- C:

```C
void PixelSetRedQuantum(PixelWand *wand,const Quantum red)
```
- Perl 6:

```Perl6
sub PixelSetRedQuantum(
   PixelWandPointer $wand,
   Quantum $red
)
is native(&library)
is export { * };
```

PixelSetRedQuantum() sets the red color of the pixel wand.- wand: the pixel wand. - red: the red color. 

### PixelSetYellow
- C:

```C
void PixelSetYellow(PixelWand *wand,const double yellow)
```
- Perl 6:

```Perl6
sub PixelSetYellow(
   PixelWandPointer $wand,
   double $yellow
)
is native(&library)
is export { * };
```

PixelSetYellow() sets the normalized yellow color of the pixel wand.- wand: the pixel wand. - yellow: the yellow color. 

### PixelSetYellowQuantum
- C:

```C
void PixelSetYellowQuantum(PixelWand *wand,const Quantum yellow)
```
- Perl 6:

```Perl6
sub PixelSetYellowQuantum(
   PixelWandPointer $wand,
   Quantum $yellow
)
is native(&library)
is export { * };
```

PixelSetYellowQuantum() sets the yellow color of the pixel wand.- wand: the pixel wand. - yellow: the yellow color. 

