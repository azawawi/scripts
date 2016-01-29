### CloneWandView
- C:

```
WandView *CloneWandView(const WandView *wand_view)
```
- Perl 6:

```
sub CloneWandView(
   WandView * $wand_view
)
returns WandView *
is native(&library)
is export { * };
```

CloneWandView() makes a copy of the specified wand view.- wand_view: the wand view. 

### DestroyWandView
- C:

```
WandView *DestroyWandView(WandView *wand_view)
```
- Perl 6:

```
sub DestroyWandView(
   WandView * $wand_view
)
returns WandView *
is native(&library)
is export { * };
```

DestroyWandView() deallocates memory associated with a wand view.- wand_view: the wand view. 

### DuplexTransferWandViewIterator
- C:

```
MagickBooleanType DuplexTransferWandViewIterator(WandView *source,
  WandView *duplex,WandView *destination,
  DuplexTransferWandViewMethod transfer,void *context)
```
- Perl 6:

```
sub DuplexTransferWandViewIterator(
   WandView * $source,
   WandView * $duplex,
   WandView * $destination,
   DuplexTransferWandViewMethod $transfer,
   Pointer[void] $context
)
returns uint32 
is native(&library)
is export { * };
```

DuplexTransferWandViewIterator() iterates over three wand views in parallel and calls your transfer method for each scanline of the view.  The source and duplex pixel extent is not confined to the image canvas-- that is you can include negative offsets or widths or heights that exceed the image dimension.  However, the destination wand view is confined to the image canvas-- that is no negative offsets or widths or heights that exceed the image dimension are permitted.The callback signature is:<pre class="text">MagickBooleanType DuplexTransferImageViewMethod(const WandView \*source,  const WandView \*duplex,WandView \*destination,const ssize_t y,  const int thread_id,void \*context)</pre>Use this pragma if the view is not single threaded:<pre class="text">    #pragma omp critical</pre>to define a section of code in your callback transfer method that must be executed by a single thread at a time.- source: the source wand view. - duplex: the duplex wand view. - destination: the destination wand view. - transfer: the transfer callback method. - context: the user defined context. 

### GetWandViewException
- C:

```
char *GetWandViewException(const WandView *wand_view,
  ExceptionType *severity)
```
- Perl 6:

```
sub GetWandViewException(
   WandView * $wand_view,
   ExceptionType * $severity
)
returns Str
is native(&library)
is export { * };
```

GetWandViewException() returns the severity, reason, and description of any error that occurs when utilizing a wand view.- wand_view: the pixel wand_view. - severity: the severity of the error is returned here. 

### GetWandViewExtent
- C:

```
RectangleInfo GetWandViewExtent(const WandView *wand_view)
```
- Perl 6:

```
sub GetWandViewExtent(
   WandView * $wand_view
)
returns RectangleInfo 
is native(&library)
is export { * };
```

GetWandViewExtent() returns the wand view extent.- wand_view: the wand view. 

### GetWandViewIterator
- C:

```
MagickBooleanType GetWandViewIterator(WandView *source,
  GetWandViewMethod get,void *context)
```
- Perl 6:

```
sub GetWandViewIterator(
   WandView * $source,
   GetWandViewMethod $get,
   Pointer[void] $context
)
returns uint32 
is native(&library)
is export { * };
```

GetWandViewIterator() iterates over the wand view in parallel and calls your get method for each scanline of the view.  The pixel extent is not confined to the image canvas-- that is you can include negative offsets or widths or heights that exceed the image dimension.  Any updates to the pixels in your callback are ignored.The callback signature is:<pre class="text">MagickBooleanType GetImageViewMethod(const WandView \*source,  const ssize_t y,const int thread_id,void \*context)</pre>Use this pragma if the view is not single threaded:<pre class="text">    #pragma omp critical</pre>to define a section of code in your callback get method that must be executed by a single thread at a time.- source: the source wand view. - get: the get callback method. - context: the user defined context. 

### GetWandViewPixels
- C:

```
PixelWand *GetWandViewPixels(const WandView *wand_view)
```
- Perl 6:

```
sub GetWandViewPixels(
   WandView * $wand_view
)
returns PixelWandPointer
is native(&library)
is export { * };
```

GetWandViewPixels() returns the wand view pixel_wands.- wand_view: the wand view. 

### GetWandViewWand
- C:

```
MagickWand *GetWandViewWand(const WandView *wand_view)
```
- Perl 6:

```
sub GetWandViewWand(
   WandView * $wand_view
)
returns MagickWandPointer
is native(&library)
is export { * };
```

GetWandViewWand() returns the magick wand associated with the wand view.- wand_view: the wand view. 

### IsWandView
- C:

```
MagickBooleanType IsWandView(const WandView *wand_view)
```
- Perl 6:

```
sub IsWandView(
   WandView * $wand_view
)
returns uint32 
is native(&library)
is export { * };
```

IsWandView() returns MagickTrue if the the parameter is verified as a wand view object.- wand_view: the wand view. 

