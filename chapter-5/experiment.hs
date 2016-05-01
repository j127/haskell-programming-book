module Experiments where

data Temp = Hot | Warm | Cold
    deriving Show

changeTemp :: Temp -> Temp
changeTemp Hot = Warm
changeTemp Warm = Cold
changeTemp Cold = Cold
