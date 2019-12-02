module LibraryDatabase where

{-
 - A library that uses a database
 - to keep a record of the books
 - on loan to borrowers
-}

-- declaring what the DB is using custom types
type Person   = String
type Book     = String
type Database = [(Person, Book)]

-- sample DB
exampleDb = [("Rado", "The green mile"), ("Ani", "Drone")]

-- defining the lookup functions
getListOfBooks :: Database -> Person -> [Book]
getListOfBooks []                    borrower = []
getListOfBooks ((person, book):rest) borrower 
    | person == borrower = bk : getListOfBooks rest borrower 
    | otherwise          = getListOfBooks rest borrower

-- must define also
-- getBorrowers :: Database -> Book -> [Person]
-- isBorrowed :: Database -> Book -> Bool

-- insert the given person and book into the DB
makeLoan :: Database -> Person -> Book -> Database
makeLoan database person book = (person, book) : database

-- go through the DB and remove the given person and book
returnLoan :: Database -> Person -> Book -> Database
returnLoan ((p,b):rest) person book 
    | p == person && b == book =         returnLoan rest person book 
    | otherwise                = (p,b) : returnLoan rest person book 