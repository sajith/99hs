{-# LANGUAGE RankNTypes #-}

{--

(**) Construct completely balanced binary trees

In a completely balanced binary tree, the following property holds for
every node: The number of nodes in its left subtree and the number of
nodes in its right subtree are almost equal, which means their
difference is not greater than one.

Write a function cbal-tree to construct completely balanced binary
trees for a given number of nodes. The predicate should generate all
solutions via backtracking. Put the letter 'x' as information into all
nodes of the tree.

Example:

* cbal-tree(4,T).
T = t(x, t(x, nil, nil), t(x, nil, t(x, nil, nil))) ;
T = t(x, t(x, nil, nil), t(x, t(x, nil, nil), nil)) ;
etc......No

Example in Haskell, whitespace and "comment diagrams" added for
clarity and exposition:

*Main> cbalTree 4
[
-- permutation 1
--     x
--    / \
--   x   x
--        \
--         x
Branch 'x' (Branch 'x' Empty Empty)
           (Branch 'x' Empty
                       (Branch 'x' Empty Empty)),

-- permutation 2
--     x
--    / \
--   x   x
--      /
--     x
Branch 'x' (Branch 'x' Empty Empty)
           (Branch 'x' (Branch 'x' Empty Empty)
                       Empty),

-- permutation 3
--     x
--    / \
--   x   x
--    \
--     x
Branch 'x' (Branch 'x' Empty
                       (Branch 'x' Empty Empty))
           (Branch 'x' Empty Empty),

-- permutation 4
--     x
--    / \
--   x   x
--  /
-- x
Branch 'x' (Branch 'x' (Branch 'x' Empty Empty)
                       Empty)
           (Branch 'x' Empty Empty)
]

--}

import           BinaryTree

-- TODO: this doesn't generate all solutions!

cbalTree :: forall a. Integral a => a -> Tree Char
cbalTree n = cbalTree' n 'x'

cbalTree' :: forall a. Integral a => a -> Char -> Tree Char
cbalTree' n a | n <= 0     = Empty
              | otherwise  = Branch a (cbalTree (n `div` 2)) (cbalTree ((n-1) `div` 2))


