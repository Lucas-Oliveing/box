
main = do
    list <- getLine
    print $ reverse [read x :: Int | x <- words list]