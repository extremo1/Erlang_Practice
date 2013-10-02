-module(abc).
-import(lists, [map/2]).
-export([f/1, a/2, b/1]).
-vsn(3232).

f(L) ->
	L1 = map(fun(X) -> 2 * X end, L),
	lists:sum(L1).

a(X, Y) -> c(X) + a(Y).
a(X) -> 2 * X.
b(X) -> X * X.
c(X) -> 3 * X.
