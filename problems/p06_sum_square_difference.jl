#!/usr/bin/env julia

# Parameters
N = 100

# Solution
squared_sum = sum(vcat(1:N) .^ 2)
sum_squared = sum(vcat(1:N))^2

answer =  sum_squared - squared_sum

# Answer
println("The sum squared difference is $answer")
