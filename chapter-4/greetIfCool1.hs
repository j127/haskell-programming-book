module GreetIfCool where

greetIfCool :: String -> IO ()
greetIfCool coolness =
    if cool
        then putStrLn "aaaaa"
    else
        putStrLn "bbbbb"
    where cool = coolness == "test string"
