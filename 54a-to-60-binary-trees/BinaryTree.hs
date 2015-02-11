{-# LANGUAGE RankNTypes #-}

module BinaryTree where

data Tree a = Empty | Branch a (Tree a) (Tree a)
            deriving (Show, Eq)

leaf :: forall a. a -> Tree a
leaf a = Branch a Empty Empty

