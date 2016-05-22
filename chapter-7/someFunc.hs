module SomeFunc where

f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f t1 t2 =
    case x of
        ((,,) a b c) ((,,) d e f) -> "hi"
    where x = (t1, t2)
-- f (a, b, c) (d, e, f) = ((a, d), (c, f))
