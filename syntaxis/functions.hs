module Functions where
-- most important libraries
import Data.List
import System.IO

{- 
 - 
 -
 - Functions
 -
 - every function in Haskell MUST
 - return something
 - 
 - follows declaration:
 - funcName param1 param2 = operators (returned val)
 -
 -}

-- defining functions in ghci
-- let num7 = 7
-- let getTriple x = x * 3
-- getTriple num7

-- gets 2 ints and adds them together
-- to call it -> add me 4 5 -> 9
addMe :: Int -> Int -> Int
addMe x y = x + y

-- here it;s not defined so we can work with floats
-- BAD BAD BAD practice
sumMe x y = x + y

-- tuples with functions
addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)

-- send and recieve diffrent things
whatAge :: Int -> String
whatAge 18 = "You can drive"
whatAge 21 = "You are an adult"
whatAge _  = "Nothing important"
-- "_" is used like a default case

-- recursion
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- calculate factorial
prodFact n = product [1..n]

-- guards implementation
-- determines if n is odd or even
-- if n `mod` 2 is 0 give False 
-- 'otherwise' is like default
isOdd :: Int -> Bool
isOdd n 
    | n `mod` 2 == 0 = False
    | otherwise = True

-- other impl
isEven n = n `mod` 2 == 0

whatGrade :: Int -> String
whatGrade age 
    | (age >= 5)  && (age <= 6)  = "Kindergarder"
    | (age  > 6)  && (age <= 10) = "School"
    | (age  > 10) && (age <= 14) = "Middle school"
    | (age  > 14) && (age <= 18) = "High school"
    | otherwise                  = "College"

-- where - saves to repeat calculations
avgRating :: Double -> Double -> String
avgRating grades subjects
    | avg <= 2  = "Terrible"
    | avg <= 3  = "Average"
    | avg <= 4  = "Good"
    | avg <= 5  = "Very good"
    | otherwise = "Awesome"
    where avg = grades / subjects

-- get a list
-- check if list is empty
-- get 1st item
-- get 1st and 2nd items
getListItems :: [Int] -> String
getListItems [] = "Ya list empty"
getListItems (x:[]) 
    = "Your list starts with " ++ show x
getListItems (x:y:[]) 
    = "Your list starts with " ++ show x
        ++ " and " ++ show y
getListItems (x:xs) 
    = "Your list starts with " ++ show x
        ++ " and the rest are " ++ show xs
    
-- get items from string
-- all just prints everything
getFistItem :: String -> String
getFistItem [] = "Empty String"
getFistItem all@(x:xs) 
    = "The fist letter " ++ all 
        ++ " is " ++ [x]