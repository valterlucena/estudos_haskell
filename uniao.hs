main = do
    in1 <- getLine
    in2 <- getLine
    let lista1 = read in1 :: [Int]
    let lista2 = read in2 :: [Int]
    print $ uniao lista1 lista2

uniao :: [Int] -> [Int] -> [Int]
uniao [] lista = lista
uniao lista [] = lista
uniao (head:body) lista
    | taNaLista head lista = [] ++ uniao body lista
    | otherwise = (head:[]) ++ uniao body lista

taNaLista :: Int -> [Int] -> Bool
taNaLista numero [] = False
taNaLista numero (head:body)
    | head == numero = True
    | otherwise = taNaLista numero body
