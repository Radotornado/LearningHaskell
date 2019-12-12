module AufgabeSechs where 

-- use list comprehensions 

-- TODO:
-- [(1,1),(1,2),(1,3),(1,4),
--  (2,1),(2,2),(2,3),(2,4),
--  (3,1),(3,2),(3,3),(3,4)]
fstList = [(x,y) | x <- [1..3] | y <- [1..3]]