module Conditionals where
-- most important libraries
import Data.List
import System.IO

{- 
 - 
 - Conditionals
 - < > <= >= == /=
 - be careful for not equal to
 - Logical operators
 - || && not
 -
 -}

-- if in Haskell
-- not used much
-- you ALWAYS have to have else
-- and then
-- double the even numbers
doubleEvenNumber y = 
   if (y `mod` 2 /= 0)
       then y
       else y * 2

-- switch in Haskell
getClass :: Int -> String
getClass n = case n of
    1 -> "Monday"
    2 -> "Tuesday"
    3 -> "Wednesday"
    4 -> "Thursday"
    5 -> "Friday"
    6 -> "Saturday"
    7 -> "Sunday"
    _ -> "Not a day"