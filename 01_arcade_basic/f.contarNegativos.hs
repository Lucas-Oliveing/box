negList xs = sum [ 1 | x <- xs, x < 0]


main = do
        let xs = "1 2 3 -4 5 6 7 -1 -2"
        print $ negList [read x :: Int | x <- words xs]