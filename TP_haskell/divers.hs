absList::Num a => [a]->[a]
absList = map (abs)

maxList::Ord a => [a] -> a
maxList (x:xs) = foldr (max) x xs

first3::[String] -> [String]
first3 = map (take 3)

short::[String] -> [String]
short = filter (\x -> (length x) < 3)

main = do
  print $absList [(-10)..10]
  print $maxList [0..10]
  print $first3 ["lec","cac","aboetre","netsfyugf","fatgdyu"]
  print $short ["lec","cac","aboetre","netsfyugf","fatgdyu","ou"]
