iguais [] [] = "Iguais"
iguais (x:xs) (z:zs) = if x == z then iguais xs zs else "nao sao iguas"


main = do
    xs <- getLine
    zs <- getLine
    print $ iguais [read x :: Int | x <- words xs] [read z :: Int | z <- words zs]