module AufgabeSieben where

-- use list comprehensions

-- give all possible ways to achieve n with two dice
pipsum :: Int -> [(Int, Int)]
pipsum n = [(x,y) | x <- [1..6], y <- [1..6], (x + y) == n]

-- give all possible ways to achieve n with two dice
-- without using the same combinations
pipsum' :: Int -> [(Int, Int)]
pipsum' n = [(x,y) | x <- [1..6], y <- [x..6], (x + y) == n]

-- return all divisors of n
divisors :: Int -> [Int]
divisors n = [x | x <- [1..n], n `mod` x == 0]

-- delete all positive numbers
positive' :: (Ord a, Num a) => [a] -> [a]
positive' list = [x | x <- list , x>0]