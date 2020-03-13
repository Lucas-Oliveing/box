corpo xs = init xs


main = do
    list <- getLine
    print $ corpo [read x :: Int | x <- words list]