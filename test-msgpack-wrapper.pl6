
use v6;
use NativeCall;
use LibraryCheck;

# ....
sub library {
	return './msgpack-wrapper.so';
}

# ....
sub libmsgpack {
    constant LIB = 'msgpackc';

	# Linux/Unix
	if library-exists(LIB, v2) {
		return sprintf('lib%s.so.2', LIB);
	} else {
		return sprintf('lib%s.so', LIB);
	}
}


class msgpack_sbuffer is repr('CStruct') {
    has size_t        $.size;
    has CArray[uint8] $.data;
    has size_t        $.alloc;
}

sub msgpack_sbuffer_init(msgpack_sbuffer $sbuf is rw)
    is native(&library)
    is symbol('wrapped_msgpack_sbuffer_init')
    { * }

sub msgpack_sbuffer_destroy(msgpack_sbuffer $sbuf is rw)
    is native(&library)
    is symbol('wrapped_msgpack_sbuffer_destroy')
    { * }

class msgpack_packer is repr('CStruct') {
	has Pointer $.data;
	has Pointer $.callback;
}

sub msgpack_packer_init(msgpack_packer $pk is rw, msgpack_sbuffer $sbuf is rw)
	is native(&library)
    is symbol('wrapped_msgpack_packer_init')
	{ * }

sub msgpack_pack_true(msgpack_packer $pk is rw)
    is native(&library)
    is symbol('wrapped_msgpack_pack_true')
    { * }

sub msgpack_pack_false(msgpack_packer $pk is rw)
    is native(&library)
    is symbol('wrapped_msgpack_pack_false')
    { * }

sub msgpack_pack_array(msgpack_packer $pk is rw, size_t $n)
    is native(&library)
    is symbol('wrapped_msgpack_pack_array')
    { * }

sub msgpack_pack_int(msgpack_packer $pk is rw, int32 $d)
    is native(&library)
    is symbol('wrapped_msgpack_pack_int')
    { * }

sub msgpack_pack_str(msgpack_packer $pk is rw, size_t $l)
    is native(&library)
    is symbol('wrapped_msgpack_pack_str')
    { * }

sub msgpack_pack_str_body(msgpack_packer $pk is rw, Str $b, size_t $l)
    is native(&library)
    is symbol('wrapped_msgpack_pack_str_body')
    { * }

my msgpack_sbuffer $sbuf = msgpack_sbuffer.new;
msgpack_sbuffer_init($sbuf);
my msgpack_packer $pk = msgpack_packer.new;
msgpack_packer_init($pk, $sbuf);
say $sbuf.size;

msgpack_pack_array($pk, 3);
msgpack_pack_int($pk, 1);
msgpack_pack_true($pk);
msgpack_pack_str($pk, 7);
msgpack_pack_str_body($pk, "example", 7);

say $sbuf.size;

my $values;
for 0..$sbuf.size-1 -> $i {
    $values.push: sprintf("%02X", 0xff +& $sbuf.data[$i]);
}
my $packed = $values.join(' ');
say "packed = '$packed'";

msgpack_sbuffer_destroy($sbuf);

say "Done";
