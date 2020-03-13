alter n = intercalar [1..n] (neg [1..n])

neg xs = [ -y | y <- xs]

intercalar [] zs = zs
intercalar xs [] = xs 
intercalar (x:xs) (z:zs) = x:z : intercalar xs zs  

main = do
    n <- readLn
    print $ alter n