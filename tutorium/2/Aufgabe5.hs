module AufgabeFuenf where

-- write these functions without using list comprehensions
-- you can use map, filter, all and any

-- map :: (a -> b) -> [a] -> [b]
-- map abs [-1,-3,4,-12]            == [1,3,4,12] 
-- map reverse ["abc","cda","123"]  == ["cba","adc","321"] 
-- map (3*) [1,2,3,4]               == [3,6,9,12] 

-- filter :: (a -> Bool) -> [a] -> [a]
-- filter (>5) [1,2,3,4,5,6,7,8] == [6,7,8] 
-- filter odd [3,6,7,9,12,14]    == [3,7,9] 

-- all :: (a -> Bool) -> [a] -> Bool
-- all (<10) [1,3,5,7,9]              == True
-- all (==1) [1,1,0,1,1]              == False  
-- all even [2,4,6,8,10]              == True 
-- all (\x -> (x*x)/4 > 10) [5,10,15] == False 

-- any :: (a -> Bool) -> [a] -> Bool
-- any (1==) [0,1,2,3,4,5]          == True 
-- any (>5) [0,1,2,3,4,5]           == False
-- any even [1,3,5,7,9]             == False 
-- any (\x -> x*4>20) [1,2,3,4,5,6] ==  True 

-- check if all elements in a list are divisible by 3
divisible :: [Int] -> Bool
divisible x = all (\a -> a `mod` 3 == 0) x

-- delete all non-positive elements from a list
positive :: [Int] -> [Int]
positive x = filter (\a -> a > 0) x

-- delete all items which sqare is less than n
squareLessThan :: Int -> [Int] -> [Int]
squareLessThan n x = filter (\a -> a*a <= n) x

-- delete all items which square is >= n and double all others
doubleSquareLessThan :: Int -> [Int] -> [Int]
doubleSquareLessThan n x = map (*2) (filter (\a -> a*a <= n) x)