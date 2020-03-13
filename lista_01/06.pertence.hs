pertence xs x = x `elem` xs


main = do 
    list <- getLine
    ele <- readLn
    print $ pertence [read x :: Int | x <- words list] ele
