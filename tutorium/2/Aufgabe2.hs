module AufgabeZwei where

-- write the following using direct recursion\
-- TODO: (1) isOrdered
-- TODO: (3) fibList

-- determine if a list is sorted
isOrdered :: (Ord a, Num a) => [a] -> Bool
isOrdered [] = True

-- delete the number after an even one in an array
delAfterEven :: [Int] -> [Int]
delAfterEven [x] = [x]
delAfterEven (x:y:xs) 
    | x `mod` 2 == 0 = x : delAfterEven xs
    | otherwise      = x : delAfterEven (y : xs)

-- give the list of fibonacci numbers till n
fibList :: Int -> [Int]
fibList 0 = []
fibList 1 = [1]
fibList 2 = [1,1]

-- find the biggest element in the array
findMax :: [Int] -> Int
findMax [] = 0
findMax (x:xs) = 