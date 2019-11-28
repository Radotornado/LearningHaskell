module AufgabeSieben where

-- given functions make them with {} and ;
-- formal definition
-- let { <Declaration> ;· · · ; <Declaration> } in <Ausdruck>

{-

fun x = let y = x * y
        in z * z + z where
        z = 2*x

-}

fun x = let { y = x * y; } in z * z + z where z = 2*x

{-

fun x y z = x + a where
                  a = b
                  b = let
                     c = x + y in
                    c + x

-}

fun' x y z = x + a where
                   a = b
                   b = let { c = x + y; } in c + x

{-

fun x y = let
        a = b * b in if a > 0 then a + a^2
        else b + c where
          b = c + d + y + f
          c = 2 * d
          d = x * y * e where
            e = x + y
          f = x * y^2

-}

fun'' x y = let
      a = b * b in if a > 0 then a + a^2
      else b + c where
        b = c + d + y + f
        c = 2 * d
        d = x * y * e where
          e = x + y
        f = x * y^2