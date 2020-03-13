newList list n letra = (take n list) ++ [letra] ++ (drop (n+1) list) 

montar list letra n = pertence (newList list n letra) (n+1) 0

pertence list n i
    | n == (length list) = list
    | (list!!n) == ' ' || elem (list!!n) ['A'..'Z'] || elem (list!!n) ['0'..'9'] = pertence list (n+1) 0
    | (list!!n) == (['a'..'z']!!i) = montar list (['A'..'Z']!!i) n
    | otherwise = pertence list n (i+1)

upper list = pertence list 0 0 


main = do
    list <- getLine
    print $ upper list
