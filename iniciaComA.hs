main = do
    let limite = 5
    recebePalavras [] limite

addNoArray :: [String] -> String -> [String]
addNoArray palavras palavra = palavra:palavras

reverte :: [String] -> [String]
reverte [] = []
reverte (head:tail) = (reverte tail) ++ (head:[])

iniciaComA :: String -> String
iniciaComA palavra 
    | (head palavra) == 'a' = "s"
    | otherwise = "n"

imprime :: [String] -> String
imprime [] = ""
imprime (head:tail) = head ++ "\n" ++ (imprime tail)

recebePalavras :: [String] -> Int -> IO ()
recebePalavras lista limite = do
    if (limite == 0)
        then do
            putStrLn $ imprime $ reverte lista
    else do
        entrada <- getLine
        let palavra = iniciaComA entrada
        let palavras = addNoArray lista palavra
        recebePalavras palavras (limite - 1)
