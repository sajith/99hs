{--

(**) Determine the prime factors of a given positive
integer. Construct a flat list containing the prime factors in
ascending order.

Example:

* (prime-factors 315)
(3 3 5 7)

Example in Haskell:

> primeFactors 315
[3, 3, 5, 7]

--}

-- TODO: not consistent with the above example.
-- TODO: learn prime factorization for reals.

primeFactors :: (Integral a) => a -> [a]
primeFactors n = filter (isPrimeFactor n) [2..(n `div` 2)]

isPrimeFactor n m = isFactor n m && isPrime m
isFactor n m = n `mod` m == 0
isPrime m = not (any (\n -> (m `mod` n) == 0) [2..(m `div` 2)])

