-- module Main where
import Prelude()
import MiniPrelude
import M1
import Test.QuickCheck

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
g1 n xs = (++) (drop n xs) (take n xs)

{- Test your code using quickCheck -}

correct0 :: (List Integer -> List (List Integer)) -> List Integer -> Bool
correct0 f xs = f xs == f0 xs

correct1 :: (Int -> List Integer -> List Integer) -> Int -> List Integer -> Bool
correct1 f n xs = f n xs == f1 n xs
