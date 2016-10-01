-module(factorial).
-export([get_result/1,check/1]).

%% using lists:foldl function
check(N) ->
  lists:foldl(fun(X,Sum)-> X*Sum end,0,lists:seq(1,N)).

%% using function recursion
get_result(0) ->
  1;
get_result(1) ->
  1;
get_result(N) when (N >= 0) ->
  N*get_result(N-1);
get_result(_N) ->
  io:format("invalied Numeber").
