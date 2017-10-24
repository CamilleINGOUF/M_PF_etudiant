filtragePairs'::[Int] -> [Int]
filtragePairs' [] = []
filtragePairs' (x:xs)
  | even x = x : (filtragePairs' xs)
  | otherwise = (filtragePairs' xs)

filtragePairs::[Int] -> [Int]
filtragePairs = filter even

main = do
  print $filtragePairs [1..8]
  print $filtragePairs' [1..8]
