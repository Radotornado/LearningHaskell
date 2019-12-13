module AufgabeEins where

-- define a type MyList a 
data MyList a = Empty | List a (MyList a) 
    deriving (Eq, Show)

-- list used to test functions
testList  = List 5 $ List 3 $ List 1 $ List 9 Empty
testList' = List 2 $ List 4 $ List 6 $ List 8 Empty

-- return the head of the list
myHead :: MyList a -> a
myHead Empty      = error "no head of empty list"
myHead (List a _) = a

-- check if the list is empty
myIsEmpty :: MyList a -> Bool
myIsEmpty Empty = True
myIsEmpty _     = False

-- convert a myList a to haskell list [a]
myListToHaskellList :: MyList a -> [a]
myListToHaskellList Empty      = []
myListToHaskellList (List a b) = a : myListToHaskellList b

-- convert a haskell list [a] to myList a
haskellListToMyList :: [a] -> MyList a
haskellListToMyList []     = Empty
haskellListToMyList (x:xs) = List x $ haskellListToMyList xs 

-- give the length of a myList a
myLength :: MyList a -> Int 
myLength Empty = 0
myLength (List a b) = 1 + myLength b 

-- concatiante two myList a 
myConcat :: MyList a -> MyList a -> MyList a 
myConcat a          Empty      = a
myConcat Empty      b          = b
myConcat (List a c) b          = List a $ myConcat c b

-- return the n-th element 
myNth :: MyList a -> Int -> a
myNth Empty _      = error "No elements in empty list"
myNth (List a b) n
    | n >  1 = myNth b (n-1)
    | n == 1 = a