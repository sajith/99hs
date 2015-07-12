{--

(**) Binary search trees (dictionaries)

Use the predicate add/3, developed in chapter 4 of the course, to
write a predicate to construct a binary search tree from a list of
integer numbers.

Example:

* construct([3,2,5,7,1],T).
T = t(3, t(2, t(1, nil, nil), nil), t(5, nil, t(7, nil, nil)))

Then use this predicate to test the solution of the problem P56.

Example:

* test-symmetric([5,3,18,1,4,12,21]).
Yes
* test-symmetric([3,2,5,7,4]).
No

Example in Haskell:

*Main> construct [3, 2, 5, 7, 1]
Branch 3 (Branch 2 (Branch 1 Empty Empty) Empty) (Branch 5 Empty (Branch 7 Empty Empty))
*Main> symmetric . construct $ [5, 3, 18, 1, 4, 12, 21]
True
*Main> symmetric . construct $ [3, 2, 5, 7, 1]
True

--}

import           BinaryTree
import           Debug.Trace (trace)

construct :: (Show a, Ord a) => [a] -> Tree a
construct []     = Empty
construct (x:xs) = addNodes (leaf x) xs

addNodes :: (Show a, Ord a) => Tree a -> [a] -> Tree a
addNodes t []     = t
addNodes t (x:xs) = addNodes (addNode t x) xs

-- locate appropriate node for new node in the tree
addNode :: (Show a, Eq a, Ord a) => Tree a -> a -> Tree a
addNode (Empty) x = leaf x
addNode (Branch b left right) x = trace ("adding " ++ show x ++ ", result: " ++ show tree)
                                  $ tree
  where tree = if (x < b)
               then
                   if (left == Empty)
                   then (Branch b (leaf x) right)
                   else addNode left b
               else
                   if (right == Empty)
                   then (Branch b right (leaf x))
                   else addNode right b

