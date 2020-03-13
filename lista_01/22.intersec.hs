
element xs x inter = inter ++ [ y | y <- xs, y == x]
 
montar inter xs zs n = if (length zs) == n then reverse inter else montar (element xs (zs!!n) inter) xs zs (n+1)

interseccao xs zs = montar [] xs zs 0

main = do
    list1 <- getLine
    list2 <- getLine
    print $ interseccao [read x :: Int | x <- words list1] [read y :: Int | y <- words list2]