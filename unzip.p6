#!/usr/bin/env perl6

use v6;

# From https://pkware.cachefly.net/webdocs/casestudies/APPNOTE.TXT

my $eocd-index = find-eocd-offset;
say "Found EOCD at $eocd-index";


# Find EOCD (end of central directory record)
sub find-eocd-offset {
  my $fh = "webdriver.xpi".IO.open(:bin);

  # Find file size
  $fh.seek(0, 2);
  my $file-size = $fh.tell;
  
  say "File size is $file-size";
  
  for 0..$file-size-1 -> $i {
    $fh.seek(-$i, 2);
    
    my $bytes = $fh.read(4);
    
    # Find EOCD hexidecimal signature 06 05 4b 50
    if $bytes[0] == 0x50 && $bytes[1] == 0x4b && $bytes[2] == 0x05 && $bytes[3] == 0x06 {
      return $i;
    }
  }
  
LEAVE {
  say "Closing";
  $fh.close if $fh.defined;
}
  
  return -1;
}

exit;

my $fh = "webdriver.xpi".IO.open(:bin);

my Buf $local_file_header = $fh.read(30);
my ($signature, $version, $general-purpose-bit-flag, $compression-method, 
    $last-modified-time, $last-modified-date, $crc32, $compressed-size, 
    $uncompressed-size, $file-name-length, $extra-file-name-length) =
  $local_file_header.unpack("L S S S S S L L L S S");

printf(
    "signature              = %08x\n", $signature);
say "version                = " ~ $version;
say "flag                   = " ~ $general-purpose-bit-flag;
say "method                 = " ~ $compression-method;
say "last-modified-time     = " ~ $last-modified-time;
say "last-modified-date     = " ~ $last-modified-date;
say "crc 32                 = " ~ $crc32;
say "compressed size        = " ~ $compressed-size; 
say "uncompressed size      = " ~ $uncompressed-size;
say "file name length       = " ~ $file-name-length;
say "extra file name length = " ~ $extra-file-name-length;

my Buf $file-name-buf = $fh.read($file-name-length);

say $file-name-buf.unpack("A*");

my Buf $idk = $fh.read($extra-file-name-length);
#say $idk.unpack("A*");

my Buf $file-data-descriptor = $fh.read(12);

my ($file-data-crc32, $file-compressed-size, $file-uncompressed-size) =
  $file-data-descriptor.unpack("L L L");
  
printf(
     "file crc32            = %08x\n", $file-data-crc32);
say "file compressed size   = " ~ $file-compressed-size;
say "file uncompressed size = " ~ $file-uncompressed-size;
