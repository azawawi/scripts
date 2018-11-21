#!/usr/bin/env perl

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
$ffi->type( 'record(My::CXString)', 'CXString' );

# CINDEX_LINKAGE const char *clang_getCString(CXString string);
$ffi->attach( clang_getCString => ['CXString'] => 'string' );

# CINDEX_LINKAGE void clang_disposeString(CXString string);
$ffi->attach( clang_disposeString => ['CXString'] => 'void' );

# CINDEX_LINKAGE CXString clang_getClangVersion(void);
$ffi->attach( clang_getClangVersion => [] => 'CXString' );

# Print out libclang version...
my $version_cxstring = clang_getClangVersion();
my $version          = clang_getCString($version_cxstring);
say $version;
clang_disposeString($version_cxstring);
