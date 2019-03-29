% Summation of Primes
% The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17
% Find the sum of all primes below two million.
% https://projecteuler.net/problem=10
% Answer: 
% Author: Joao Henrique Machado Silva
% Email: joaoh82@gmail.com
% Github: https://github.com/joaoh82
-module(pe_problem10).
-export([sum_primes_below/1]).

% Not the most performant way, but it does the job.
sum_primes_below(N) ->
    N1 = N div 4,
    N2 = N div 4,
    N3 = N div 4,
    N4 = N div 4,
    Primes1 = [X || X <- lists:seq(1, N1), is_prime:is_prime(X)],
    P1 = lists:sum(Primes1),
    Primes2 = [X || X <- lists:seq(1, N2), is_prime:is_prime(X)],
    P2 = lists:sum(Primes2),
    Primes3 = [X || X <- lists:seq(1, N3), is_prime:is_prime(X)],
    P3 = lists:sum(Primes3),
    Primes4 = [X || X <- lists:seq(1, N4), is_prime:is_prime(X)],
    P4 = lists:sum(Primes4),
    P1+P2+P3+P4.  

% Next question: How to optimize this?