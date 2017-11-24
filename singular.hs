
main = do
    input <- getLine
    if ((last input) == 's' || (last input) == 'S')
        then putStrLn "TALVEZ PLURAL"
        else putStrLn "TALVEZ SINGULAR"
