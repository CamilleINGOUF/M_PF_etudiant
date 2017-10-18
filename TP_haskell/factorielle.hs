pgcd::Int -> Int -> Int
pgcd a 0 = a
pgcd a b = pgcd b (a `mod` b)

facto:: Int -> Int
facto 0 = 1
facto n = n * facto (n-1)

facto'::Int -> Int -> Int
facto' 0 n = n
facto' x n = facto' (x-1) (n*x)

power::Int -> Int -> Int
power x 1 = x
power x n = x*(power x (n-1)) 

power'::Int -> Int -> Int -> Int
power' x 0 i = i
power' x n i = power' x (n-1) (i*x)

-- fonction f, les bornes x1 et x2, la précision = résultat
--findZero::Num a => (a -> a) -> a -> a -> a -> a
--findZero f x1 x2 p = 

main = do
  print $pgcd 50 20
  
  print $facto 5
  print $facto' 5 1
  
  print $power 5 2
  print $power' 5 2 1

  --print $findZero (\x -> x*x - 2*x - 8) 0 10 0.1

  
