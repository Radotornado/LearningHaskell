module EnumerationTypes where

-- define data types
-- if you wanna print it out as String use deriving show

data BaseballPlayer = Pitcher
                    | Catcher
                    | Infielder
                    | Outfield
                deriving Show

-- set a new data type
barryBonds :: BaseballPlayer -> Bool
barryBonds Outfield = True

-- prints true
barryInOF = print(barryBonds Outfield)