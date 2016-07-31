module Stuff where

divides d n = rem n d == 0

ldf k n | divides k n = k
        | k^2 > n     = n
        | otherwise   = ldf (k+1) n

f x y | y == 0    = 0
      | x == 0    = y*2
      | y == 1    = 2
      | otherwise = f (x-1) (f x (y-1))

-- (define (A x y)
--   (cond ((= y 0) 0)
--         ((= x 0) (* 2 y))
--         ((= y 1) 2)
--         (else (A (- x 1) (A x (- y 1))))))
--
-- (A 1 10)
