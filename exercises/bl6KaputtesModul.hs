module KaputtesModul where

-- Liefert den groesseren der beiden Werte x und y als Ergebnis.
maxWert :: Int -> Int -> Int
maxWert x y = if (x > y) then x else y 

-- Sortiert die Werte in einem Paar aufsteigend.
-- Beispiele: aus (3,5) wird (3,5); aus (5,4) wird (4,5).
sortierePaar :: (Int,Int) -> (Int,Int)
sortierePaar (x,y) =
   waehle (y == dasGroessere) (y,x) (x,y)
     where dasGroessere = maxWert x y

-- Waehlt aus zwischen a und b.
waehle True  a b = b
waehle False a b = a

-- Gibt an, ob der uebergebene Wert 0 ist.
istNull :: Integer -> Bool
istNull 0 = True
istNull _ = False

{- 

module Kaputtes Modul

-- Liefert den groesseren der beiden Werte x und y als Ergebnis.
maxWert :: Int -> Int
maxwert x y = if x > y then x

-- Sortiert die Werte in einem Paar aufsteigend.
-- Beispiele: aus (3,5) wird (3,5); aus (5,4) wird (4,5).
SortierePaar :: (Int,Int) -> (Int,Int)
SortierePaar (x,y) =
   waehle (y == dasGroessere) (x,y) (y,x)
     where
dasGroessere = maxWert x y

-- Waehlt aus zwischen a und b.
waehle True  a b = b
waehle False a b = a

-- Gibt an, ob der uebergebene Wert 0 ist.
istNull : Integer -> Bool
istNull 0
= True
istNull wasanderes = false

-}