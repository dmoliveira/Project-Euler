#!/usr/bin/env julia

# Parameters
N = 500

# Solution
ndiv(x) = reduce((x1, x2) -> x1 * x2, collect(values(factor(x))) + 1)

n, s = 2, 3
while ndiv(s) < N
    n += 1
    s += n
end

# Answer
println("The highly divisible triangular number is $n ($s).")
