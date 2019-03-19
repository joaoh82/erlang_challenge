% 10001st prime
% By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
% What is the 10 001st prime number?
% https://projecteuler.net/problem=7
% Author: Joao Henrique Machado Silva
% Email: joaoh82@gmail.com
% Github: https://github.com/joaoh82
-module(pe_problem7).
-export([nth_prime/1]).

nth_prime(Th) ->
    calculate(Th, 2, 1).

calculate(Th, N, Count) when Th =:= Count -> 
    IsNPrime = is_prime:is_prime(N),
    if 
        IsNPrime =:= true ->
            N;
        IsNPrime =:= false ->
            calculate(Th, N+1, Count)
    end;
calculate(Th, N, Count) -> 
    IsNPrime = is_prime:is_prime(N),
    if
        IsNPrime =:= true ->
            calculate(Th, N+1, Count+1);
        IsNPrime =:= false ->
            calculate(Th, N+1, Count)
    end.
    
% Example:
% nth_prime(10) -> 
%     2, 3, 5, 7, 11, 13, 17, 19, 23, 29
%     = 29