fibonacci 0 = 1
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

main = do
    x <- readLn :: IO Integer
    print $ fibonacci x