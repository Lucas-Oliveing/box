maiorQue xs x = [ y | y <- xs, y > x]


main = do
    let list = "1 5 1 31 5 1 5 7 8 0"
    n <- readLn
    print $ maiorQue [read x :: Int | x <- words list] n