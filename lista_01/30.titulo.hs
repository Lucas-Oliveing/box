newList list n letra = (take n list) ++ [letra] ++ (drop (n+1) list) 

montar list letra n = funcTitulo (newList list n letra) (n+1)

indice list n i-- Indice na lista do alfabeto
    | (list!!n) == (['a'..'z']!!i) || (list!!n) == (['A'..'Z']!!i) = i
    | elem (list!!n) ['0'..'9'] || i == 29 = -1
    | otherwise = indice list n (i+1)

down i = ['a'..'z']!!i 

up i = ['A'..'Z']!!i

funcTitulo list n
    | n == (length list) = list
    | (list!!n) == ' ' = funcTitulo list (n+1)
    | n == 0 || (list!!(n-1)) == ' ' = montar list (up (indice list n 0)) n 
    | otherwise =  montar list (down (indice list n 0)) n 

titulo list = funcTitulo list 0

main = do
    list <- getLine
    print $ titulo list