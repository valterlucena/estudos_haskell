main = do
    entrada <- getLine
    n <- getLine
    let lista = read entrada :: [Int]
    let indice = read n :: Int
    print $ iesimo lista indice
    
iesimo :: [Int] -> Int -> Int
iesimo (head:body) indice
    | indice == 1 = head
    | otherwise = iesimo body (indice - 1)
