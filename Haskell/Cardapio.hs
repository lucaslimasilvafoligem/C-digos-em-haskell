{-Paulo foi em uma padaria e quer saber o valor da sua conta. Para ajudá-lo, faça um programa que receba a quantidade de itens consumidos, uma descrição dos itens e retorna o valor da conta.

Cardápio:

cafe            R$ 4
pao             R$ 2
suco            R$ 5
pao de queijo   R$ 5
sanduiche       R$ 3
-}

calculaPreco :: Int -> IO Int
calculaPreco 0 = return 0
calculaPreco qtdeItens = do
    item <- getLine
    let precoAtual = verificaCardapio item
    proxPreco <- calculaPreco (qtdeItens-1)
    return (precoAtual + proxPreco)

verificaCardapio :: String -> Int
verificaCardapio item
    | item == "cafe" = 4
    | item == "pao" = 2
    | item == "suco" = 5
    | item == "pao de queijo" = 5
    | item == "sanduiche" = 3
    | otherwise = 0

main :: IO ()
main = do
    qtdeItens <- readLn :: IO Int
    precoTotal <- calculaPreco qtdeItens
    print precoTotal
