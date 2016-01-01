#!/usr/bin/env julia

# Parameters
N = length(ARGS) > 0 ? parse(Int, ARGS[1]) : 600_851_475_143

# Solution
largest_prime_factor = -1
x = N-1
while x > 1
    if N % x == 0 && isprime(x) 
        largest_prime_factor = x
        break
    end
    x -= 1
end

# Answer
println("The largest prime factor for $N is $largest_prime_factor")
