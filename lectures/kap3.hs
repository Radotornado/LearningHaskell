module KapitelThree where
{-
 -
 - 3.1 Functional programming
 -
-}

-- Quadrat
a = (\x -> x ^ 2) 4

-- Exponent
b = (\(x,y) -> x ^ y) (3,4)
 
-- Projection
c = (\(x,y) -> x) (3,4)

a' :: Float
a' = 5.0 - 3.0

half :: Float -> Float

half x = x/2.0

half' :: Float -> Float
half' = \x -> x/2.0