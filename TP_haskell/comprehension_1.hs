main = do
  print $[x | x<-[0..42], even x]
  print $[x | x<-[0,2..42]
  
  print $[if even x then x else -x | x<-[2..13]]
