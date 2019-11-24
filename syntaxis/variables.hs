module Variables where
-- most important libraries
import Data.List
import System.IO

{- 
 -
 -
 - Defining variables, lists and constants
 -
 -
 -}

-- Int - max and min
maxInt = maxBound :: Int
minInt = minBound :: Int

-- Integer - unbounded whole number HUDGE
-- Float
-- Double - be careful bad precision
bigFloat = 3.999999999999 + 0.000000000005

-- Bool - True or False
-- Char - 'c'
-- Tuple - contains 2 things

-- Constant
alawys5 :: Int 
alawys5 = 5

-- List - generates sum of the 1st 1000 nums
sumOfNums = sum [1..1000]

-- Simple operations 
addEx  = 5 + 4
subEx  = 5 - 4
multEx = 5 * 4
divEx  = 5 / 4

-- More complex
-- modulo - prefixed 
-- be careful mod stays before 5 and 4
modEx = mod 5 4
-- infix operator 
-- be careful tilda not single quote
modEx2 = 5 `mod` 4 

-- neg numbers
negNumEx = 5 + (-4)

-- math functions 
-- define a number 9
num9 = 9 :: Int 
-- define sqrt from this number
-- :t gives us that sqrt needs a float
-- so we convert it using
-- fromIntegral
sqrtOf9 = sqrt (fromIntegral num9)

-- other math functions
piVal = pi
ePow9 = exp 9
logOf9 = log 9
-- works only with ints  - result - 81
sqared9  = 9 ^ 2
-- works only with float - result - 81.0
sqared9' = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.9999
floorVal = floor 9.999
-- other math functions integrated are
-- sin, cos, tan, asin ...

-- logical operators
trueAndFalse = True && False
trueOrFalse  = True || False 
notTrue = not(True)

-- lists
primeNumbers = [3,5,7,11]
-- add to list
morePrimes = primeNumbers ++ [13,17,19,23]
-- add a colom between operator to 
-- insert one 
-- [] is an empty add
-- shows that this is the end of the list
-- SUPER IMPORTANT 
favNums = 2 : 7 : 21 : 66 : []
-- list inside of list
multList = [[3,5,7],[11,13,17]]
-- add an item in front of list
morePrimes2 = 2 : morePrimes
-- get list length
lenPrime = length morePrimes2
-- reverse a list
revPrime = reverse morePrimes2
-- check if list is empty
isListEmpty = null morePrimes2
-- get 2nd item from the list 
-- it's 1 because 2nd index is 1
secondPrime = morePrimes2 !! 1
-- get first value
firstPrime = head morePrimes2
-- get last value
lastPrime = last morePrimes2
-- get everything except the last value
initPrime = init morePrimes2
-- get only what you need 
-- get first 3 values
first3Primes = take 3 morePrimes2
-- get everything except the first 3
removedPrimes = drop 3 morePrimes2
-- check if a value is in a list
is7InList = 7 `elem` morePrimes2
-- get the maximum or minimum
maxPrime = maximum morePrimes2
minPrime = minimum morePrimes2

newList = [2,3,5]
-- get product of list 
-- 2*3*5 = 30
prodPrimes = product newList

-- generate list with nums from 0 to 10
zeroToTen = [0..10]
-- list from even nums
evenList = [2,4..20]
-- generate character list
letterList = ['A', 'B'..'Z'] 
-- generate infinite list 
infinPow = [10,20..]
-- generates 10 2's
many2s  = take 10 (repeat 2)
many2s' = replicate 10 2
-- repeat list till 10 items
cycleList = take 10 (cycle [1,2,3,4,5])
-- multiply all items by 2
-- result [2,4,6,8,10,12,14,16,18,20]
listTimes2 = [x * 2 | x <- [1..10]]
-- get all <= 50
listTimes3 = [x * 3 | x <- [1..10], x * 3 <= 50]
-- we want all that are divisable by 9 AND 13
divisBy9N13 = [x | x <- [1..500]
               , x `mod` 13 == 0, x `mod` 9 == 0] 
-- sort a list
sortedList = sort [9,1,3,6,13,72,4]
-- sum two listst together
sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]
-- filter lists
listBuiggerThan5 = filter (>5) morePrimes
evensUpTo20 = takeWhile (<= 20) [2,4..]
-- goes from LEFT and multiplies them
multOfList  = foldl (*) 1 [2, 3, 4, 5]
-- goes from RIGHT and multiplies them
multOfList' = foldr (*) 1 [2, 3, 4, 5]
-- power of three list
pow3List = [3 ^ n | n <- [1..10]]
-- multiplication table 
multTable = [[x * y | y <- [1..10]] | x <- [1..10]]

-- just a tuple
randTuple = (1, "Random tuple")
bobSmith = ("Bob Smith", 52)
-- get 1st name
bobsName = fst bobSmith
-- get age
bobsAge = snd bobSmith

-- combine list and tuples with zip
names = ["Bob", "Mary", "Tom"]
addresses = ["Ingling 70", "Apfelkoch 12", "Innstrasse"]
namesNAdresses = zip names addresses

-- how the dot operator wors
sumValue = putStrLn (show (1+2))
sumValue = putStrLn . show $ 1 + 2
