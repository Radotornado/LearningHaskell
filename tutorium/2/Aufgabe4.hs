module AufgabeVier where

-- write the following without list comprehensions
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

-- list of all even numbers between 0 and 100 using filter
listAllEvenNumbers = filter even [0..100]

-- list of all even numbers between 0 and 100 using map
listAllEvenNumbers' = map (2*) [0..50]

-- list of all odd numbers between 0 and 100 using map
listAllOddNumbers = map (\x -> 2*x + 1) [0..50]

-- list all sqare numbers between 0 and 100
listAllSquareNumbers =  filter (\x -> x*x < 100) [1..100]