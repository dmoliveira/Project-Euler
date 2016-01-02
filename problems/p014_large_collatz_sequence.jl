#!/usr/bin/env julia

# Parameters
const MAX_NUMBER = 999_999
const START_NUMBER = 13

# Solution
even(n) = div(n, 2)
odd(n) = 3n + 1

function collatzseq(n, seq)
    n == 1 && return seq
    n = iseven(n)? even(n) : odd(n) 
    push!(seq, n)
    collatzseq(n, seq)
end

max_seq = []
for i=START_NUMBER:MAX_NUMBER
    seq = collatzseq(i, [i])
    max_seq = length(max_seq) < length(seq)? seq : max_seq
end

# Answer
println("The largest collatz sequence is $(length(max_seq)) ",
        "1st elem: $(max_seq[1]) : $max_seq")
