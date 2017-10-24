factorielleReduction::[Int] -> Int
factorielleReduction = foldr (*) 1

fibonacciReduction::Int -> [Int] -> [Int]
--marche pas
fibonacciReduction n = fst . (foldl (\(x,y) _ -> (y, x+y)) (0,1) [0..n]) 

main = do
  print $factorielleReduction [1..5]
  print $fibonacciReduction 8
