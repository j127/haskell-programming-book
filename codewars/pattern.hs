module Pattern where

-- from codewars
pattern :: Int -> String
pattern n = intercalate "\n" . map (concatMap show) . reverse . tail . inits $ [n, n-1 .. 1]
