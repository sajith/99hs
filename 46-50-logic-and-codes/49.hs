{--

(**) Gray codes.

An n-bit Gray code is a sequence of n-bit strings constructed
according to certain rules. For example,

n = 1: C(1) = ['0','1'].
n = 2: C(2) = ['00','01','11','10'].
n = 3: C(3) = ['000','001','011','010',´110´,´111´,´101´,´100´].

Find out the construction rules and write a predicate with the
following specification:

% gray(N,C) :- C is the N-bit Gray code

Can you apply the method of "result caching" in order to make the
predicate more efficient, when it is to be used repeatedly?

Example in Haskell:

P49> gray 3
["000","001","011","010","110","111","101","100"]

--}

import           Data.List (nub, permutations, sort)

gray 0 = []
gray n = clean $ combine $ map (\(n1,n2) -> ones n1 ++ zeroes n2) (pairs n)

combine = concatMap permutations
clean = sort . nub

ones n = replicate n '1'
zeroes n = replicate n '0'
pairs n = [(x,y) | x <- [0..n], y <- [0..n], x + y == n]

