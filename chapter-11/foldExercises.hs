module FoldExercises where

-- Priyanga's:
myMap :: ([a] -> b) -> [b] -> [b]
myMap f = ((:) . f) []


myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f = foldr (\ a b -> if f a then a : b else b) []

-- Christopher's
myMap2 :: (a -> a1) -> [a] -> [a1]
myMap2 f = foldr (\ a b -> (f a) : b) []

myFilter2 :: (a -> Bool) -> [a] -> [a]
myFilter2 f = foldr (\ a b -> if f a then a : b else b) []

-- me
tt1 s v = [(a, b, c) | a <- s, b <- v, c <- s]
tt2 s v = [(a, b, c) | a <- s, b <- v, c <- s, a == 'p']
-- stops = "pbtdkg"
-- vowels = "aeiou"
-- tt1 stops vowels

nounsVerbs nouns verbs = [(a, b, c) | a <- nouns, b <- verbs, c <- nouns]
-- nouns = ["dog", "table", "computer", "house"]
-- verbs = ["runs", "barks", "sees", "buys"]
-- nounsVerbs nouns verbs
