aarrr1 :: [Char]
aarrr1 = tail [ x | x <- "ar", i <- [1..3] ]

aarrr2 :: [Char]
aarrr2 = tail $ concat $ map (\ x -> [x, x, x]) "ar"