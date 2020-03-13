intercalar [] zs = zs
intercalar xs [] = xs
intercalar (x:xs) (z:zs) = x:z:intercalar xs zs

main = do
    list1 <- getLine
    list2 <- getLine
    print $ intercalar [read x :: Int | x <- words list1] [read y :: Int | y <- words list2]
