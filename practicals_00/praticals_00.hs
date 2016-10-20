
square :: Num a => a -> a
square x = ((*) x x)

twice :: (a -> a) -> a -> a
twice f x = f (f x)

twice2 :: (a -> a) -> a -> a
twice2 f = f . f

pi2 :: Double
pi2 = ((/) 22 7)

polynomial :: Num a => [a] -> a -> a
polynomial xs x = foldr ( flip ((+) . (* x)) ) 0 (reverse xs)

-------------------------------------------------
--                                             --
--   problem 1.                                --
--                                             --
-------------------------------------------------
even2 :: Int -> Bool
even2 x = ((==) (mod x 2) 0)

-------------------------------------------------
--                                             --
--   problem 2.                                --
--                                             --
-------------------------------------------------
area :: Double -> Double
area r = ((*) . square) r pi2

-------------------------------------------------
--                                             --
--   problem 3.                                --
--                                             --
-------------------------------------------------
-- (a).
payment :: Int -> Int
payment week = let daysPerWeek = 5
                   hoursPerDay = 8
                   ntdPerHour  = 130
               in foldr (*) 1 [week, daysPerWeek, hoursPerDay, ntdPerHour]

-- (b).
payment2 :: Int -> Int
payment2 week = foldr (*) 1 [week, daysPerWeek, hoursPerDay, ntdPerHour]
                where daysPerWeek = 5
                      hoursPerDay = 8
                      ntdPerHour  = 130

-- (c).
payment3 :: Int -> Int
payment3 week | week > 19 = (round . (1.06 *) . fromIntegral) basicSalary
              | otherwise = basicSalary
              where daysPerWeek = 5
                    hoursPerDay = 8
                    ntdPerHour  = 130
                    basicSalary = foldr (*) 1 [week, daysPerWeek, hoursPerDay, ntdPerHour]

-------------------------------------------------
--                                             --
--   problem 4.                                --
--                                             --
-------------------------------------------------
-- (a).
-- The answer is 13.
nested :: Int
nested = let x = 3
         in (let x = 5
             in x + x) + x

-- (b).
-- non-terminated
recursive :: Int
recursive = let x = 3
            in let x = x + 1
               in x

-------------------------------------------------
--                                             --
--   problem 5.                                --
--                                             --
-------------------------------------------------
smaller :: Int -> Int -> Int
smaller x y = if x <= y then x else y

-- (a).
-- :t smaller
-- > smaller :: Int -> Int -> Int

-- (c).
-- :t smaller 3 4
-- > smaller :: Int

-- (d).
-- :t smaller 3
-- > smaller :: Int -> Int

-- (e).
st3 = smaller 3

-- (f).
-- :t st3
-- > st3 :: Int -> Int

-------------------------------------------------
--                                             --
--   problem 6.                                --
--                                             --
-------------------------------------------------
poly :: Double -> Double -> Double -> Double -> Double
poly a b c x = polynomial [a, b, c] x

-- (a).
poly1 = poly 1 2 1

-- (b).
poly2 a b c = poly a b c 2

-------------------------------------------------
--                                             --
--   problem 7.                                --
--                                             --
-------------------------------------------------
-- (a).
quad :: Int -> Int
quad = square . square

-- (c).
quad2 :: Int -> Int
quad2 = twice square

-------------------------------------------------
--                                             --
--   problem 8.                                --
--                                             --
-------------------------------------------------
-- (a).
quad3 :: Int -> Int
quad3 = twice2 square

-------------------------------------------------
--                                             --
--   problem 9.                                --
--                                             --
-------------------------------------------------
-- (a).
-- type> Num a => (t -> a) -> (t -> a) -> t -> a
forktimes f g x = f x * g x

-- (b).
-- x^2 + 3x + 2 = (x + 1) (x + 2)
compute = forktimes (+1) (+2)

-- (c).
-- type> (a -> b -> c) -> (t -> a) -> (t -> b) -> t -> c
lift2 h f g x = h (f x) (g x)

-- (d).
-- x^2 + 3x + 2
compute2 = lift2 (*) (+1) (+2)

-------------------------------------------------
--                                             --
--   problem 10.                               --
--     f :: Int -> Char                        --
--     g :: Int -> Char -> Int                 --
--     h :: (Char -> Int) -> Int -> Int        --
--     x :: Int                                --
--     y :: Int                                --
--     c :: Char                               --
--                                             --
--   1. type error                             --
--   2. correct:                               --
--      g x . f                                --
--        type> Int -> Int                     --
--      (g x . f) y                            --
--        type> Int                            --
--   3. correct:                               --
--      h . g                                  --
--        type> Int -> Int -> Int              --
--   4. type error                             --
--   5. type error                             --
-------------------------------------------------

f :: Int -> Char
f = undefined

g :: Int -> Char -> Int
g = undefined

h :: (Char -> Int) -> Int -> Int
h = undefined

x :: Int
x = undefined

y :: Int
y = undefined

c :: Char
c = undefined