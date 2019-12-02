module AufgabeZwei where

-- write the following using direct recursion

-- determine if a list is sorted
isOrdered :: (Ord a, Num a) => [a] -> Bool
isOrdered [] = True
isOrdered (x:y:xs) 
    | x > y 