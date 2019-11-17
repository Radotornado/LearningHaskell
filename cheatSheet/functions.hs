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