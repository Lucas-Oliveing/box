calda xs = tail xs

main = do
    list <- getLine
    print $ calda [read x :: Int | x <- words list]