-------------------------------------------------
--                                             --
--   List Generation                           --
--                                             --
-------------------------------------------------

-------------------------------------------------
-- problem 1.                                  --
-------------------------------------------------

-- (a).
-- > [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]
lst1 = [0..25]
-- (b).
-- > [0,2,4,6,8,10,12,14,16,18,20,22,24]
lst2 = [0,2..25]
-- (c).
-- > []
-- use [25,24..0] => [25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0]
lst3 = [25..0]
-- (d).
-- > "abcdefghijklmnopqrstuvwxyz"
lst4 = ['a'..'z']
-- (e).
-- non-terminated
lst5 = [1..]

-------------------------------------------------
-- problem 2.                                  --
-------------------------------------------------

-- (a).
-- > [1,2,3,4,5,6,7,8,9,10]
expr1 = [ x | x <- [1..10] ]
-- (b).
-- > [1,4,9,16,25,36,49,64,81,100]
expr2 = [ x * x | x <- [1..10] ]
-- (c).
-- > [(0,'a'),(0,'b'),(0,'c'),(1,'a'),(1,'b'),(1,'c'),(2,'a'),(2,'b'),(2,'c')]
expr3 = [ (x, y) | x <- [0..2], y <- "abc" ]

-- (d).
-- type> expr1 :: [Integer]
-- type> expr2 :: [Integer]
-- type> expr3 :: [(Integer, Char)]

-- (e).
-- > [1,9,25,49,81]
expr4 = [ x * x | x <- [1..10], odd x ]

-------------------------------------------------
-- problem 3.                                  --
-------------------------------------------------

-- (a).
-- > [(1,1),(1,2),(2,1),(2,2),(3,1),(3,2)]
expr5 = [ (a, b) | a <- [1..3], b <- [1..2] ]
-- (b).
-- > [(1,1),(2,1),(3,1),(1,2),(2,2),(3,2)]
expr6 = [ (a, b) | b <- [1..2], a <- [1..3] ]
-- (c).
-- > [(1,2),(1,3),(1,4),(2,3),(2,4),(3,4)]
expr7 = [ (i, j) | i <- [1..4], j <- [(i + 1)..4] ]
-- (d).
-- > [(2,3)]
expr8 = [ (i, j) | i <- [1..4], even i, j <- [(i + 1)..4], odd j ]
-- (e).
-- > "aaaaaaaaaaa"
expr9 = [ 'a' | i <- [0..10] ]