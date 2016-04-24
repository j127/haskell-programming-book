module Parenthesizing where

a1 = 2 + 2 * 3 - 1
a2 = 2 + (2 * 3) - 1

b1 = (^) 10 $ 1 + 1
b2 = (^) 10 (1 + 1)

c1 = 2 ^ 2 * 4 ^ 5 + 1
c2 = ((2 ^ 2) * (4 ^ 5)) + 1
