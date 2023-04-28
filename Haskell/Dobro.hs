{-Escreva um program que recebe um inteiro e retorna seu dobro-}

dobro :: Int -> Int
dobro num = num * 2

main :: IO()
main = do
    numero <- readLn :: IO Int
    let result = dobro numero
    print result