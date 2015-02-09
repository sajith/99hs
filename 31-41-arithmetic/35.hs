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

-- TODO: learn prime factorization, revisit.
primeFactors :: (Integral a) => a -> [a]
primeFactors n = filter (\m -> isPrimeFactor n m) [2..(n `div` 2)]

isPrimeFactor n m =
    if isFactor n m
    then if isPrime m
         then True
         else False
    else False

isFactor n m = n `mod` m == 0

isPrime m =
    if ((length $ filter (\n -> (m `mod` n) == 0) [2..(m `div` 2)]) == 0)
    then True
    else False

