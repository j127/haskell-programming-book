module IsPalindrome where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome w = w == reverse w
