frequencia xs n = sum [ 1 | x <- xs, x == n] 



main = do
    list <- getLine
    n <- readLn
    print $ frequencia [read x :: Int | x <- words list] n