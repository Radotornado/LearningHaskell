module AufgabeDrei where

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

-- TODO:
-- return a list of ints as string
listToString :: [Int] -> String 
listToString [] = ""
listToString [x] = show x ++ "}"
listToString (x:xs) = show x ++ "," ++ listToString xs

-- insert all nonrepeating elements from the
-- first array to the second
myConcat :: [Int] -> [Int] -> [Int]
myConcat [] _ = []
myConcat _ [] = []
myConcat (x:xs) (y:ys) 
    | x == y    = x : myConcat xs (y:ys)
    | otherwise = y : myConcat (x:xs) ys

-- merge 2 lists and sort them
merge :: [Int] -> [Int]
merge [] y = sort y 
merge 