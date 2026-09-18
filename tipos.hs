data Temperatura = Frio | Calor
    deriving(Eq,Show)

data Estacao = Verao | Outono | Inverno | Primavera
    deriving(Eq,Show)

tempo :: Estacao ->  Temperatura
tempo Verao = Calor
tempo _ = Frio

data Forma =  Circulo Float | Retangulo Float Float
    deriving(Eq,Show)

redondo :: Forma -> Bool
redondo (Circulo x) = True
redondo (Retangulo x y) = False

area :: Forma -> Float
area (Circulo r) = pi * r *r
area (Retangulo b a) = b * a

data Arvore = Folha Int | Nodo Int Arvore Arvore
    deriving(Eq,Show)

arv1 :: Arvore
arv1 = Nodo 10 (Nodo 14 (Nodo 1 (Folha 4) (Folha 2)) (Folha 6)) (Folha 9)

arv2 :: Arvore
arv2 = Nodo 7 (Nodo 2 (Folha 4) (Folha 3)) (Nodo 7 (Folha 3) (Folha 2))