-- expression conditionnelle
safeTail1::[Int] -> [Int]
safeTail1 l =  case length l of 0 -> []
                                otherwise -> tail l

safeTail2::[Int] -> [Int]
safeTail2 l
  | s == 0 = []
  | otherwise = tail l
  where s = length l

safeTail3::[Int] -> [Int]
safeTail3 [] = []
safeTail3 (_:xs) = xs
  
main = do
  print $safeTail1 []
  print $safeTail2 []
  print $safeTail3 []
  
