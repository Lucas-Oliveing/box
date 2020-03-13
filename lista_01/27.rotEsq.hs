
rotacionar (x:xs) n i = if i == n then x:xs else rotacionar (xs++[x]) n (i+1)

rotEsq xs n = rotacionar xs n 0

main = do
    list <- getLine
    n <- readLn ::IO Int
    print $ rotEsq list n