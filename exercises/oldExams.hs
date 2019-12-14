module OldExams where 

-- sum of all numbers from n to 100 
-- if n > 100 return 0
sumNto100 :: Int -> Int 
sumNto100 n
    | n > 100   = 0
    | otherwise = n + (sumNto100 (n+1)) 

-- follow the recursion
func :: (Int, Int) -> Int 
func (a, 0) = a
func (a, b) = func (b-1, a)

-- write a function that recieves a list
-- and an integer and adds every item
-- of the list with the given int
-- addZahl (3, [1,2,3]) == [4,5,6]
addZahl :: (Int, [Int]) -> [Int]
addZahl (_, [])     = []
addZahl (n, (x:xs)) = (x+n) : addZahl (n, xs)

a = let s = 1
        t = let t = 5*s
                s = 8
            in t-s
    in s+t

b = [(a,b) | a <- [1..5], even a, b <-[2..a]]
c = (\z -> 2 - z) 3

sub2Sets :: Ord a => [a] -> [(a,a)]
sub2Sets []  = []
sub2Sets [x] = []
sub2Sets (x:xs) = [(x,b) | b <- xs] ++ sub2Sets xs


data Tree a = Empty | Leaf (Tree a) a (Tree a)
    deriving Show

{-    
-     8
-    / \  
-   2   6
-  / \
- 4   1
-    / \ 
-   3   7
-}
testTree = Leaf (Leaf (Leaf Empty 4 Empty) 2 
           (Leaf (Leaf Empty 3 Empty) 1
           (Leaf Empty 7 Empty))) 8 
           (Leaf Empty 6 Empty)

atLevel :: (Tree a) -> Int -> [a]
atLevel Empty        _ = []
atLevel (Leaf _ x _) 0 = [x]
atLevel (Leaf l x r) n = (atLevel l (n-1)) ++ (atLevel r (n-1))

while :: (a -> Bool) -> (a -> a) -> a -> a
while p f x 
    | p (f x) == True = while p f (f x)
    | otherwise   = x

repeatOuter :: [a] -> Int -> [a]
repeatOuter [] _ = []
repeatOuter x 0 = []
repeatOuter x n = x ++ repeatOuter x (n-1)

repeatInner :: [a] -> Int -> [a]
repeatInner [] _ = []
repeatInner x 0 = []
repeatInner (x:xs) n = [x | a <- [1..n]] ++ repeatInner xs n

helper :: [a] -> Int -> Int -> [a]
helper [] _ _ = []                          -- 1.
helper (x:xs) n 1 = helper xs n n           -- 2.
helper (x:xs) n i = x : (helper xs n (i-1)) -- 3.

dropEvery :: [a] -> Int -> [a]
dropEvery l n = helper l n n                -- 4.

cross :: [a] -> [b] -> [(a,b)]
cross x y = [(a,b) | a <- x, b <- y]

tups :: a -> [b] -> [(a,b)]
tups _ []     = [] 
tups a (x:xs) = [(a,x)] ++ tups a xs

cross' :: [a] -> [b] -> [(a,b)]
cross' _      []     = [] 
cross' []     _      = []
cross' (x:xs) (y:ys) = [(x, y)] ++ a ++ b
    where a = cross xs (y:ys)
          b = cross (x:xs) ys

ggT :: (Integer , Integer) -> Integer
ggT (0,n)  | n >=0 = n
ggT (m ,0) | m >0 = m
ggT (m,n)  | n >=m && m >0 = ggT (m,n-m)
           | m>n && n >0 = ggT (m-n,n)

d = (\x -> (\y -> (\z -> x y z)))

zip' :: [a] -> [a] -> [(a,a)]
zip' [] _  = []
zip' _  [] = []
zip' (x:xs) (y:ys) = [(x,y)] ++ zip' xs ys

e = let
        f 'o' = 'n'
        f 'k' = 's'
        f 'h' = 'f'
        f  c  = c
        g 's' = 'n'
        g 'n' = 'b'
        g 'g' = 'o'
        g 'd' = 't'
        g 'm' = '_'
        g  _  = 'a'
        lc = [ f c | c <- "XoekhXXkXtXXmoXghXXd" , c /= 'X' ]
   in map g lc

f = let x = 3 in (\f -> 2 + f(x-2))(\x->x*x)