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
msgpack_unpacker_execute
msgpack_unpacker_expand_buffer
msgpack_unpacker_flush_zone
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

class msgpack_zone is repr('CStruct') {
	has int $something; #TODO implement msgpack_zone
}

class msgpack_unpacker is repr('CStruct') {
	has CArray[int8]          $buffer;
	has size_t       		  $used;
	has size_t 		 		  $free;
 	has size_t                $off;
	has size_t 		 		  $parsed;
 	has Pointer[msgpack_zone] $z;
 	has size_t 				  $initial_buffer_size;
 	has Pointer 		      $ctx;
}

class msgpack_object is repr('CStruct') {
	has int32 $something;
	#TODO msgpack_object_type 	type
 	#TODO msgpack_object_union 	via
}

sub msgpack_unpacker_init(Pointer[msgpack_unpacker] $mpac, size_t $initial_buffer_size)
	is native(&library)
	returns bool
	{ * }

sub msgpack_unpacker_new(size_t $initial_buffer_size)
	is native(&library)
	returns Pointer[msgpack_unpacker]
	{ * }

sub msgpack_unpacker_destroy(Pointer[msgpack_unpacker] $mpac)
	is native(&library)
	{ * }

sub msgpack_unpacker_free(Pointer[msgpack_unpacker] $mpac)
	is native(&library)
	{ * }

sub msgpack_unpacker_execute(Pointer[msgpack_unpacker] $mpac)
	is native(&library)
	returns int32
	{ * }

sub msgpack_unpacker_data(Pointer[msgpack_unpacker] $mpac)
	is native(&library)
	returns msgpack_object
	{ * }

#msgpack_unpacker_init(Pointer[msgpack_unpacker].new, 0);
#my $o = msgpack_unpacker_new(10);
#msgpack_unpacker_destroy($o);
#msgpack_unpacker_free($o);


say "Version:  " ~ msgpack_version;
say "Minor:    " ~ msgpack_version_major;
say "Minor:    " ~ msgpack_version_minor;
say "Revision: " ~ msgpack_version_revision;

# vim: set tabstop=4:
