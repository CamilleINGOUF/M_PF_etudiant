multiple::Int -> [(Int,Int)]
multiple n = [(x,y) | x<-[1..n],y<-[x..n], x*y == n]

tripletsPyth::Int -> [(Int,Int,Int)]
tripletsPyth n = [(x,y,z) | x<-[0..n],y<-[x..n],z<-[y..n], x*x + y*y == z*z]

main = do
  print $multiple 42
  print $tripletsPyth 10
