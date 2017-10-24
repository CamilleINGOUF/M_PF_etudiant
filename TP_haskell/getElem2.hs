getElem2::[a] -> a
getElem2 (_:xs) = head xs

main = do
  print $getElem2 [1..4]
