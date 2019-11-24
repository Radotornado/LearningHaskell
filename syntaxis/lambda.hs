module Lamda where
-- most important libraries
import Data.List
import System.IO

{- 
 - 
 -
 - Lamda are functions that 
 - don't have a name
 -
 -}

-- doubles numbers from 1 to 10
dbl1To10 = map (\x -> x * 2) [1..10]

-- examples
a = (\x -> 2 + x * (1 + x)) 0
b = (\x -> 1) 0
c = (\x -> (\y -> (not x) || y)) True False
d = (\x -> (\y -> x + (x*y))) 3 2
e = (\(x, z) -> z - x + 7)(1, (\y -> 2 * y) 4)
f = (\f -> f 4 - f 3)(\x -> x ^ 2)
g = let x = 3 in (\y -> (\x -> x * y)(y + 1)) x
h = (\f x -> x + f(f x))(\x -> x + 1) 1
i = (17 :: Integer) + 4
k = 17 + (4 :: Int) 

-- create a list from left to right
-- use zip to pairs from contents of two lists and makes a tuple
-- we create a list with [1,1]
-- lets take the fib and the tail of the fib
-- and pass it to this function
fib = 1 : 1 : [a + b | (a, b) <- zip fib (tail fib)]