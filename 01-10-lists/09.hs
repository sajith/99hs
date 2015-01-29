{--

(**) Pack consecutive duplicates of list elements into sublists. If a
list contains repeated elements they should be placed in separate
sublists.

Example:

* (pack '(a a a a b c c a a d e e e e))
((A A A A) (B) (C C) (A A) (D) (E E E E))

Example in Haskell:

*Main> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
["aaaa","b","cc","aa","d","eeee"]

--}

pack :: Eq a => [a] -> [[a]]
pack xs = filter (/= []) $ pack' xs
  where
    pack' []       = [[]]
    pack' [x]      = [[x]]
    pack' xs@(x:_) = [zs] ++ pack' ys
      where
        (zs,ys) = span (== x) xs

