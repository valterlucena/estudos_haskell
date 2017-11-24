media7:: Float -> String
media7 media
    | media >= 7.0 = "pass: True!"
    | otherwise    = "pass: False!"


main = do
    in1 <- getLine
    in2 <- getLine
    let nota1 = read in1 :: Float
    let nota2 = read in2 :: Float
    let media = (nota1 + nota2) / 2
    let resultado = media7 media
    putStr resultado
