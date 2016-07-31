import Data.Char

capitalizeWords :: String -> [(String,String)]
capitalizeWords ws = map pairUpper $ words ws
    where pairUpper w = (w,capitalizeWord w)

capitalizeWord :: String -> String
capitalizeWord (l:ls) = (toUpper l) : ls
