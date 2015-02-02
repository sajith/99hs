{--

(**) Rotate a list N places to the left.

Hint: Use the predefined functions length and (++).

Examples:

* (rotate '(a b c d e f g h) 3)
(D E F G H A B C)

* (rotate '(a b c d e f g h) -2)
(G H A B C D E F)

Examples in Haskell:

*Main> rotate ['a','b','c','d','e','f','g','h'] 3
"defghabc"

*Main> rotate ['a','b','c','d','e','f','g','h'] (-2)
"ghabcdef"

--}

rotate xs n
    | null xs   = xs
    | n < 0     = rotateL xs (-n)
    | otherwise = rotateR xs n

rotateL xs 0 = xs
rotateL xs n = rotateL (last xs : init xs) (n - 1)

rotateR xs 0     = xs
rotateR (x:ys) n = rotateR (ys ++ [x]) (n-1)

