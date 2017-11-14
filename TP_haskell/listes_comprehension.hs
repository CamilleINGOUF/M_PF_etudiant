map1::(a -> b) -> [a] -> [b]
map1 _ [] = []
map1 f (x:xs) = (f x):map1 f xs

map2::(a -> b) -> [a] -> [b]
map2 f l = [f x | x <- l] 

filter1::(a -> Bool) -> [a] -> [a]
filter1 _ [] = []
filter1 f (x:xs)
  | f x = x:(filter1 f xs)
  | otherwise = filter1 f xs

filter2::(a -> Bool) -> [a] -> [a]
filter2 f l = [x | x <- l, f x]

main = do
  print $map1 (*2) [1..10]
  print $map2 (*2) [1..10]

  print $filter1 (>2) [-10..5]
  print $filter2 (>2) [-10..5]
