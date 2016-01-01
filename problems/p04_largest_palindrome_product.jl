#!/usr/bin/env julia

# Parameters

# Solution
is_palindrome(x::AbstractString) =  x == x[sort(vcat(1:length(x)), rev=true)]

n = -1
x, y = 0, 0

for i=100:999, j=100:999
    i < j && continue
    v = i*j
    if is_palindrome(string(v)) && v > n
        n = v
        x, y = i, j
    end
end

# Answer
println("The largest palindrome product between 3 digit numbers is ($x x $y) = $n")
