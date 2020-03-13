sequencia m n = [m+1 .. n-1]

main = do
    m <- readLn :: IO Int
    n <- readLn :: IO Int
    print $ sequencia m n