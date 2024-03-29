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

verdoppelt' :: [Int] -> [Int]
verdoppelt' x = map (*2)

-- (b) make multiplication table
--     tabelle 3 == [[1,2,3],[2,4,6],[3,6,9]]
tabelle :: Int -> [[Int]]
tabelle x = [[a * b | b <- [1..x]] | a <- [1..x]]

-- (c) recieves a function and deletes the items
--     that do not fulfill it
--     filterOut even [7,6,5,4,3,2,1] == [7,5,3,1] 
filterOut :: (a -> Bool) -> [a] -> [a]
filterOut f x = [a | a <- x, f a == False]

filterOut' :: (a -> Bool) -> [a] -> [a]
filterOut' f x = [a | a <- x, not (f x)]

-- (d) give out all squares till n 
--     squares0To 50 == [0,1,4,9,16,25,36,49]
squares0To :: Integer -> [Integer]
squares0To x = [a*a | a <- [0..x], a*a <= x]

squares0To' :: Integer -> [Integer]
squares0To' n = [m*m | m <-[0..floor(sqrt (fromIntegral n))]]

squares0To'' :: Integer -> [Integer]
squares0To'' n = [m | m <-[0..n], r <-[0..n], m==r*r]

-- (e) 
doubleDice :: Int -> Double 
doubleDice n = (sum [max k m | k <-[1..n], m <-[1..n]])/ (n^2)

{-
 -
 - Exercise 3
 - Higher order functions
 - (are functions that recieve functions)
 -
 -}

-- (a) write a function that recieves a function 
--     and applies it thrice

-- Example with twice
-- twice (\x -> x^2) 3 == (3^2)^2 == 81
twice :: (a -> a) -> (a -> a)
twice f v = f (f v)

trice :: (a -> a) -> (a -> a)
trice f v = f (f (f v))

trice' :: (a -> a) -> (a -> a)
trice' f = \x -> f (f (f x))

trice'' :: (a -> a) -> (a -> a) 
trice'' f = f . f . f

-- (b) same but with n times
ntimes :: Int -> (a -> a) -> (a -> a)
ntimes n f v 
    | n <= 0 = v
    | otherwise = ntimes (n-1) f(f v)

ntimes' :: Int -> (a -> a) -> (a -> a)
ntimes' 0 _ = id
ntimes' n f 
    | n < 0     = error "negative not allowed"
    | otherwise = \x -> ntimes' (n-10) f . f