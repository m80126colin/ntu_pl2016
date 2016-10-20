-- module Main where
import Prelude ()
import MiniPrelude
import M4
import Test.QuickCheck

{-
  g0 :: List a -> List (List a)

  description:
    A list consisting all prefix of one list.
-}

g0 :: List a -> List (List a)
g0 xs = map (flip take xs) . g1 $ xs

{-
  g1 :: List a -> List Int

  description:
    A list of integers from 0 to the size of a
  list.
-}

g1 :: List a -> List Int
g1 xs = [0 .. length xs]

{- Test your code using quickCheck -}

correct0 :: ([Int] -> [[Int]]) -> [Int] -> Bool
correct0 f xs = f xs == f0 xs

correct1 :: ([Int] -> [Int]) -> [Int] -> Bool
correct1 f xs = f xs == f1 xs
