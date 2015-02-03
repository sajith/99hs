{--

Create a list containing all integers within a given range.

Example:

* (range 4 9)
(4 5 6 7 8 9)

Example in Haskell:

Prelude> range 4 9
[4,5,6,7,8,9]

--}

range i j | i > j     = Nothing
          | otherwise = Just [i..j]

