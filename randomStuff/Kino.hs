module Kino where

data Film     = HP | TF
data Kasse    = Film Kasse | Ausverkauft
data Besucher = (String, Film)
data Schlange = Besucher Schlange | Ende

