rotacionar (xs) n i = if i == n then xs else rotacionar (last(xs):init(xs)) n (i+1)

rotDir xs n = rotacionar xs n 1

main = do
    list <- getLine
    n <- readLn ::IO Int
    print $ rotDir list n