{--

Problem 71

(*) Determine the internal path length of a tree.

We define the internal path length of a multiway tree as the total sum
of the path lengths from the root to all nodes of the tree. By this
definition, tree5 has an internal path length of 9.

Example in Haskell:

Tree> ipl tree5
9
Tree> ipl tree4
2

--}
