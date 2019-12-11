module Tree where

data Tree a = Empty
            | Node a (Tree a) (Tree a) 
            deriving (Show)

leaf :: a -> Tree a
leaf a = Node a Empty Empty


{-
 -     6
 -    / \ 
 -   3   8 
 -  / \   \ 
 - 2   8   4
 -    /
 -   5 
 -}
t = Node 6 (Node 3 (leaf 2) (Node 8 (leaf 5) Empty)) (Node 8 Empty (leaf 4))


height :: Tree a -> Int
height (Empty) = 0
height (Node _ r l) = 1 + max (height l) (height r)

preorder :: Tree a -> [a]
preorder (Empty)      = []
preorder (Node x l r) = [x] ++ preorder l ++ preorder r

postorder :: Tree a -> [a]
postorder (Empty)      = []
postorder (Node x l r) = postorder l ++ postorder r ++ [x]

inorder :: Tree a -> [a]
inorder (Empty)      = []
inorder (Node x l r) = inorder l ++ [x] ++ inorder r