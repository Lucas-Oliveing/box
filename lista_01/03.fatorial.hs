fatorial 0 = 1
fatorial n = n * fatorial (n-1)

main = do
    x <- readLn :: IO Integer
    print $ fatorial x