my_length :: [Char] -> Int
my_length [] = 0
my_length (_:x) = 1 + (my_length x)


maiorPalavra :: [Char] -> [Char] -> [Char]
maiorPalavra x y
    | (my_length x) > (my_length y) = y ++ "\n" ++ x
    | (my_length x) < (my_length y) = x ++ "\n" ++ y
    | (my_length x) == (my_length y) = x ++ "\n" ++ x
    | otherwise = ""    


main = do
    primeira <- getLine
    segunda <- getLine
    putStrLn $ maiorPalavra primeira segunda
    
