#!/usr/bin/env perl6

use v6;

use NativeCall;

constant LIB = 'libzip.so';

#define ZIP_CREATE           1
#define ZIP_EXCL             2
#define ZIP_CHECKCONS        4

# Create the archive if it does not exist.
constant ZIP_CREATE = 1;

# Error if archive already exists.
constant ZIP_EXCL = 2;

#Perform additional stricter consistency checks on the archive, and error if they fail.
constant ZIP_CHECKCONS = 4;

sub zip_open(Str $path, uint32 $flags, Pointer $errorp) returns Pointer is native(LIB) { }

sub zip_close(Pointer $archive) returns uint32 is native(LIB) { }

sub MAIN() {
  my $errorp;
  my $handle = zip_open("test.zip", ZIP_CREATE, $errorp);
  my $ret = zip_close($handle);
  say $ret;
}

=begin pod

=head1 INSTALLATION

    sudo apt-get install libzip-dev

=head1 HACKING

    panda install App::GPTrixie
    gptrixie --all /usr/include/zip.h > zip-generated.pl6
    atom /usr/include/zip.h

=head2 zip_open

zip_t* zip_open(const char *path, int flags, int *errorp);

L<http://www.nih.at/libzip/zip_open.html>

=head2 zip_close

int zip_close(zip_t *archive);

L<http://www.nih.at/libzip/zip_close.html>

=head2 SEE ALSO

See L<libzip|http://www.nih.at/libzip/libzip.html>

=end pod
