use v6;
use File::Temp;
use NativeCall;

# Reference:
# https://medium.com/learning-the-go-programming-language/calling-go-functions-from-other-languages-4c7d8bcc69bf
class Inline::Go {
    my ($so-file-name, $so-file-handle) = tempfile( :suffix('.so') );

    method run( Str $go-code ) {
        # Create a temporary go source file
        my ($go-file-name, $go-file-handle) = tempfile( :suffix('.go') );

        # Write provided go code into temporay file
        $go-file-handle.spurt($go-code);

        # Build shared C library from go code
        my $output = qq:x/go build -o $so-file-name -buildmode=c-shared $go-file-name/;
        say "output: " ~ $output;
    }

    multi method call( Str $func-name ) {
        use MONKEY-SEE-NO-EVAL;
        my $func = EVAL "sub foo is symbol('$func-name') is native('$so-file-name') \{ * \}";
        try {
            $func();
        }
        no MONKEY-SEE-NO-EVAL;
    }

    # multi method call(Callable $go-function) {
    #     use MONKEY-SEE-NO-EVAL;
    #     my $func = EVAL "sub foo is symbol('$func-name') is native('$so-file-name') \{ * \}";
    #     try {
    #         $func();
    #     }
    #     no MONKEY-SEE-NO-EVAL;
    # }
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
    for i := 0; i < 5; i++ {
        fmt.Printf("%d: Hello from Go!\n", i)
    }
}

func main() {
}
';

my $o = Inline::Go.new;
$o.run($code);
$o.call('Hello');
#$o.call('Hello(1,2)')


#grammar Grammar::Go {
#    token TOP { [ <package> | <sub> ] }
#    rule TOP { }
#}
