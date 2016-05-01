module AbsValue where

myAbs :: Integer -> Integer
myAbs n =
    if n > 0
        then n
    else
        n * (-1)
