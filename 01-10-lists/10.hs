{--

(*) Run-length encoding of a list. Use the result of problem P09 to
implement the so-called run-length encoding data compression
method. Consecutive duplicates of elements are encoded as lists (N E)
where N is the number of duplicates of the element E.

Example:

* (encode '(a a a a b c c a a d e e e e))
((4 A) (1 B) (2 C) (2 A) (1 D)(4 E))

Example in Haskell:

encode "aaaabccaadeeee"
[(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]

--}

encode :: Eq a => [a] -> [(Int,a)]
encode xs = zip (map length ys) (map head ys)
            where ys = filter (/= []) $ chunk xs

chunk :: Eq a => [a] -> [[a]]
chunk []  = [[]]
chunk [x] = [[x]]
chunk xs  = let (ys,zs) = span (== head xs) xs
            in
                [ys] ++ chunk zs


{--

The wiki solution offers this:

encode2 xs = map (\x -> (length x, head x) ) $ group xs

and this:
encode3 xs = [(length x, head x) | x <- group xs]

and this:
encode xs = map (length &&& head) $ group xs

and this:
encode = map ((,) <$> length <*> head) . pack

So much shorter and elegant!

--}
