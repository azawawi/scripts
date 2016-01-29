### MagickDeleteImageArtifact
- C:

```C
MagickBooleanType MagickDeleteImageArtifact(MagickWand *wand,
  const char *artifact)
```
- Perl 6:

```Perl6
sub MagickDeleteImageArtifact(
   MagickWandPointer $wand,
   Str $artifact
)
returns uint32 
is native(&library)
is export { * };
```

MagickDeleteImageArtifact() deletes a wand artifact.- image: the image. - artifact: the image artifact. 

### MagickDeleteImageProperty
- C:

```C
MagickBooleanType MagickDeleteImageProperty(MagickWand *wand,
  const char *property)
```
- Perl 6:

```Perl6
sub MagickDeleteImageProperty(
   MagickWandPointer $wand,
   Str $property
)
returns uint32 
is native(&library)
is export { * };
```

MagickDeleteImageProperty() deletes a wand property.- image: the image. - property: the image property. 

### MagickDeleteOption
- C:

```C
MagickBooleanType MagickDeleteOption(MagickWand *wand,
  const char *option)
```
- Perl 6:

```Perl6
sub MagickDeleteOption(
   MagickWandPointer $wand,
   Str $option
)
returns uint32 
is native(&library)
is export { * };
```

MagickDeleteOption() deletes a wand option.- image: the image. - option: the image option. 

### MagickGetAntialias
- C:

