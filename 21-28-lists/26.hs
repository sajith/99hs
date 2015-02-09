{--

(**) Generate the combinations of K distinct objects chosen from the N
elements of a list

In how many ways can a committee of 3 be chosen from a group of 12
people? We all know that there are C(12,3) = 220 possibilities (C(N,K)
denotes the well-known binomial coefficients). For pure
mathematicians, this result may be great. But we want to really
generate all the possibilities in a list.

Example:

* (combinations 3 '(a b c d e f))
((A B C) (A B D) (A B E) ... )

Example in Haskell:

> combinations 3 "abcdef"
["abc","abd","abe",...]

--}

-- TODO
combinations n xs | null xs  = [[]]
                  | n == 0   = [[]]
                  | n == 1    = combineOne xs
                  | otherwise = combineMany n xs

combineOne = map (:[])

-- TODO.  This is WRONG.
combineMany 0 _      = []
combineMany n (x:xs) = map (\s -> x:s) $ combineMany (n-1) xs

