-module(attrs).
-vsn(1234).
-author(example).
-purpose("example of attributes").
-export([fac/1]).

fac(1) -> 1;
fac(N) -> N * fac(N - 1).
