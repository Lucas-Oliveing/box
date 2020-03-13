
maior [x] = x
maior (x:xs)
    | x > higher = x
    | otherwise = higher
    where higher = maior xs

main = do
    let list = "1 5 1 31 51 1 5 7 8 0 9 41"
    print $ maior [read x :: Int | x <- words list]
