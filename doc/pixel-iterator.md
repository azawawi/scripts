### ClearPixelIterator
- C:

```
void ClearPixelIterator(PixelIterator *iterator)
```
- Perl 6:

```
sub ClearPixelIterator(
   PixelIterator * $iterator
)
is native(&library)
is export { * };
```

ClearPixelIterator() clear resources associated with a PixelIterator.- iterator: the pixel iterator. 

### ClonePixelIterator
- C:

```
PixelIterator *ClonePixelIterator(const PixelIterator *iterator)
```
- Perl 6:

```
sub ClonePixelIterator(
   PixelIterator * $iterator
)
returns PixelIterator *
is native(&library)
is export { * };
```

ClonePixelIterator() makes an exact copy of the specified iterator.- iterator: the magick iterator. 

### DestroyPixelIterator
- C:

```
PixelIterator *DestroyPixelIterator(PixelIterator *iterator)
```
- Perl 6:

```
sub DestroyPixelIterator(
   PixelIterator * $iterator
)
returns PixelIterator *
is native(&library)
is export { * };
```

DestroyPixelIterator() deallocates resources associated with a PixelIterator.- iterator: the pixel iterator. 

### IsPixelIterator
- C:

```
MagickBooleanType IsPixelIterator(const PixelIterator *iterator)
```
- Perl 6:

```
sub IsPixelIterator(
   PixelIterator * $iterator
)
returns uint32 
is native(&library)
is export { * };
```

IsPixelIterator() returns MagickTrue if the iterator is verified as a pixel iterator.- iterator: the magick iterator. 

### NewPixelIterator
- C:

```
PixelIterator *NewPixelIterator(MagickWand *wand)
```
- Perl 6:

```
sub NewPixelIterator(
   MagickWandPointer $wand
)
returns PixelIterator *
is native(&library)
is export { * };
```

NewPixelIterator() returns a new pixel iterator.- wand: the magick wand. 

### PixelClearIteratorException
- C:

```
MagickBooleanType PixelClearIteratorException(PixelIterator *iterator)
```
- Perl 6:

```
sub PixelClearIteratorException(
   PixelIterator * $iterator
)
returns uint32 
is native(&library)
is export { * };
```

PixelClearIteratorException() clear any exceptions associated with the iterator.- iterator: the pixel iterator. 

### NewPixelRegionIterator
- C:

```
PixelIterator *NewPixelRegionIterator(MagickWand *wand,const ssize_t x,
  const ssize_t y,const size_t width,const size_t height)
```
- Perl 6:

```
sub NewPixelRegionIterator(
   MagickWandPointer $wand,
   sint32 $x,
   sint32 $y,
   int32 $width,
   int32 $height
)
returns PixelIterator *
is native(&library)
is export { * };
```

NewPixelRegionIterator() returns a new pixel iterator.- wand: the magick wand. - x,y,columns,rows:  These values define the perimeter of a region of pixels. 

### PixelGetCurrentIteratorRow
- C:

```
PixelWand **PixelGetCurrentIteratorRow(PixelIterator *iterator,
  size_t *number_wands)
```
- Perl 6:

```
sub PixelGetCurrentIteratorRow(
   PixelIterator * $iterator,
   Pointer[int32] $number_wands
)
returns PixelWandPointer*
is native(&library)
is export { * };
```

PixelGetCurrentIteratorRow() returns the current row as an array of pixel wands from the pixel iterator.- iterator: the pixel iterator. - number_wands: the number of pixel wands. 

### PixelGetIteratorException
- C:

```
char *PixelGetIteratorException(const PixelIterator *iterator,
  ExceptionType *severity)
```
- Perl 6:

```
sub PixelGetIteratorException(
   PixelIterator * $iterator,
   ExceptionType * $severity
)
returns Str
is native(&library)
is export { * };
```

PixelGetIteratorException() returns the severity, reason, and description of any error that occurs when using other methods in this API.- iterator: the pixel iterator. - severity: the severity of the error is returned here. 

