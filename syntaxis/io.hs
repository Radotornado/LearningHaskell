module IO where

import Data.List
import System.IO


-- do allows to chain multiple things together
sayHello = do 
    putStrLn "What's your name"
    name <- getLine 
    putStrLn ("Hello" ++ name)

-- write to a file
writeToFile = do
    theFile <- openFile "test.txt" WriteMode
    hPutStrLn theFile ("RandomLineOftext")
    hClose theFile

-- read from file
readFromFile = do
    theFile2 <- openFile "test.txt" ReadMode
    contents <- hGetContents theFile2
    putStr contents
    hClose theFile2