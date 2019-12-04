module BlattSeven where

{-
 -
 - Exercise 1
 - Recursion in Haskell
 -
 -}

-- (a) write a recursive fucntion that calculates the 
--    squares all numbers from 0 to n 
--    and then sums only the even ones
sumOfEvenProducts :: Int -> Int
sumOfEvenProducts 0 = 0
sumOfEvenProducts n | even (n^2) = n^2 + sumOfEvenProducts (n-1)
                    | otherwise = sumOfEvenProducts (n-1)

sumOfEvenProducts' :: Int -> Int 
sumOfEvenProducts' n = sum [a^2 | a <- [1..n], even a]

-- (b) give the n'th fibonacci number recursive
fib :: Int -> Int
fib n | n <= 0 = 0
      | n == 1 = 1
      | n >  1 = fib (n-1) + fib (n-2)
            
-- (c) give a tuple with the n'th fibonacci number 
--    and the sum of all numbers till n
fibSum :: Int -> (Int, Int)
fibSum n | n <= 0 = (0, 0)
         | n == 1 = (1, 1)
         | n >= 1 = (fib n, c)
           where c = sum [fib a | a <- [1..n]]

-- d) multiply two numbers using only +, - and recursion
mult :: Int -> Int -> Int
mult _ 0 = 0
mult m 1 = m
mult m n = m + mult m (n-1)

-- (e) give the number of times you can divide x from y 
numDiv :: Int -> Int -> Int
numDiv _ 0 = 0
numDiv x y | x `mod` y == 0 = 1 + numDiv (x `div` y) y
           | otherwise = 0

-- (f) set the n'th Boolean to The given one
setValue :: Int -> (Bool, Bool, Bool, Bool, Bool)
                -> Bool -> (Bool, Bool, Bool, Bool, Bool)
setValue 0 (a, b, c, d, e) f = (f, b, c, d, e) 
setValue 1 (a, b, c, d, e) f = (a, f, c, d, e) 
setValue 2 (a, b, c, d, e) f = (a, b, f, d, e) 
setValue 3 (a, b, c, d, e) f = (a, b, c, f, e) 
setValue 4 (a, b, c, d, e) f = (a, b, c, d, f) 
setValue _ (_, _, _, _, _) _ = (False, False, False, False, False)

-- (g) 

{-
 -
 - Exercise 2
 - Mathematical induction over 
 - recursive functions
 -
 -}
 
sub :: Int -> Int -> Int 
sub x 0 = x                   -- sub.1
sub x y = (sub x (y - 1)) - 1 -- sub.2

{-
 -
 - Exercise 3
 - Simple lists
 -
 -}

-- write a function using recursion that counts from n to 0
countToZero :: Int -> [Int]
countToZero n | n > 0 = n : countToZero (n-1)
              | n < 0 = n : countToZero (n+1)
              | otherwise = [0]

{-
 -
 - Exercise 4
 - Haskell: Prelude
 -
 -}

-- (i) concatinate 2 Strings recursively 
conc :: [a] -> [a] -> [a]
conc [] [] = []
conc [] (y:ys) = y : conc [] ys
conc (x:xs) y = x : conc xs y

-- (ii) 
-- TODO:

{-
 -
 - Exercise 5
 - Haskell: Lists
 -
 -}
-- TODO:


{-
 -
 - Exercise 6
 -
 -}

foo :: Int -> Int  -> Int 
foo a b | a <= 0 || b <= 0 = 1
        | a > b            = (foo ((a-b) `div` 2) b) + (foo (a-1) b)
        | otherwise        = (foo a (b-a))           + (foo (b-1) a)