#!/usr/bin/env perl

package main;

use Modern::Perl '2018';
use FFI::Raw;

STDOUT->autoflush(1);

# Debian el al => sudo apt install libclang-dev
my $library = '/usr/lib/llvm-6.0/lib/libclang.so';

# CINDEX_LINKAGE const char *clang_getCString(CXString string);
my $clang_getCString =
  FFI::Raw->new( $library, 'clang_getCString', FFI::Raw::str, FFI::Raw::ptr );

# CINDEX_LINKAGE void clang_disposeString(CXString string);
my $clang_disposeString =
  FFI::Raw->new( $library, 'clang_disposeString', FFI::Raw::void,
    FFI::Raw::ptr );

# CINDEX_LINKAGE CXString clang_getClangVersion(void);
my $clang_getClangVersion =
  FFI::Raw->new( $library, 'clang_getClangVersion', FFI::Raw::ptr );

my $clang_createIndex =
  FFI::Raw->new( $library, 'clang_createIndex', FFI::Raw::ptr, FFI::Raw::int,
    FFI::Raw::int );

my $clang_disposeIndex =
  FFI::Raw->new( $library, 'clang_disposeIndex', FFI::Raw::void,
    FFI::Raw::ptr );

my $clang_disposeTranslationUnit =
  FFI::Raw->new( $library, 'clang_disposeTranslationUnit',
    FFI::Raw::void, FFI::Raw::ptr );

my $clang_parseTranslationUnit = FFI::Raw->new(
    $library,       'clang_parseTranslationUnit',
    FFI::Raw::ptr,  FFI::Raw::ptr,
    FFI::Raw::str,  FFI::Raw::ptr,
    FFI::Raw::int,  FFI::Raw::ptr,
    FFI::Raw::uint, FFI::Raw::uint
);

my $clang_getTranslationUnitCursor =
  FFI::Raw->new( $library, 'clang_getTranslationUnitCursor',
    FFI::Raw::ptr, FFI::Raw::ptr );

# $ffi->attach( clang_visitChildren =>
#       [ 'CXCursor', 'CXCursorVisitor', 'CXClientData' ] => 'uint' );

# Print out libclang version...
my $version_cxstring = $clang_getClangVersion->call();
my $version          = $clang_getCString->call($version_cxstring);
say "version: '$version'";
$clang_disposeString->call($version_cxstring);

my $index = $clang_createIndex->call( 0, 0 );
say "index = $index";
die "Error in clang_createIndex" unless $index;

my $translation_unit = $clang_parseTranslationUnit->call(
    $index,
    'header.hpp',
    0, 0,
    0, 0,
    0    # CXTranslationUnit_None
);
die "Error in clang_parseTranslationUnit" unless $translation_unit;
say "translation_unit = $translation_unit";

my $cursor = $clang_getTranslationUnitCursor->call($translation_unit);
say "cursor = $cursor";

# my $visitChildren = $ffi->closure(
#     sub {
#         say "Here inside \$visitChildren!";
#         my $cursor      = shift;
#         my $parent      = shift;
#         my $client_data = shift;
#
#         say "Called!";
#         say $cursor;
#
#         #   my $spelling      = clang_getCursorSpelling($cursor);
#         #   my $kind          = clang_getCursorKind($cursor);
#         #   my $kind-spelling = clang_getCursorKindSpelling($kind);
#         #   printf("Cursor '%s' of kind '%s'\n", $spelling, $kind-spelling);
#
#         return 2;    # CXChildVisit_Recurse
#     }
# );
# clang_visitChildren( $cursor, $visitChildren, 0 );

say "Destroying...";
$clang_disposeTranslationUnit->call($translation_unit) if $translation_unit;
$clang_disposeIndex->call($index)                      if $index;
