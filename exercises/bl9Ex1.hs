module Bl9Ex1 where

data Maybe a = Nothing 
             | Just a

mapFilter :: (a -> Maybe b) -> [a] -> [b]
mapFilter 