menorDeTres x y z = minimum [x,y,z]

menorDeTres' x y z
    | x < y &&  x < z = x
    | y < x && y < z = y
    | otherwise = z

main = do
    x <- readLn :: IO Int
    y <- readLn :: IO Int
    z <- readLn :: IO Int
    print $ menorDeTres' x y z