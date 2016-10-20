-- module Main where
import Prelude ()
import MiniPrelude
import M2
import Test.QuickCheck

{-
  revert :: Int -> List a -> Int

  description:
    Compute difference between the length of a list
  and a number.
-}

revert :: Int -> List a -> Int
revert n = flip (-) n . length

{-
  g0 :: List a -> List (List a)

  description:
    A list consists of all rotations of a list.
-}

g0 :: List a -> List (List a)
g0 xs = [ g1 n xs | n <- map (flip (-) 1) [1 .. length xs] ]

{-
  g1 :: Int -> List a -> List a

  description:
    Rotate a list with a position.
-}

g1 :: Int -> List a -> List a
g1 n xs = concat [ f (revert n xs) xs | f <- [drop, take] ]

{- Test your code using quickCheck -}

correct0 :: (List Int -> List (List Int)) -> List Int -> Bool
correct0 f xs = f xs == f0 xs

correct1 :: (Int -> List Int -> List Int) -> Int -> List Int -> Bool
correct1 f n xs = f n xs == f1 n xs
