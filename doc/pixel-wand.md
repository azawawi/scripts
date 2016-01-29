### ClearPixelWand
- C:

```
void ClearPixelWand(PixelWand *wand)
```
- Perl 6:

```
sub ClearPixelWand(
   PixelWandPointer $wand
)
is native(&library)
is export { * };
```

ClearPixelWand() clears resources associated with the wand.- wand: the pixel wand. 

### ClonePixelWand
- C:

```
PixelWand *ClonePixelWand(const PixelWand *wand)
```
- Perl 6:

```
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

```
PixelWand **ClonePixelWands(const PixelWand **wands,
  const size_t number_wands)
```
- Perl 6:

```
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

```
PixelWand *DestroyPixelWand(PixelWand *wand)
```
- Perl 6:

```
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

```
PixelWand **DestroyPixelWands(PixelWand **wand,
  const size_t number_wands)
```
- Perl 6:

```
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

```
MagickBooleanType IsPixelWandSimilar(PixelWand *p,PixelWand *q,
  const double fuzz)
```
- Perl 6:

```
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

```
MagickBooleanType IsPixelWand(const PixelWand *wand)
```
- Perl 6:

```
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

```
PixelWand *NewPixelWand(void)
```
- Perl 6:

```
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

```
MagickBooleanType PixelClearException(PixelWand *wand)
```
- Perl 6:

```
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

```
double PixelGetAlpha(const PixelWand *wand)
```
- Perl 6:

```
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

```
Quantum PixelGetAlphaQuantum(const PixelWand *wand)
```
- Perl 6:

```
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

```
double PixelGetBlack(const PixelWand *wand)
```
- Perl 6:

```
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

```
Quantum PixelGetBlackQuantum(const PixelWand *wand)
```
- Perl 6:

```
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

```
double PixelGetBlue(const PixelWand *wand)
```
- Perl 6:

```
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

```
Quantum PixelGetBlueQuantum(const PixelWand *wand)
```
- Perl 6:

```
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

```
char *PixelGetColorAsString(PixelWand *wand)
```
- Perl 6:

```
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

```
char *PixelGetColorAsNormalizedString(PixelWand *wand)
```
- Perl 6:

```
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

```
size_t PixelGetColorCount(const PixelWand *wand)
```
- Perl 6:

```
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

```
double PixelGetCyan(const PixelWand *wand)
```
- Perl 6:

```
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

```
Quantum PixelGetCyanQuantum(const PixelWand *wand)
```
- Perl 6:

```
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

```
char *PixelGetException(const PixelWand *wand,ExceptionType *severity)
```
- Perl 6:

```
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

```
ExceptionType PixelGetExceptionType(const PixelWand *wand)
```
- Perl 6:

```
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

```
double PixelGetFuzz(const PixelWand *wand)
```
- Perl 6:

```
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

```
double PixelGetGreen(const PixelWand *wand)
```
- Perl 6:

```
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

```
Quantum PixelGetGreenQuantum(const PixelWand *wand)
```
- Perl 6:

```
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

```
void PixelGetHSL(const PixelWand *wand,double *hue,double *saturation,
  double *lightness)
```
- Perl 6:

```
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

```
IndexPacket PixelGetIndex(const PixelWand *wand)
```
- Perl 6:

```
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

```
double PixelGetMagenta(const PixelWand *wand)
```
- Perl 6:

```
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

```
Quantum PixelGetMagentaQuantum(const PixelWand *wand)
```
- Perl 6:

```
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

```
void PixelGetMagickColor(PixelWand *wand,MagickPixelPacket *color)
```
- Perl 6:

```
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

```
double PixelGetOpacity(const PixelWand *wand)
```
- Perl 6:

```
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

```
Quantum PixelGetOpacityQuantum(const PixelWand *wand)
```
- Perl 6:

```
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

```
void PixelGetQuantumColor(PixelWand *wand,PixelPacket *color)
```
- Perl 6:

```
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

```
double PixelGetRed(const PixelWand *wand)
```
- Perl 6:

```
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

```
Quantum PixelGetRedQuantum(const PixelWand *wand)
```
- Perl 6:

```
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

```
double PixelGetYellow(const PixelWand *wand)
```
- Perl 6:

```
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

```
Quantum PixelGetYellowQuantum(const PixelWand *wand)
```
- Perl 6:

```
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

```
void PixelSetAlpha(PixelWand *wand,const double alpha)
```
- Perl 6:

```
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

```
void PixelSetAlphaQuantum(PixelWand *wand,
  const Quantum opacity)
```
- Perl 6:

```
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

```
void PixelSetBlack(PixelWand *wand,const double black)
```
- Perl 6:

```
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

```
void PixelSetBlackQuantum(PixelWand *wand,const Quantum black)
```
- Perl 6:

```
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

```
void PixelSetBlue(PixelWand *wand,const double blue)
```
- Perl 6:

```
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

```
void PixelSetBlueQuantum(PixelWand *wand,const Quantum blue)
```
- Perl 6:

```
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

```
MagickBooleanType PixelSetColor(PixelWand *wand,const char *color)
```
- Perl 6:

```
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

```
void PixelSetColorCount(PixelWand *wand,const size_t count)
```
- Perl 6:

```
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

```
void PixelSetColorFromWand(PixelWand *wand,const PixelWand *color)
```
- Perl 6:

```
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

```
void PixelSetCyan(PixelWand *wand,const double cyan)
```
- Perl 6:

```
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

```
void PixelSetCyanQuantum(PixelWand *wand,const Quantum cyan)
```
- Perl 6:

```
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

```
void PixelSetFuzz(PixelWand *wand,const double fuzz)
```
- Perl 6:

```
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

```
void PixelSetGreen(PixelWand *wand,const double green)
```
- Perl 6:

```
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

```
void PixelSetGreenQuantum(PixelWand *wand,const Quantum green)
```
- Perl 6:

```
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

```
void PixelSetHSL(PixelWand *wand,const double hue,
  const double saturation,const double lightness)
```
- Perl 6:

```
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

```
void PixelSetIndex(PixelWand *wand,const IndexPacket index)
```
- Perl 6:

```
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

```
void PixelSetMagenta(PixelWand *wand,const double magenta)
```
- Perl 6:

```
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

```
void PixelSetMagentaQuantum(PixelWand *wand,
  const Quantum magenta)
```
- Perl 6:

```
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

```
void PixelSetMagickColor(PixelWand *wand,const MagickPixelPacket *color)
```
- Perl 6:

```
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

```
void PixelSetOpacity(PixelWand *wand,const double opacity)
```
- Perl 6:

```
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

```
void PixelSetOpacityQuantum(PixelWand *wand,
  const Quantum opacity)
```
- Perl 6:

```
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

```
void PixelSetQuantumColor(PixelWand *wand,const PixelPacket *color)
```
- Perl 6:

```
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

```
void PixelSetRed(PixelWand *wand,const double red)
```
- Perl 6:

```
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

```
void PixelSetRedQuantum(PixelWand *wand,const Quantum red)
```
- Perl 6:

```
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

```
void PixelSetYellow(PixelWand *wand,const double yellow)
```
- Perl 6:

```
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

```
void PixelSetYellowQuantum(PixelWand *wand,const Quantum yellow)
```
- Perl 6:

```
sub PixelSetYellowQuantum(
   PixelWandPointer $wand,
   Quantum $yellow
)
is native(&library)
is export { * };
```

PixelSetYellowQuantum() sets the yellow color of the pixel wand.- wand: the pixel wand. - yellow: the yellow color. 

