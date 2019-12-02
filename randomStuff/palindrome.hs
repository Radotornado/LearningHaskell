module Palindrome where

import Data.Char

isPalindrome :: String -> Bool 
isPalindrome [] = True
isPalindrome str = loweredString == reverseList loweredString
                 where loweredString = lowerString str

reverseList :: [a] -> [a]
reverseList []     = []
reverseList (x:xs) = reverseList xs ++ [x]

lowerString :: String -> String
lowerString str = [ toLower lowerChar | lowerChar <- str]