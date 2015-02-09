{--

(**) Calculate Euler's totient function phi(m).

Euler's so-called totient function phi(m) is defined as the number of
positive integers r (1 <= r < m) that are coprime to m.

Example: m = 10: r = 1,3,7,9; thus phi(m) = 4. Note the special case: phi(1) = 1.

Example:

* (totient-phi 10)
4

Example in Haskell:

* totient 10
4

--}

totient n = length $ filter (`coprime` n)  [1..n]

coprime a b | myGCD a b == 1 = True
            | otherwise      = False

myGCD a b | b == 0    = a
          | a < 0     = myGCD (-a) b
          | b < 0     = myGCD a (-b)
          | otherwise = myGCD b (a `mod` b)


