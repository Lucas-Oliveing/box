sublist begin end list
    | begin < 0 = sublist x end list
    | end < 0 = sublist begin y list
    | otherwise = take (end - begin) (drop begin list)
    where x = length(list) + begin
          y = length(list) + end
main = do
        begin <- readLn :: IO Int
        end <- readLn :: IO Int
        line <- getLine
        print $ sublist begin end [read x :: Int | x <- words line]
