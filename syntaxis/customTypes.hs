module CustomTypes where

-- create a custom type as a struct
-- use Upper case
-- we want Two Strings and a Double
data Customer = Customer String String Double
    deriving Show

-- create a new customer
tomSmith :: Customer
tomSmith = Customer "Tom Smith" "123 Main" 20.50

-- get just the balance of the customer
getBalance :: Customer -> Double 
getBalance (Customer _ _ b) = b




-- rock paper scissors 
data RPS = Rock | Paper | Scissors

-- define rock paper scissors
shoot :: RPS -> RPS -> String
shoot Scissors Paper     = "Scissors beats Paper"
shoot Scissors Rock      = "Scissors loses to Rock"
shoot Paper    Scissors  = "Paper loses to Scissors"
shoot Paper    Rock      = "Paper beats Rock"
shoot Rock     Paper     = "Rock loses to Paper"
shoot Rock     Scissors  = "Rock beats Paper"
shoot _        _         = "Error"




-- we wanna create two versions of a type
data Shape = Circle Float Float Float 
           | Rectangle Float Float Float Float
           deriving Show 

area :: Shape -> Float

area (Circle _ _ r)        = pi * r ^ 2
area (Rectangle x y x2 y2) = (abs (x2 - x)) * (abs (y2 - y))
-- you can also get rid of parentesis with dollar sign
-- area (Rectangle x y x2 y2) = (abs $ x2 - x) * (abs $ y2 - y)

-- calculate areas
areaOfCircle = area (Circle    50 60 20)
areaOfRect   = area (Rectangle 10 10 100 100)