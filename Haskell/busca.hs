{-Pedrinho é um aluno de computação na UFCG e recentemente se interessou em estudar sobre mecanismos de buscas feitas na internet, como em ferramentas como o Google.

Estudando sobre mecanismos de busca, um dos primeiros termos que Pedrinho conheceu foram as stopwords. Stopwords são palavras que podem ser totalmente omitidas ou ocultadas na hora de se fazer uma busca na internet sem que o sentido do que se quer encontrar seja perdido.

Pedrinho notou que muitas das palavras de 3 ou menos letras estão presentes entre as stopwords e como experimento inicial ele decidiu implementar um filtro que retira tais palavras, para checar em quais casos essa métrica deu ou não bons resultados.

Assim como Pedrinho, faça um programa Haskell que recebe um texto e elimina palavras com 3 ou menos caracteres. Para nível de simplificação, considere que os sinais de pontuação contam como caracteres. Logo, a palavra "sim" deveria ser excluída, mas "sim." não deveria.-}

quatroOuMais :: [String] -> String
quatroOuMais frase =
    unwords(filter (\palavra -> length palavra >= 4) frase)

main :: IO ()
main = do
    frase <- getLine
    print (quatroOuMais (words frase))