{--

(**) Given a range of integers by its lower and upper limit, print a
list of all even numbers and their Goldbach composition.

In most cases, if an even number is written as the sum of two prime
numbers, one of them is very small. Very rarely, the primes are both
bigger than say 50. Try to find out how many such cases there are in
the range 2..3000.

Example:

* (goldbach-list 9 20)
10 = 3 + 7
12 = 5 + 7
14 = 3 + 11
16 = 3 + 13
18 = 5 + 13
20 = 3 + 17
* (goldbach-list 1 2000 50)
992 = 73 + 919
1382 = 61 + 1321
1856 = 67 + 1789
1928 = 61 + 1867

Example in Haskell:

*Exercises> goldbachList 9 20
[(3,7),(5,7),(3,11),(3,13),(5,13),(3,17)]
*Exercises> goldbachList' 4 2000 50
[(73,919),(61,1321),(67,1789),(61,1867)]

--}

-- TODO: what is goldbachList'?

goldbachList m n | n > m     = map goldbachOne $ filter even [m..n]
                 | otherwise = error "bad range"

goldbachOne n = head $ goldbachAll n
goldbachAll n = [(x,y) | x <- [2..n], y <- [2..n], x+y == n, isPrime x, isPrime y]
isPrime m = not (any (\n -> (m `mod` n) == 0) [2..(m `div` 2)])


{--

-- Solving the second question: how many goldbach pairs >50 out there
-- between 2 and 3000?  My solution is, unsurprisingly, quite slow...

-- Answer produced here is 94212.  Took 1m5.458s.

q2' m n = length $ concatMap goldbachAll' $ filter even [m..n]
goldbachAll' n = [(x,y) | x <- [2..n], y <- [2..n],
                          x + y == n,
                          isPrime x, isPrime y,
                          x > 50, y > 50 ]
q2 = q2' 2 3000

main = putStrLn $ show q2

--}
