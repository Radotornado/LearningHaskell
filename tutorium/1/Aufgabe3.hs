module AufgabeDrei where

-- pattern matching

my_day :: Int -> String
my_day 1 = "Montag"
my_day 2 = "Dienstag"
my_day 3 = "Mittwoch"
my_day 4 = "Donnerstag"
my_day 5 = "Freitag"
my_day 6 = "Samstag"
my_day 7 = "Sontag"
my_day _ = "Kein Tag"

-- if either a or b is 0 true
-- my_null :: Int -> Int -> Bool
my_null :: ( Num a, Eq a ) => a -> a -> Bool
my_null 0 _ = True
my_null _ 0 = True 
my_null _ _ = False

-- if a is true b is *2, else /2
-- my_doublehalf :: Bool -> Double -> Double 
my_doublehalf :: ( Fractional a) => Bool -> a -> a
my_doublehalf True  b = b * 2
my_doublehalf False b = b / 2
