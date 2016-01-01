#!/usr/bin/env julia

# Parameters
r = 1:20
N = 1e10
n = 2520

# Solution
while n < N 
    s = 0
    for i = first(r):last(r)
        n % i != 0 && break
        s += 1
    end
    s == last(r) && break
    n += 1
end

# Answer
println("The smallest multiple evenly divisible by $N is $n.")
