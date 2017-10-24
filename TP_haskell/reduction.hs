reductionSomme::[Int] -> Int
reductionSomme = foldr (+) 0

reductionSomme'::[Int] -> Int
reductionSomme' [] = 0
reductionSomme' (x:xs) = x + (reductionSomme' xs)

main = do
  print $reductionSomme' [1..5]
