{--

(**) Determine whether a given integer number is prime.

Example:

* (is-prime 7)
T

Example in Haskell:

P31> isPrime 7
True

--}

isPrime :: Int -> Bool
isPrime n = all (\x -> n `mod` x /= 0) [2..n-1]

