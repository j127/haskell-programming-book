module Trivial where

data Trivial =
    Trivial'

-- An `instance` is where you implement typeclass stuff for a data type
instance Eq Trivial where
    Trivial' == Trivial' = True
