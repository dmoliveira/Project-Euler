#!/usr/bin/env julia

# Parameters
const HUNDRED = "hundred"
const THOUSAND = "thousand"
const AND = "and"
const TWENTY_NINETY = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
const TENS = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
const ONE_TEN = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]

# Solution

# 1 to 10
n = reduce(+, map(v -> length(v), ONE_TEN))

# 11 to 19
n += reduce(+, map(v -> length(v), TENS))

# 20 to 99
n += reduce(+, [length(i) for i in TWENTY_NINETY])
n += reduce(+, [length(i*j) for i in TWENTY_NINETY, j in ONE_TEN[1:end-1]])

# 100 to 999
n += reduce(+, [length(i*HUNDRED) for i in ONE_TEN[1:end-1]])
n += reduce(+, [length(l*HUNDRED*AND*i) for l in ONE_TEN[1:end-1], i in ONE_TEN])
n += reduce(+, [length(l*HUNDRED*AND*i) for l in ONE_TEN[1:end-1], i in TENS])
n += reduce(+, [length(l*HUNDRED*AND*i) for l in ONE_TEN[1:end-1], i in TWENTY_NINETY])
n += reduce(+, [length(l*HUNDRED*AND*i*j) for l in ONE_TEN[1:end-1], i in TWENTY_NINETY, j in ONE_TEN[1:end-1]])

# 1000
n += length(ONE_TEN[1]*THOUSAND)

# Answer
println("The total sum of number letters from 1 to 1000 is $n")
