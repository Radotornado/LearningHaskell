my_nor :: Bool -> Bool -> Bool
my_nor x y = not(x || y)

my_xor :: Bool -> Bool -> Bool
my_xor x y = (x == y)

my_impl :: Bool -> Bool -> Bool
my_impl x y = (x || not(y))

my_biimpl :: Bool -> Bool -> Bool 
my_biimpl x y = (x == y)