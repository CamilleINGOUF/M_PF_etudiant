concat1::[[a]] -> [a]
concat1 [] = []
concat1 (x:xs) = x ++ (concat1 xs)

concat2::[[a]] -> [a]
concat2 l = [y | x <- l, y <- x]

concat3::[[a]] -> [a]
concat3  = concat

main = do
  print $concat1 [[2,5,6,7,8],[5,5,6,4,5,8]]
  print $concat2 [[2,5,6,7,8],[5,5,6,4,5,8]]
  print $concat3 [[2,5,6,7,8],[5,5,6,4,5,8]]
