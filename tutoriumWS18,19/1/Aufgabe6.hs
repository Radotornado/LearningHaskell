module AufgabeSechs where

-- give the nth fibonacci number
fib :: Integer -> Integer
fib 1 = 1
fib 2 = 1
fib n = fib (n-1) + fib (n-2)

-- sum all natural numbers till n
sumup :: Integer -> Integer
sumup 0 = 0
sumup 1 = 1
sumup n = n + sumup (n-1)

sumup' :: Integer -> Integer
sumup' n = foldr (+) 0 [1.. n ]

-- calculate binomial coefficient
binom :: Integer -> Integer -> Integer
binom _ 0 = 1
binom 0 _ = 0
binom n k = ( binom (n -1) (k -1)) + ( binom (n -1) k)

binom' :: Integer -> Integer -> Integer 
binom' 0 0 = 1
binom' 1 1 = 0
binom' n k = fac n `div` (fac k * fac (n-k)) 

-- calculate factorial
fac :: Integer -> Integer
fac 0 = 1
fac n = n * fac (n-1)

-- calculate if x is a prime number
isprime :: Integer -> Bool
isprime 1 = False
isprime x = not ( hasdivisor (x -1) x )

hasdivisor :: Integer -> Integer -> Bool 
hasdivisor 1 _ = False
hasdivisor x y = (y `mod` x ) == 0 || hasdivisor (x -1) y

-- calculate x to the y power
pow :: Integer -> Integer -> Integer
pow x 1 = x
pow x y = x * pow x (y-1)

-- make pow with less recursion
betterPow :: Integer -> Integer -> Integer
betterPow x 1 = x
betterPow x y | x `mod` 2 == 0 = betterPow (x^2) (y-1)
              | otherwise = pow x y