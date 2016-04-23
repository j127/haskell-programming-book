# Chapter 1 Notes

Expression:

`Prelude> 11 + 13`

Reduces to `24`.

_Normal form_ refers to theirreducible forms. `24` is the normal form of `11 + 13`.

`11 + 13` is a _redex_ (reducible expression).

## REPL vs. Files

Use `let` when defining values and functions in GHCi. Leave it out in source files.

Load files with `:l`.

Unload files with `:m` (for `:module`).

Get help with `:h`.

Get info with `:i` -- e.g., `:i +`. (`infixl` means infix operator, left associative, and the number indicated precedence.)

`let triple x = x * 3`

## Conventions

* Type variables: start at `a` and increment
* Functions start at `f` and increment
* If `x` is singular, `xs` is the plural form

## Using function as infix

    10 `div` 4
    div 10 4


`-` can be an alias for `negate` or a subtraction function.

`(+1) 126` and `(1+) 126` give the same result, because it is commutative.
`(1/) 2` and `(/1) 2` will give different result
`(-2) 1` won't work, because it's an alias for `negate` in this situation. `(-) 2 1` will work though. Also can do something like: `let tenMinus = (10 -)`.

    Prelude> let tenMinus = (10 -)
    Prelude> map tenMinus [10,13..50]
    [0,-3,-6,-9,-12,-15,-18,-21,-24,-27,-30,-33,-36,-39]

## Let and Where

`let` can be represented in lambda expressions (though it isn't like this under the hood).

    printInc n = let plusTwo = n + 2
                 in print plusTwo

can be written:

    printInc2' n = (\plusTwo -> print plusTwo) (n + 2)
