module Palindromes where

pal xs =
    case y of
        True  -> "jes"
        False -> "ne"
    where y = xs == reverse xs

----------------------------------------
functionC x y = if (x > y) then x else y

-- rewritten with case
functionC' x y =
    case s of
        True  -> x
        False -> y
    where s = x > y

----------------------------------------

ifEvenAdd2 n = if even n then (n+2) else n

-- rewritten with case
ifEvenAdd2' n =
    case e of
        True  -> n + 2
        False -> n
    where e = mod n 2 == 0

----------------------------------------
