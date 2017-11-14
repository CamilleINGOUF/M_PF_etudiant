premier1::[(a,b)] -> [a]
premier1 [] = []
premier1 (x:xs) = (fst x):(premier1 xs)

premier2::[(a,b)] -> [a]
premier2 l = [fst x | x <- l]

premier3::[(a,b)] -> [a]
premier3 = map (fst)

main = do
  print $premier1 [(1,1),(10,10)]
  print $premier2 [(1,1),(10,10)]
  print $premier3 [(1,1),(10,10)]
