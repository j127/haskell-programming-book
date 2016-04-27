module Moods where

data Mood = Blah | Woot deriving Show

-- Changes a mood
changeMood :: Mood -> Mood
changeMood Woot = Blah
changeMood Blah = Woot
