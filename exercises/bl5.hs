module BlattFive where
{-
 -
 - Exercise 14
 -
 -}

a = (\x -> 2 * (1 + x)) 0

b = (\x -> 1) 0

c  = (\x -> (\y -> (not x) || y)) True False 
c' = (\x y -> (not x) || y) True False

d  = (\x -> (\y -> x + (x * y))) 3 2
d' = (\x y -> x + (x * y)) 3 2

e = (\(x,z) -> z - x + 7) (1, ((\y -> 2 * y) 4))

f = (\f -> f 4 - f 3) (\x -> x ^ 2)

g  = let x = 3 in (\y -> (\x -> x * y) (y + 1)) x
g' = let x = 3 in (\y x -> x * y) x (y + 1)

h = let x = 3 in (\x -> (\x -> x * x) (x + 1)) x

i  = (\f -> (\x -> x + f (f x))) (\x -> x + 1) 1
i' = (\f x -> x + f (f x)) (\x -> x + 1) 1

{-
 -
 - Exercise 15
 -
 -}

j  = let x = 3 
         c = 1 in (\f -> (\g -> (\a -> (\b -> f (g a) (b * x) + c))))  
                     (\l -> (\r -> l + r)) (\l -> l * x ^ 2) 2 1   
j' = let x = 3
         c = 1 in (\f g a b -> f (g a) (b * x) + c) 
                     (\l r -> l + r) (\l -> l * x ^ 2) 2 1
                    
{-
 -
 - Exercise 17
 -
 -}

-- (a)

k = (17 :: Integer) +  4            -- 21
l =  17             + (4 :: Int)    -- 21 
-- m = (17   :: Integer) + (4 :: Int)  -- error
-- n = (17.5 :: Double)  + (4 :: Int)  -- error


-- (b)

o = length ("hello" ++ "there")     -- 10
-- p = length "hello" ++ "there"    -- error

-- (c)

-- :t (\z -> (\y -> (z :: Int) + 3 * y)) 2
-- => (\z -> (\y -> (z :: Int) + 3 * y)) 2 :: Int -> Int

-- :t (\z -> (\y -> (z :: Int) + 3 * y)) (\y -> y - 2) 4
-- => error