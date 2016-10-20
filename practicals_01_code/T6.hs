-- module Main where
import Prelude ()
import MiniPrelude
import M6
import Test.QuickCheck

{-
  g0 :: Eq a => a -> List a -> Int

  description:
    Number of certain element in a list.
-}

g0 :: Eq a => a -> List a -> Int
g0 n = length . g1 n

{-
  g1 :: Eq a => a -> List a -> List a

  description:
    A list consist of certain element from a list.
-}

g1 :: Eq a => a -> List a -> List a
g1 n = filter (== n)

{- Test your code using quickCheck -}

correct0 :: (Int -> List Int -> Int) -> Int -> List Int -> Bool
correct0 f x xs = f x xs == f0 x xs

correct1 :: (Int -> List Int -> List Int) -> Int -> List Int -> Bool
correct1 f x xs = f x xs == f1 x xs
