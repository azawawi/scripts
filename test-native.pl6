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

=begin TODO
msgpack_object_print
msgpack_pack_object
msgpack_unpack
msgpack_unpacker_data
msgpack_unpacker_destroy
msgpack_unpacker_execute
msgpack_unpacker_expand_buffer
msgpack_unpacker_flush_zone
msgpack_unpacker_free
msgpack_unpacker_init
msgpack_unpacker_new
msgpack_unpacker_next
msgpack_unpacker_release_zone
msgpack_unpacker_reset
msgpack_unpacker_reset_zone
msgpack_unpack_next
msgpack_vrefbuffer_append_copy
msgpack_vrefbuffer_append_ref
msgpack_vrefbuffer_clear
msgpack_vrefbuffer_destroy
msgpack_vrefbuffer_init
msgpack_vrefbuffer_migrate
msgpack_zone_clear
msgpack_zone_destroy
msgpack_zone_free
msgpack_zone_init
msgpack_zone_is_empty
msgpack_zone_malloc_expand
msgpack_zone_new
msgpack_zone_push_finalizer_expand
=end TODO

say "Version:  " ~ msgpack_version;
say "Minor:    " ~ msgpack_version_major;
say "Minor:    " ~ msgpack_version_minor;
say "Revision: " ~ msgpack_version_revision;

# vim: set tabstop=4:
