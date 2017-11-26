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

say "Add_Int32(1, 2)   = " ~ Add_Int32(1, 2);
say "Add_Float64(1, 2) = " ~ Add_Float64(1.1.Num, 2.2.Num);
