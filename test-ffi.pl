#!/usr/bin/env perl

#--> My::CXCursor
package My::CXCursor;

use FFI::Platypus::Record;

record_layout(
    'uint'       => 'kind',
    'int'        => 'xdata',
    'pointer[3]' => 'data',
);

#--> main
package main;

use v5.16;

use IO::Handle;
use FFI::Platypus;

STDOUT->autoflush(1);

my $library = '/usr/lib/llvm-6.0/lib/libclang.so';

my $ffi = FFI::Platypus->new;
$ffi->lib($library);

# Custom FFI type aliases
$ffi->type('pointer', 'CXIndex');
$ffi->type('pointer', 'CXTranslationUnit');
$ffi->type('record(My::CXCursor)', 'CXCursor');

# FFI Functions
$ffi->attach( clang_getClangVersion          => [] => 'string' );
$ffi->attach( clang_createIndex              => ['int', 'int'] => 'pointer' );
$ffi->attach( clang_disposeIndex             => ['CXIndex']       );
$ffi->attach( clang_CXIndex_setGlobalOptions => ['CXIndex', 'uint'] );
$ffi->attach( clang_CXIndex_getGlobalOptions => ['CXIndex'] => 'uint' );
$ffi->attach( clang_disposeTranslationUnit   => ['CXTranslationUnit'] );
$ffi->attach( 'clang_parseTranslationUnit'
    => [ 'CXIndex', 'string', 'pointer', 'int', 'pointer', 'int', 'uint' ]
    => 'CXTranslationUnit'
);
$ffi->attach( clang_getTranslationUnitCursor => ['CXTranslationUnit'] =>
    'CXCursor');

say clang_getClangVersion;
my $index = clang_createIndex(0, 0);
die "Error in clang_createIndex" unless $index;

my $translation_unit = clang_parseTranslationUnit(
    $index,
    'header.hpp',
    0, 0,
    0, 0,
    0 # CXTranslationUnit_None
);
die "Error in clang_parseTranslationUnit" unless $translation_unit;
say $index;
say $translation_unit;

# my $cursor = clang_getTranslationUnitCursor($translation_unit);

END {
    say "Destroying...";
    clang_disposeTranslationUnit($translation_unit) if $translation_unit;
    clang_disposeIndex($index) if $index;
}
