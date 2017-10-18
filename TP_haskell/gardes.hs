analyseTemp :: Int -> String
analyseTemp t
  | t < (-20) = "frisquet"
  | 20 > t && t >= (-20) = "nirvana"
  | otherwise = "canicule"

analyseTemp2 :: Int -> String
analyseTemp2 t = if t < (-20)
                 then "frisquet"
                 else if t >= (-20) && t < 20
                      then "nirvana"
                      else "canicule"

main = do
  print $analyseTemp (-5454)
  print $analyseTemp2 (15)
