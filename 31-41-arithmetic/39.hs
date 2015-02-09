{--

(*) A list of prime numbers.

Given a range of integers by its lower and upper limit, construct a
list of all prime numbers in that range.

Example in Haskell:

P29> primesR 10 20
[11,13,17,19]

--}

primesR m n = filter isPrime [m..n]
isPrime m = not (any (\n -> (m `mod` n) == 0) [2..(m `div` 2)])

