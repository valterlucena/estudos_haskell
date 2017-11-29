
main = do
    input <- getLine
    if ((show (head input)) `elem` [0..9])
        then putStrLn "N"
        else putStrLn "S"
