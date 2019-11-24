module TypeClasses where

{-
 - type classes are things like 
 - Num, Equals, Ord, Show
 - type classes correspond to 
 - sets of types that have certain operations to find for them
 - addition uses Num and so on
 - For example :t (+) gives
 - (+) :: Num a => a -> a -> a
 - Num is a typeClass
 -}

data Employee = Employee { name :: String,
                           position :: String,
                           idNum :: Int 
                           } deriving (Eq, Show)

-- create two employees
samSmith = Employee {name = "Sam Smith", position = "Manager", idNum = 100}
pamMarx  = Employee {name = "Pam Marx",  position = "Sales",   idNum = 101}

-- returns false
isSamPam = samSmith == pamMarx

-- returs the data for SamSmith
samSmithData = show samSmith






-- define new typeClass
data ShirtSize = S | M | L 

-- override the Eq in order to be able to check if equal
instance Eq ShirtSize where
    S == S = True
    M == M = True
    L == L = True 
    _ == _ = False

-- override show
instance Show ShirtSize where 
    show S = "Small"
    show M = "Medium"
    show L = "Large"

-- check if small is in a list
smallAvail = S `elem` [S, M, L]

-- show
theSize = show S







-- define custom type classes
class MyEq a where
    areEqual :: a -> a -> Bool

instance MyEq ShirtSize where
    areEqual S S = True
    areEqual M M = True
    areEqual L L = True
    areEqual _ _ = True

newSize = areEqual M M