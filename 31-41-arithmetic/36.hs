{--

(**) Determine the prime factors of a given positive integer.

Construct a list containing the prime factors and their multiplicity.

Example:

* (prime-factors-mult 315)
((3 2) (5 1) (7 1))

Example in Haskell:

*Main> prime_factors_mult 315
[(3,2),(5,1),(7,1)]

--}

-- TODO: this is WRONG.  To solve this problem correctly, I will have
-- to redo problem 35 correctly.

primeFactorsMult n = zip a b
  where
    a = primeFactors n
    b = multiplicity n a

multiplicity n a = map (\m -> n `div` m) a

primeFactors :: (Integral a) => a -> [a]
primeFactors n = filter (isPrimeFactor n) [2..(n `div` 2)]

isPrimeFactor n m = isFactor n m && isPrime m
isFactor n m = n `mod` m == 0
isPrime m = not (any (\n -> (m `mod` n) == 0) [2..(m `div` 2)])


