module GreetIfCool2 where

greetIfCool :: String -> IO ()
greetIfCool coolness =
    if cool coolness
        then putStrLn "aaaaa"
    else
        putStrLn "bbbbb"
    where cool v = v == "test string"
