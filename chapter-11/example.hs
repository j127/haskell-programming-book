module ExampleStuff where

-- data Example = MakeExample deriving Show
-- data Example2 = MakeExample2 Int deriving Show

-- *Main> tooMany (42 :: Int)
class TooMany a where
    tooMany :: a -> Bool

instance TooMany Int where
    tooMany n = n > 42

-- newtype way
newtype Goats = Goats Int deriving Show

instance TooMany Goats where
    tooMany (Goats n) = n > 43

