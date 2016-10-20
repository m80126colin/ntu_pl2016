-- module Main where
import Prelude ()
import MiniPrelude
import M8
import Test.QuickCheck

{-
  g0 :: Eq a => a -> List a -> List (a, a)

  description:
    A list of pairs whose second element matches
  another element form a list consist of adjacent
  element pairs.
-}

g0 :: Eq a => a -> List a -> List (a, a)
g0 n = filter ((== n) . snd) . g1

{-
  g1 :: List a -> List (a, a)

  description:
    Make a list of pairs of adjacent elements
  in one list.
-}

g1 :: List a -> List (a, a)
g1 xs = (zip xs . tail) xs

{- Test your code using quickCheck -}

correct0 :: (Int -> List Int -> List (Int,Int)) -> Int -> List Int -> Bool
correct0 f x xs = f x xs == f0 x xs

correct1 :: (List Int -> List (Int,Int)) -> List Int -> Bool
correct1 f xs = f xs == f1 xs
