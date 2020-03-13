gangorra xs
    | (xs !! 0) * (xs !! 1) > (xs !! 2) * (xs !! 3) = -1
    | (xs !! 0) * (xs !! 1) < (xs !! 2) * (xs !! 3) = 1
    | (xs !! 0) * (xs !! 1) == (xs !! 2) * (xs !! 3) = 0



main = do
    xs <- getLine;
    let lista = [read x :: Int | x <- words xs];
    print $ gangorra lista