
module Acronyms where


-- Create an acronym from string
acronym :: [Char] -> [Char]
acronym xs = [x | x <- xs, elem x ['A'..'Z']]

