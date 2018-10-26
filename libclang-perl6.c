
#include <stdlib.h>
#include <assert.h>
#include <clang-c/Index.h>

#ifdef _WIN32
#define EXTERN_C extern "C" __declspec(dllexport)
#else
#define EXTERN_C extern
#endif

// We need to wrap it since Perl 6's NativeCall does not pass CStruct by value
EXTERN_C CXCursor* wrapped_clang_getTranslationUnitCursor(CXTranslationUnit unit) {
  CXCursor cursor  = clang_getTranslationUnitCursor(unit);
  CXCursor* result = (CXCursor*)malloc(sizeof(CXCursor));
  *result          = cursor;
  return result;
}

EXTERN_C void wrapped_free_cursor(CXCursor *cursor) {
  assert(cursor != NULL);
  free(cursor);
}

EXTERN_C CXString wrapped_clang_getCursorSpelling(CXCursor *cursor) {
  return clang_getCursorSpelling(*cursor);
}

EXTERN_C unsigned wrapped_clang_visitChildren(CXCursor *parent,
                                      CXCursorVisitor visitor,
                                      CXClientData client_data) {
  return clang_visitChildren(*parent, visitor, client_data);
}
