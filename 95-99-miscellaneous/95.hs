{--

Problem 95

(**) English number words

On financial documents, like cheques, numbers must sometimes be
written in full words. Example: 175 must be written as
one-seven-five. Write a predicate full-words/1 to print (non-negative)
integer numbers in full words.

Example in Haskell:

> fullWords 175
one-seven-five

--}

import           Data.List  (intercalate)
import qualified Data.Map   as M
import           Data.Maybe (fromJust)

nums :: M.Map Integer String
nums = M.fromList [(0, "zero"),
                   (1, "one"),
                   (2, "two"),
                   (3, "three"),
                   (4, "four"),
                   (5, "five"),
                   (6, "six"),
                   (7, "seven"),
                   (8, "eight"),
                   (9, "nine")]

fullWords :: Integer -> String
fullWords n | n >= 0    = makeStr n
            | otherwise = "can't do"

makeStr :: Integer -> String
makeStr = stringify . breakNum

stringify :: [Integer] -> String
stringify ns = intercalate "-" $ map (\n -> fromJust $ M.lookup n nums) ns

breakNum :: Integral a => a -> [a]
breakNum n = break' n [] where
    break' n' acc | n' `div` 10 == 0 = n':acc
                  | otherwise        = break' (n' `div` 10) acc ++ [n' `mod` 10]
