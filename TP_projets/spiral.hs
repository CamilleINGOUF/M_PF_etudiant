import Data.List

lectureSpiral [] = []
lectureSpiral (x:xs) = x:lectureSpiral(reverse(transpose xs))

main = do
  print $lectureSpiral m
  where m = [['a','b','c','d'],['e','f','g','h'],['i','j','k','l'],['m','n','o','p']]
