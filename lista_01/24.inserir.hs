montar z (x:xs) n = if (x<n) then montar (z ++ [x]) xs n else z ++ [n] ++ [x] ++ xs

main = do
    list <- getLine
    n <- readLn :: IO Int
    print $ montar [] [read x :: Int | x <- words list] n