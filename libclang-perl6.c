
#include <stdlib.h>
#include <assert.h>
#include <clang-c/Index.h>

#ifdef _WIN32
#define EXTERN_C extern "C" __declspec(dllexport)
#else
#define EXTERN_C extern
#endif

// We need to wrap it since Perl 6's NativeCall does not pass
// CStruct by value
EXTERN_C CXCursor* wrapped_clang_getTranslationUnitCursor(CXTranslationUnit unit) {
  //TODO provide a way to free...
  CXCursor cursor  = clang_getTranslationUnitCursor(unit);
  CXCursor* result = (CXCursor*)malloc(sizeof(CXCursor));
  *result          = cursor;
  return result;
}

EXTERN_C void wrapped_free_cursor(CXCursor *cursor) {
  assert(cursor != NULL);
  free(cursor);
}
