-- most important libraries
import Data.List
import System.IO

{- 
 - 
 -
 - Higher order functions
 - means passing them as variables
 -
 -}


times4 :: Int -> Int
times4 x = x * 4
-- map allows to do a function to
-- every item in a list
listTimes4 = map times4 [1,2,3,4,5]

-- own implementation of ^
multBy4 :: [Int] -> [Int]
multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs

-- check if 2 strings are equal
areStringsEq :: [Char] -> [Char] -> Bool
areStringsEq [] [] = True
areStringsEq (x:xs) (y:ys) 
    = x == y && areStringsEq xs ys
areStringsEq _ _ = False

-- (Int -> Int) means that we expect
-- a function to be passed inside this
-- function and then return an integer
doMult :: (Int -> Int) -> Int 
doMult func = func 3
num3Times4 = doMult times4

-- return a function from a function
getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y
adds3 = getAddFunc 3
fourplus3 = adds3 4

threePlusList = map adds3 [1,2,3,4]