#!/usr/bin/env julia

# Parameters
N = 600_851_475_143

# Solution
largest_prime_factor = sort(collect(keys(factor(N))))[end]

# Answer
println("The largest prime factor for $N is $largest_prime_factor")
