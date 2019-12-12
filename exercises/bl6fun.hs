module Fun where
-- Aufgabe 3 Blatt 6

import Data.Ratio

addInts :: [Int] -> Int 
addInts = foldl (+) 0
-- addInts[3,5,2,8]

average :: [Int] -> Double
average [] = 0
average x = a / b 
            where a = fromIntegral (addInts x)
                  b = fromIntegral (length x)

average' :: [Int] -> Double
average' x = fromIntegral (addInts x) / fromIntegral (length x)

averageR :: [Int] -> Rational
averageR x = fromIntegral (addInts x) % fromIntegral (length x)

averageR' :: [Int] -> Rational
averageR' xs = fromIntegral (addInts xs) / fromIntegral (length xs)