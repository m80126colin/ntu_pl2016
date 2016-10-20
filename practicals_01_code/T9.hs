-- module Main where
import Prelude ()
import MiniPrelude
import M9
import Test.QuickCheck

{-
  g0 :: List a -> List a

  description:
    A sublist consisting elements whose index is not
  divisible by 3 from original list.
-}

g0 :: List a -> List a
g0 = map fst . g1

{-
  g1 :: List a -> List (a, Int)

  description:
    A list of pairs between a list and indice whose
  index is not divisible by 3.
-}

g1 :: List a -> List (a, Int)
g1 = filter ((/= 0) . (flip mod 3) . snd) . zip [0..]

{- Test your code using quickCheck -}

correct0 :: (List Int -> List Int) -> List Int -> Bool
correct0 f xs = f xs == f0 xs

correct1 :: (List Int -> List (Int,Int)) -> List Int -> Bool
correct1 f xs = f xs == f1 xs
