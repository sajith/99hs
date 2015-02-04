{--

Lotto: Draw N different random numbers from the set 1..M.

Example:

* (rnd-select 6 49)
(23 1 17 33 21 37)

Example in Haskell:

Prelude System.Random>diff_select 6 49
Prelude System.Random>[23,1,17,33,21,37]

--}

import           Control.Monad (when)
import           System.Random (newStdGen, randomRs)

diffSelect n m = do
    indices <- makeIndices n
    return $ fmap ([1..m]!!) indices

makeIndices n = do
    g <- newStdGen
    let randoms = take n $ randomRs (0,n-1) g
    if allUnique randoms then return randoms else makeIndices n

allUnique [] = True
allUnique (x:xs) = notElem x xs && allUnique xs

