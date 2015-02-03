{--

Insert an element at a given position into a list.

Example:

* (insert-at 'alfa '(a b c d) 2)
(A ALFA B C D)

Example in Haskell:

P21> insertAt 'X' "abcd" 2
"aXbcd"

--}

insertAt x xs n | n >= 1 = Just $ take (n-1) xs ++ [x] ++ drop (n-1) xs
                | n < 1  = Nothing

