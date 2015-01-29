{--

(*) Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).

Example in Haskell:

*Main> isPalindrome [1,2,3]
False
*Main> isPalindrome "madamimadam"
True
*Main> isPalindrome [1,2,4,8,16,8,4,2,1]
True

--}

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome []  = True
isPalindrome [_] = True
isPalindrome (x:xs) = if x == last xs
                      then isPalindrome $ take ((length xs) - 1) $ tail $ reverse xs
                      else False

{--

-- from solutions:

isPalindrome2 xs = xs == reverse xs

isPalindrome3 []  = True
isPalindrome3 [_] = True
isPalindrome3 xs  = (head xs) == (last xs) && (isPalindrome3 $ init $ tail xs)

isPalindrome4 xs = and $ zipWith (==) xs (reverse xs)

isPalindrome5 xs = foldr (&&) True $ zipWith (==) xs (reverse xs)

TODO: revisit solutions that use Control.Arrows and
Control.Applicative.

--}
