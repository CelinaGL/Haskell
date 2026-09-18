multLista :: Int -> [Int] -> [Int]
multLista x [] = []
multLista y (x:xs) = y*x : multLista y xs

elemento :: Int -> [Int] -> Bool
elemento x [] = False
elemento x (y:ys)
 | x == y = True
 | otherwise = elemento x ys

conta :: Int -> [Int] -> Int
conta x [] = 0
conta x (y:ys)
 | x == y = 1 + conta x ys
 | otherwise = conta x ys

contaMaiores :: Int -> [Int]-> Int
contaMaiores x [] = 0
contaMaiores x (y:ys)
 | x < y = 1 + contaMaiores x ys
 | otherwise = contaMaiores x ys

maiores :: Int -> [Int] -> [Int]
maiores x [] = []
maiores x (y:ys)
 | x < y = y : maiores x ys
 | otherwise = maiores x ys

geraLista :: Int -> Int -> [Int]
geraLista 0 y = []
geraLista x y = y : geraLista (x-1) y

addFim :: Int -> [Int] -> [Int]
addFim x [] = x : []
addFim x (y:ys) = y : addFim x ys

join :: [Int] -> [Int] -> [Int]
join [] y = y
join (x:xs) y = x : join xs y

inverte :: [Int] -> [Int]
inverte [] = []
inverte (x:xs) = inverte xs ++ x : [] 