saoPoeticas :: [Char] -> [Char] -> [Char]
saoPoeticas palavra1 palavra2 = if (head palavra1 == head palavra2) && (last palavra1 == last palavra2)
                                   then "S"
                                   else "N"

main = do
    palavra1 <- getLine
    palavra2 <- getLine
    
    putStrLn $ saoPoeticas palavra1 palavra2
