module AufgabeZwei where 

-- define the binary tree
data BinTree a = NoTree 
               | Node (BinTree a) a (BinTree a)
               deriving Show

{-
 - sample tree only for testing
 - 
 -     6
 -    / \ 
 -   3   8 
 -  / \   \ 
 - 2   8   4
 -    /
 -   5 
 -}
testBinTree = Node (Node (Node NoTree 2 NoTree) 3 
              (Node (Node NoTree 5 NoTree) 8 NoTree)) 6 
              (Node NoTree 8 (Node NoTree 4 NoTree))

-- return the left subtree
leftSubTree :: BinTree a -> BinTree a 
leftSubTree NoTree       = error "empty tree"
leftSubTree (Node l _ _) = l

-- determine if tree is empty
emptyTree :: BinTree a -> Bool 
emptyTree NoTree       = True 
emptyTree (Node _ _ _) = False

-- determine if element is present in the tree
searchTreeElem :: (Eq a) => BinTree a -> a -> Bool 
searchTreeElem NoTree _       = False 
searchTreeElem (Node l x r) n 
    | x == n = True 
    | otherwise = (searchTreeElem l n) || (searchTreeElem r n)

-- return the tree as List
toList :: BinTree a -> [a]
toList NoTree       = []
toList (Node l x r) = toList l ++ [x] ++ toList r

-- determine the number of nodes in a tree
numberOfNodes :: BinTree a -> Int 
numberOfNodes NoTree = 0
numberOfNodes (Node l x r) = 1 + (numberOfNodes l) + (numberOfNodes r)