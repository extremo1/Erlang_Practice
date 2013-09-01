-module(mylists).
-export([sum/1, map/2, map2/2]).

sum([H | T]) -> H + sum(T);
sum([]) -> 0.

map(F, [H | T]) -> [F(H) | map(F, T)];
map(_, []) -> [].

map2(F, L) -> [F(X) || X <- L].
