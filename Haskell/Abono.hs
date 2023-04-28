{-Pedro é um contador e precisa de ajuda para saber o valor do imposto de renda retido do salário bruto dos seus clientes. 

O cálculo do valor retido é feito de acordo as faixas de tributação:

Para salários iguais ou inferiores a R$ 1.903,98, não há imposto a ser pago.
Para salários entre R$ 1.903,99 e R$ 2.826,65, o imposto a ser pago é de R$ 142,80 mais 7,5% da diferença entre o salário e o piso da faixa de tributação (R$ 1.903,99).
Para salários entre R$ 2.826,66 e R$ 3.751,05, o imposto a ser pago é de R$ 354,80 mais 15% da diferença entre o salário e o piso da faixa de tributação (R$ 2.826,66).
Para salários entre R$ 3.751,06 e R$ 4.664,68, o imposto a ser pago é de R$ 636,13 mais 22,5% da diferença entre o salário e o piso da faixa de tributação (R$ 3.751,06).
Para salários acima de R$ 4.664,68, o imposto a ser pago é de R$ 869,36 mais 27,5% da diferença entre o salário e o piso da faixa de tributação (R$ 4.664,68).-}

import Text.Printf

tributacao :: Float -> Float
tributacao x
    | x <= 1903.98 = 0
    | x > 1903.98 && x < 2826.66 = 142.80 + (x - 1903.99) * 0.075
    | x > 2826.65 && x < 3751.06 = 354.80 + (x - 2826.66) * 0.15
    | x > 3751.05 && x < 4664.69 = 636.13 + (x - 3751.06) * 0.225
    | x > 4664.68 = 869.36 + (x - 4664.68) * 0.275

main :: IO()
main = do
    input <- readLn :: IO Float
    let valorImposto = tributacao input
    let liquido = input - valorImposto
    printf "O valor do imposto de renda retido eh: R$ %.2f\n" valorImposto
    printf "O salario liquido eh: R$ %.2f" liquido
