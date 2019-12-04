module AufgabeZwei where

-- write the following using direct recursion

-- TODO:
-- determine if a list is sorted
isOrdered :: (Ord a, Num a) => [a] -> Bool
isOrdered [] = True

-- delete the number after an even one in an array
delAfterEven :: [Int] -> [Int]
delAfterEven [x] = [x]
delAfterEven (x:y:xs) 
    | x `mod` 2 == 0 = x : delAfterEven xs
    | otherwise      = x : delAfterEven (y : xs)

-- TODO:
-- give the list of fibonacci numbers till n
fibList :: Int -> [Int]
fibList 1 = [1]
fibList 2 = [1,1]

-- find the biggest element in the array
findMax :: (Ord a, Num a) => [a] -> a
findMax []     = 0
findMax (x:xs) = max x (findMax xs)

findMax' :: (Ord a, Num a) => [a] -> a
findMax' [] = []
findMax' x  = maximum' x

-- delete the first n elements
myDrop :: [a] -> Int -> [a]
myDrop [] _ = error "empty list"
myDrop xs 0 = xs
myDrop (x:xs) n = myDrop xs (n-1)

-- get the first n elements from list
getFirst :: [a] -> Int -> [a]
getFirst [] _     = error "empty list"
getFirst xs 0     = []
getFirst (x:xs) n = x : getFirst xs (n-1)