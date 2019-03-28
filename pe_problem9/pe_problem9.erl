% Special Pythagorean triplet
% A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
% a^2 + b^2 = c^2
% For example: 3^2 + 4^2 = 5^2
% There exists exactly on Pythagorean triplet for which a + b + c = 1000 
% Find the product of a*b*c.
% https://projecteuler.net/problem=9
% Answer: 31875000
% Author: Joao Henrique Machado Silva
% Email: joaoh82@gmail.com
% Github: https://github.com/joaoh82
-module(pe_problem9).
-export([special_pyhtagorean_triplet/1]).

special_pyhtagorean_triplet(Sum) ->
    Alist = lists:seq(1, 332),
    Blist = lists:seq(2, 666),
    Clist = lists:seq(333, 997),
    [{P, _A, _B, _C}] = [{A*B*C, A,B,C} || A <- Alist, B <- Blist, C <-Clist, check_numbers_orders(A,B,C), check_sum(A,B,C,Sum), check_pythagorean_tryplet(A,B,C)],
    P.

check_numbers_orders(A,B,C) ->
    Comparison1 = A < B,
    Comparison2 = B < C,
    Comparison1 and Comparison2.

check_sum(A,B,C,Sum) ->
    A + B + C =:= Sum.

check_pythagorean_tryplet(A,B,C) ->
    A*A + B*B =:= C*C.