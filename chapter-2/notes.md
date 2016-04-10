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

* `10 \`div\` 4`
* `div 10 4