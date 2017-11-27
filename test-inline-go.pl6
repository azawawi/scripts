use v6;
use File::Temp;
use NativeCall;

# Reference:
# https://medium.com/learning-the-go-programming-language/calling-go-functions-from-other-languages-4c7d8bcc69bf
class Inline::Go {
    has $.code;

    my ($so-file-name, $so-file-handle) = tempfile( :suffix('.so') );

    method import-all {
        self.parse-go-functions-and-import-them;
    }

    #TODO import a specfic go function

    method run( Str $go-code ) {
        # Create a temporary go source file
        my ($go-file-name, $go-file-handle) = tempfile( :suffix('.go') );

        # Write provided go code into temporay file
        $go-file-handle.spurt($go-code);

        # Build shared C library from go code
        my $output = qq:x/go build -o $so-file-name -buildmode=c-shared $go-file-name/;
        #TODO why is the output not showing...
        #TODO check exit code
        say "output: " ~ $output;
    }

    multi method call( Str:D $func-name ) {
        use MONKEY-SEE-NO-EVAL;
        my $func = EVAL "sub foo is symbol('$func-name') is native('$so-file-name') \{ * \}";
        try {
            $func();
        }
        no MONKEY-SEE-NO-EVAL;
    }

    method find-exported-go-functions {
        my @exports = $!code.match( / '//export' \s+ (\w+) /, :global );
        #for @exports {
            #say "Found exported go function: " ~ $_[0];
        #}
        @exports.map( { ~$_[0] } );
    }

    method find-go-parameters(Str:D $signature) {
        #say "Parsing signature: '$signature'";
        my @parameters = $signature.split(",");
        my @results    = gather {
            for @parameters {
                #TODO support all go types
                my $parameter = $_.trim;
                if $parameter ~~ / (\w+) \s+ (int|float64)?/ {
                    my $parameter-name = $/[0];
                    my $parameter-type = $/[1];
                    take %(
                        name => ~$parameter-name,
                        type => $parameter-type.defined ?? ~$parameter-type !! Nil
                    );
                }
            }
        };
        @results;
    }

    method find-go-functions {
        my @functions = $!code.match( /'func' \s+ (\w+) \s* '(' (.*?) ')' \s+ (\w+)? /, :global);
        my @results = gather {
            for @functions {
                my $function-name = ~$_[0];
                my $signature     = ~$_[1];
                my $return-type   = $_[2].defined ?? ~$_[2] !! Nil;
                my @parameters    = self.find-go-parameters($signature);

                take {
                    name        => $function-name,
                    parameters  => @parameters,
                    return-type => $return-type,
                }
                #say "Found go function: " ~ $function-name;
            }
        };
        @results;
    }

    method parse-go-functions-and-import-them {
        my @exports   = self.find-exported-go-functions;
        my @functions = self.find-go-functions;
        #TODO support more 'Go' to 'Perl 6' type mapping
        my %go-to-p6-type-map =
            "int"     => "int32",
            "float64" => "num64";
        say "functions: " ~ @functions.perl;
        for @functions {
            my $func-name   = $_<name>;
            my @parameters  = $_<parameters>;
            my $return-type = $_<return-type>;
            my $signature   = @parameters.map({
                say "zzz: " ~ $_.perl;
                my $name = $_<name>;
                my $type = $_<type>;
                say $name.perl;
                say $type.perl;
                # #TODO handle any type
                # #TODO handle implicit type
                my $p6-type = '';
                # if $type.defined {
                #     $p6-type = %go-to-p6-type-map{$type};
                # } else {
                #     warn "No type defined for '$name'";
                # }
                #"$p6-type $name";
                "";
            }).join(",");

            use MONKEY-SEE-NO-EVAL;
            my $func = "our sub foo($signature) is symbol('$func-name') is native('$so-file-name') \{ * \}";
            say "function definition: '$func'";
            # try {
            #     $func();
            # }
            no MONKEY-SEE-NO-EVAL;
        }
    }

}

#use Inline::Go;

my $code = '
package main

import "C"
import "fmt"

//export Add_Int32
func Add_Int32(a int, b int) int {
    return a + b
}

//export Hello
func Hello() {
    fmt.Println("Hello from Go!")
}

func main() {
}
';

my $o = Inline::Go.new(:code($code));
$o.import-all;
#$o.run($code);
#$o.call('Hello');
#$o.call('Hello(1,2)')


#grammar Grammar::Go {
#    token TOP { [ <package> | <sub> ] }
#    rule TOP { }
#}
