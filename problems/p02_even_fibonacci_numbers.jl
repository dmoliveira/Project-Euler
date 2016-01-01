#!/usr/bin/env julia

# Parameters
N = 4_000_000

# Solution
total = 2
stored_numbers = [1, 2]
index = 1
n = -1

while n <= N
    n = sum(stored_numbers)
    stored_numbers[index] = n 
    total += n % 2 == 0? n : 0
    index = index % 2 + 1
end


# Answer
println("The sum of even fibonacci numbers from 1 to 4.000.000 is $total")
