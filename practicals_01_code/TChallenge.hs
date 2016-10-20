-- module Main where
import Prelude ()
import MiniPrelude
import MChallenge
import Test.QuickCheck

{-
  find' :: Eq a => List a -> List a -> List a

  description:
    Find the first list among all suffix of one lists
  whose prefix matches another list.

  Note:
    QuickCheck cannot work in this Challenge.
-}

find' :: Eq a => List a -> List a -> List a
find' pat text = (head . filter ((==) pat . take plen)) suffix
  where
    plen   = length pat
    tlen   = length text
    suffix = [ drop m text | m <- [0 .. (-) tlen plen] ]

{- Test your code using quickCheck -}

correct0 :: (List Int -> List Int -> List Int) -> List Int -> List Int -> Bool
correct0 f xs ys = f xs ys == find xs ys
