{--

(**) Replicate the elements of a list a given number of times.

Example:

* (repli '(a b c) 3)
(A A A B B B C C C)

Example in Haskell:

> repli "abc" 3
"aaabbbccc"

--}

repli xs n = concatMap (replicate n) xs
