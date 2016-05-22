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
