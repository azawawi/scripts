
use v6;

use NativeCall;

# See https://gist.githubusercontent.com/raphaelmor/3150866/raw/4f722b922ae19c9d6c328d79d5a5ca8cb018fb77/clanglib.c
# See https://shaharmike.com/cpp/libclang/

#TODO remove this debug call...
$*OUT.out-buffer = False;
$*ERR.out-buffer = False;

sub library {
  return '/usr/lib/llvm-3.8/lib/libclang-3.8.so';
  # return 'libclang.so';
}

# See /usr/lib/llvm-3.8/include/clang-c/Index.h

# CINDEX_LINKAGE CXString clang_getClangVersion(void);

class CXIndex is repr('CPointer') { }
class CXTranslationUnit is repr('CPointer') { }
class CXClientData is repr('CPointer') { }

sub clang_getClangVersion is native(&library) returns Str { * }

# CINDEX_LINKAGE CXIndex clang_createIndex(int excludeDeclarationsFromPCH,
#                                          int displayDiagnostics);
sub clang_createIndex(
  int32 $excludeDeclarationsFromPCH,
  int32 $displayDiagnostics
) is native(&library)
  returns CXIndex
  { * }

# CINDEX_LINKAGE void clang_disposeIndex(CXIndex index);
sub clang_disposeIndex(
  CXIndex $index
) is native(&library)
  { * }
  
# CINDEX_LINKAGE void clang_disposeTranslationUnit(CXTranslationUnit);

sub clang_disposeTranslationUnit(
  CXTranslationUnit $unit
) is native(&library)
  { * }

enum CXTranslationUnit_Flags (
  CXTranslationUnit_None                                 => 0x0,
  CXTranslationUnit_DetailedPreprocessingRecord          => 0x01,
  CXTranslationUnit_Incomplete                           => 0x02,
  CXTranslationUnit_PrecompiledPreamble                  => 0x04,
  CXTranslationUnit_CacheCompletionResults               => 0x08,
  CXTranslationUnit_ForSerialization                     => 0x10,
  CXTranslationUnit_CXXChainedPCH                        => 0x20,
  CXTranslationUnit_SkipFunctionBodies                   => 0x40,
  CXTranslationUnit_IncludeBriefCommentsInCodeCompletion => 0x80,
  CXTranslationUnit_CreatePreambleOnFirstParse           => 0x100
);

# CINDEX_LINKAGE CXTranslationUnit
# clang_parseTranslationUnit(CXIndex CIdx,
#                            const char *source_filename,
#                            const char *const *command_line_args,
#                            int num_command_line_args,
#                            struct CXUnsavedFile *unsaved_files,
#                            unsigned num_unsaved_files,
#                            unsigned options);
sub clang_parseTranslationUnit(
  CXIndex $CIdx,
  Str $source_filename,
  Pointer $command_line_args,
  int32 $num_command_line_args,
  Pointer $unsaved_files,
  uint32 $num_unsaved_files,
  uint32 $options
) is native(&library)
  returns CXTranslationUnit
  { * };

class CXCursor is repr('CStruct') {
  # TODO enum CXCursorKind kind;
  has uint32 $.kind,
  has int32 $.xdata;
  #   const void *data[3];
  #TODO fix this...
  has Pointer $.data1;
  has Pointer $.data2;
  has Pointer $.data3;
}

# CINDEX_LINKAGE CXCursor clang_getTranslationUnitCursor(CXTranslationUnit);
sub clang_getTranslationUnitCursor(
  CXTranslationUnit $unit
) is native(&library)
  returns CXCursor
  { * };

enum CXChildVisitResult <
  CXChildVisit_Break
  CXChildVisit_Continue
  CXChildVisit_Recurse
>;

# typedef enum CXChildVisitResult (*CXCursorVisitor)(CXCursor cursor,
#                                                    CXCursor parent,
#                                                    CXClientData client_data);

# CINDEX_LINKAGE unsigned clang_visitChildren(CXCursor parent,
#                                             CXCursorVisitor visitor,
#                                             CXClientData client_data);
sub clang_visitChildren(
  CXCursor $parent,
  # CXCursorVisitor $visitor,
  #TODO CXChildVisitResult return result
  &visitor (CXCursor, CXCursor, Pointer --> uint32),
  CXClientData $client_data
) is native(&library)
  returns uint32
  { * };
  
# CINDEX_LINKAGE CXString clang_getCursorSpelling(CXCursor);
sub clang_getCursorSpelling(CXCursor $cursor)
  is native(&library)
  returns Str
  { * }

# CINDEX_LINKAGE enum CXCursorKind clang_getCursorKind(CXCursor);
sub clang_getCursorKind(CXCursor $cursor)
  is native(&library)
  # TODO CXCursorKind
  returns uint32
  { * }

# CINDEX_LINKAGE CXString clang_getCursorKindSpelling(enum CXCursorKind Kind);
sub clang_getCursorKindSpelling(uint32 $kind)
  is native(&library)
  returns Str
  { * }

sub visitor(CXCursor $cursor, CXCursor $parent, Pointer $client_data) {
  my $spelling      = clang_getCursorSpelling($cursor);
  my $kind-spelling = clang_getCursorKindSpelling(clang_getCursorKind($cursor));
  printf("Cursor '%s' of kind '%s'\n", $spelling, $kind-spelling);
  return CXChildVisit_Recurse;
}

printf("libclang version '%s'\n", clang_getClangVersion);

my $index = clang_createIndex(0, 0);

my $null-ptr = Pointer.new;
my $unit = clang_parseTranslationUnit(
  $index,
  "header.hpp",
  $null-ptr,
  0,
  $null-ptr,
  0,
  CXTranslationUnit_None
);


die "Unable to parse translation unit. Quitting."
  unless $unit;

say "1";
my $cursor = clang_getTranslationUnitCursor($unit);

say "cursor kind: " ~ $cursor.kind;
say "cursor xdata: " ~ $cursor.xdata;

#TODO CXClientData
clang_visitChildren(
  $cursor,
  &visitor,
  $null-ptr
);
# say "called clang_visitChildren";

#TODO fix cleanup
# clang_disposeTranslationUnit($unit);
# clang_disposeIndex($index);
