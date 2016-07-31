module DescendingOrder where

import Data.List

descendingOrder :: Integer -> Integer
descendingOrder n = read $ reverse $ sort (show n)  :: Integer

-- From the best answers
descendingOrder2 :: Integer -> Integer
descendingOrder2 = read . reverse . sort . show

-- My mistake - this only reverses the number
-- descendingOrder :: Integer -> Integer
-- descendingOrder n = read $ stringReverse (show n) [] :: Integer
--
-- stringReverseSort :: [Char] -> [Char] -> [Char]
-- stringReverseSort [] lst     = lst
-- stringReverseSort (x:xs) lst = stringReverse xs (x:lst)

