total xs = sum [ 1 | x <- xs]



main = do
    list <- getLine
    print $ total [ read x :: Int | x <- words list]