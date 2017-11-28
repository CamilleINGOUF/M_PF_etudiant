type Complexe = (Float,Float)

modComp::Complexe -> Float
modComp (x, y) = sqrt $ (x*x + y*y)

conjComp::Complexe -> Complexe
conjComp (x,y) = (x,-y)

addComp::Complexe -> Complexe -> Complexe
addComp (x,y) (x1,y1) = ((x+x1), (y+y1))

main = do
  print $modComp (2, 3)
  print $conjComp (2, 3)
  print $addComp (1,2) (3,4)
  
