menorDeDois x y = minimum [x,y]



main = do
        x <- readLn :: IO Int
        y <- readLn :: IO Int
        print $ menorDeDois x y