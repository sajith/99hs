{--

(*) Reverse a list.

Example in Haskell:

Prelude> myReverse "A man, a plan, a canal, panama!"
"!amanap ,lanac a ,nalp a ,nam A"
Prelude> myReverse [1,2,3,4]
[4,3,2,1]

--}

myReverse :: [a] -> [a]
myReverse []     = []
myReverse (x:xs) = myReverse xs ++ [x]

{--

-- from solutions, one that doesn't involve too much reconsing:

myReverse2 :: [a] -> [a]
myReverse2 xs = reverse' xs []
  where
    reverse' [] reversed     = xs'
    reverse' (x:xs) reversed = reverse' xs (x:reversed)

-- from prelude:

reverse :: [a] -> [a]
reverse = foldl (flip (:)) []

--}

