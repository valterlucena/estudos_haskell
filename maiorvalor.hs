maiorValor :: Int -> Int -> Int
maiorValor x y 
    | x > y = x
    | x < y = y
    | otherwise = x


main = do
    in1 <- getLine
    in2 <- getLine
    let val1 = read in1 :: Int
    let val2 = read in2 :: Int
    print $ maiorValor val1 val2
