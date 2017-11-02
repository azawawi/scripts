#!/usr/bin/env perl6

use v6;
use Data::MessagePack;

sub test() {
    constant SIZE = 100_000; #;_000_000;
    my @data     = 1 xx SIZE;
    my $packed   = Data::MessagePack::pack( @data );
    my $unpacked = Data::MessagePack::unpack( $packed );
}

for 1..10 -> $i {
    say $i;
	test()
}

# vim: set ts=4 sw=4:

