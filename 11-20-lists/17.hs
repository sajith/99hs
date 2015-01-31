{--

(*) Split a list into two parts; the length of the first part is
given.

Do not use any predefined predicates.

Example:

* (split '(a b c d e f g h i k) 3)
( (A B C) (D E F G H I K))

Example in Haskell:

*Main> split "abcdefghik" 3
("abc", "defghik")

--}

split :: [a] -> Int -> ([a],[a])
split xs n = split' xs n []
  where
    split' [] _ _       = ([], [])
    split' xs 0 acc     = (acc, xs)
    split' (x:xs) n acc = split' xs (n - 1) (acc++[x])

{--

-- NOTE: this is not permitted:
split xs n = (take n xs, drop n xs)

--}
