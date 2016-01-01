#!/usr/bin/env julia

# Parameters
N = 10_001

function last_prime(n)

    i, j = 0, 2
    last_prime = -1

    while true
        if isprime(j)
            last_prime = j
            i += 1
            i == n && break
        end
        j += 1
    end

    return last_prime
end

# Solution
n = last_prime(N)

# Answer
println("The 10001st prime is $n")
