module Vorklausur where



rev :: [a] -> [a]
rev [] = []
rev xs = revHelp [] xs  
    where                                         
        revHelp ys [] = xs   
        revHelp ys (z:zs) = revHelp (z:ys) zs
                                                   