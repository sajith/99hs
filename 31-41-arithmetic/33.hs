{--

(*) Determine whether two positive integer numbers are coprime. Two
numbers are coprime if their greatest common divisor equals 1.

Example:

* (coprime 35 64)
T

Example in Haskell:

* coprime 35 64
True

--}

coprime a b | myGCD a b == 1 = True
            | otherwise      = False

myGCD a b | b == 0    = a
          | a < 0     = myGCD (-a) b
          | b < 0     = myGCD a (-b)
          | otherwise = myGCD b (a `mod` b)


