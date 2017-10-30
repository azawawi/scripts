#!/usr/bin/env perl6

use v6;
use NativeCall;
use LibraryCheck;

constant LIB = 'msgpackc';

# ....
sub library {
	# Linux/Unix
	if library-exists(LIB, v2) {
		return sprintf('lib%s.so.2', LIB);
	} else {
		return sprintf('lib%s.so', LIB);
	}
}

# msgpack/version.h
sub msgpack_version          is native(&library) returns Str   { * }
sub msgpack_version_major    is native(&library) returns int32 { * }
sub msgpack_version_minor    is native(&library) returns int32 { * }
sub msgpack_version_revision is native(&library) returns int32 { * }

say "Version:  " ~ msgpack_version;
say "Minor:    " ~ msgpack_version_major;
say "Minor:    " ~ msgpack_version_minor;
say "Revision: " ~ msgpack_version_revision;

# vim: set tabstop=4:
