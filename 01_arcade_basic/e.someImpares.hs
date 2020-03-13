somarImpares xs = sum [ x | x <- xs, mod x 2 == 1]

main = do
        let xs = "1 2 3 4 5 6 8 9 1"
        print $ somarImpares [read x :: Int | x <- words xs]