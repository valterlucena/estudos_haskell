main = do
    let limite = 5
    let numeros = []
    recebeValores numeros limite

addNoArray :: [Int] -> Int -> [Int]
addNoArray numeros num = num:numeros

achaMaior :: [Int] -> Int
achaMaior [head] = head
achaMaior (head:neck:tail)
    | head > neck = achaMaior (head:tail)
    | otherwise = achaMaior (neck:tail)
    
achaMenor :: [Int] -> Int
achaMenor [head] = head
achaMenor (head:neck:tail)
    | head < neck = achaMenor (head:tail)
    | otherwise = achaMenor (neck:tail)

recebeValores :: [Int] -> Int -> IO ()
recebeValores numeros limite = do
    if (limite == 0)
        then do
            let resultado = (achaMaior numeros) - (achaMenor numeros)
            print resultado
    else do
        entrada <- getLine
        let num = read entrada :: Int
        let novo = addNoArray numeros num
        recebeValores novo (limite - 1)
