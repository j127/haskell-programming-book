module Chapter8Stuff where

incTimes :: (Eq a, Num a) => a -> a -> a
incTimes 0 n = n
incTimes times n = 1 + (incTimes (times - 1) n)

applyTimes :: (Eq a, Num a) =>
               a -> (b -> b) -> b -> b
applyTimes 0 f b = b
-- applyTimes n f b = f (applyTimes (n-1) f b)
-- or:
applyTimes n f b = f . applyTimes (n-1) f $ b

incTimes' :: (Eq a, Num a) => a -> a -> a
incTimes' times n = applyTimes times (+1) n

-- `f True` or `f False`
f :: Bool -> Int
f True = error "Grrr"
f False = 0
