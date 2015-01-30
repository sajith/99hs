{--

(**) Run-length encoding of a list (direct solution).

Implement the so-called run-length encoding data compression method
directly. I.e. don't explicitly create the sublists containing the
duplicates, as in problem 9, but only count them. As in problem P11,
simplify the result list by replacing the singleton lists (1 X) by X.

Example:

* (encode-direct '(a a a a b c c a a d e e e e))
((4 A) B (2 C) (2 A) D (4 E))

Example in Haskell:

P13> encodeDirect "aaaabccaadeeee"
[Multiple 4 'a',Single 'b',Multiple 2 'c',
 Multiple 2 'a',Single 'd',Multiple 4 'e']

--}

-- XXX: what exactly is the difference between problems 11 and 13?

import           Data.List (group)

data Encoded n a = Multiple n a | Single a deriving Show

encodeDirect xs = map encodeOne $ group xs

encodeOne xs = case length xs of
    1 -> Single (head xs)
    _ -> Multiple (length xs) (head xs)

