{-Maria é professora de matemática e gostaria de saber a quantidade de vezes que cada número é sorteado em uma lista de números aleatórios gerados por um programa de loteria.
Ela deseja que você crie um programa em Haskell que recebe uma lista de números inteiros aleatórios e retorna a quantidade de vezes que cada número foi sorteado.-}

import Text.Printf
import Data.List (nub)

verificaNuns :: [Int] -> Int -> Int
verificaNuns [] _ = 0
verificaNuns (x:xs) oCara
    | x == oCara = 1 + (verificaNuns xs oCara)
    | otherwise = verificaNuns xs oCara

manipula :: [Int] -> [Int] -> IO ()
manipula _ []= return ()
manipula (x:xs) (l:ls) = do
    let repeticoes = verificaNuns (x:xs) l
    printf "%d foi sorteado %d vez(es)\n" l repeticoes
    manipula (x:xs) ls

main :: IO ()
main = do
    lista <- readLn :: IO [Int]
    if lista == [] then printf "nenhum numero foi sorteado\n"
    else do
        let listaSemRepeticao = nub lista
        manipula lista listaSemRepeticao