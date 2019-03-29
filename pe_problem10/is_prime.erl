-module(is_prime).
-export([is_prime/1]).

is_prime(N) when N < 2 -> false;
is_prime(N) when N rem 1 =:= 0 -> is_prime(N, 2).

is_prime(N, M) when N =:= M -> true;
is_prime(N, M) when N rem M =:= 0 -> false;
is_prime(N, M) -> is_prime(N, M+1).
