#!/usr/bin/env julia

# Parameters
MAX_NUMBER = 1e10
N = 1:20
n = 2520

# Solution
while n < MAX_NUMBER
    s = 0
    for i = N
        n % i != 0 && break
        s += 1
    end
    s == last(N) && break
    n += 1
end

# Answer
println("The smallest multiple evenly divisible by $N is $n.")
