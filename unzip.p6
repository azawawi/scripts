#!/usr/bin/env perl6

use v6;

use Compress::Zlib;

# From https://pkware.cachefly.net/webdocs/casestudies/APPNOTE.TXT

my $file-name = "webdriver.xpi";
#my $file-name = "test.zip";
my $eocd-index = find-eocd-offset($file-name);
die "Cannot find EOCD header" if $eocd-index == -1;
say "eocd-index is " ~ $eocd-index;

my ($cd-index, $number-records) = find-cd-offset($file-name, $eocd-index);
say "cd-index is " ~ $cd-index;

my @cd-headers = read-cd-headers($file-name, $cd-index, $number-records);

#say @cd-headers.perl;
read-local-file-header($file-name, @cd-headers[0]<local-file-header-offset>, 
  @cd-headers[0]<compressed-size>);
  
#say "next offset must be at " ~ @cd-headers[1]<local-file-header-offset>;

exit;

sub read-cd-headers(Str $file-name, Int $offset, Int $number-records) {
  my $fh = $file-name.IO.open(:bin);

  $fh.seek($offset, 0);

  my @cd-headers;
  for 1..$number-records -> $i {
    my Buf $buffer = $fh.read(46);
    my ($signature, $version-made-by, $version-needed, $flag, $compression-method,
      $last-modified-time, $last-modified-date, $crc32, $compressed-size,
      $uncompressed-size, $file-name-length, $extra-file-name-length,
      $file-comment-length, $disk-number, $file-attributes, $extra-file-attributes,
      $local-file-header-offset) = $buffer.unpack("L S S S S S S L L L S S S S S L L");
      
    my $file-name-buf = $fh.read($file-name-length);
    
    say "extra-file-name-length = $extra-file-name-length";
    say "file-comment-length = $file-comment-length";
    $fh.seek($extra-file-name-length + $file-comment-length, 1);

    printf("signature = %08x\n", $signature);
    say "filename is " ~ $file-name-buf.unpack("A*");
    say "compression-method is " ~ $compression-method;
    say "compressed-size is " ~ $compressed-size;
    say "---";

    @cd-headers.push( {
      file-name                => $file-name-buf.unpack("A*"),
      local-file-header-offset => $local-file-header-offset,
      compressed-size          => $compressed-size,
    });
  }

  return @cd-headers;

  LEAVE {
    $fh.close if $fh.defined;
  }
}

sub find-cd-offset(Str $file-name, Int $eocd-offset) {
    my $fh = $file-name.IO.open(:bin);

    $fh.seek(-$eocd-offset, 2);

    my Buf $eocd-buf = $fh.read(22); 
    my ($signature, $number-disk, $disk-central-directory-on-disk, $number-central-directory-records-on-disk,
    $total-number-central-directory-records, $central-directory-size, $offset-central-directory, $comment-length) =
      $eocd-buf.unpack("L S S S S L L S");
      
    say $eocd-buf.unpack("L S S S S L L S").perl;
      
    printf("signature = %08x\n", $signature);
    say "size   = " ~ $central-directory-size;
    printf("offset = %08x\n", $offset-central-directory);
    say "number-central-directory-records-on-disk = $number-central-directory-records-on-disk";
    say "Comment length = " ~ $comment-length;
    say $disk-central-directory-on-disk;
    
    LEAVE {
      $fh.close if $fh.defined;
    }
    
    return ($offset-central-directory, $number-central-directory-records-on-disk);
}

# Find EOCD (end of central directory record)
sub find-eocd-offset(Str $file-name) {
  my $fh = $file-name.IO.open(:bin);

  # Find file size
  $fh.seek(0, 2);
  my $file-size = $fh.tell;
  
  say "File size is $file-size";
  
  for 0..$file-size-1 -> $i {
    $fh.seek(-$i, 2);
    
    my $bytes = $fh.read(4);
    
    # Find EOCD hexidecimal signature 50 4b 05 06
    if $bytes[0] == 0x50 && $bytes[1] == 0x4b && $bytes[2] == 0x05 && $bytes[3] == 0x06 {
      return $i;
    }
  }
  
LEAVE {
  $fh.close if $fh.defined;
}
  
  return -1;
}

sub read-local-file-header(Str $file-name, Int $offset, Int $output-file-compressed-size) {
  my $fh = $file-name.IO.open(:bin);

say "seeking to offset #$offset";
  $fh.seek($offset, 0);

  my Buf $local_file_header = $fh.read(30);
  my ($signature, $version, $general-purpose-bit-flag, $compression-method, 
      $last-modified-time, $last-modified-date, $crc32, $compressed-size, 
      $uncompressed-size, $file-name-length, $extra-field-length) =
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
  say "extra field length     = " ~ $extra-field-length;

  my Buf $file-name-buf = $fh.read($file-name-length);

  my $output-file-name = $file-name-buf.unpack("A*");
  say $output-file-name;

  $fh.seek($extra-field-length, 1);

  if $compression-method == 0x0 {
    # Not compressed
    my $original = $fh.read($output-file-compressed-size);
    "output.bin".IO.spurt($original, :bin);
  } elsif $compression-method == 0x08 {
    # Deflate using Zlib
    my $compressed = $fh.read($output-file-compressed-size);
    my $decompressor = Compress::Zlib::Stream.new(:deflate);
    my $original = $decompressor.inflate($compressed);
    "output".IO.mkdir;
    "output/$output-file-name".IO.spurt($original, :bin);

    CATCH {
      default {
        say $_;
      }
    }
  } else {
    die "Cannot handle compression method '$compression-method'";
  }
  
  say "offset is now at #" ~ $fh.tell;


  #my Buf $file-data-descriptor = $fh.read(16);
  #my ($file-data-descriptor-signature, $file-data-crc32, $file-compressed-size, $file-uncompressed-size) =
  #$file-data-descriptor.unpack("L L L L");
  #printf(
  #    "signature              = %08x\n", $file-data-descriptor-signature);
  #printf(
  #     "file crc32            = %08x\n", $file-data-crc32);
  #say "file compressed size   = " ~ $file-compressed-size;
  #say "file uncompressed size = " ~ $file-uncompressed-size;
  
  #say "offset is now at #" ~ $fh.tell;
  
  LEAVE {
    $fh.close if $fh.defined;
  }
}

