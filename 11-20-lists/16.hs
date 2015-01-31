{--

(**) Drop every N'th element from a list.

Example:

* (drop '(a b c d e f g h i k) 3)
(A B D E G H K)

Example in Haskell:

*Main> dropEvery "abcdefghik" 3
"abdeghk"

--}

dropEvery xs n = drop' xs n []
  where
    drop' [] _ acc = acc
    drop' xs n acc = acc ++ take (n-1) xs ++ drop' (drop n xs) n acc

{--

-- from wiki solutions:

-- this is clever:
dropEvery :: [a] -> Int -> [a]
dropEvery xs n = [ i | (i,c) <- ( zip xs [1,2..]), (mod c n) /= 0]

-- using guards:
dropEvery :: [a] -> Int -> [a]
dropEvery xs n
  | length xs < n = xs
  | otherwise     = take (n-1) xs ++ dropEvery (drop n xs) n

--}
