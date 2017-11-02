
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

my msgpack_sbuffer $sbuf = msgpack_sbuffer.new;
msgpack_sbuffer_init($sbuf);
my msgpack_packer $pk = msgpack_packer.new;
msgpack_packer_init($pk, $sbuf);
say $sbuf.size;

msgpack_pack_true($pk);

say $sbuf.size;


# msgpack_pack_array(&pk, 3);
# msgpack_pack_int(&pk, 1);
# msgpack_pack_true(&pk);
# msgpack_pack_str(&pk, 7);
# msgpack_pack_str_body(&pk, "example", 7);


msgpack_sbuffer_destroy($sbuf);

my $o = '';
for 0..$sbuf.size-1 -> $i {
    $o ~= sprintf("%0X", 0xff +& $sbuf.data[$i]);
}
say "o = '$o'";

say "Done";
