doubler1::[Int] -> [Int]
doubler1 [] = []
doubler1 (x:xs) = (x*2):(doubler1 xs) 

doubler2::[Int] -> [Int]
doubler2 l = [x*2 | x <- l]

doubler3::[Int] -> [Int]
doubler3 = map (*2)

main = do
  print $doubler1 [1..10]
  print $doubler2 [1..10]
  print $doubler3 [1..10]
