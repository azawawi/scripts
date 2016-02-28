It is currently marked as experimental as per a [#perl6 discussion](http://irclog.perlgeek.de/perl6/2016-02-28#i_12114511)

Design specification for `is cached` subroutine trait
http://design.perl6.org/S06.html#is_cached

Perl 6 documentation for `is cached` subroutine trait
http://doc.perl6.org/routine/is%20cached

Memoization (wikipedia)
https://en.wikipedia.org/wiki/Memoization

Here is an example for `is cached` for the sake of completeness
```Perl6
#!/usr/bin/env perl6

use v6;
use experimental :cached;

sub get-slowed-result(Int $n where $_ >= 0) is cached {
  sleep $n / 10;
  return 1 if $n <= 1;
  return get-slowed-result($n - 1) * $n;
}

say sprintf("get-slowed-result(%d) is %d", $_, get-slowed-result($_)) for 0..10;
```

I think I will begin working on an `is memoized` module with a cache eviction strategy (LRU)

Thanks for the idea :+1: 
