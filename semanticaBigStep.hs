data E = Num Int | Soma E E | Mult E E
    deriving(Eq, Show)

prog1 :: E
prog1 = Mult (Num 3) (Soma (Num 4) (Num 5))

bigStepE :: E -> Int
bigStepE (Num n) = n 
bigStepE (Soma e1 e2) = bigStepE e1 + bigStepE e2
bigStepE (Mult e1 e2) = bigStepE e1 * bigStepE e2
