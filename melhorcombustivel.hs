main = do
    in1 <- getLine
    in2 <- getLine
    in3 <- getLine
    let alcool = read in1 :: Double
    let gasolina = read in2 :: Double
    let litros = read in3 :: Int
    let porcentagem = gasolina * 0.7
    let total = if (alcool >= porcentagem)
                    then (fromIntegral litros) * gasolina
                    else (fromIntegral litros) * alcool
    putStrLn $ show total
