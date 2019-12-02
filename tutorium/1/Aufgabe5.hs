module AufgaveFuenf where

-- biggest number from four
my_max4 :: Int -> Int -> Int -> Int -> Int
my_max4 a b c d = max (max a b) (max c d)

-- is c between a and b
my_between :: Int -> Int -> Int -> Bool
my_between a b c | a < c && c < b = True
                 | otherwise = False

-- is it ordered
my_order :: Int -> Int -> Int -> Bool
my_order a b c | a <= b && b <= c = True
               | otherwise = False

-- is c the minimum from a b
my_mintest :: Int -> Int -> Int -> Bool
my_mintest a b c | c == (min a b) = True
                 | otherwise = False

-- returns if a, b or c is 
my_strange :: Int -> Int -> Int -> Int -> Bool
my_strange a b c n | a `mod` n == 0 = True
                   | b `mod` n == 0 = True
                   | c `mod` n == 0 = True
                   | otherwise = False

-- give the smallest even number from a, b or c
-- if no even numbers give the biggest odd
my_evenmin :: Int -> Int -> Int -> Int
my_evenmin a b c
    | minimum [a, b, c] `mod` 2 == 0 = minimum [a, b, c]
    | otherwise = maximum[a, b, c]