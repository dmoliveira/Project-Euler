#!/usr/bin/env julia

# Parameters
N = 1000

# Solution
multiple_3_5 = filter(n -> n % 3 == 0 || n % 5 == 0, vcat(1:N-1))
answer = sum(multiple_3_5)

# Answer
println("Sum of multiples of 3 or 5 between 1 and $N is $answer")
