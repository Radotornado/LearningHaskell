module QuadraticEquation where

{- 
 - A program to calculate the roots of a
 - quadratic equasion using the formula
 - (-b +- sqrt(b2 – 4ac) ) / 2a
 -}

-- calculate the root if there is only one 
-- if a is 0 return error
oneRoot :: Float -> Float -> Float -> Float
oneRoot a b c 
    | (a /= 0.0) = -b/(2.0*a)
    | otherwise  = error "oneRoot called with a==0"

-- calculate two roots 
twoRoots :: Float -> Float -> Float -> (Float, Float)
twoRoots a b c = (d-e,d+e) 
                where 
                    d = -b/(2.0*a)
                    e = sqrt(b^2-4.0*a*c)/(2.0*a)

-- main function - creates the string 
-- from the header (what the equasion is) 
-- and how many and which roots are there
quadAnalyse :: Float -> Float -> Float -> String
quadAnalyse a b c = header a b c ++ roots a b c

-- creates the header string
header :: Float -> Float -> Float -> String
header a b c = "The quadratic equasion: " ++
               show a ++ "*x^2 + " ++ 
               show b ++ "*x + " ++
               show c ++ " = 0.0" ++ " has "

-- decides how many roots are there
roots :: Float -> Float -> Float -> String
roots a b c
    | b^2 >  4.0*a*c
             = "two roots: " ++ show f ++ " " ++ show s
    | b^2 == 4.0*a*c
             = "one root: " ++ show (oneRoot a b c)
    | otherwise 
             = "no roots"
    where 
     (f, s) = twoRoots a b c