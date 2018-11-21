#include <clang-c/Index.h>

#include <iostream>
#include <string>

std::string getCursorKindName( CXCursorKind cursorKind )
{
  CXString kindName  = clang_getCursorKindSpelling( cursorKind );
  std::string result = clang_getCString( kindName );

  clang_disposeString( kindName );
  return result;
}

std::string getCursorSpelling( CXCursor cursor )
{
  CXString cursorSpelling = clang_getCursorSpelling( cursor );
  std::string result      = clang_getCString( cursorSpelling );

  clang_disposeString( cursorSpelling );
  return result;
}

CXChildVisitResult visitor( CXCursor cursor, CXCursor /* parent */, CXClientData clientData )
{
  CXSourceLocation location = clang_getCursorLocation( cursor );
  if( clang_Location_isFromMainFile( location ) == 0 )
    return CXChildVisit_Continue;

  CXCursorKind cursorKind = clang_getCursorKind( cursor );

  unsigned int curLevel  = *( reinterpret_cast<unsigned int*>( clientData ) );
  unsigned int nextLevel = curLevel + 1;

  std::cout << std::string( curLevel, '-' ) << " " << getCursorKindName(
  cursorKind ) << " (" << getCursorSpelling( cursor ) << ")\n";

  clang_visitChildren( cursor,
                       visitor,
                       &nextLevel );

  return CXChildVisit_Continue;
}

int main( int argc, char** argv )
{
  CXString versionCXString = clang_getClangVersion();
  const char *version = clang_getCString(versionCXString);
  std::cout << version << std::endl;
  clang_disposeString(versionCXString);

  CXIndex index        = clang_createIndex( 0, 0 );
  CXTranslationUnit tu = clang_parseTranslationUnit( index, "header.hpp", 0, 0, 0, 0, 0 );

  if( !tu ) {
      std::cout << "Failed while parsing translation unit!" << std::endl;
      return -1;
  }

  CXCursor rootCursor  = clang_getTranslationUnitCursor( tu );

  unsigned int treeLevel = 0;

  clang_visitChildren( rootCursor, visitor, &treeLevel );

  clang_disposeTranslationUnit( tu );
  clang_disposeIndex( index );

  return 0;
}
