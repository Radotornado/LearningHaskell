module AufgabeEins where

-- give smaller number from 2
-- my_min :: Int -> Int -> Int 
my_min :: (Ord a) => a -> a -> a
my_min x y | x < y = x
           | otherwise = y

-- give the bigger one
-- my_max :: Int -> Int -> Int 
my_max :: (Ord a) => a -> a -> a
my_max x y | x > y = x
           | otherwise = y
           
-- give the avg of 2 numbers
-- my_avg :: Double -> Double -> Double -> Double
my_avg :: (Fractional a) => a -> a -> a -> a
my_avg x y z = (x+y+z)/3

-- subtract the bigger number from the smaller
-- my_dif :: Int -> Int -> Int 
my_dif :: (Ord a, Num a) => a -> a -> a
my_dif x y | x < y = y - x
           | y > x = x - y

my_dif’ :: ( Ord a, Num a) = > a -> a -> a
my_dif’ a b = ( my_max a b ) - ( my_min a b )

-- calculate a^b
-- my_exp :: Int -> Int -> Int 
my_exp :: ( Num a, Integral b ) => a -> b -> a
my_exp x y = x ^ y

my_exp’ :: ( Num a, Integral b) = > a -> b -> a
my_exp’ = (^)