### NewWandView
- C:

```
WandView *NewWandView(MagickWand *wand)
```
- Perl 6:

```
sub NewWandView(
   MagickWandPointer $wand
)
returns WandView *
is native(&library)
is export { * };
```

NewWandView() returns a wand view required for all other methods in the Wand View API.- wand: the wand. 

### NewWandViewExtent
- C:

```
WandView *NewWandViewExtent(MagickWand *wand,const ssize_t x,
  const ssize_t y,const size_t width,const size_t height)
```
- Perl 6:

```
sub NewWandViewExtent(
   MagickWandPointer $wand,
   sint32 $x,
   sint32 $y,
   int32 $width,
   int32 $height
)
returns WandView *
is native(&library)
is export { * };
```

NewWandViewExtent() returns a wand view required for all other methods in the Wand View API.- wand: the magick wand. - x,y,columns,rows:  These values define the perimeter of a extent of pixel_wands view. 

### SetWandViewDescription
- C:

```
void SetWandViewDescription(WandView *image_view,const char *description)
```
- Perl 6:

```
sub SetWandViewDescription(
   WandView * $image_view,
   Str $description
)
is native(&library)
is export { * };
```

SetWandViewDescription() associates a description with an image view.- wand_view: the wand view. - description: the wand view description. 

### SetWandViewIterator
- C:

```
MagickBooleanType SetWandViewIterator(WandView *destination,
  SetWandViewMethod set,void *context)
```
- Perl 6:

```
sub SetWandViewIterator(
   WandView * $destination,
   SetWandViewMethod $set,
   Pointer[void] $context
)
returns uint32 
is native(&library)
is export { * };
```

SetWandViewIterator() iterates over the wand view in parallel and calls your set method for each scanline of the view.  The pixel extent is confined to the image canvas-- that is no negative offsets or widths or heights that exceed the image dimension.  The pixels are initiallly undefined and any settings you make in the callback method are automagically synced back to your image.The callback signature is:<pre class="text">MagickBooleanType SetImageViewMethod(ImageView \*destination,  const ssize_t y,const int thread_id,void \*context)</pre>Use this pragma if the view is not single threaded:<pre class="text">    #pragma omp critical</pre>to define a section of code in your callback set method that must be executed by a single thread at a time.- destination: the wand view. - set: the set callback method. - context: the user defined context. 

### SetWandViewThreads
- C:

```
void SetWandViewThreads(WandView *image_view,
  const size_t number_threads)
```
- Perl 6:

```
sub SetWandViewThreads(
   WandView * $image_view,
   int32 $number_threads
)
is native(&library)
is export { * };
```

SetWandViewThreads() sets the number of threads in a thread team.- image_view: the image view. - number_threads: the number of threads in a thread team. 

### TransferWandViewIterator
- C:

```
MagickBooleanType TransferWandViewIterator(WandView *source,
  WandView *destination,TransferWandViewMethod transfer,void *context)
```
- Perl 6:

```
sub TransferWandViewIterator(
   WandView * $source,
   WandView * $destination,
   TransferWandViewMethod $transfer,
   Pointer[void] $context
)
returns uint32 
is native(&library)
is export { * };
```

TransferWandViewIterator() iterates over two wand views in parallel and calls your transfer method for each scanline of the view.  The source pixel extent is not confined to the image canvas-- that is you can include negative offsets or widths or heights that exceed the image dimension. However, the destination wand view is confined to the image canvas-- that is no negative offsets or widths or heights that exceed the image dimension are permitted.The callback signature is:<pre class="text">MagickBooleanType TransferImageViewMethod(const WandView \*source,  WandView \*destination,const ssize_t y,const int thread_id,  void \*context)</pre>Use this pragma if the view is not single threaded:<pre class="text">    #pragma omp critical</pre>to define a section of code in your callback transfer method that must be executed by a single thread at a time.- source: the source wand view. - destination: the destination wand view. - transfer: the transfer callback method. - context: the user defined context. 

### UpdateWandViewIterator
- C:

```
MagickBooleanType UpdateWandViewIterator(WandView *source,
  UpdateWandViewMethod update,void *context)
```
- Perl 6:

```
sub UpdateWandViewIterator(
   WandView * $source,
   UpdateWandViewMethod $update,
   Pointer[void] $context
)
returns uint32 
is native(&library)
is export { * };
```

UpdateWandViewIterator() iterates over the wand view in parallel and calls your update method for each scanline of the view.  The pixel extent is confined to the image canvas-- that is no negative offsets or widths or heights that exceed the image dimension are permitted.  Updates to pixels in your callback are automagically synced back to the image.The callback signature is:<pre class="text">MagickBooleanType UpdateImageViewMethod(WandView \*source,const ssize_t y,  const int thread_id,void \*context)</pre>Use this pragma if the view is not single threaded:<pre class="text">    #pragma omp critical</pre>to define a section of code in your callback update method that must be executed by a single thread at a time.- source: the source wand view. - update: the update callback method. - context: the user defined context. 

