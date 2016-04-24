module LetWhere where

-- Converting `let` to `where`


-- let x = 3; y = 1000 in x * 3 + y
a = x * 3 + y where
    x = 3
    y = 1000

-- let y = 10; x = 10 * 5 + y in x * 5
b = x * 5
    where
      x = 10 * 5 + y
          where
            y = 10

-- let x = 7; y = negate x; z = y * 10 in z / x + y
c = z / x + y
    where
      x = 7
      y = negate x
          z = y * 10
