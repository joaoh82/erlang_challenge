% Sum square difference
% Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
% Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
% https://projecteuler.net/problem=6
% Author: Joao Henrique Machado Silva
% Email: joaoh82@gmail.com
% Github: https://github.com/joaoh82
-module(pe_problem6).
-export([sum_square_diff/1]).

sum_square_diff(Num) ->
    % Formula taken from https://cseweb.ucsd.edu/groups/tatami/kumo/exs/sum/
    Partial1 = Num * (Num+1) / 2,
    % Formula taken from http://mathforum.org/library/drmath/view/56920.html
    Partial2 = (Num * (Num+1) * (2*Num +1))/6,
    FinalResult = (Partial1*Partial1)-Partial2,
    FinalResult.