```C
MagickBooleanType MagickGetAntialias(const MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetAntialias(
   MagickWandPointer $wand
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetAntialias() returns the antialias property associated with the wand.- wand: the magick wand. 

### MagickGetBackgroundColor
- C:

```C
PixelWand *MagickGetBackgroundColor(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetBackgroundColor(
   MagickWandPointer $wand
)
returns PixelWandPointer
is native(&library)
is export { * };
```

MagickGetBackgroundColor() returns the wand background color.- wand: the magick wand. 

### MagickGetColorspace
- C:

```C
ColorspaceType MagickGetColorspace(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetColorspace(
   MagickWandPointer $wand
)
returns ColorspaceType 
is native(&library)
is export { * };
```

MagickGetColorspace() gets the wand colorspace type.- wand: the magick wand. 

### MagickGetCompression
- C:

```C
CompressionType MagickGetCompression(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetCompression(
   MagickWandPointer $wand
)
returns CompressionType 
is native(&library)
is export { * };
```

MagickGetCompression() gets the wand compression type.- wand: the magick wand. 

### MagickGetCompressionQuality
- C:

```C
size_t MagickGetCompressionQuality(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetCompressionQuality(
   MagickWandPointer $wand
)
returns int32 
is native(&library)
is export { * };
```

MagickGetCompressionQuality() gets the wand compression quality.- wand: the magick wand. 

### MagickGetCopyright
- C:

```C
const char *MagickGetCopyright(void)
```
- Perl 6:

```Perl6
sub MagickGetCopyright(
   v $oid
)
returns Str
is native(&library)
is export { * };
```

MagickGetCopyright() returns the ImageMagick API copyright as a string constant.<h2><a href="http://www.imagemagick.org/api/MagickWand/magick-property_8c.html" id="MagickGetFilename">MagickGetFilename</a></h2>MagickGetFilename() returns the filename associated with an image sequence.The format of the MagickGetFilename method is:<pre class="text">const char \*MagickGetFilename(const MagickWand \*wand)</pre>- wand: the magick wand. 

### MagickGetFont
- C:

```C
char *MagickGetFont(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetFont(
   MagickWandPointer $wand
)
returns Str
is native(&library)
is export { * };
```

MagickGetFont() returns the font associated with the MagickWand.- wand: the magick wand. 

### MagickGetFormat
- C:

```C
const char MagickGetFormat(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetFormat(
   MagickWandPointer $wand
)
returns char 
is native(&library)
is export { * };
```

MagickGetFormat() returns the format of the magick wand.- wand: the magick wand. 

### MagickGetGravity
- C:

```C
GravityType MagickGetGravity(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetGravity(
   MagickWandPointer $wand
)
returns GravityType 
is native(&library)
is export { * };
```

MagickGetGravity() gets the wand gravity.- wand: the magick wand. 

### MagickGetHomeURL
- C:

```C
char *MagickGetHomeURL(void)
```
- Perl 6:

```Perl6
sub MagickGetHomeURL(
   v $oid
)
returns Str
is native(&library)
is export { * };
```

MagickGetHomeURL() returns the ImageMagick home URL.<h2><a href="http://www.imagemagick.org/api/MagickWand/magick-property_8c.html" id="MagickGetImageArtifact">MagickGetImageArtifact</a></h2>MagickGetImageArtifact() returns a value associated with the specified artifact.  Use MagickRelinquishMemory() to free the value when you are finished with it.The format of the MagickGetImageArtifact method is:<pre class="text">char \*MagickGetImageArtifact(MagickWand \*wand,const char \*artifact)</pre>- wand: the magick wand. - artifact: the artifact. 

### MagickGetImageArtifacts
- C:

```C
char *MagickGetImageArtifacts(MagickWand *wand,
  const char *pattern,size_t *number_artifacts)
```
- Perl 6:

```Perl6
sub MagickGetImageArtifacts(
   MagickWandPointer $wand,
   Str $pattern,
   Pointer[int32] $number_artifacts
)
returns Str
is native(&library)
is export { * };
```

MagickGetImageArtifacts() returns all the artifact names that match the specified pattern associated with a wand.  Use MagickGetImageProperty() to return the value of a particular artifact.  Use MagickRelinquishMemory() to free the value when you are finished with it.- wand: the magick wand. - pattern: Specifies a pointer to a text string containing a pattern. - number_artifacts: the number artifacts associated with this wand. 

### MagickGetImageProfile
- C:

```C
unsigned char *MagickGetImageProfile(MagickWand *wand,const char *name,
  size_t *length)
```
- Perl 6:

```Perl6
sub MagickGetImageProfile(
   MagickWandPointer $wand,
   Str $name,
   Pointer[int32] $length
)
returns unsigned Str
is native(&library)
is export { * };
```

MagickGetImageProfile() returns the named image profile.- wand: the magick wand. - name: Name of profile to return: ICC, IPTC, or generic profile. - length: the length of the profile. 

### MagickGetImageProfiles
- C:

```C
char *MagickGetImageProfiles(MagickWand *wand,const char *pattern,
  size_t *number_profiles)
```
- Perl 6:

```Perl6
sub MagickGetImageProfiles(
   MagickWandPointer $wand,
   Str $pattern,
   Pointer[int32] $number_profiles
)
returns Str
is native(&library)
is export { * };
```

MagickGetImageProfiles() returns all the profile names that match the specified pattern associated with a wand.  Use MagickGetImageProfile() to return the value of a particular property.  Use MagickRelinquishMemory() to free the value when you are finished with it.- wand: the magick wand. - pattern: Specifies a pointer to a text string containing a pattern. - number_profiles: the number profiles associated with this wand. 

### MagickGetImageProperty
- C:

```C
char *MagickGetImageProperty(MagickWand *wand,const char *property)
```
- Perl 6:

```Perl6
sub MagickGetImageProperty(
   MagickWandPointer $wand,
   Str $property
)
returns Str
is native(&library)
is export { * };
```

MagickGetImageProperty() returns a value associated with the specified property.  Use MagickRelinquishMemory() to free the value when you are finished with it.- wand: the magick wand. - property: the property. 

### MagickGetImageProperties
- C:

```C
char *MagickGetImageProperties(MagickWand *wand,
  const char *pattern,size_t *number_properties)
```
- Perl 6:

```Perl6
sub MagickGetImageProperties(
   MagickWandPointer $wand,
   Str $pattern,
   Pointer[int32] $number_properties
)
returns Str
is native(&library)
is export { * };
```

MagickGetImageProperties() returns all the property names that match the specified pattern associated with a wand.  Use MagickGetImageProperty() to return the value of a particular property.  Use MagickRelinquishMemory() to free the value when you are finished with it.- wand: the magick wand. - pattern: Specifies a pointer to a text string containing a pattern. - number_properties: the number properties associated with this wand. 

### MagickGetInterlaceScheme
- C:

```C
InterlaceType MagickGetInterlaceScheme(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetInterlaceScheme(
   MagickWandPointer $wand
)
returns InterlaceType 
is native(&library)
is export { * };
```

MagickGetInterlaceScheme() gets the wand interlace scheme.- wand: the magick wand. 

### MagickGetInterpolateMethod
- C:

```C
InterpolatePixelMethod MagickGetInterpolateMethod(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetInterpolateMethod(
   MagickWandPointer $wand
)
returns InterpolatePixelMethod 
is native(&library)
is export { * };
```

MagickGetInterpolateMethod() gets the wand compression.- wand: the magick wand. 

### MagickGetOption
- C:

```C
char *MagickGetOption(MagickWand *wand,const char *key)
```
- Perl 6:

```Perl6
sub MagickGetOption(
   MagickWandPointer $wand,
   Str $key
)
returns Str
is native(&library)
is export { * };
```

MagickGetOption() returns a value associated with a wand and the specified key.  Use MagickRelinquishMemory() to free the value when you are finished with it.- wand: the magick wand. - key: the key. 

### MagickGetOptions
- C:

```C
char *MagickGetOptions(MagickWand *wand,const char *pattern,,
  size_t *number_options)
```
- Perl 6:

```Perl6
sub MagickGetOptions(
   MagickWandPointer $wand,
   Str $pattern,
   ,
   Pointer[int32] $number_options
)
returns Str
is native(&library)
is export { * };
```

MagickGetOptions() returns all the option names that match the specified pattern associated with a wand.  Use MagickGetOption() to return the value of a particular option.  Use MagickRelinquishMemory() to free the value when you are finished with it.- wand: the magick wand. - pattern: Specifies a pointer to a text string containing a pattern. - number_options: the number options associated with this wand. 

### MagickGetOrientation
- C:

```C
OrientationType MagickGetOrientation(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetOrientation(
   MagickWandPointer $wand
)
returns OrientationType 
is native(&library)
is export { * };
```

MagickGetOrientation() gets the wand orientation type.- wand: the magick wand. 

### MagickGetPackageName
- C:

```C
const char *MagickGetPackageName(void)
```
- Perl 6:

```Perl6
sub MagickGetPackageName(
   v $oid
)
returns Str
is native(&library)
is export { * };
```

MagickGetPackageName() returns the ImageMagick package name as a string constant.<h2><a href="http://www.imagemagick.org/api/MagickWand/magick-property_8c.html" id="MagickGetPage">MagickGetPage</a></h2>MagickGetPage() returns the page geometry associated with the magick wand.The format of the MagickGetPage method is:<pre class="text">MagickBooleanType MagickGetPage(const MagickWand \*wand,  size_t \*width,size_t \*height,ssize_t \*x,ssize_t \*y)</pre>- wand: the magick wand. - width: the page width. - height: page height. - x: the page x-offset. - y: the page y-offset. 

### MagickGetPointsize
- C:

```C
double MagickGetPointsize(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetPointsize(
   MagickWandPointer $wand
)
returns num64
is native(&library)
is export { * };
```

MagickGetPointsize() returns the font pointsize associated with the MagickWand.- wand: the magick wand. 

### MagickGetQuantumDepth
- C:

```C
const char *MagickGetQuantumDepth(size_t *depth)
```
- Perl 6:

```Perl6
sub MagickGetQuantumDepth(
   Pointer[int32] $depth
)
returns Str
is native(&library)
is export { * };
```

MagickGetQuantumDepth() returns the ImageMagick quantum depth as a string constant.- depth: the quantum depth is returned as a number. 

### MagickGetQuantumRange
- C:

```C
const char *MagickGetQuantumRange(size_t *range)
```
- Perl 6:

```Perl6
sub MagickGetQuantumRange(
   Pointer[int32] $range
)
returns Str
is native(&library)
is export { * };
```

MagickGetQuantumRange() returns the ImageMagick quantum range as a string constant.- range: the quantum range is returned as a number. 

### MagickGetReleaseDate
- C:

```C
const char *MagickGetReleaseDate(void)
```
- Perl 6:

```Perl6
sub MagickGetReleaseDate(
   v $oid
)
returns Str
is native(&library)
is export { * };
```

MagickGetReleaseDate() returns the ImageMagick release date as a string constant.<h2><a href="http://www.imagemagick.org/api/MagickWand/magick-property_8c.html" id="MagickGetResolution">MagickGetResolution</a></h2>MagickGetResolution() gets the image X and Y resolution.The format of the MagickGetResolution method is:<pre class="text">MagickBooleanType MagickGetResolution(const MagickWand \*wand,double \*x,  double \*y)</pre>- wand: the magick wand. - x: the x-resolution. - y: the y-resolution. 

### MagickGetResource
- C:

```C
MagickSizeType MagickGetResource(const ResourceType type)
```
- Perl 6:

```Perl6
sub MagickGetResource(
   ResourceType $type
)
returns MagickSizeType 
is native(&library)
is export { * };
```

MagickGetResource() returns the specified resource in megabytes.- wand: the magick wand. 

### MagickGetResourceLimit
- C:

```C
MagickSizeType MagickGetResourceLimit(const ResourceType type)
```
- Perl 6:

```Perl6
sub MagickGetResourceLimit(
   ResourceType $type
)
returns MagickSizeType 
is native(&library)
is export { * };
```

MagickGetResourceLimit() returns the specified resource limit in megabytes.- wand: the magick wand. 

### MagickGetSamplingFactors
- C:

```C
double *MagickGetSamplingFactor(MagickWand *wand,
  size_t *number_factors)
```
- Perl 6:

```Perl6
sub MagickGetSamplingFactor(
   MagickWandPointer $wand,
   Pointer[int32] $number_factors
)
returns num64*
is native(&library)
is export { * };
```

MagickGetSamplingFactors() gets the horizontal and vertical sampling factor.- wand: the magick wand. - number_factors: the number of factors in the returned array. 

### MagickGetSize
- C:

```C
MagickBooleanType MagickGetSize(const MagickWand *wand,
  size_t *columns,size_t *rows)
```
- Perl 6:

```Perl6
sub MagickGetSize(
   MagickWandPointer $wand,
   Pointer[int32] $columns,
   Pointer[int32] $rows
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetSize() returns the size associated with the magick wand.- wand: the magick wand. - columns: the width in pixels. - height: the height in pixels. 

### MagickGetSizeOffset
- C:

```C
MagickBooleanType MagickGetSizeOffset(const MagickWand *wand,
  ssize_t *offset)
```
- Perl 6:

```Perl6
sub MagickGetSizeOffset(
   MagickWandPointer $wand,
   sPointer[int32] $offset
)
returns uint32 
is native(&library)
is export { * };
```

MagickGetSizeOffset() returns the size offset associated with the magick wand.- wand: the magick wand. - offset: the image offset. 

### MagickGetType
- C:

```C
ImageType MagickGetType(MagickWand *wand)
```
- Perl 6:

```Perl6
sub MagickGetType(
   MagickWandPointer $wand
)
returns ImageType 
is native(&library)
is export { * };
```

MagickGetType() returns the wand type.- wand: the magick wand. 

### MagickGetVersion
- C:

```C
const char *MagickGetVersion(size_t *version)
```
- Perl 6:

```Perl6
sub MagickGetVersion(
   Pointer[int32] $version
)
returns Str
is native(&library)
is export { * };
```

MagickGetVersion() returns the ImageMagick API version as a string constant and as a number.- version: the ImageMagick version is returned as a number. 

### MagickProfileImage
- C:

```C
MagickBooleanType MagickProfileImage(MagickWand *wand,const char *name,
  const void *profile,const size_t length)
```
- Perl 6:

```Perl6
sub MagickProfileImage(
   MagickWandPointer $wand,
   Str $name,
   Pointer[void] $profile,
   int32 $length
)
returns uint32 
is native(&library)
is export { * };
```

MagickProfileImage() adds or removes a ICC, IPTC, or generic profile from an image.  If the profile is NULL, it is removed from the image otherwise added.  Use a name of '\*' and a profile of NULL to remove all profiles from the image.- wand: the magick wand. - name: Name of profile to add or remove: ICC, IPTC, or generic profile. - profile: the profile. - length: the length of the profile. 

### MagickRemoveImageProfile
- C:

```C
unsigned char *MagickRemoveImageProfile(MagickWand *wand,
  const char *name,size_t *length)
```
- Perl 6:

```Perl6
sub MagickRemoveImageProfile(
   MagickWandPointer $wand,
   Str $name,
   Pointer[int32] $length
)
returns unsigned Str
is native(&library)
is export { * };
```

MagickRemoveImageProfile() removes the named image profile and returns it.- wand: the magick wand. - name: Name of profile to return: ICC, IPTC, or generic profile. - length: the length of the profile. 

### MagickSetAntialias
- C:

```C
MagickBooleanType MagickSetAntialias(MagickWand *wand,
  const MagickBooleanType antialias)
```
- Perl 6:

```Perl6
sub MagickSetAntialias(
   MagickWandPointer $wand,
   uint32 $antialias
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetAntialias() sets the antialias propery of the wand.- wand: the magick wand. - antialias: the antialias property. 

### MagickSetBackgroundColor
- C:

```C
MagickBooleanType MagickSetBackgroundColor(MagickWand *wand,
  const PixelWand *background)
```
- Perl 6:

```Perl6
sub MagickSetBackgroundColor(
   MagickWandPointer $wand,
   PixelWandPointer $background
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetBackgroundColor() sets the wand background color.- wand: the magick wand. - background: the background pixel wand. 

### MagickSetColorspace
- C:

```C
MagickBooleanType MagickSetColorspace(MagickWand *wand,
  const ColorspaceType colorspace)
```
- Perl 6:

```Perl6
sub MagickSetColorspace(
   MagickWandPointer $wand,
   ColorspaceType $colorspace
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetColorspace() sets the wand colorspace type.- wand: the magick wand. - colorspace: the wand colorspace. 

### MagickSetCompression
- C:

```C
MagickBooleanType MagickSetCompression(MagickWand *wand,
  const CompressionType compression)
```
- Perl 6:

```Perl6
sub MagickSetCompression(
   MagickWandPointer $wand,
   CompressionType $compression
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetCompression() sets the wand compression type.- wand: the magick wand. - compression: the wand compression. 

### MagickSetCompressionQuality
- C:

```C
MagickBooleanType MagickSetCompressionQuality(MagickWand *wand,
  const size_t quality)
```
- Perl 6:

```Perl6
sub MagickSetCompressionQuality(
   MagickWandPointer $wand,
   int32 $quality
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetCompressionQuality() sets the wand compression quality.- wand: the magick wand. - quality: the wand compression quality. 

### MagickSetDepth
- C:

```C
MagickBooleanType MagickSetDepth(MagickWand *wand,
  const size_t depth)
```
- Perl 6:

```Perl6
sub MagickSetDepth(
   MagickWandPointer $wand,
   int32 $depth
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetDepth() sets the wand pixel depth.- wand: the magick wand. - depth: the wand pixel depth. 

### MagickSetExtract
- C:

```C
MagickBooleanType MagickSetExtract(MagickWand *wand,
  const char *geometry)
```
- Perl 6:

```Perl6
sub MagickSetExtract(
   MagickWandPointer $wand,
   Str $geometry
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetExtract() sets the extract geometry before you read or write an image file.  Use it for inline cropping (e.g. 200x200+0+0) or resizing (e.g.200x200).- wand: the magick wand. - geometry: the extract geometry. 

### MagickSetFilename
- C:

```C
MagickBooleanType MagickSetFilename(MagickWand *wand,
  const char *filename)
```
- Perl 6:

```Perl6
sub MagickSetFilename(
   MagickWandPointer $wand,
   Str $filename
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetFilename() sets the filename before you read or write an image file.- wand: the magick wand. - filename: the image filename. 

### MagickSetFont
- C:

```C
MagickBooleanType MagickSetFont(MagickWand *wand, const char *font)
```
- Perl 6:

```Perl6
sub MagickSetFont(
   MagickWandPointer $wand,
   Str $font
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetFont() sets the font associated with the MagickWand.- wand: the magick wand. - font: the font 

### MagickSetFormat
- C:

```C
MagickBooleanType MagickSetFormat(MagickWand *wand,const char *format)
```
- Perl 6:

```Perl6
sub MagickSetFormat(
   MagickWandPointer $wand,
   Str $format
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetFormat() sets the format of the magick wand.- wand: the magick wand. - format: the image format. 

### MagickSetGravity
- C:

```C
MagickBooleanType MagickSetImageArtifact(MagickWand *wand,
  const char *artifact,const char *value)
```
- Perl 6:

```Perl6
sub MagickSetImageArtifact(
   MagickWandPointer $wand,
   Str $artifact,
   Str $value
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetGravity() sets the gravity type.The format of the MagickSetGravity type is:<pre class="text">MagickBooleanType MagickSetGravity(MagickWand \*wand,  const GravityType type)</pre>- wand: the magick wand. - type: the gravity type. <h2><a href="http://www.imagemagick.org/api/MagickWand/magick-property_8c.html" id="MagickSetImageArtifact">MagickSetImageArtifact</a></h2>MagickSetImageArtifact() associates a artifact with an image.- wand: the magick wand. - artifact: the artifact. - value: the value. 

### MagickSetImageProfile
- C:

```C
MagickBooleanType MagickSetImageProfile(MagickWand *wand,
  const char *name,const void *profile,const size_t length)
```
- Perl 6:

```Perl6
sub MagickSetImageProfile(
   MagickWandPointer $wand,
   Str $name,
   Pointer[void] $profile,
   int32 $length
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageProfile() adds a named profile to the magick wand.  If a profile with the same name already exists, it is replaced.  This method differs from the MagickProfileImage() method in that it does not apply any CMS color profiles.- wand: the magick wand. - name: Name of profile to add or remove: ICC, IPTC, or generic profile. - profile: the profile. - length: the length of the profile. 

### MagickSetImageProperty
- C:

```C
MagickBooleanType MagickSetImageProperty(MagickWand *wand,
  const char *property,const char *value)
```
- Perl 6:

```Perl6
sub MagickSetImageProperty(
   MagickWandPointer $wand,
   Str $property,
   Str $value
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetImageProperty() associates a property with an image.- wand: the magick wand. - property: the property. - value: the value. 

### MagickSetInterlaceScheme
- C:

```C
MagickBooleanType MagickSetInterlaceScheme(MagickWand *wand,
  const InterlaceType interlace_scheme)
```
- Perl 6:

```Perl6
sub MagickSetInterlaceScheme(
   MagickWandPointer $wand,
   InterlaceType $interlace_scheme
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetInterlaceScheme() sets the image compression.- wand: the magick wand. - interlace_scheme: the image interlace scheme: NoInterlace, LineInterlace, PlaneInterlace, PartitionInterlace. 

### MagickSetInterpolateMethod
- C:

```C
MagickBooleanType MagickSetInterpolateMethod(MagickWand *wand,
  const InterpolateMethodPixel method)
```
- Perl 6:

```Perl6
sub MagickSetInterpolateMethod(
   MagickWandPointer $wand,
   InterpolateMethodPixel $method
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetInterpolateMethod() sets the interpolate pixel method.- wand: the magick wand. - method: the interpolate pixel method. 

### MagickSetOption
- C:

```C
MagickBooleanType MagickSetOption(MagickWand *wand,const char *key,
  const char *value)
```
- Perl 6:

```Perl6
sub MagickSetOption(
   MagickWandPointer $wand,
   Str $key,
   Str $value
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetOption() associates one or options with the wand (.e.g MagickSetOption(wand,"jpeg:perserve","yes")).- wand: the magick wand. - key:  The key. - value:  The value. 

### MagickSetOrientation
- C:

```C
MagickBooleanType MagickSetOrientation(MagickWand *wand,
  const OrientationType orientation)
```
- Perl 6:

```Perl6
sub MagickSetOrientation(
   MagickWandPointer $wand,
   OrientationType $orientation
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetOrientation() sets the wand orientation type.- wand: the magick wand. - orientation: the wand orientation. 

### MagickSetPage
- C:

```C
MagickBooleanType MagickSetPage(MagickWand *wand,
  const size_t width,const size_t height,const ssize_t x,
  const ssize_t y)
```
- Perl 6:

```Perl6
sub MagickSetPage(
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

MagickSetPage() sets the page geometry of the magick wand.- wand: the magick wand. - width: the page width. - height: the page height. - x: the page x-offset. - y: the page y-offset. 

### MagickSetPassphrase
- C:

```C
MagickBooleanType MagickSetPassphrase(MagickWand *wand,
  const char *passphrase)
```
- Perl 6:

```Perl6
sub MagickSetPassphrase(
   MagickWandPointer $wand,
   Str $passphrase
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetPassphrase() sets the passphrase.- wand: the magick wand. - passphrase: the passphrase. 

### MagickSetPointsize
- C:

```C
MagickBooleanType MagickSetPointsize(MagickWand *wand,
  const double pointsize)
```
- Perl 6:

```Perl6
sub MagickSetPointsize(
   MagickWandPointer $wand,
   double $pointsize
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetPointsize() sets the font pointsize associated with the MagickWand.- wand: the magick wand. - pointsize: the size of the font 

### MagickSetProgressMonitor
- C:

```C
MagickProgressMonitor MagickSetProgressMonitor(MagickWand *wand
  const MagickProgressMonitor progress_monitor,void *client_data)
```
- Perl 6:

```Perl6
sub MagickSetProgressMonitor(
   MagickWandPointerwand
  MagickProgressMonitor $progress_monitor,
   Pointer[void] $client_data
)
returns MagickProgressMonitor 
is native(&library)
is export { * };
```

MagickSetProgressMonitor() sets the wand progress monitor to the specified method and returns the previous progress monitor if any.  The progress monitor method looks like this:<pre class="text">    MagickBooleanType MagickProgressMonitor(const char \*text,const MagickOffsetType offset,const MagickSizeType span,void \*client_data)</pre>If the progress monitor returns MagickFalse, the current operation is interrupted.- wand: the magick wand. - progress_monitor: Specifies a pointer to a method to monitor progress of an image operation. - client_data: Specifies a pointer to any client data. 

### MagickSetResourceLimit
- C:

```C
MagickBooleanType MagickSetResourceLimit(const ResourceType type,
  const MagickSizeType limit)
```
- Perl 6:

```Perl6
sub MagickSetResourceLimit(
   ResourceType $type,
   MagickSizeType $limit
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetResourceLimit() sets the limit for a particular resource in megabytes.- type: the type of resource: AreaResource, MemoryResource, MapResource, DiskResource, FileResource. <dd> o The maximum limit for the resource. </dd>

### MagickSetResolution
- C:

```C
MagickBooleanType MagickSetResolution(MagickWand *wand,
  const double x_resolution,const double y_resolution)
```
- Perl 6:

```Perl6
sub MagickSetResolution(
   MagickWandPointer $wand,
   double $x_resolution,
   double $y_resolution
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetResolution() sets the image resolution.- wand: the magick wand. - x_resolution: the image x resolution. - y_resolution: the image y resolution. 

### MagickSetSamplingFactors
- C:

```C
MagickBooleanType MagickSetSamplingFactors(MagickWand *wand,
  const size_t number_factors,const double *sampling_factors)
```
- Perl 6:

```Perl6
sub MagickSetSamplingFactors(
   MagickWandPointer $wand,
   int32 $number_factors,
   num64* $sampling_factors
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetSamplingFactors() sets the image sampling factors.- wand: the magick wand. - number_factoes: the number of factors. - sampling_factors: An array of doubles representing the sampling factor for each color component (in RGB order). 

### MagickSetSize
- C:

```C
MagickBooleanType MagickSetSize(MagickWand *wand,
  const size_t columns,const size_t rows)
```
- Perl 6:

```Perl6
sub MagickSetSize(
   MagickWandPointer $wand,
   int32 $columns,
   int32 $rows
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetSize() sets the size of the magick wand.  Set it before you read a raw image format such as RGB, GRAY, or CMYK.- wand: the magick wand. - columns: the width in pixels. - rows: the rows in pixels. 

### MagickSetSizeOffset
- C:

```C
MagickBooleanType MagickSetSizeOffset(MagickWand *wand,
  const size_t columns,const size_t rows,
  const ssize_t offset)
```
- Perl 6:

```Perl6
sub MagickSetSizeOffset(
   MagickWandPointer $wand,
   int32 $columns,
   int32 $rows,
   sint32 $offset
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetSizeOffset() sets the size and offset of the magick wand.  Set it before you read a raw image format such as RGB, GRAY, or CMYK.- wand: the magick wand. - columns: the image width in pixels. - rows: the image rows in pixels. - offset: the image offset. 

### MagickSetType
- C:

```C
MagickBooleanType MagickSetType(MagickWand *wand,
  const ImageType image_type)
```
- Perl 6:

```Perl6
sub MagickSetType(
   MagickWandPointer $wand,
   ImageType $image_type
)
returns uint32 
is native(&library)
is export { * };
```

MagickSetType() sets the image type attribute.- wand: the magick wand. - image_type: the image type:   UndefinedType, BilevelType, GrayscaleType, GrayscaleMatteType, PaletteType, PaletteMatteType, TrueColorType, TrueColorMatteType, ColorSeparationType, ColorSeparationMatteType, or OptimizeType. 

