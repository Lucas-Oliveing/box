concater xs ys = xs ++ ys


main = do
    list <- getLine
    list' <- getLine
    print $ concater [read x :: Int | x <- words list] [read y :: Int | y <- words list']