
build out letra = out ++ [letra]  

funcSelect list indicesList n out
    | (length indicesList) == n = out 
    | otherwise = funcSelect list indicesList (n+1) (build out (list!!(indicesList!!n))) 

seletc list indicesList = funcSelect list indicesList 0 []

main = do
    list <- getLine
    indicesList <- getLine
    print $ seletc list [read x :: Int | x <- words indicesList]