main = do
    -- objeto 1 --
    in11 <- getLine
    in21 <- getLine
    let posicao1 = read in11 :: Int
    let velocidade1 = read in21 :: Int
    
    -- objeto 2 --
    in12 <- getLine
    in22 <- getLine
    let posicao2 = read in12 :: Int
    let velocidade2 = read in22 :: Int
    
    in3 <- getLine
    let tempo = read in3 :: Int
    
    let posicaoFinal1 = posicao1 + velocidade1 * tempo
    let posicaoFinal2 = posicao2 + velocidade2 * tempo
    
    print $ abs $ posicaoFinal1 - posicaoFinal2
