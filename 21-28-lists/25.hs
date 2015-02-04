{--

Generate a random permutation of the elements of a list.

Example:

* (rnd-permu '(a b c d e f))
(B A D C E F)

Example in Haskell:

Prelude System.Random>rnd_permu "abcdef"
Prelude System.Random>"badcef"

--}

import           Data.List     (sort)
import           System.Random (newStdGen, randomRs)

rndPermu xs = do
    let indices  = [0..(length xs - 1)]
    rindices <- randomize indices
    return $ fmap (xs!!) rindices

randomize xs = do
    g <- newStdGen
    let randoms = take (length xs) $ randomRs (0, length xs - 1) g
    if (sort randoms) == xs
        then return randoms
        else randomize xs

