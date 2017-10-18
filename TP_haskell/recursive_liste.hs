taille::[a] -> Int
taille [] = 0
taille (x:xs) = 1 + (taille xs)

element::Eq a => [a] -> a -> Bool
element [] a = False
element (x:xs) a
  | a == x = True
  | otherwise = element xs a
  
mini :: Ord a => [a] -> a
mini [x] = x
mini (x:xs) = min x (mini xs)

replicate':: Int -> Int -> [Int]
replicate' 1 x = [x]
replicate' n x = x : (replicate' (n-1) x)

main = do
  print $taille "oui"
  print $element "oui" 'o'
  print $mini "suhfgsyugq"
  print $replicate' 5 5
  
