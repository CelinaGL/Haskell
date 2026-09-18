palindromo :: String -> Bool
palindromo a = a == reverse a

verTriangulo :: Int -> Int -> Int -> Bool
verTriangulo a b c = (a + b) >= c && (b + c) >= a && (a + c) >= b

sinal :: Int -> Int
sinal a
 | a > 0 = 1
 | a < 0 = (-1)
 | a == 0 = 0

menorTres :: Int -> Int -> Int -> Int
menorTres a b c
 | (a <= b) && (a <= c) = a
 | (b <= a) && (b <= c) = b
 | otherwise = c

potencia :: Int -> Int -> Int
potencia x 0 = 1
potencia x n = x * potencia x (n-1)