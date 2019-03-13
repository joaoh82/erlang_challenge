% Largest palindrome product
% A palindromic number reads the same both ways. 
% The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
% Find the largest palindrome made from the product of two 3-digit numbers.
% https://projecteuler.net/problem=4
% Author: Joao Henrique Machado Silva
% Email: joaoh82@gmail.com
% Github: https://github.com/joaoh82
-module(pe_problem4).
-export([largest_palindrome/0]).

is_palindrome(Num) when is_integer(Num) -> 
    is_palindrome(integer_to_list(Num));
is_palindrome(Nlist) ->
    Nlist =:= lists:reverse(Nlist).

largest_palindrome() -> 
    Palindrome = [X*Y || X <- lists:seq(100, 999), Y <- lists:seq(100, 999), is_palindrome(X*Y)],
    lists:max(Palindrome).