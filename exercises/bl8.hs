module BlattEight where

{-
 -
 - Exercise 1
 - Termination and Correctness
 -
 -}
absSumTo :: Integer -> Integer 
absSumTo n
    | n == 0 = 0
    | n <  0 = absSumTo (-n)
    | n >  0 = n + absSumTo (1-n)
   

{-
 -
 - Exercise 2
 - Lists
 - (must be done with list comprehensions)
 -
 -}

-- (a) double every element in list
verdoppelt :: [Int] -> [Int]
verdoppelt x = [2*a | a <- x]

-- (b) make multiplication table
--     tabelle 3 == [[1,2,3],[2,4,6],[3,6,9]]
tabelle :: Int -> [[Int]]
tabelle x = [[a * b | b <- [1..x]] | a <- [1..x]]

-- (c) recieves a function and deletes the items
--     that do not fulfill it
--     filterOut even [7,6,5,4,3,2,1] == [7,5,3,1] 
filterOut :: (a -> Bool) -> [a] -> [a]
filterOut f x = [a | a <- x, f a == False]

-- (d) give out all squares till n 
--     squares0To 50 == [0,1,4,9,16,25,36,49]
squares0To :: Integer -> [Integer]
squares0To x = [a*a | a <- [0..x], a*a <= x]