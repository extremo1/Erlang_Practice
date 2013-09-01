-module(shop2).
-export([total/1, total2/1]).
-import(mylists, [map2/2, sum/1]).

total(L) -> sum(map2(fun({What, N}) -> shop:cost(What) * N end, L)).

total2(L) -> sum([shop:cost(What) * N || {What, N} <- L]).
