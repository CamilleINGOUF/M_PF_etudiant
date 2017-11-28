data Figure = Carre Float | Rectangle Float Float | Circle Float deriving(Show)

showFigure:: Figure -> String
showFigure (Carre x) = "Carre de cote " ++ show x
showFigure (Rectangle x y ) = "Rectangle de largeur " ++ show x ++ " et de hauteur " ++ show y
showFigure (Circle r) = "Disque de rayon " ++ show r

calculerAire:: Figure -> Float
calculerAire (Carre x) = x * x
calculerAire (Rectangle x y) = x * y
calculerAire (Circle r) =  pi * r * r

main = do
  print $showFigure (Circle 4)
  print $calculerAire (Carre 4)
  print $calculerAire (Rectangle 4 6)
  print $calculerAire (Circle 4)

