module Bl9Ex4 where

data Tree = E 
          | N Tree Char Tree 

{-
 -       b
 -      / \
 -     a   .
 -    / \
 -   .   c
 -      / \
 -     d   .
 -    / \
 -   e   f
 -  / \ / \
 - .   ..  .
 -}
testTree  = N (N E 'a' (Node (Node (Node E 'e' E) 'd' 
            (Node E 'f' E)) 'c' E)) 'b' E

preorder :: Tree -> String
preorder E = "."
preorder (N l c r) = 
