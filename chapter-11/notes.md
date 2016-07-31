# Alegbraic Datatypes

    data Bool = False | True

* `data` -- declaring a datatype
* `Bool` -- type constructor
* `=` -- divides the type constructor from its data constructors.
* `False`, `True` -- data constructors. They are called _nullary_ constructors because they take no arguments. (Their only content is their names.) Those that take one argument are called _unary_. Those that take more than one argument are called _products_.

* Types are static and resolve at compile time -- they are known before runtime.
* Data are what we work with at runtime.

The cardinality of a datatype is the number of possible values it defines.

Examples:

1. `Bool` has a cardinality of 2.
2. `Int8` has a cardinality of 256 (2^8 -- check with `minBound :: Int8` and `maxBound :: Int8`)

## `newtype`

A `newtype` cannot be a product type, sum type, or contain nullary constructors.

Benefits:

* No runtime overhead.

From Yesod Book: if you write `type GearCount = Int`, the compiler won't complain if you use `Int` instead of `GearCount`. With `newtype`, you can't accidentally use `Text` in place of `Make` in `newtype Make = Make Text`, for example.

ADT example: `data Vehicle = Bicycle GearCount | Car Make Model`.
