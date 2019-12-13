module AufgabeDrei where 

import Data.Ratio

-- define our own rational numbers type
-- it consists of a whole number 
-- and a natural number /= 0
data MyRational = Rat Integer Integer
    deriving Show

-- just a test
testRational  = Rat 4 5
testRational' = Rat 2 3

-- multiply two rational numbers
mulRatio :: MyRational -> MyRational -> MyRational
mulRatio (Rat a b) (Rat c d) = Rat (a*c) (b*d)

-- divide two rational numbers
divRatio :: MyRational -> MyRational -> MyRational
divRatio (Rat a b) (Rat c d) 
    | (d == 0) || (b == 0) = error "division by zero"
    | otherwise            = Rat (a `div` c) (b `div` d)

-- add two rational numbers
addRatio :: MyRational -> MyRational -> MyRational
addRatio (Rat a b) (Rat c d) = Rat (a*d + c*b) (b*d)

-- sub two rational numbers
subRatio :: MyRational -> MyRational -> MyRational
subRatio (Rat a b) (Rat c d) = Rat (a*d - c*b) (b*d)

-- check for equality
equalRatio :: MyRational -> MyRational -> Bool
equalRatio (Rat a b) (Rat c d) = a*d == b*c

-- convert to normal Rational
toRatio :: MyRational -> Rational
toRatio (Rat a b) = a % b

-- check if less
lessThan :: MyRational -> MyRational -> Bool
lessThan (Rat a b) (Rat c d) = a*d < b*c