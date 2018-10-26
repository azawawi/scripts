
use v6;

use NativeCall;

# See https://gist.githubusercontent.com/raphaelmor/3150866/raw/4f722b922ae19c9d6c328d79d5a5ca8cb018fb77/clanglib.c
# See https://shaharmike.com/cpp/libclang/

#TODO remove this debug call...
$*OUT.out-buffer = False;
$*ERR.out-buffer = False;

sub libclang {
  return '/usr/lib/llvm-3.8/lib/libclang-3.8.so';
  # return 'libclang.so';
}

sub libclang-perl6 {
  return './libclang-perl6.so';
}

# See /usr/lib/llvm-3.8/include/clang-c/Index.h

# CINDEX_LINKAGE CXString clang_getClangVersion(void);

class CXIndex is repr('CPointer') { }
class CXTranslationUnit is repr('CPointer') { }
class CXClientData is repr('CPointer') { }

sub clang_getClangVersion is native(&libclang) returns Str { * }

# CINDEX_LINKAGE CXIndex clang_createIndex(int excludeDeclarationsFromPCH,
#                                          int displayDiagnostics);
sub clang_createIndex(
  int32 $excludeDeclarationsFromPCH,
  int32 $displayDiagnostics
) is native(&libclang)
  returns CXIndex
  { * }

# CINDEX_LINKAGE void clang_disposeIndex(CXIndex index);
sub clang_disposeIndex(
  CXIndex $index
) is native(&libclang)
  { * }
  
# CINDEX_LINKAGE void clang_disposeTranslationUnit(CXTranslationUnit);

sub clang_disposeTranslationUnit(
  CXTranslationUnit $unit
) is native(&libclang)
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
) is native(&libclang)
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
# sub clang_getTranslationUnitCursor(
#   CXTranslationUnit $unit
# ) is native(&libclang)
#   returns CXCursor
#   { * };
sub clang_getTranslationUnitCursor(
  CXTranslationUnit $unit
) is native(&libclang-perl6)
  is symbol('wrapped_clang_getTranslationUnitCursor')
  returns Pointer[CXCursor]
  { * };

sub free_cursor(
  Pointer[CXCursor] $cursor
) is native(&libclang-perl6)
  is symbol('wrapped_free_cursor')
  returns Pointer[CXCursor]
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
  #CXCursor $parent,
  Pointer[CXCursor] $parent,
  # CXCursorVisitor $visitor,
  #TODO CXChildVisitResult return result
  &visitor (CXCursor is rw, CXCursor is rw, CXClientData --> uint32),
  CXClientData $client_data
) is native(&libclang-perl6)
  is symbol('wrapped_clang_visitChildren')
  returns uint32
  { * };
  
# CINDEX_LINKAGE CXString clang_getCursorSpelling(CXCursor);
#sub clang_getCursorSpelling(CXCursor $cursor)
sub clang_getCursorSpelling(Pointer[CXCursor] $cursor)
  is native(&libclang-perl6)
  is symbol('wrapped_clang_getCursorSpelling')
  returns Str
  { * }

# CINDEX_LINKAGE enum CXCursorKind clang_getCursorKind(CXCursor);
sub clang_getCursorKind(CXCursor $cursor)
  is native(&libclang)
  # TODO CXCursorKind
  returns uint32
  { * }

# CINDEX_LINKAGE CXString clang_getCursorKindSpelling(enum CXCursorKind Kind);
sub clang_getCursorKindSpelling(uint32 $kind)
  is native(&libclang)
  returns Str
  { * }

sub visitor(CXCursor $cursor, CXCursor $parent, CXClientData $client_data) returns CXChildVisitResult {
  say "visitor called!";
  # say $cursor.kind;
  # my $spelling      = clang_getCursorSpelling($cursor);
  # my $kind-spelling = clang_getCursorKindSpelling(clang_getCursorKind($cursor));
  # printf("Cursor '%s' of kind '%s'\n", $spelling, $kind-spelling);
  return CXChildVisit_Recurse;
}

printf("libclang version '%s'\n", clang_getClangVersion);

my $index = clang_createIndex(0, 0);
LEAVE clang_disposeIndex($index);

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
LEAVE clang_disposeTranslationUnit($unit);

die "Unable to parse translation unit. Quitting."
  unless $unit;

my $cursor-ptr = clang_getTranslationUnitCursor($unit);
LEAVE free_cursor($cursor-ptr);

my $cursor = $cursor-ptr.deref;
say "cursor kind     = " ~ $cursor.kind;
say "cursor spelling = " ~ clang_getCursorSpelling($cursor-ptr);
say "cursor kind     = " ~ clang_getCursorKind($cursor);

clang_visitChildren(
  $cursor-ptr,
  &visitor,
  CXClientData.new
);
