# Chapter 5 Notes

## Polymorphism

* parametric polymorphism
* constrained polymorphism

The _principle type_ is the most generic type that still typechecks.

## Notes

    -- Doesn't work, because `length` can only return Int
    6 / length [1, 2, 3]

    -- Works
    6 / fromIntegral (length [1, 2, 3])

Categorizing types:

1. fully polymorphic type variable -- e.g., `a`
1. constrained polymorphic type variable -- e.g., `Num`
1. concrete type constructor -- e.g., `Int`

More terms:

* _Parametricity_ -- a function maintains same behavior across applications of the function.
* _Ad-hoc polymorphism_ -- 

Exercises 151, 167
