converteCores :: Int -> Int -> Int -> [Char]
converteCores r g b
    | r < 128 || g < 128 || b < 128 = "PRETO"
    | otherwise = "BRANCO"

main = do
    r <- getLine
    g <- getLine
    b <- getLine
    putStrLn $ converteCores (read r) (read g) (read b)
