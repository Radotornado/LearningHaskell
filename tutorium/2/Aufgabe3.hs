module AufgabeDrei where

import Data.List

-- write the following functions using recursion

-- return tuple with the biggest element and its position
getMaxPos :: [Int] -> (Int, Int)
getMaxPos [] = (0, 0)
getMaxPos xs = (maxInt, getNthIndex xs maxInt )
                 where maxInt = maximum xs
                    
getNthIndex :: [Int] -> Int -> Int
getNthIndex xs val 
    | last xs == val = length xs
    | otherwise = getNthIndex (init xs) val

-- return a list of ints as string
listToString :: [Int] -> String 
listToString l = ('{': listToStringIntern l)
where
    listToStringIntern  []    = "}"
    listToStringIntern [x]    = (show x) ++ "}"
    listToStringIntern (x:xs) =
        (show x) ++ (’,’ : listToStringIntern  xs)

-- insert all nonrepeating elements from the
-- first array to the second
myConcat :: [Int] -> [Int] -> [Int]
myConcat [] _ = []
myConcat _ [] = []
myConcat (x:xs) (y:ys) 
    | x == y    = x : myConcat xs (y:ys)
    | otherwise = y : myConcat (x:xs) ys

-- merge 2 lists and sort them
merge :: [Int] -> [Int] -> [Int]
merge [] y = sort y 
merge (x:xs) (y:ys) = sort (x : y : merge xs ys)