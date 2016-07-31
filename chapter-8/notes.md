# Chapter 8 Notes: Recursion

Function composition is a way of tying two or more functions together such that the result of applying the first function gets passed as an argument to the next function. Recursive functions are doing the same thing.

## The Compose Function

```haskell
(.) :: (b -> c) -> (a -> b) -> a -> c
(.) f g = \x -> f (g x)
```

## ⊥ Bottom

Computations that do not successfully result in a value.

Examples of bottom:

* failing with an error
* partial function (doesn't handle all possible inputs)
* False

## Partial Functions

You can turn partial functions into full functions with `Maybe`.

```haskell
data Maybe a = Nothing | Just a
```

```haskell
f :: Bool -> Maybe Int
f False = Just 0
f _ = Nothing
```

## Go Functions

```haskell
dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
    where go n d count
        | n < d = (count, n)
        | otherwise = go (n - d) d (count + 1)
```

## From This Week's Group Discussion

9.5 exercise from Priyanga

```haskell
eftInt :: Int -> Int -> [Int]
eftInt x y
    | x > y = []
    | x == y = [x]
    | otherwise = x : eftInt (succ x) y
```

From Sean

```haskell
eftIter x y = takeWhile (<= y) $ iterate succ x
```

Breaking it into pieces:

```haskell
let z x = iterate succ x
take 10 . z $ 20
take 10 (z 20)
```

Pickup at 311
