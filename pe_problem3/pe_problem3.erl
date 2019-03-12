% Largest prime factor
% The prime factors of 13195 are 5, 7, 13 and 29.
% What is the largest prime factor of the number 600851475143 ?
% https://projecteuler.net/problem=3
% Author: Joao Henrique Machado Silva
% Email: joaoh82@gmail.com
% Github: https://github.com/joaoh82
-module(pe_problem3).
-export([largest_prime_factor/1]).

largest_prime_factor(Num) ->
    max_factor(Num, 2, 2).

max_factor(Number, Factor, Max) when Factor > Number ->
    Max;
max_factor(Number, Factor, _) when (Number rem Factor) =:= 0 ->
    max_factor(trunc(Number/Factor), Factor, Factor);
max_factor(Number, Factor, Max) ->
    max_factor(Number, Factor + 1, Max).