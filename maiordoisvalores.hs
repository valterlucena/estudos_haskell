maiorValor :: Int -> Int -> [Char]
maiorValor x y 
    | x > y = show x ++ " > " ++ show y
    | x < y = show y ++ " > " ++ show x
    | otherwise = show x ++ " = " ++ show y
    
    
main = do
    in1 <- getLine
    in2 <- getLine
    let val1 = read in1 :: Int
    let val2 = read in2 :: Int
    putStrLn $ maiorValor val1 val2
