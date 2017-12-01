main = do
    let limite = 5
    let palavras = []
    recebePalavras palavras limite


addNoArray :: [String] -> String -> [String]
addNoArray palavras palavra = palavra:palavras

reverte :: [String] -> [String]
reverte [] = []
reverte (x:xs) = (reverte xs) ++ (x:[])

achaMaior :: [String] -> [String]
achaMaior [head] = [head]
achaMaior (head:neck:tail)
    | (length head) > (length neck) = achaMaior (head:tail)
    | otherwise = achaMaior (neck:tail)
    
achaMenor :: [String] -> [String]
achaMenor [head] = [head]
achaMenor (head:neck:tail)
    | (length head) < (length neck) = achaMenor (head:tail)
    | otherwise = achaMenor (neck:tail)

recebePalavras :: [String] -> Int -> IO ()
recebePalavras palavras limite = do
    if (limite == 0) 
    then do
        let resultado = (achaMenor palavras) ++ (achaMaior palavras)
        putStrLn $ ((resultado !! 0) ++ "\n" ++ (resultado !! 1))
    else do
        entrada <- getLine
        let palavra = entrada :: String
        let novo = addNoArray palavras palavra
        recebePalavras novo (limite - 1)
        
        
    
