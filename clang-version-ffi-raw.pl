#!/usr/bin/env perl

package main;

use Modern::Perl '2018';
use FFI::Raw;

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

# Print out libclang version...
my $version_cxstring = $clang_getClangVersion->call();
my $version          = $clang_getCString->call($version_cxstring);
say "version: '$version'";
$clang_disposeString->call($version_cxstring);
