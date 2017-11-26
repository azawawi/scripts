use v6;

use NativeCall;

sub library {
    return './test.so'
}

sub Add_Int32(int32, int32)
    returns int32
    is native(&library)
    { * }

sub Add_Float64(num64, num64)
    returns num64 
    is native(&library)
    { * }

# say "Add_Int32(1, 2)   = " ~ Add_Int32(1, 2);
# say "Add_Float64(1, 2) = " ~ Add_Float64(1.1.Num, 2.2.Num);


use File::Temp;

class Inline::Go {
    my ($so-file-name, $so-file-handle) = tempfile( :suffix('.so') );

    method run( Str $go-code ) {
        my ($go-file-name, $go-file-handle) = tempfile( :suffix('.go') );

        # Write provided go code
        $go-file-handle.spurt($go-code);

        # Build shared C library from go code
        my $output = qq:x/go build -o $so-file-name -buildmode=c-shared $go-file-name/;
        say "output: " ~ $output;
    }

    method call(Str $func-name) {
        use MONKEY-SEE-NO-EVAL;
        my $func = EVAL "sub foo is symbol('$func-name') is native('$so-file-name') \{ * \}";
        $func()
    }
}

#use Inline::Go;

my $code = '
package main

import "C"
import "fmt"

//export Add_Int32
func Add_Int32(a, b int) int {
	return a + b
}

//export Hello
func Hello() {
    fmt.Println("Hello from Go!")
}

func main() {
}
';

my $o = Inline::Go.new;
$o.run($code);
$o.call('Hello');
