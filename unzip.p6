#!/usr/bin/env perl6

use v6;

=begin pod
    local file header signature     4 bytes  (0x04034b50)
    version needed to extract       2 bytes
    general purpose bit flag        2 bytes
    compression method              2 bytes
    last mod file time              2 bytes
    last mod file date              2 bytes
    crc-32                          4 bytes
    compressed size                 4 bytes
    uncompressed size               4 bytes
    file name length                2 bytes
    xtra field length               2 bytes
    file name (variable size)
    extra field (variable size)
=end pod

my $fh = "webdriver.xpi".IO.open(:bin);
my Buf $local_file_header = $fh.read(30);
my ($signature, $version, $general-purpose-bit-flag, $compression-method, 
    $last-modified-time, $last-modified-date, $crc32, $compressed-size, 
    $uncompressed-size, $file-name-length, $extra-file-name-length) =
  $local_file_header.unpack("L S S S S S L L L S S");

printf("signature: %08x\n", $signature);
say "version: " ~ $version;
say "flag: "   ~ $general-purpose-bit-flag;
say "method: " ~ $compression-method;
say "last-modified-time: " ~ $last-modified-time;
say "last-modified-date: " ~ $last-modified-date;
say "crc 32: " ~ $crc32;
say "compressed size: " ~ $compressed-size; 
say "uncompressed size: " ~ $uncompressed-size;
say "file name length: " ~ $file-name-length;
say "extra file name length: " ~ $extra-file-name-length;

my Buf $file-name-buf = $fh.read($file-name-length);

say $file-name-buf.unpack("A*");
