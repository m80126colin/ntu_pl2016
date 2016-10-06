-------------------------------------------------
--                                             --
--   List Deconstruction                       --
--                                             --
-------------------------------------------------

-------------------------------------------------
-- problem 1.                                  --
-------------------------------------------------

-- (a).
-- type> head :: [a] -> a

-- (b).
--   (i)
--     head [1, 2, 3]
--     > 1
head1 = head [1, 2, 3]
--   (ii)
--     head "abcde"
--     > 'a'
head2 = head "abcde"
--   (iii)
--     head []
--     > *** Exception: empty list
head3 = head []

-- (c).
-- head: get the first element in a non-empty
--       list

-------------------------------------------------
-- problem 2.                                  --
-------------------------------------------------

-- (a).
-- type> tail :: [a] -> [a]

-- (b).
--   (i)
--     tail [1, 2, 3]
--     > [2, 3]
tail1 = tail [1, 2, 3]
--   (ii)
--     tail "abcde"
--     > "bcde"
tail2 = tail "abcde"
--   (iii)
--     tail []
--     > *** Exception: empty list
tail3 = tail []

-- (c).
-- tail: get a sub-list without the first element
--       in a non-empty list

-- (d).
-- when xs is a non-empty list

-------------------------------------------------
-- problem 3.                                  --
-------------------------------------------------

-- (a).
-- type> last :: [a] -> a

-- (b).
--   (i)
--     last [1, 2, 3]
--     > 3
last1 = last [1, 2, 3]
--   (ii)
--     last "abcde"
--     > 'e'
last2 = last "abcde"
--   (iii)
--     last []
--     > *** Exception: empty list
last3 = last []

-- (c).
-- last: get the last element in a non-empty list

-------------------------------------------------
-- problem 4.                                  --
-------------------------------------------------

-- (a).
-- type> init :: [a] -> [a]

-- (b).
--   (i)
--     init [1, 2, 3]
--     > [1, 2]
init1 = init [1, 2, 3]
--   (ii)
--     init "abcde"
--     > "abcd"
init2 = init "abcde"
--   (iii)
--     init []
--     > *** Exception: empty list
init3 = init []

-- (c).
-- init: get a sub-list without the last element
--       in a non-empty list

-- (d).
-- both functions are well-defined in non-empty list
ex1 = [1, 2, 3]
prop1 = concat [init ex1, [last ex1]]

-------------------------------------------------
-- problem 5.                                  --
-------------------------------------------------

-- (a).
-- type> Foldable t => t a -> Bool

-- (b).
--   (i)
--     null [1, 2, 3]
--     > False
null1 = null [1, 2, 3]
--   (ii)
--     null "abcde"
--     > False
null2 = null "abcde"
--   (iii)
--     null []
--     > True
null3 = null []

-- (c).
mynull :: Foldable t => t a -> Bool
mynull = foldr (\_ _ -> False) True