# Chapter 5 Notes

## Polymorphism

* parametric polymorphism
* constrained polymorphism

## Notes

    -- Doesn't work, because `length` can only return Int
    6 / length [1, 2, 3]

    -- Works
    6 / fromIntegral (length [1, 2, 3])
