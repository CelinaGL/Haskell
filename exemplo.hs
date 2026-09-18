idade :: Int -- Um valor inteiro constante
idade = 17

testeIdade :: Bool -- Usa a definicao de
testeIdade = idade>=18 -- idade

quadrado :: Int -> Int -- funcao que eleva num
quadrado x = x * x -- ao quadrado

mini :: Int -> Int -> Int --funcao que mostra
mini a b --o menor entre
 | a <= b = a -- dois valores
 | otherwise = b

maiorIdade :: Int -> Bool
maiorIdade b = b >= 18

igual :: Int -> Int -> Bool
igual x y = x == y

tresIgual :: Int -> Int -> Int -> Bool
tresIgual x y z = (x == y) && (y == z)