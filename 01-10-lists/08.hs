{--

(**) Eliminate consecutive duplicates of list elements.

If a list contains repeated elements they should be replaced with a
single copy of the element. The order of the elements should not be
changed.

Example:

* (compress '(a a a a b c c a a d e e e e))
(A B C A D E)

Example in Haskell:

> compress "aaaabccaadeeee"
"abcade"

--}

compress :: (Eq a) => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:xs) = if x == (head xs)
                  then compress xs
                  else x:(compress xs)

{--

-- official solution is really nice:
compress :: Eq a => [a] -> [a]
compress = map head . group

-- another official solution:
compress (x:ys@(y:_))
    | x == y    = compress ys
    | otherwise = x : compress ys

--}

