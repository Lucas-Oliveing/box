primeiro (x:xs) n z = if n == 0 then reverse z else primeiro xs (n-1) (x:z)

resto (x:xs) n = if n == 0 then xs else resto xs (n-1)

divide xs 0 = ([], xs)
divide xs n = ((primeiro xs n []),(resto xs (n-1)))

main = do
    list <- getLine
    n <- readLn :: IO Int
    print $ divide [read x :: Int | x <- words list] n