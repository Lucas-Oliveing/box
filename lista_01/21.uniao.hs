remover xs x = x:[ y | y <- xs, y /= x]

semRepeticao xs n = if n == (length xs) then xs else semRepeticao (remover xs (xs!!n)) (n+1)

uniao xs zs = reverse(semRepeticao (xs ++ zs) 0) 


main = do
    list1 <- getLine
    list2 <- getLine
    print $ uniao [read x :: Int | x <- words list1] [read y :: Int | y <- words list2]