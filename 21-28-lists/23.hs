{--

Extract a given number of randomly selected elements from a list.

Example:

* (rnd-select '(a b c d e f g h) 3)
(E D A)

Example in Haskell:

Prelude System.Random>rnd_select "abcdefgh" 3 >>= putStrLn
eda

--}

import           Control.Monad (when)
import           System.Random (newStdGen, randomRs)

-- says nothing about uniqueness, so let this be.
rnd_select xs n = do

    let ln  = length xs
    when (ln == 0) $ error "array contains nothing"

    g <- newStdGen

    let ns  = randomRs (0, ln-1) g
        sel = take n $ map (xs!!) ns

    return sel

