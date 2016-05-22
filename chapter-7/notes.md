# Chapter 7 Notes: More Functional Patterns

247, 267, 274, 283

In GHCI, add blocks like:

    :{
    let someFunc :: Integer -> Bool
        someFunc 1 = True
        someFunc _ = False
    }:

or:

    let x = 0
    :{
    if (x + 1 == 1)
        then "AWESOME"
        else "wut"
    :}

## Pattern Matching

`:set -Wall` in GHCI to se pattern matching warnings.

## `newtype`

`newtype` allows only one constructor and one field.

## Guard Syntax

Absolute value function with guard cases:

    myAbs :: Integer -> Integer
    myAbs x
        | x < 0     = (-x)
        | otherwise = x
