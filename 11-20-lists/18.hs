{--

(**) Extract a slice from a list.

Given two indices, i and k, the slice is the list containing the
elements between the i'th and k'th element of the original list (both
limits included). Start counting the elements with 1.

Example:

* (slice '(a b c d e f g h i k) 3 7)
(C D E F G)

Example in Haskell:

*Main> slice ['a','b','c','d','e','f','g','h','i','k'] 3 7
"cdefg"

--}

slice :: Eq a => [a] -> Int -> Int -> [a]
slice xs i k
    | xs == [] || i > k || i < 0 || k < 0 = []
    | otherwise = map (\n -> xs !! n) [(i-1)..(k-1)]

{--

-- NOTE: this is not permitted

slice :: [a] -> Int -> Int -> [a]
slice xs i k = drop (i-1) $ take k xs

--}
