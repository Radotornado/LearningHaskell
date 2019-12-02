module AufgabeEins where

-- write AufgabeEins without using filter and !!

-- make from a tupel a list
-- tupToList :: (Num a) => (a, b, c) -> []

-- delete all negative numbers from a list
delNeg :: (Num a, Ord a) => [a] -> [a]
delNeg []     = []
delNeg (x:xs) 
    | x < 0     = delNeg xs
    | otherwise = x : delNeg xs 

-- add 42 between every element of list
add42 :: (Num a) => [a] -> [a]
add42 [] = []
add42 (x:xs) = x : 42 : add42 xs

-- delete all spaces from a string
delWS :: String -> String
delWS [] = []
delWS (x:xs) 
    | x == ' '  = delWS xs
    | otherwise = x : delWS xs

-- delete all occurances of the letter c
delChar :: String -> String
delChar [] = []
delChar (x:xs) 
    | x == 'c'  = delChar xs
    | otherwise = x : delChar xs

-- get the n'th element (must be recursive
-- and not use already existing haskell functions)
getNth :: (Ord a, Num a) => [a] -> a -> a 
getNth [] _ = 0
getNth (x:xs) n 
    | n < 0 = error "wrong output"
    | n > 0 = getNth xs (n-1)
    | otherwise = x