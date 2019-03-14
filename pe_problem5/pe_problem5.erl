% Smallest multiple
% 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
% What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20? (smallest_multiple)
% I also developed a function for the example in the first sentence. (smallest_number)
% https://projecteuler.net/problem=5
% Author: Joao Henrique Machado Silva
% Email: joaoh82@gmail.com
% Github: https://github.com/joaoh82
-module(pe_problem5).
-export ([smallest_number/0]).
-export ([smallest_multiple/0]).

smallest_number() ->
    calculate_smallest_number(1).

calculate_smallest_number(N) ->
    R1 = N rem 1 == 0,
    R2 = N rem 2 == 0,
    R3 = N rem 3 == 0,
    R4 = N rem 4 == 0,
    R5 = N rem 5 == 0,
    R6 = N rem 6 == 0,
    R7 = N rem 7 == 0,
    R8 = N rem 8 == 0,
    R9 = N rem 9 == 0,
    R10 = N rem 10 == 0,

    Result = R1 and R2 and R3 and R4 and R5 and R6 and R7 and R8 and R9 and R10,

    if
        Result == true -> N;
        true -> calculate_smallest_number(N+1)
    end.

smallest_multiple() ->
        calculate_smallest_multiple(20, 20).

calculate_smallest_multiple(N, Add) ->
        R1 = N rem 1 == 0, % here just for show, will always be true
        R2 = N rem 2 == 0,
        R3 = N rem 3 == 0,
        R4 = N rem 4 == 0,
        R5 = N rem 5 == 0,
        R6 = N rem 6 == 0,
        R7 = N rem 7 == 0,
        R8 = N rem 8 == 0,
        R9 = N rem 9 == 0,
        R10 = N rem 10 == 0,
        R11 = N rem 11 == 0,
        R12 = N rem 12 == 0,
        R13 = N rem 13 == 0,
        R14 = N rem 14 == 0,
        R15 = N rem 15 == 0,
        R16 = N rem 16 == 0,
        R17 = N rem 17 == 0,
        R18 = N rem 18 == 0,
        R19 = N rem 19 == 0,
        R20 = N rem 20 == 0,
    
        Result_a = R1 and R2 and R3 and R4 and R5 and R6 and R7 and R8 and R9 and R10,
        Result_b = R11 and R12 and R13 and R14 and R15 and R16 and R17 and R18 and R19 and R20,
        Result = Result_a and Result_b,
    
        if
            Result == true -> N;
            true -> calculate_smallest_multiple(N+Add, Add)
        end.