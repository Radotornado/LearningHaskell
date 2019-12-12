{-# LANGUAGE Rank2Types #-}

-- issues with System.Random because it's not installed by default
-- cabal update -> cabal install random

module Quicksort where

import Data.List
import System.Random

--
-- Testfunktion fuer Sortierfunktionen. Aufruf im GHCi
-- mit:
--    testSort quicksort
--
testSort :: (forall a. Ord a => [a] -> [a]) -> IO ()
testSort sortFn = do
  performTest (-20,20::Int)
  performTest ('A','Z')
    where
      performTest :: (Ord b, Random b, Show b) => (b,b) -> IO ()
      performTest range = do
        count <- randomRIO (0,20::Int)
        gen <- getStdGen
        let values = take count $ randomRs range gen
            sortedValues = sortFn values
            result = if sortedValues == sort values then "OK" else "FEHLER"
        putStrLn ("Sortieren von " ++ show values ++
                  " liefert " ++ show sortedValues ++ ": " ++ result)


quicksort :: Ord a => [a] -> [a]
quicksort xs = undefined
