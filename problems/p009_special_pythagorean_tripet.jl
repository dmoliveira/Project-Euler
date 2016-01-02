#!/usr/bin/env julia

# Parameters
N = 1000
solution = Union{}

# Solution
for a = 1:N, b = 1:N, c = 1:N
    a < b < c || continue
    if a^2 + b^2 == c^2 && a + b + c == N
        solution = (a, b, c)
        break
    end
end

a, b, c = solution
answer = a * b * c

# Answer
println("The special pythagorean tripet is $answer.")
