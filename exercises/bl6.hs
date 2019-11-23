module BlattSix where
{-
 -
 - Exercise 1
 -
 -}

f = let a = let b = c+4
                d = 2+b
            in a*b+c-2
        x = 2
        b = let a = x-1
            in 2*a+x
        c = 2*b
    in a+b+c

{-
 -
 - Exercise 2
 -
 -}

half :: Double -> Double
half z = z / 2.0

avg :: Double -> Double -> Double 
avg x y = half (x+y)