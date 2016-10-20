-- module Main where
import Prelude()
import MiniPrelude
import M0
import Test.QuickCheck

{-
  g0 :: List a -> List a

  description:
    A list consists of double elements from origin
  list except first and last element.
-}

g0 :: List a -> List a
g0 = concat . map g1 . g2

{-
  g1 :: (a, a) -> List a

  description:
    Make a pair into a list.
-}

g1 :: (a, a) -> List a
g1 p = [fst p, snd p]

{-
  g2 :: List a -> List (a, a)

  description:
    Make a list of pairs of adjacent elements
  in one list.
-}

g2 :: List a -> List (a, a)
g2 xs = (zip xs . tail) xs

{- Test your code using quickCheck -}

correct0 :: (List Int -> List Int) -> List Int -> Bool
correct0 f xs = f xs == f0 xs

correct1 :: ((Int, Int) -> List Int) -> (Int, Int) -> Bool
correct1 f (x,y) = f (x,y) == f1 (x,y)

correct2 :: (List Int -> List (Int, Int)) -> List Int -> Bool
correct2 f xs = f xs == f2 xs
