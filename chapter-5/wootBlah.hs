module WootBlah where

data Woot = Yerg | Blerh deriving Show
data Blah = Asdf | Fdsa deriving Show

f :: Woot -> Blah
f x = Asdf

g :: (Blah, Woot) -> (Blah, Blah)
g (x, y) = (Asdf, Fdsa)
