% Multiples of 3 and 5
% If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
% Find the sum of all the multiples of 3 or 5 below 1000.
% https://projecteuler.net/problem=1
% Author: Joao Henrique Machado Silva
% Email: joaoh82@gmail.com
% Github: https://github.com/joaoh82
-module (pe_problem1).
-export([multiple_sum/1]).

multiple_sum(Num) ->
    sum(Num-1, 0).

sum(0, Acc) ->
    Acc;
sum(N, Acc) ->
    if
        ((N rem 5) =:= 0) -> sum(N-1, Acc+N);
        ((N rem 3) =:= 0) -> sum(N-1, Acc+N);
            
        true -> sum((N-1), Acc)    
    end.