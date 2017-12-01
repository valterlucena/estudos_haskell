main = do
    entrada <- getLine
    let palavras = read entrada :: [String]
    print $ repeticoes palavras

repeticoes :: [String] -> [(String, Int)]
repeticoes [] = []
repeticoes (head:body) = do
    let quant = quantidade head (head:body)
    let nova = removeElemento head body
    [(head, quant)] ++ repeticoes nova

quantidade :: String -> [String] -> Int
quantidade palavra [] = 0
quantidade palavra (head:body)
    | head == palavra = 1 + quantidade palavra body
    | otherwise = 0 + quantidade palavra body

removeElemento :: String -> [String] -> [String]
removeElemento palavra [] = []
removeElemento palavra lista = [string | string <- lista, string /= palavra]
