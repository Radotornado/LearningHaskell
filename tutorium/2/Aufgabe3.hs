module AufgabeDrei where

-- write the following functions using recursion
-- TODO: getMaxxPos

-- return tuple with the biggest element and its position
getMaxPos :: [Int] -> (Int, Int)
getMaxPos [] = (0, 0)
getMaxPos xs = (maxInt, getNthIndex xs maxInt )
                 where maxInt = maximum xs
                    

getNthIndex :: [Int] -> Int -> Int
getNthIndex (x:xs) wert 
    | wert == x = x 
    | otherwise = getNthIndex xs wert