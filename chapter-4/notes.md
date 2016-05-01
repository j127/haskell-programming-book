# Notes for Chapter 4

## Types

### Integral Numbers

* Int -- fixed precision. Don't use often.
* Integer -- arbitrary precision

If you want to check the sizes:

    import GHC.Int
    minBound :: Int8 -- or Int16, Int32, Int64
    maxBound :: Int8
    maxBound :: Int

### Fractional

* Float -- rarely used, except graphics programming
* Double -- double-precision
* Rational -- arbitrary precision
* Scientific -- more efficient than rational

## Terms to know (section 4.8)

* tuple
* typeclass
* data constructor
* type constructor
* data declarations
