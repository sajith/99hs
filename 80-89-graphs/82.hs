{--

Problem 82

(*) Cycle from a given node

Write a predicate cycle(G,A,P) to find a closed path (cycle) P
starting at a given node A in the graph G. The predicate should return
all cycles via backtracking.

Example:

<example in lisp>

Example in Haskell:

graph> cycle 2 [(1,2),(2,3),(1,3),(3,4),(4,2),(5,6)]
[[2,3,4,2]]
graph> cycle 1 [(1,2),(2,3),(1,3),(3,4),(4,2),(5,6)]
[]

--}
