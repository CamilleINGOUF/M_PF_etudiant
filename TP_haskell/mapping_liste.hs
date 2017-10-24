mappingDoubler::Num a => [a] -> [a]
mappingDoubler = map (*2)

mappingDoubler'::Num a => [a] -> [a]
mappingDoubler' [] = []
mappingDoubler' (x:xs) = (x*2) : (mappingDoubler' xs)

main = do
  print $mappingDoubler [1..5]
  print $mappingDoubler' [1..5]
