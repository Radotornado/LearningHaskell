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

-- determine the time of day
my_time :: Int -> String
my_time a | a >= 0  && a <= 8  = "Nacht"
          | a >  8  && a <= 12 = "Morgen"
          | a >  12 && a <= 18 = "Nachmittag"
          | a >  18 && a <= 24 = "Abend"
          | otherwise = "Error"