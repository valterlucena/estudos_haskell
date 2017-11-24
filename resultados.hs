main = do
    line <- getLine
    if line == "-"
        then return ()
        else do
            putStr (line ++ "\n")
            main

