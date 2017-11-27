use v6;
use File::Temp;
use NativeCall;

# Reference:
# https://medium.com/learning-the-go-programming-language/calling-go-functions-from-other-languages-4c7d8bcc69bf
class Inline::Go {
    has $.code;

    #TODO use temp directory
    #our ($so-file-name, $so-file-handle) = tempfile( :suffix('.so') );
    our $so-file-name = './foo.so';

    method import-all {
        # Create a temporary go source file
        my ($go-file-name, $go-file-handle) = tempfile( :suffix('.go') );

        # Write provided go code into temporay file
        $go-file-handle.spurt($!code);

        # Build shared C library from go code
        my $output = qq:x/go build -o $so-file-name -buildmode=c-shared $go-file-name/;

        self.parse-go-functions-and-import-them;
    }

    #TODO import a specfic go function

    # method run( Str $go-code ) {
    #     # Create a temporary go source file
    #     my ($go-file-name, $go-file-handle) = tempfile( :suffix('.go') );
    # 
    #     # Write provided go code into temporay file
    #     $go-file-handle.spurt($go-code);
    # 
    #     # Build shared C library from go code
    #     my $output = qq:x/go build -o $so-file-name -buildmode=c-shared $go-file-name/;
    #     #TODO why is the output not showing...
    #     #TODO check exit code
    #     #say "output: " ~ $output;
    # }

    # multi method call( Str:D $func-name ) {
    #     use MONKEY-SEE-NO-EVAL;
    #     my $func = EVAL "sub foo is symbol('$func-name') is native('$so-file-name') \{ * \}";
    #     try {
    #         $func();
    #     }
    #     no MONKEY-SEE-NO-EVAL;
    # }

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
        my $results    = gather {
            for @parameters {
                #TODO support all go types
                my $parameter = $_.trim;
                if $parameter ~~ / (\w+) \s+ (int|float64)?/ {
                    my $parameter-name = $/[0];
                    my $parameter-type = $/[1];
                    take {
                        name => ~$parameter-name,
                        type => $parameter-type.defined ?? ~$parameter-type !! Nil
                    };
                }
            }
        };
    }

    method find-go-functions {
        my @functions = $!code.match( /'func' \s+ (\w+) \s* '(' (.*?) ')' \s+ (\w+)? /, :global);
        my @results = gather {
            for @functions {
                my $function-name = ~$_[0];
                my $signature     = ~$_[1];
                my $return-type   = $_[2].defined ?? ~$_[2] !! 'Nothing';
                my $parameters    = self.find-go-parameters($signature);

                take {
                    name        => $function-name,
                    parameters  => $parameters,
                    return-type => $return-type,
                }
                #say "Found go function: " ~ $function-name;
            }
        };
        @results;
    }

    # our sub _Add_Int32( int32 $a, int32 $b )
    #     returns int32
    #     is symbol( 'Add_Int32' )
    #     is native( './foo.so' )
    #     { * }

    method parse-go-functions-and-import-them {
        my @exports   = self.find-exported-go-functions;
        my @functions = self.find-go-functions;
        #TODO support more 'Go' to 'Perl 6' type mapping
        my %go-to-p6-type-map =
            "int"     => "int32",
            "float64" => "num64";
        #say "functions: " ~ @functions.perl;
        for @functions {
            my $func-name   = $_<name>.trim;
            my $parameters  = $_<parameters>;
            my $return-type = $_<return-type>;
            #say "Processing $func-name";
            #say "Parameters: $( @$parameters.perl )";
            my $signature   = @$parameters.map({
                my $name = $_<name>;
                my $type = $_<type>;
                # #TODO handle any type
                # #TODO handle implicit type
                my $p6-type = '';
                if $type.defined {
                    $p6-type = %go-to-p6-type-map{$type};
                }
                else {
                    warn "No type defined for '$name'";
                }
                "$p6-type \$$name";
            }).join(", ");

            use MONKEY-SEE-NO-EVAL;
            my $func-decl = "
                our sub _$func-name\( $signature )
                    returns $return-type
                    is symbol( '$func-name' )
                    is native( '$so-file-name' )
                    \{ * \}

                method $func-name ( $signature ) \{
                    _$func-name\(\);
                \}
            ";
            say $func-decl;
            my $func = EVAL $func-decl;
            say "function definition: '$( $func.perl )'";
            #$subs{ $func-name } = $func;
            no MONKEY-SEE-NO-EVAL;
        }

    }

    # multi method call-sub(Str $func-name) {
    #     say "Calling '$func-name'";
    #     $func-name();
    # }

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

my $o = Inline::Go.new( :code( $code ) );
#$o.import-all;
#say $subs;
#%$subs['Hello']();
#Inline::Go::Hello();
#'Hello'();
#$o.run($code);
#$o.call('Hello');
#$o.call('Hello(1,2)')
#$o.'Hello'();
#say ('Inline::Go::_Add_Int32')(1,2);
say $o.^methods;

#$o.call-sub('Hello');

#grammar Grammar::Go {
#    token TOP { [ <package> | <sub> ] }
#    rule TOP { }
#}
