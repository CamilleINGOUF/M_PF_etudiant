second xs = head (tail xs ) -- second::[a] -> a
swap (x, y) = (y, x) -- swap::(a,b) -> (b,a)
pair x y = (x, y)    -- pair::a -> b -> (a,b)
double x = x*2 -- double::Num a => a -> a
palindrome xs = reverse xs == xs --palindrome::Eq a => [a] -> Bool
twice f x = f (f x) --twice::(a -> a) -> a -> a

-- Calculs d'aires
aireDisque :: Double -> Double
aireDisque r = pi * r * r

aireTriangle :: Floating a => a -> a -> a -> a -> a -> a -> a
aireTriangle  xa ya xb yb xc yc = sqrt(xn * xn + yn * yn)/2
  where xab = xb - xa
        yab = yb - ya
        xac = xc - xa
        yac = yc - ya
        xn = yab * xac - yac * xab
        yn = xab * yac - xac * yab

-- Prédicats
estPair :: Integral a => a -> Bool 
estPair x = x `mod` 2 == 0

estMemeSigne :: Integral a => a -> a -> Bool 
estMemeSigne x y = (x * y) > 0

estTriplePyth x y z = (x * x + y * y) == (z * z)

--Evaluation partielle
mul42 :: Int -> Int
mul42 = (42*)

null' :: Int -> Bool
null' = (==) 0
 
-- (!!) :: [a] -> Int -> a 

getElem2' :: [a] -> a
getElem2' = (!!1)

getElem2''::[a] -> a
getElem2'' = head . tail

--Composition de fonctions


main = do
  --print $aireDisque 2
  --print $aireTriangle 10 10 20 20 10 20
  --print $estPair 6
  --print $estMemeSigne (-1465) (-1)*
  --print $mul42 2
  --print $mul42 3
  --print $null' 4
  print $getElem2'' "bouboubou"
