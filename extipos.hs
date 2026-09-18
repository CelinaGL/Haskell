data Arvore = Folha Int | Nodo Int Arvore Arvore
    deriving(Eq,Show)

arv1 :: Arvore
arv1 = Nodo 10 (Nodo 14 (Nodo 1 (Folha 4) (Folha 2)) (Folha 6)) (Nodo 3 (Folha 2) (Folha 4))

arv2 :: Arvore
arv2 = Nodo 7 (Nodo 2 (Folha 4) (Folha 3)) (Nodo 7 (Folha 3) (Folha 2))


multArvore:: Int -> Arvore -> Arvore
multArvore x (Folha n) = Folha (n * x)
multArvore x (Nodo n a1 a2) = (Nodo (n * x) (multArvore x a1) (multArvore x a2))

contaFolhas :: Arvore -> Int
contaFolhas (Folha n) = 1
contaFolhas (Nodo n a1 a2) = contaFolhas a1 + contaFolhas a2

contaNodos :: Arvore -> Int
contaNodos (Folha n) = 0
contaNodos (Nodo n a1 a2) = 1 + contaNodos a1 + contaNodos a2

quantasVezes :: Int -> Arvore -> Int
quantasVezes x (Nodo n a1 a2)
 | x == n = 1 + quantasVezes x a1 + quantasVezes x a2
 | x == (Folha n) = 1
 | otherwise = 0