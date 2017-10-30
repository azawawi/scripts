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

=begin TODO
msgpack_object_print
msgpack_pack_object
msgpack_unpack
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

# msgpack/version.h
sub msgpack_version          is native(&library) returns Str   { * }
sub msgpack_version_major    is native(&library) returns int32 { * }
sub msgpack_version_minor    is native(&library) returns int32 { * }
sub msgpack_version_revision is native(&library) returns int32 { * }

class msgpack_zone is repr('CStruct') {
	has int32 $something; #TODO implement msgpack_zone
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
	
sub msgpack_unpacker_expand_buffer(Pointer[msgpack_unpacker] $mpac, size_t $size)
	is native(&library)
	returns bool
	{ * }

sub msgpack_unpacker_release_zone(Pointer[msgpack_unpacker] $mpac)
	is native(&library)
	returns Pointer[msgpack_zone]
	{ * }

sub msgpack_unpacker_reset_zone(Pointer[msgpack_unpacker] $mpac)
	is native(&library)
	{ * }

sub msgpack_unpacker_reset(Pointer[msgpack_unpacker] $mpac)
	is native(&library)
	{ * }

enum msgpack_unpack_return <
	MSGPACK_UNPACK_SUCCESS,
	MSGPACK_UNPACK_EXTRA_BYTES,
	MSGPACK_UNPACK_CONTINUE,
	MSGPACK_UNPACK_PARSE_ERROR,
	MSGPACK_UNPACK_NOMEM_ERROR
>;

class msgpack_unpacked is repr('CStruct') {
	has int32 $something;
	#TODO msgpack_zone * 	zone
 	#TODO msgpack_object 	data
}

sub msgpack_unpack_next(
		Pointer[msgpack_unpacked] $result, Str $data, size_t $len,
		Pointer[size_t] $off
	)
	is native(&library)
	returns msgpack_unpack_return
	{ * }

sub msgpack_unpacker_next(Pointer[msgpack_unpacker] $mpac, Pointer[msgpack_unpacked] $pac)
	is native(&library)
	returns msgpack_unpack_return
	{ * }

sub msgpack_unpacker_flush_zone(Pointer[msgpack_unpacker] $mpac)
	is native(&library)
	returns bool
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
