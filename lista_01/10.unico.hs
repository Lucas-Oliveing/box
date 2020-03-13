unico xs n 
    | (sum [ 1 | x <- xs, x == n]) == 1 = True  
    | otherwise = False


main = do
    list <- getLine
    n <- readLn
    print $ unico [read x :: Int | x <- words list] n