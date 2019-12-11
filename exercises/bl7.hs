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

sumOfEvenProducts'' :: Int -> Int 
sumOfEvenProducts'' 0 = 0
sumOfEvenProducts'' x | x < 0 = error "x is negative"
sumOfEvenProducts'' x = if even x 
                        then x*x + sumOfEvenProducts'' (x-1)
                        else sumOfEvenProducts'' (x-1)

-- (b) give the n'th fibonacci number recursive
fib :: Int -> Int
fib n | n <  0 = error "n must be positive"
      | n == 0 = 0
      | n == 1 = 1
      | n >  1 = fib (n-1) + fib (n-2)
            
-- (c) give a tuple with the n'th fibonacci number 
--    and the sum of all numbers till n
fibSum :: Int -> (Int, Int)
fibSum n | n <= 0 = (0, 0)
         | n == 1 = (1, 1)
         | n >= 1 = (fib n, c)
           where c = sum [fib a | a <- [1..n]]

fibSum' :: Int -> (Int, Int)
fibSum' n = (fib n, fibSumHelp n)
    where fibSumHelp 0 = fib 0
          fibSumHelp n = fib n + fibSumHelp (n-1)

fibSum'' :: Int -> (Int, Int)
fibSum'' 0 = (0, 0)
fibSum'' n = (fib n, fib n + snd (fibSum'' (n-1)))

fibSum''' :: Int -> (Int, Int)
fibSum''' 0 = (0, 0)
fibSum''' n = (fib n, fib n + b)
    where (_, b) = fibSum''' (n-1)

fibSum'''' :: Int -> (Int, Int)
fibSum'''' 0 = (0, 0)
fibSum'''' 1 = (1, 1)
fibSum'''' n = (a+c, a+c+b)
    where (a, b) = fibSum'''' (n-1)
          (c, _) = fibSum'''' (n-2)


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
           
numDiv' :: Int -> Int -> Int
numDiv' x y 
    | y == 0         = error "Division by zero"
    | x `mod` y == 0 = 1 + numDiv' (x `div` y) y
    | otherwise      = 0

-- (f) set the n'th Boolean to The given one
setValue :: Int -> (Bool, Bool, Bool, Bool, Bool)
                -> Bool -> (Bool, Bool, Bool, Bool, Bool)
setValue 0 (_, b, c, d, e) f = (f, b, c, d, e) 
setValue 1 (a, _, c, d, e) f = (a, f, c, d, e) 
setValue 2 (a, b, _, d, e) f = (a, b, f, d, e) 
setValue 3 (a, b, c, _, e) f = (a, b, c, f, e) 
setValue 4 (a, b, c, d, _) f = (a, b, c, d, f) 
setValue _ _               _ = error "no passing component"

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

countToZero' :: Int -> [Int]
countToZero' 0 = [0]
countToZero' n = n : countToZero' (if n>0 then n-1 else n+1)

countToZero'' :: Int -> [Int]
countToZero'' 0 = [0]
countToZero'' n = n : countToZero'' (n - signum n)

{-
 -
 - Exercise 4
 - Haskell: Prelude
 -
 -}

-- (i) concatinate 2 Strings recursively 
conc :: [a] -> [a] -> [a]
conc [] [] = []
conc [] ys = ys
conc (x:xs) y = x : conc xs y

-- (ii) 
-- reduce  (+) 3 [1,4] == (3 + 1) + 4 == 8
reduce  :: (a -> b -> a) -> a -> [b] -> a
reduce _ z []     = z
reduce f z (x:xs) = reduce f (f z x) xs

{-
 -
 - Exercise 5
 - Haskell: Lists
 -
 -}
-- make into two lists
unzip' :: [(a,b)] -> ([a],[b])
unzip' [] = ([], [])
unzip' ((a,b):xs) = (a:fst u,b:snd u) 
                  where u = unzip' xs

 {-
 -
 - Exercise 6
 -
 -}

foo :: Int -> Int  -> Int 
foo a b | a <= 0 || b <= 0 = 1
        | a > b            = (foo ((a-b) `div` 2) b) + (foo (a-1) b)
        | otherwise        = (foo a (b-a))           + (foo (b-1) a)