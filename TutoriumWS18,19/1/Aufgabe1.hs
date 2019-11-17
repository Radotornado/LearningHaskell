-- my_min :: Int -> Int -> Int 
my_min :: (Ord a) => a -> a -> a
my_min x y | x < y = x
           | otherwise = y

-- my_max :: Int -> Int -> Int 
my_max :: (Ord a) => a -> a -> a
my_max x y | x > y = x
           | otherwise = y
           
my_avg :: Double -> Double -> Double -> Double
my_avg x y z = (x+y+z)/3

my_dif :: Int -> Int -> Int 
my_dif x y | x < y = y - x
           | y > x = x - y

my_exp :: Int -> Int -> Int 
my_exp x y = x ^ y++