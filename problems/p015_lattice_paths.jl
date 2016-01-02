#!/usr/bin/env julia

# Parameters
const N = length(ARGS) > 0? parse(Int, ARGS[1]) : 20

# Solution
# Source: http://www.robertdickau.com/lattices.html
# Sorthest Path: (2n/n) http://www.robertdickau.com/manhattan.html
n = binomial(2N, N)

# Answer
println("The total combination is $n.")
