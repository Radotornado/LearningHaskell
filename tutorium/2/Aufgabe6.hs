module AufgabeSechs where 

import Data.List

-- use list comprehensions 

-- [(1,1),(1,2),(1,3),(1,4),
--  (2,1),(2,2),(2,3),(2,4),
--  (3,1),(3,2),(3,3),(3,4)]
fstList = [(x,y) | x <- [1..3], y <- [1..4]]

-- [(2,1),(2,2),(2,3),(2,4),
--  (4,1),(4,2),(4,3),(4,4),
--  (6,1),(6,2),(6,3),(6,4)]
sndList = [(2*x,y) | x <- [1..3], y <- [1..4]]

-- all even numbers between 0 and 100
trdList   = [0,2..100]
trdList'  = [2*x | x <- [0..50]]
trdList'' = [x | x <- [0..100], x `mod` 2 == 0]

-- all odd numbers
fourthList   = [1,3..100]
fourthList'  = [2*x+1 | x <- [0..49]]
fourthList'' = [x | x <- [0..100], x `mod` 2 == 1]

-- [(2,1),
--  (3,1),(3,2),
--  (4,1),(4,2),(4,3),
--  (5,1),(5,2),(5,3),(5,4),
--  (6,1),(6,2),(6,3),(6,4),(6,5)]
fifthList = [(x,y) | x <- [2..6], y <- [1..(x-1)]]

-- [(2,1),(3,1),(4,1),(5,1),(6,1),
--        (3,2),(4,2),(5,2),(6,2),
--              (4,3),(5,3),(6,3),
--                    (5,4),(6,4),
--                          (6,5)]
sixthList = [(x,y) | y <- [1..5], x <- [(y+1)..6]]