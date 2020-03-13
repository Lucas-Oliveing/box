
isPalind list = list == reverse list

main = do
    list <- getLine
    print $ isPalind list