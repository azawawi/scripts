#!/usr/bin/env perl

#--> My::CXCursor
package My::CXCursor;

use FFI::Platypus::Record;

record_layout(
    'uint'       => 'kind',
    'int'        => 'xdata',
    'pointer[3]' => 'data',
);

1;

package My::CXString;

use FFI::Platypus::Record;

record_layout(
    'opaque' => 'data',
    'uint'   => 'private_flags',
);

1;

#--> main
package main;

use Modern::Perl '2018';
use FFI::Platypus;

STDOUT->autoflush(1);

# Debian el al => sudo apt install libclang-dev
my $library = '/usr/lib/llvm-6.0/lib/libclang.so';

my $ffi = FFI::Platypus->new;
$ffi->lib($library);

# Custom FFI type aliases
$ffi->type( 'pointer',              'CXIndex' );
$ffi->type( 'pointer',              'CXTranslationUnit' );
$ffi->type( 'record(My::CXCursor)', 'CXCursor' );
$ffi->type( 'record(My::CXString)', 'CXString' );
$ffi->type( 'pointer',              'CXClientData' );

#TODO enum CXChildVisitResult
$ffi->type( 'int', 'CXChildVisitResult' );
$ffi->type( '(CXCursor, CXCursor, CXClientData)->CXChildVisitResult',
    'CXCursorVisitor' );

# CINDEX_LINKAGE const char *clang_getCString(CXString string);
$ffi->attach( clang_getCString => ['opaque'] => 'string' );

# CINDEX_LINKAGE void clang_disposeString(CXString string);
$ffi->attach( clang_disposeString => ['opaque'] => 'void' );

# CINDEX_LINKAGE CXString clang_getClangVersion(void);
$ffi->attach( clang_getClangVersion => [] => 'opaque' );

$ffi->attach( clang_createIndex => [ 'int', 'int' ] => 'CXIndex' );
$ffi->attach( clang_disposeIndex             => ['CXIndex'] );
$ffi->attach( clang_disposeTranslationUnit   => ['opaque'] );
$ffi->attach( 'clang_parseTranslationUnit' =>
      [ 'CXIndex', 'string', 'pointer', 'int', 'pointer', 'uint', 'uint' ] =>
      'opaque' );
$ffi->attach(
    clang_getTranslationUnitCursor => ['CXTranslationUnit'] => 'CXCursor' );
$ffi->attach( clang_visitChildren =>
      [ 'CXCursor', 'CXCursorVisitor', 'CXClientData' ] => 'uint' );

# Print out libclang version...
my $version_cxstring = clang_getClangVersion();
my $version          = clang_getCString($version_cxstring);
say "version = '$version'";
clang_disposeString($version_cxstring);

my $index = clang_createIndex( 0, 0 );
say "index = $index";
die "Error in clang_createIndex" unless $index;

my $translation_unit = clang_parseTranslationUnit(
    $index,
    'header.hpp',
    0, 0,
    0, 0,
    0    # CXTranslationUnit_None
);
die "Error in clang_parseTranslationUnit" unless $translation_unit;
say "translation_unit = $translation_unit";

my $cursor = clang_getTranslationUnitCursor($translation_unit);
say "cursor = $cursor";

my $visitChildren = $ffi->closure(
    sub {
        say "Here inside \$visitChildren!";
        my $cursor      = shift;
        my $parent      = shift;
        my $client_data = shift;

        say "Called!";
        say $cursor;

        #   my $spelling      = clang_getCursorSpelling($cursor);
        #   my $kind          = clang_getCursorKind($cursor);
        #   my $kind-spelling = clang_getCursorKindSpelling($kind);
        #   printf("Cursor '%s' of kind '%s'\n", $spelling, $kind-spelling);

        return 2;    # CXChildVisit_Recurse
    }
);
clang_visitChildren( $cursor, $visitChildren, 0 );

say "Destroying...";
clang_disposeTranslationUnit($translation_unit) if $translation_unit;
clang_disposeIndex($index)                      if $index;
