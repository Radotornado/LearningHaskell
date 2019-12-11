module Robot where

type State = ((Int, Int), Direction)

data Direction = North | East | West | South 
    deriving (Enum, Show)
data Action = L | R | S 
    deriving (Show)

turnLeft :: Direction -> Direction 
turnLeft North = West
turnLeft West  = South
turnLeft South = East 
turnLeft East  = North

turnRigth :: Direction -> Direction
turnRigth North = East 
turnRigth East  = South
turnRigth South = West 
turnRigth West  = North

step :: (Int, Int) -> Direction -> (Int, Int)
step (x, y) North = (x  , y+1)
step (x, y) West  = (x-1, y  )
step (x, y) East  = (x+1, y  )
step (x, y) South = (x  , y-1)

action :: State -> Action -> State
action (p, d) L = (p, turnLeft  d)
action (p, d) R = (p, turnRigth d)
action (p, d) S = (step p d, d)

trip :: State -> [Action] -> [State]
trip s [] = [s]
trip s (x:xs) = s : trip (action s x) xs