


sdig list = sum list


main = do
    list <- getLine
    print $ sdig [ read x :: Int | x <- words list]