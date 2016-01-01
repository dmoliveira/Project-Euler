#!/usr/bin/env julia

# Parameters
N = 2_000_000

# Solution
s = 0
for n=1:(N-1)
    s += isprime(n)? n : 0
end

# Answer
println("The summation of primes is $s.")
