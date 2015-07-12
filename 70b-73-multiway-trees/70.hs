{--

Problem 70

(**) Tree construction from a node string.

We suppose that the nodes of a multiway tree contain single
characters. In the depth-first order sequence of its nodes, a special
character ^ has been inserted whenever, during the tree traversal, the
move is a backtrack to the previous level.

By this rule, the tree below (tree5) is represented as: afg^^c^bd^e^^^

https://prof.ti.bfh.ch/hew1/informatik3/prolog/p-99/p70.gif

Define the syntax of the string and write a predicate
tree(String,Tree) to construct the Tree when the String is given. Make
your predicate work in both directions.

Example in Haskell:

Tree> stringToTree "afg^^c^bd^e^^^"
Node 'a' [Node 'f' [Node 'g' []],Node 'c' [],Node 'b' [Node 'd' [],Node 'e' []]]

Tree> treeToString (Node 'a' [Node 'f' [Node 'g' []],Node 'c' [],Node 'b' [Node 'd' [],Node 'e' []]])
"afg^^c^bd^e^^^"

--}
