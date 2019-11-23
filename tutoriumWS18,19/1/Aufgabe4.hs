module AufgabeVier where

-- Guards

-- absolute value
-- my_abs :: Int -> Int
my_abs :: (Num a, Ord a) => a -> a
my_abs a | a < 0 = (-a)
         | otherwise = a

-- determine the sign of a number
my_sgn :: Int -> Int
my_sgn a | a < 0 = -1
         | a > 0 = 1
         | otherwise = 0