### PixelGetIteratorExceptionType
- C:

```
ExceptionType PixelGetIteratorExceptionType(
  const PixelIterator *iterator)
```
- Perl 6:

```
sub PixelGetIteratorExceptionType(
   PixelIterator * $iterator
)
returns ExceptionType 
is native(&library)
is export { * };
```

PixelGetIteratorExceptionType() the exception type associated with the iterator.  If no exception has occurred, UndefinedExceptionType is returned.- iterator: the magick iterator. 

### PixelGetIteratorRow
- C:

```
MagickBooleanType PixelGetIteratorRow(PixelIterator *iterator)
```
- Perl 6:

```
sub PixelGetIteratorRow(
   PixelIterator * $iterator
)
returns uint32 
is native(&library)
is export { * };
```

PixelGetIteratorRow() returns the current pixel iterator row.- iterator: the pixel iterator. 

### PixelGetNextIteratorRow
- C:

```
PixelWand **PixelGetNextIteratorRow(PixelIterator *iterator,
  size_t *number_wands)
```
- Perl 6:

```
sub PixelGetNextIteratorRow(
   PixelIterator * $iterator,
   Pointer[int32] $number_wands
)
returns PixelWandPointer*
is native(&library)
is export { * };
```

PixelGetNextIteratorRow() returns the next row as an array of pixel wands from the pixel iterator.- iterator: the pixel iterator. - number_wands: the number of pixel wands. 

### PixelGetPreviousIteratorRow
- C:

```
PixelWand **PixelGetPreviousIteratorRow(PixelIterator *iterator,
  size_t *number_wands)
```
- Perl 6:

```
sub PixelGetPreviousIteratorRow(
   PixelIterator * $iterator,
   Pointer[int32] $number_wands
)
returns PixelWandPointer*
is native(&library)
is export { * };
```

PixelGetPreviousIteratorRow() returns the previous row as an array of pixel wands from the pixel iterator.- iterator: the pixel iterator. - number_wands: the number of pixel wands. 

### PixelResetIterator
- C:

```
void PixelResetIterator(PixelIterator *iterator)
```
- Perl 6:

```
sub PixelResetIterator(
   PixelIterator * $iterator
)
is native(&library)
is export { * };
```

PixelResetIterator() resets the pixel iterator.  Use it in conjunction with PixelGetNextIteratorRow() to iterate over all the pixels in a pixel container.- iterator: the pixel iterator. 

### PixelSetFirstIteratorRow
- C:

```
void PixelSetFirstIteratorRow(PixelIterator *iterator)
```
- Perl 6:

```
sub PixelSetFirstIteratorRow(
   PixelIterator * $iterator
)
is native(&library)
is export { * };
```

PixelSetFirstIteratorRow() sets the pixel iterator to the first pixel row.- iterator: the magick iterator. 

### PixelSetIteratorRow
- C:

```
MagickBooleanType PixelSetIteratorRow(PixelIterator *iterator,
  const ssize_t row)
```
- Perl 6:

```
sub PixelSetIteratorRow(
   PixelIterator * $iterator,
   sint32 $row
)
returns uint32 
is native(&library)
is export { * };
```

PixelSetIteratorRow() set the pixel iterator row.- iterator: the pixel iterator. 

### PixelSetLastIteratorRow
- C:

```
void PixelSetLastIteratorRow(PixelIterator *iterator)
```
- Perl 6:

```
sub PixelSetLastIteratorRow(
   PixelIterator * $iterator
)
is native(&library)
is export { * };
```

PixelSetLastIteratorRow() sets the pixel iterator to the last pixel row.- iterator: the magick iterator. 

### PixelSyncIterator
- C:

```
MagickBooleanType PixelSyncIterator(PixelIterator *iterator)
```
- Perl 6:

```
sub PixelSyncIterator(
   PixelIterator * $iterator
)
returns uint32 
is native(&library)
is export { * };
```

PixelSyncIterator() syncs the pixel iterator.- iterator: the pixel iterator. 

