  

unique xs z = if z == length xs then reverse(xs) else unique (remover xs (xs!!z)) (z+1)


main = do
    list <- getLine
    print $ unique [ read x :: Int | x <- words list] 0