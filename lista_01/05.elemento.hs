enesimo xs n= xs !! n


main = do
    xs <- getLine
    n  <- readLn :: IO Int
    print $ enesimo [read x :: Int | x <- words xs] n