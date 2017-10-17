head' :: [a] -> a
head' (x:_) = x

tail' :: [a] -> [a]
tail' (_:xs) = xs

null' :: [a] -> Bool
null' [] = True
null' _ = False

fst' :: (a,b) -> a
fst' (x,y) = x

scd' :: (a,b) -> b
scd' (x,y) = y

main = do
  print $head' "oui"
  print $tail' "oui"
  print $null' ""
  print $fst' (1,2)
  print $scd' (1,2)
  
