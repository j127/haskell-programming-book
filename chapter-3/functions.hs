module BuildingFunctions where

enthusiastically :: String -> String
enthusiastically s = s ++ "!"

thirdChar :: String -> Char
thirdChar s = s !! 2

letterIndex :: Int -> Char
letterIndex n = "Saluton" !! (n - 1)
