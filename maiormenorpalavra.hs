main = do
    let limite = 5
    recebePalavras limite
    print limite
    

recebePalavras limite = do
    if (limite == 0)
    then return ()
    else do
        palavra <- getLine
        recebePalavras (limite - 1)
