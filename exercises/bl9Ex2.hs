module Bl9Ex2 where

type State = ((Int, Int), Direction)

-- (a) define the four directions that 
--     the robot can take
data Direction = North | East | West | South 
    deriving (Enum, Show)
-- (a) define the actions that the robot can make
--     L = Left, R = Right, S = Step (Forwards) 
data Action = L | R | S 
    deriving (Show)

-- (b) define step that recieves a direction and 
--     and current position and outputs the 
--     position of the robot after a step
step :: (Int, Int) -> Direction -> (Int, Int)
step (x, y) North = (x  , y+1)
step (x, y) West  = (x-1, y  )
step (x, y) East  = (x+1, y  )
step (x, y) South = (x  , y-1)

-- (c) define the turning left 
turnLeft :: Direction -> Direction 
turnLeft North = West
turnLeft West  = South
turnLeft South = East 
turnLeft East  = North

-- (c) define the turning right
turnRigth :: Direction -> Direction
turnRigth North = East 
turnRigth East  = South
turnRigth South = West 
turnRigth West  = North

-- (d) determine and fulfil the action
--     from the recieved starting coordinates
--     and the type of the action
action :: State -> Action -> State
action (p, d) L = (p, turnLeft  d)z
action (p, d) R = (p, turnRigth d)
action (p, d) S = (step p d, d)

-- (e) main function. Recieves the start
--     coordinates and a list of actions to do
trip :: State -> [Action] -> [State]
trip s [] = [s]
trip s (x:xs) = s : trip (action s x) xs