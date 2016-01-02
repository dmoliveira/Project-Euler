#!/usr/bin/env julia

# Parameters
N = 1000

# Solution
n = sum([parse(Int, i) for i in string(BigInt(2)^N)])

# Answer
println("The sum is $n")
