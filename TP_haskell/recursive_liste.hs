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

all'::(a -> Bool) -> [a] -> Bool
all' f [] = True
all' f (x:xs) = if f x
                then (all' f xs)
                else False

any'::(a -> Bool) -> [a] -> Bool
any' f [] = False
any' f (x:xs) = if f x
                then True
                else (any' f xs)

take':: Int -> [a] -> [a]
take' x [] = []
take' x (x:xs)
  | x > 0 = x : (take' x-1 xs)
  | otherwise x

main = do
  --print $taille "oui"
  --print $element "oui" 'o'
  --print $mini "suhfgsyugq"
  --print $replicate' 5 5
  --print $all' (<10) [1..140]
  --print $any' (>10) [1..11]
  --print $take' 5 [1..8]
