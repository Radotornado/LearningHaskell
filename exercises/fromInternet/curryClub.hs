module CurryClub where

import Data.Char

-- https://curry-club-aux.github.io/haskell-workshop/uebung.pdf

{-
 -
 - Exercise 1
 -
 -}


-- (a) recieve a String and return list of booleans that 
--     show if a letter is uppercase or not

--     isLower and map are allowed
--     isLower :: Char -> Bool
--     isLower 'G'

--     map :: (a -> b) -> [a] -> [b]
--     map reverse ["abc","cda","1234"] 

--     determineCases "aDFa" == [True,False,False,True]
determineCases :: String -> [Bool]
determineCases [] = []
determineCases (x:xs) = (isLower x) : (determineCases xs)

-- (b) determine if a String contains only lowercase letters
--     and is allowed

--     and :: [Bool] -> Bool
--     and [True, True, True] == True

-- determineLowerCases "rado" == True
determineLowerCases :: String -> Bool 
determineLowerCases [] = False
determineLowerCases x = and (determineCases x) 