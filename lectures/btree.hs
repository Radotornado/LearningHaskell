module Btree where

data BTREE a = Notree
             | Node (BTREE a) a (BTREE a)
             deriving Show

{-
    3
   / \ 
  4   7


-}
testBtree = Node (Node Notree 4 Notree) 3 (Node Notree 7 Notree)

left :: BTREE a -> BTREE a
left Notree         = error "left of Notree called"
left (Node l _ _)   = l

right :: BTREE a -> BTREE a
right Notree        = error "right of Notree called"
right (Node _ _ r)  = r

label :: BTREE a -> a
label Notree        = error "label of Notree called"
label (Node _ x _)  = x

isempty :: BTREE a -> Bool
isempty Notree       = True
isempty (Node _ _ _) = False

depth :: BTREE a -> Int
depth Notree        = 0
depth (Node l _ r)  = 1 + max (depth l) (depth r)

breadthfirst :: BTREE a -> [a]
breadthfirst tree =
    let  doForest :: [BTREE a] -> [a]
         doForest []               = []
         doForest (Notree : t)     = doForest t
         doForest (Node l x r : t) =
                          x : doForest (t ++ [l,r])
    in doForest [tree]