
iguais3 a b c
        | a /= b && a /= c && b /= c = 0
        | a /= b && a == c && b /= c = 1
        | a == b && a /= c && c /= b = 1
        | b == c && a /= b && a /= c = 1
        | otherwise = 3

main = do
        let a = 4
        let b = 2
        let c = 4
        print(iguais3 a b c) 