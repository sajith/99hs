module BinaryTree where

data Tree a = Empty | Branch a (Tree a) (Tree a)
            deriving (Show, Eq)

leaf a = Branch a Empty Empty

