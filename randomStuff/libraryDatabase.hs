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
exampleDb = [("Rado", "The green mile"), ("Ani", "Drone"),
             ("Person1", "The green mile"), ("Ben", "GdI")]

-- defining the lookup functions
getListOfBooks :: Database -> Person -> [Book]
getListOfBooks []            borrower = []
getListOfBooks ((p, b):rest) borrower 
    | p == borrower = b : getListOfBooks rest borrower 
    | otherwise     = getListOfBooks rest borrower

-- check if a certain book is borrowed
isThisBookBorrowed :: Database -> Book -> Bool
isThisBookBorrowed [] book = False
isThisBookBorrowed ((p, b):rest) book 
    | b /= book = isThisBookBorrowed rest book
    | otherwise = True

-- gives a list of all the borrowers who have this book
getAllBorrowers :: Database -> Book -> [Person]
getAllBorrowers []           book = []
getAllBorrowers ((p,b):rest) book  
    | book == b = p : getAllBorrowers rest book 
    | otherwise = getAllBorrowers rest book

-- insert the given person and book into the DB
makeLoan :: Database -> Person -> Book -> Database
makeLoan database person book = (person, book) : database

-- go through the DB and remove the given person and book
returnLoan :: Database -> Person -> Book -> Database
returnLoan ((p,b):rest) person book 
    | p == person && b == book =         returnLoan rest person book 
    | otherwise                = (p,b) : returnLoan rest person book 