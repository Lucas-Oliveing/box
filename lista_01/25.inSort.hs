inSort [x] = True
inSort (x:xs) = if x < head(xs) then inSort xs else False

main = do
    list <- getLine
    print $ inSort [read x :: Int | x <- words list]