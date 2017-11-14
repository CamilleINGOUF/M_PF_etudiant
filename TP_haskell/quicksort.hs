quicksort::Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = (quicksort inf) ++ [x] ++ (quicksort sup)
  where inf = filter (<x) xs
        sup = filter (>=x) xs
main = do
  print $quicksort "azertyuiopqsdfghjklmwxcvbn"
