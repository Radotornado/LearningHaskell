module Stack where

data STACK a = EmptyStack | Push a (STACK a)
                deriving Show

isEmptyStack :: STACK a -> Bool
isEmptyStack EmptyStack = True
isEmptyStack (Push _ _) = False

top :: STACK a -> a
top EmptyStack = error ("top of empty stack")
top (Push x _) = x

pop :: STACK a -> STACK a 
pop EmptyStack = error ("pop of empty stack")
pop (Push _ s) = s