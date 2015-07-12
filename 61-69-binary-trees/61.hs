{--

As defined in problem 54A.

An example tree:

tree4 = Branch 1 (Branch 2 Empty (Branch 4 Empty Empty))
                 (Branch 2 Empty Empty)

------------------------------------------------------------

Problem 61

Count the leaves of a binary tree

A leaf is a node with no successors. Write a predicate count_leaves/2
to count them.

Example:

% count_leaves(T,N) :- the binary tree T has N leaves

Example in Haskell:

> countLeaves tree4
2

--}
