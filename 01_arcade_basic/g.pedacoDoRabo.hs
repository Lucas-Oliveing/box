final qtd xs = reverse (take qtd (reverse xs))
        --in reverse drop qtd ys
final' qtd xs =
        let y = (length xs) - qtd
        in drop y xs

main = do 
        x <- readLn
        xs <- getLine
        print $ final' x [read y :: Int | y <- words xs]