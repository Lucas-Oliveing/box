verfica numero i
    | mod numero i == 0 = 1
    | otherwise = 0

funcPrimo numero i
    | numero == 0 || numero == 1 = False
    | i >= numero = True
    | j == 1 = False
    | otherwise = funcPrimo numero (i+1) 
    where j = verfica numero i

primo n = funcPrimo n 2


main = do
    n <- readLn :: IO Int
    print $ primo n