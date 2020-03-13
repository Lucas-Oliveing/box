
element xs x = length [ y | y <- xs, x > y]

menores lista xs n z 
    | z == (length xs) = reverse lista
    | element xs (xs!!z) < n = menores (xs!!z:lista) xs n (z+1)
    | otherwise = menores lista xs n (z+1)

main = do
    list <- getLine
    n <- readLn
    print $ menores [] [read x :: Int | x <- words list] n 0